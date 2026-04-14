---
title: "The gap between system prompts and RAG: I built a domain knowledge injection layer for Claude"
subtitle: "RAG gives your model more facts. It doesn't change how it reasons. Here's the fix."
tags: artificial-intelligence, programming, software-engineering, llm, claude-ai
audience: AI engineers, technical builders
word_count: ~1,500
---

# The gap between system prompts and RAG: I built a domain knowledge injection layer for Claude

*RAG gives your model more facts. It doesn't change how it reasons. Here's the fix.*

---

Say you're building an eval pipeline for your agent. Your LLM judge is scoring 94% accuracy — looks solid. But its true negative rate is below 25%: it agrees with nearly everything, passing bad outputs as good. Your SWE-bench Verified score is 72%. Your SWE-bench Pro score is 19%. And the 14 system-level failure modes Berkeley documented in multi-agent pipelines? None of them show up in your per-agent evals.

The model doesn't know about TRAJECT-Bench — the 2025 trajectory-aware benchmark that separates tool selection accuracy from argument correctness at each step. It doesn't know that AgentEvals (LangChain, 2025) enables trajectory match eval with or without a reference trace. It doesn't know that position bias flips LLM judge verdicts in 10–30% of comparisons when responses are swapped.

You're not going to fine-tune your way to eval coverage. You're not going to build a custom observability stack every time you move domains. And a static system prompt with eval guidance goes stale as the field moves.

So you hit the wall. And here's the thing most people miss: it's not one wall.

---

## The Problem Everyone Misframes

The standard move is to call this a knowledge cutoff problem and reach for RAG. Feed in fresh documents, get fresh answers. But RAG only fixes one dimension of what's actually broken.

Here are the three:

**Frozen.** Training cutoffs mean production models run on knowledge that's 12–24 months stale. You can tell the model the current date; you can't give it knowledge it doesn't have.

**Generic.** Models are trained on everything. They reason at the level of a well-read generalist. A cardiologist asking about drug interactions gets an answer calibrated for someone who just learned what a P450 enzyme is. It's not wrong — it's pitched at the wrong level.

**Stateless.** Every session starts from scratch. Domain context, vocabulary, project assumptions — gone. Nothing accumulates.

RAG addresses Frozen, partially. It does nothing for Generic or Stateless. And this is the part that actually matters: **RAG gives your model more facts. It doesn't change how it reasons.** You can dump a hundred eval papers into a retrieval store and the model will still miss that position bias flips judge verdicts in 10–30% of swapped comparisons — because it's retrieving passages to cite, not reasoning from a practitioner's baseline.

Changing reasoning posture requires changing what the model *assumes* walking into a conversation — what vocabulary is baseline, what to skip, what the live questions in the field are. That's not a retrieval problem. It's a context architecture problem.

There's a scene in The Matrix where Neo sits in a chair, a cable jacks in, and seconds later: "I know kung fu." That image points at something real. Most domain knowledge you actually need — eval frameworks, benchmark findings, clinical trial results, regulatory timelines — is already on the web. The problem isn't access. It's that nobody built a clean framework to pull it in, synthesize it at the right depth, and inject it as persistent, reusable context. So I built one. I called it `/matrix`.

---

## What This Actually Looks Like

The command:

```
/matrix ai-agent-evals
```

Claude runs web searches, synthesizes what it finds into a structured skill file at practitioner depth — assumes vocabulary, skips basics, covers active debates — and saves it to your skill library. Here's what the agent evals skill actually contains, verbatim:

> *The silent failure problem: an agent tasked with reporting current inventory gives the right number — pulled from last year's report by mistake. Final output: pass. Process: wrong. Standard accuracy metrics miss this entirely.*
>
> *Position bias: in 10–30% of pairwise comparisons, the LLM judge verdict flips when responses are swapped — the judge is partly ranking position, not quality.*
>
> *Agreeableness bias: true positive rate >96%, true negative rate <25% — the judge says "good" to almost everything, inflating apparent performance in class-imbalanced datasets.*
>
> *SWE-bench Pro gap: models scoring 70%+ on Verified collapse to ~23% on Pro. Treat Verified scores as a floor, not a target.*
>
> *MAST taxonomy (Berkeley): 14 distinct system-level failure modes in multi-agent pipelines — none detectable by evaluating individual agents in isolation.*

That last one is the kind of finding that changes how you architect your eval suite. It's not in the LangChain docs. It came from synthesizing 2024–2025 research across benchmarks, framework releases, and practitioner write-ups.

But the more important point is what the skill *doesn't* do: it doesn't just give Claude facts to retrieve. It changes the assumptions Claude brings to every conversation in that domain. The skill tells Claude what vocabulary is baseline, what failure modes to probe for, where the active debates are. Ask Claude about your eval pipeline without the skill and you get general guidance. With the skill loaded, you're starting from a different floor.

---

## The Same Command, Any Domain

**`/matrix negotiation`**

> *First offers correlate ~0.50 with final outcomes — anchoring is one of the highest-leverage moves in any negotiation, not just an opener.*
> *Reactive devaluation: parties automatically discount proposals from an adversary regardless of content — a proposal you'd accept from a neutral party gets rejected when it comes from the other side.*

---

**`/matrix patent-law`**

> *PTAB institution rates collapsed from ~75% to ~35% in late 2025 after USPTO Director Squires assumed personal control of institution decisions — all 34 petitions he reviewed were denied. Fintiv discretionary denials surged 630% year-over-year.*
> *An IPR petition must be filed within 1 year of service of a complaint — missing this window makes the petition time-barred regardless of merit.*

---

**`/matrix crispr`**

> *Baby KJ: first truly personalized CRISPR therapy, designed and dosed in the patient's first six months under FDA expanded access; NEJM May 2025.*
> *SNP-dependent off-targets: individual SNPs can create or destroy PAM sequences, generating off-targets not predicted by reference genome-based design tools — particularly relevant for individuals of African ancestry.*

---

**`/matrix machine-learning`**

> *Chinchilla revision: compute-optimal training ≠ deployment-optimal. When inference cost matters, train on up to 10,000 tokens per parameter — not 20. Now standard practice in Llama 3, Mistral, Gemini Nano.*
> *DeepSeek-V3's MLA compresses KV into low-rank latent vectors: 93% KV cache reduction, ~6× generation throughput increase.*

---

One command per domain. The depth is selectable. The library accumulates.

*(These are snippets — each skill file runs several hundred lines with full citations. Read them in the [repo](https://github.com/RuichongWang/matrix-skill). Synthesized from web sources; verify domain-specific data against primary sources before professional use.)*

---

## The Architecture

This is built for **Claude Code** specifically, using its skill-loading system. Each skill file includes frontmatter with a description telling Claude when it's relevant. Claude Code scans the `~/.claude/skills/` directory at session start; when a task touches a domain, the matching skill loads automatically into context. No manual injection. No explicit include. The skill library is just a directory — readable, editable, version-controllable.

```
~/.claude/skills/
  ai-agent-evals/SKILL.md            ← April 2026
  machine-learning/SKILL.md
  crispr/SKILL.md
  patent-law/SKILL.md
```

Depth is controlled by a level parameter — an integer from 1 to 10 appended to the command. Level 1 is introductory (concepts, why it matters). Level 5 is informed non-expert (mechanisms, named models, current consensus). Level 9 is expert/research depth (specific findings, unresolved debates, assumes full vocabulary). The examples above were run at levels 6–8.

Skills upgrade in place. Run `/matrix crispr 9` on an existing skill and Claude reads what's there, identifies the thin sections, and deepens them — without rebuilding from scratch. Domain knowledge compounds across sessions the same way code dependencies do: you add to the library, you don't rebuild it.

---

## The Limits

Three real ceilings:

**Scope.** This works for web-available knowledge — published papers, regulatory filings, practitioner writing. It degrades for cutting-edge preprint-only research, knowledge that lives in practitioners' heads, and anything behind institutional paywalls. No adversarial pass fixes that.

**Staleness.** A skill synthesized today captures today's web. Re-running at a higher level deepens thin sections, but there's no automatic trigger — that's a judgment call. For fast-moving domains, plan to refresh.

**Accuracy.** Synthesized output looks authoritative regardless of whether it's right, and a non-expert can't tell the difference. This is the one we addressed.

After synthesis, a critic step re-reads the skill, identifies the 3–5 most specific high-confidence claims — numbers, named studies, percentages — and runs targeted searches to challenge each. Claims that fail get corrected, qualified, or flagged inline. It's a GAN-inspired loop: generator produces the skill, critic attacks it, corrections get written back. The verification log lives at the bottom of every skill file.

It doesn't eliminate the problem — a critic searching the same web as the generator shares some blind spots. But it catches the class of errors that matter most: specific, confident claims that are subtly wrong and sound right to someone who doesn't know better.

For high-stakes professional use, treat skills as a verified starting point, not a replacement for domain expertise.

---

## The Missing Layer

The context engineering stack has three slots: model (weights), retrieval (RAG), instructions (system prompt). What's been missing is the fourth: **curated, persistent, domain-calibrated knowledge** — producible in minutes from web-available sources, updatable without retraining, loads automatically when relevant. Not a retrieval hit. Not a static blob. A reasoning baseline that persists across every session.

That's what `/matrix` fills. RAG gives you more facts. This changes where you start reasoning from.

The walls are still there. But now there's a door.

---

*The `/matrix` skill for Claude Code is available at [github.com/RuichongWang/matrix-skill](https://github.com/RuichongWang/matrix-skill). Install it with one line. Run `/matrix <any domain> <level>`. It writes to your skill library and loads automatically from then on.*

*If you're building agents and thinking seriously about context engineering, follow me — I'm writing about the parts of the stack that don't have names yet.*

---
