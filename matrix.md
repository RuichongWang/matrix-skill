---
title: "I Built a Matrix Skill Download for My AI. The First Thing It Learned Was How to Write This Post."
subtitle: "Before writing this post, I downloaded domain expertise I didn't have. Here's what that means — and how it changed the article you're reading."
cover_image: Weixin Image_20260413101206_50_86.jpg
tags: artificial-intelligence, technology, productivity, programming, claude-ai
publication: Start It Up (preferred) or Better Humans
word_count: ~1,600
---

# I Built a Matrix Skill Download for My AI. The First Thing It Learned Was How to Write This Post.

*Before writing this post, I downloaded domain expertise I didn't have. Here's what that means — and how it changed the article you're reading.*

---

There's a scene in The Matrix where Neo sits in a chair, a cable jacks in, and seconds later his eyes open.

"I know kung fu."

That image has lived in my head for 25 years. Not because it's cool — because it points at something real about the gap between knowing facts and actually reasoning inside a domain.

So I built the closest thing I could.

---

## So I Built It

The idea: instead of asking an AI to recall what it already knows, pull fresh knowledge from the web, synthesize it into structured expertise, and save it as a permanent skill file.

Not a chat session. Not a one-time lookup. A file that lives in your AI's skill library and changes how it reasons whenever that domain comes up.

I built this as a skill for Claude Code and called it `/matrix`. You type a domain, set a depth level, and it runs web searches, synthesizes what it finds, and writes the result to your skill library.

The depth dial goes from 2 to 9. Level 2 is a knowledgeable friend explaining it over coffee. Level 9 is closer to a domain expert who's done their homework.

---

## The First Thing I Downloaded Was How to Write This Post

Before writing a single word, I ran:

```
/matrix medium-blog-writing 7
```

<!-- INSERT SCREENSHOT: Screenshot 2026-04-13 at 10.07.02.png — caption: "Claude running 7 web searches and synthesizing them into a skill file." -->

Claude ran 7 web searches, synthesized what it found, and wrote a skill file to my library in under 3 minutes. Here's a sample of what it produced:

> *Medium's Boost tier — the top curation tier — requires human nomination from a publication editor, then confirmation from Medium's internal curation team. Most viral articles (10k+ reads) were Boosted. Getting there is the single highest-leverage action on the platform.*
>
> *Member read ratio: the percentage of paying members who spent 30+ seconds on your story. A low ratio — many clicks, few actual reads — reduces earnings even when total reading time is high. Sharing on Reddit can hurt your Medium earnings.*
>
> *7-minute read time (~1,600 words) is the earnings sweet spot, based on Medium's own internal data science research. Articles at a 6th-grade reading level get 75% more recommends than college-level prose.*

I didn't know the member read ratio mechanic before running this. Or that `#ai` has 4,000 followers on Medium while `#artificial-intelligence` has 674,000. Or that the Boost nomination pipeline goes through publication editors — meaning publishing solo removes you from the main nomination pathway entirely.

That's the difference. Not facts you could Google. Knowledge that changes how you act.

---

## Now Here's the Recursive Part

The article you're reading was written using those findings.

The skill told me the first paragraph should be under 40 words — I counted. It told me ~1,600 words is the earnings sweet spot — this article is targeting that. It told me question headlines lower CTR — I rewrote the title three times until it was declarative. It told me a visual break at the 40–50% scroll depth mark increases engagement by 67% — the screenshot above is placed there deliberately.

The skill also flagged that a low member read ratio actively penalizes earnings, not just neutrally. Meaning: a clickbait title that gets opens but no reads is worse than no traffic at all. That changed how I thought about the title.

None of this came from intuition. It came from a 3-minute download.

---

## It Works for Any Domain

The same command works across any field. A few I've run:

```
/matrix options-trading 7
```

Output: the actual mechanics of how options are priced (Black-Scholes inputs, what IV crush means, how theta decay accelerates near expiry). Not "calls give you the right to buy" — the level where you can actually reason about a position.

```
/matrix patent-law prior-art-search 8
```

Output: exactly how prior art invalidates a claim, what counts as public disclosure, how to read a patent filing to spot the prosecution history estoppel. Targeted enough that a founder can read their own competitive landscape without paying a lawyer for a first pass.

```
/matrix cardiology drug-interactions 9
```

Output: CYP450 enzyme pathways, QT prolongation risk by drug class, why warfarin dosing is so sensitive to diet and co-medications. The level where a cardiologist stops having to re-explain context every session.

The depth dial is the key lever. Level 3 is a well-explained Wikipedia article. Level 9 is dense — assumes vocabulary, references specific mechanisms, covers unsettled debates. Same domain, completely different knowledge surface.

Each output is a Markdown file — readable, editable, version-controllable, with sources cited.

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
  options-trading/SKILL.md              ← broad survey, level 7
  patent-law/SKILL.md                   ← broad survey, level 6
  patent-law/references/prior-art.md    ← deep dive, level 8
  cardiology/SKILL.md                   ← broad survey, level 6
  cardiology/references/drug-interactions.md  ← deep dive, level 9
  medium-blog-writing/SKILL.md          ← broad survey, level 7
```

Each one is plain Markdown — readable, editable, version-controllable. Claude loads the relevant ones automatically when they're needed.

And skills upgrade. Run `/matrix biology 8` after you already have a level-5 file — Claude reads the existing skill, finds what's thin, and deepens it. You don't start over. You build.

---

> **The shift:** Most people prompt their way toward expertise — asking better and better questions until they get useful answers. The matrix approach flips it: load the domain once, and every conversation starts from an informed baseline. It's the difference between asking a generalist and talking to someone who already read the room.

---

## What This Opens Up

The obvious use is access. Someone without a law degree getting real legal reasoning. A founder who can actually read their own biotech patent landscape. A journalist who can distinguish settled science from active debate in a climate paper.

But the more interesting shift is cumulative. Every domain you download becomes a persistent layer the AI draws on. Your instance of Claude, over time, starts to reflect your actual knowledge needs: the industries you cover, the technical areas you care about, the domains where you need to think clearly.

The people who benefit most aren't generalists trying to fake expertise. They're domain experts who want their AI to stop giving them undergrad-level answers in their own field. A cardiologist who wants Claude to reason about drug interactions without explaining what a P450 enzyme is every session. A securities lawyer who wants to discuss case strategy without re-explaining what a material adverse change clause does.

---

## The Limits Are Real

A synthesized skill is only as good as what's findable on the web. It degrades for cutting-edge research, niche subfields, and anything where the best knowledge lives in practitioners' heads rather than published sources.

Level 9 isn't a PhD. It's a well-read graduate student who did their homework.

The quality bar right now is human judgment — "would an expert read this and say it's right?" That's not a metric. It's a vibe check. And skills go stale: a file synthesized today captures what's on the web today. Domains move. The upgrade mechanic helps — running `/matrix <domain> 8` deepens only the thin sections — but there's no automatic trigger. That's still a judgment call.

There's real work to be done here.

---

## The Matrix Is Being Built

Neo's download was instant and perfect. What we have is slower and messier — web searches, a synthesis pass, a Markdown file.

But the direction is the same.

Before I wrote this post, I loaded a skill. That skill shaped the title, the length, the structure, the tags, the placement of the screenshot you saw above. I didn't know any of it an hour earlier.

Now I do — and so does every future conversation I have about writing for Medium.

The chair is ready. What do you want to download?

---

*The `/matrix` skill for Claude Code is available at [github.com/RuichongWang/matrix-skill](https://github.com/RuichongWang/matrix-skill). Install it with one line, run `/matrix <any domain>`, and it downloads to your skill library.*

*If this hit different than the usual AI content, follow me — I'm writing about building with AI in ways that actually change how you work.*

---
