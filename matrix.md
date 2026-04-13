# I Know Kung Fu: How I Gave My AI a Permanent Memory for Any Domain

*Before writing this post, I downloaded domain expertise I didn't have. Here's what that means.*

---

There's a scene in The Matrix where Neo sits in a chair, a cable jacks in, and seconds later his eyes open.

"I know kung fu."

That image has lived in my head for 25 years. Not because it's cool — because it points at something real about the gap between knowing facts and actually reasoning inside a domain.

---

## The Gap Nobody Talks About

Ask Claude about molecular biology. You'll get a coherent answer.

Ask it about patent law, options trading, epidemiology — coherent answers, all of them.

LLMs have read more than any human ever will. But reading about something and reasoning *inside* it are different things.

A biologist looks at an experimental result and immediately asks: "What's the control condition?" A patent attorney reads a claim and instantly spots the prior art risk. That's not knowledge. That's a lens — a way of moving through a domain that only comes from deep immersion.

Current AI gives you the facts. The lens is harder.

---

## What If You Could Download It?

Here's the idea: instead of asking an AI to recall what it already knows, you pull fresh knowledge from the web, synthesize it into structured expertise, and save it as a permanent skill file.

Not a chat session. Not a one-time lookup. A file that lives in your AI's skill library and changes how it reasons whenever that domain comes up.

You type:

```
/matrix biology
```

Claude searches the web, synthesizes how biology actually works — cells, DNA, photosynthesis, evolution — and writes it as a skill. Next time you're reading a genetics paper or discussing a treatment, that knowledge is already loaded.

Go deeper:

```
/matrix biology photosynthesis 9
```

Now you get research-level depth. Not "plants make oxygen" but the actual mechanism: light-dependent reactions in the thylakoid membrane, the Calvin cycle in the stroma, what's still unsolved at the frontier.

The `9` is a depth dial. Level 2 is a knowledgeable friend explaining it over coffee. Level 9 is closer to a domain expert who's done their homework.

---

## Here's What It Actually Produces

Before writing this post, I ran:

```
/matrix medium-blog-writing 7
```

Claude ran 10 web searches, synthesized what it found, and wrote this to my skill library:

> *Medium's Boost tier — the top curation tier — requires human nomination from a publication editor, then confirmation from Medium's internal curation team. Most viral articles (10k+ reads) were Boosted. Getting there is the single highest-leverage action on the platform.*
>
> *Member read ratio: the percentage of paying members who spent 30+ seconds on your story. A low ratio — many clicks, few actual reads — reduces earnings even when total reading time is high. Sharing on Reddit can hurt your Medium earnings.*
>
> *7-minute read time (~1,600 words) is the earnings sweet spot, based on Medium's own internal data science research. Articles at a 6th-grade reading level get 75% more recommends than college-level prose.*

I didn't know the member read ratio mechanic before running this. Or that `#ai` has 4,000 followers on Medium while `#artificial-intelligence` has 674,000. Or that the Boost nomination pipeline goes through publication editors — meaning publishing solo removes you from the main nomination pathway entirely.

That's the difference. Not facts you could Google. Knowledge that changes how you act.

---

## This Isn't New — But Nobody's Done It Cleanly

In 2023, a project called Voyager built an AI agent that played Minecraft by writing skills for itself — discovering how to craft tools, navigate terrain, gather resources — and storing them in a growing library it could draw on forever. It wasn't trained on Minecraft. It learned it, live.

More recently, researchers have been mining GitHub to extract thousands of procedural skills from open-source repositories and converting them into reusable files. The machinery exists.

What's missing: nobody's cleanly applied this to *conceptual* domains. How to reason like a lawyer. How to read a biology paper the way a biologist does. How to understand what's actually happening in a market.

Procedural skills — run this command, call this API — are well-covered. Domain expertise isn't.

---

## The Skill Lives in Your Library Forever

The files accumulate:

```
~/.claude/skills/
  biology/SKILL.md           ← broad survey, level 5
  biology/photosynthesis.md  ← deep dive, level 9
  patent-law/SKILL.md
  medium-blog-writing/SKILL.md
  options-trading/SKILL.md
```

Each one is plain Markdown — readable, editable, version-controllable. Claude loads the relevant ones automatically when they're needed.

And skills upgrade. Run `/matrix biology 8` after you already have a level-5 file — Claude reads the existing skill, finds what's thin, and deepens it. You don't start over. You build.

---

> **The shift:** Most people prompt their way toward expertise — asking better and better questions until they get useful answers. The matrix approach flips it: load the domain once, and every conversation starts from an informed baseline. It's the difference between asking a generalist and talking to someone who already read the room.

---

## What This Opens Up

The obvious use is access. Someone without a law degree getting real legal reasoning. A founder who can actually read their own biotech patent landscape. A journalist who can distinguish settled science from active debate in a climate paper.

But the more interesting shift is in how you *work* with AI day to day.

Right now most AI interaction is reactive — you ask, it answers, the context evaporates. Skills make it cumulative. Every domain you download becomes a persistent layer the AI draws on. Your instance of Claude, over time, starts to reflect your actual knowledge needs: the industries you cover, the technical areas you care about, the domains where you need to think clearly.

This is different from fine-tuning a model. You're not changing the weights. You're building a library of structured context that loads when relevant — the same way a good consultant walks into a meeting having already done their homework.

The people who benefit most aren't generalists trying to fake expertise. They're domain experts who want their AI to stop giving them undergrad-level answers in their own field. A cardiologist who wants Claude to reason about drug interactions without needing to explain what a P450 enzyme is. A securities lawyer who wants to discuss case strategy without re-explaining what a material adverse change clause does every session.

---

## The Limits Are Real

A synthesized skill is only as good as what's findable on the web. It degrades for cutting-edge research, niche subfields, and anything where the best knowledge lives in practitioners' heads rather than published sources.

Level 9 isn't a PhD. It's a well-read graduate student who did their homework.

The other open question is eval: how do you know the downloaded skill actually makes your AI better at a domain? Right now the quality bar is human judgment — "would an expert read this and say it's right?" That's not a metric. It's a vibe check.

There's also the staleness problem. A skill synthesized today captures what's on the web today. Domains move. You have to decide when to refresh, and at what depth. The upgrade mechanic helps — running `/matrix <domain> 8` over an existing level-5 skill reads the current file and deepens only the thin sections — but there's no automatic trigger. That's still a judgment call.

There's real work to be done here.

---

## The Matrix Is Being Built

Neo's download was instant and perfect. What we have is slower and messier — web searches, a synthesis pass, a Markdown file.

But the direction is the same.

Before I wrote this post, I loaded a skill. The skill told me that a 7-minute read at 6th-grade reading level gets 75% more recommends. That the first paragraph should be under 40 words. That member read ratio is the hidden mechanic most writers don't know about.

I didn't know any of that an hour ago. Now I do — and so does every future conversation I have about writing for Medium.

The chair is ready. What do you want to know?

---

*The `/matrix` skill for Claude Code is available at [github.com/RuichongWang/matrix-skill](https://github.com/RuichongWang/matrix-skill). Install it with one line, run `/matrix <any domain>`, and it downloads to your skill library.*

*If this hit different than the usual AI content, follow me — I'm writing about building with AI in ways that actually change how you work.*

---

<!-- PUBLISHING NOTES (remove before publish)
Tags: #artificial-intelligence (674k), #technology, #productivity, #programming, #claude-ai
Target publication: Start It Up or Better Humans (for Boost nomination access)
Cover image: avoid sensational; consider a clean terminal screenshot or Matrix green-rain aesthetic (tasteful)
Word count: ~1,580
-->
