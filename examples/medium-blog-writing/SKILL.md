---
name: medium-blog-writing
description: |
  Domain knowledge for medium-blog-writing — overview of core concepts, mechanisms, and facts.
  Covers the distribution system (Boost vs. General vs. Network), earnings mechanics, headline
  patterns, article structure, tag strategy, AI content policy, and what actually separates
  widely-read articles from ignored ones.
type: domain-knowledge
mode: broad
level: 7
generated: 2026-04-13
---

## What Medium is

Medium is a subscription publishing platform (~$5/month for readers) where writers earn money
based on how long paying members spend reading their work — not pageviews, not ad clicks.
~100 million monthly readers as of 2025. The platform sits between a blog host and a magazine:
your content is indexed on Google (50% of medium.com's traffic is Google organic), but
distribution to paying readers is gated by Medium's curation system. Most writers join the
Medium Partner Program (MPP) to monetize; eligibility requires 100+ followers and a published
story, then $5/month membership.

---

## How it works / Core mechanisms

### The three-tier distribution system

Every published story lands in one of three tiers:

1. **Network Distribution** (default): Visible only to your followers. Essentially no reach beyond people already subscribed to you. Undisclosed AI-generated content is restricted to this tier.

2. **General Distribution**: Distributed via tags and homepage algorithmic recommendations to all Medium readers. Disclosed AI-assisted content is capped here — never Boosted.

3. **Boost**: Human-curated selection. Boosted stories are matched with non-follower readers who are algorithmically predicted to be interested, distributed in email newsletters, and featured for days to weeks. Boosted stories earn at a multiplier on engagement points compared to non-Boosted stories.

Getting to Boost is the single highest-leverage action on the platform. Most viral articles (10k+ reads) were Boosted.

### Earnings mechanics (as of August 2023 update)

Earnings = engagement points + Boost multiplier, adjusted by member read ratio.

- **Member reading time**: Paying member time actively on page — idle time excluded, scroll behavior tracked.
- **Engagement points**: Reading/listening time + claps + highlights + replies, weighted by member status.
- **Boost multiplier**: Proportional to total engagement AND number of distinct members who engaged (breadth matters, not just depth).
- **Member read ratio adjustment**: Percentage of members who spent 30+ seconds on the story out of all who loaded it. A low ratio (many bounces) reduces earnings even if total reading time is high.
- A "read" = 30+ seconds from a paying member. Non-member reads generate zero earnings.
- Realistic benchmarks: 92% of writers earn under $100/month. Active writers publishing 12–15 articles/month who get Boosted regularly report $500–$1,500/month. $25k total stories exist but represent the top 0.1%.

### The Boost selection process

Three layers:
1. Publication editors (community curators) nominate stories to Medium's curation team.
2. Human curators at Medium confirm nominations against distribution standards.
3. Algorithm matches confirmed stories to readers likely to engage.

Implication: publishing inside an active publication with a Boost-nominating editor is a real lever — not just vanity. A story published solo has no nomination pathway unless a curator finds it organically.

---

## Key areas

### Curation / Boost eligibility

Boost requires all of the following:
- **Original perspective**: Not a rehash of what's easily Googled. Must bring a fresh angle, personal experience, or new synthesis.
- **No sensational/shocking titles or images**: Clickbait titles actively disqualify stories.
- **No sales or marketing intent**: "The more self-promotion, the less likely to be selected" — direct quote from Medium's guidelines.
- **Not AI-generated** (or disclosed if AI-assisted): Human curators identify AI writing by reading it; Medium also uses automated detection tools but acknowledges they're flawed.
- **Personal voice**: Medium's curation head described what they want as "taste" — writing that shows the author has direct experience with the topic and knows what's true, what matters, and where there's debate.
- **Fiction, poetry, personal essay, memoir, humor, photo essay, tutorial** all qualify — it's not limited to long-form nonfiction.

What Boost does NOT require: a specific length, a specific topic, a specific publication.

### Headlines and titles

Patterns with documented CTR performance:
- **Specific outcome with number**: "I Made $47k Freelancing in 6 Months — Here's the Exact Process" outperforms "How to Make Money Freelancing" because specificity signals credibility.
- **Contrarian framing**: "X Is Wrong About Y" — medium-specific data shows these get shared more because they invite argument.
- **"I Did X for Y Days" personal experiments**: Extremely strong on Medium because they promise a narrative arc.
- **Odd-numbered lists still work**: "7 Things" outperforms "10 Things" (odd numbers read as less arbitrary).
- **40–60 characters is the sweet spot** for title tag length (Google truncation + feed display).
- **Avoid**: Question headlines in titles (lower CTR than declarative), all-caps words, exclamation points, "shocking"/"amazing"/"incredible" — these are Boost disqualifiers.
- Emotional framing: 63% negative valence ("what to avoid") + 37% positive ("what to achieve") has shown 28% higher CTR than pure-positive framing in controlled tests.

### Article structure for reader retention

- **First paragraph ≤ 40 words**. 8 out of 10 readers decide to continue within the first 2 sentences. Open with a specific scene, a counterintuitive claim, or an exact data point — not context-setting.
- **Hook types that work on Medium specifically**: Personal anecdotes with a twist ("I thought X, then Y happened"), surprising statistics immediately cited, and direct address ("You're probably making this mistake").
- **Optimal length: ~7 minutes read time (~1,600 words)**. This is Medium's own internal research finding (former head of data science Mike Sall). Under 5 minutes leaves earnings on the table; over 10 minutes increases bounce rate unless the topic warrants it (deep technical dives, narrative essays).
- **Drop-off zone is the middle**: Add a visual, a callout quote, or a structural break at roughly the 40–50% scroll depth mark. Case study data shows a relevant image at the 40% depth mark boosted engagement by 67%.
- **Reading level**: Articles at a 6th-grade reading level get 75% more "recommends" (claps + shares) than college-level writing. Short sentences. Plain words. This is not dumbing down — it's legibility.
- **Headers**: Use H2s (small T in Medium editor) to break the article into scannable sections. Medium's headers also factor into SEO — the first H1 equivalent should contain your primary keyword.
- **Subtitle**: Medium shows the subtitle in the feed card below the title. Treat it as a second headline — it should add specificity, not repeat the title.

### Tags strategy

Medium allows 5 tags per story. Tag selection directly affects General Distribution reach.

Core principle: **high follower count + low story volume = best ratio**.

Specific traps:
- `#tech` has far fewer followers than `#technology`. Check exact tag follower counts before assuming.
- `#ai` has ~4k followers; `#artificial-intelligence` has 674k.
- Use 2–3 large tags (1M+ followers) and 2 niche tags specific to your exact topic.
- Tags are also how curators find stories to nominate for Boost — matching tags to what a human curator covers increases nomination probability.

Top followed tags as of 2025: Technology, Programming, Science, Data Science, Self Improvement, Mental Health, Psychology, Productivity, Writing, Startup. These have millions of followers but also millions of stories, so a new article competes in a crowded feed.

### Publications

Publishing inside a publication with an active Boost-nominating editor is the primary structural advantage beyond your own writing quality.

How to get in:
- Medium maintains an official list of 400+ publications accepting submissions, tagged by topic.
- Read 5–10 recent published articles before submitting — editors reject submissions that clearly weren't calibrated to their publication's style.
- Submission is done by sharing a draft link; editors can then add it to their publication.

High-leverage publications accepting submissions (2025):
- **Better Humans** (self-improvement, productivity, mental health) — large readership, active curation
- **Start It Up** (formerly The Startup) — creator economy, career, business — largest active publication
- **The Mind Cafe** — mental clarity, emotional intelligence, reflective essays
- **Towards Data Science** — technical ML/data science, high follower count

Publications that had Boost-nomination rights as of early 2025 include many user-run pubs — check the Boosting and Writing Matters publication on Medium for updated lists.

### AI content policy (as of 2024)

- Fully AI-generated disclosed: eligible for **General Distribution only** — no Boost, no curation.
- Fully AI-generated undisclosed: restricted to **Network Distribution only** (your followers only).
- AI-assisted (human wrote it, AI helped edit/research): treated as human writing if it reflects genuine human perspective. Must be disclosed in a note.
- Detection: Medium uses both automated tools AND human readers. Curators are trained to identify AI writing by reading it — they look for lack of specific personal experience, generic structure, hedging language, and absence of genuine point of view.
- Policy rationale (from Terrie Schweitzer, curation team lead): the goal is preserving quality for the human reader community, not punishing AI per se.

---

## Important facts to know

1. **Boost is the multiplier, not volume.** One Boosted article can outperform 20 unboosted ones earnings-wise. Strategy that chases volume without Boost nominations is grinding.

2. **Member read ratio penalizes low-quality traffic.** Sharing an article on Reddit that gets thousands of non-member views can actually hurt your earnings by tanking the member read ratio.

3. **Medium.com has 4.46 billion backlinks and 1.64M referring domains** (Semrush, Feb 2026). Your article on Medium inherits significant domain authority. Articles on specific topics frequently rank on Google page 1.

4. **The 30-second rule is a floor, not a ceiling.** A "read" registers at 30 seconds, but earnings scale with actual time spent. A 1,000-word article that holds readers for 4 minutes earns more per read than a 4,000-word article most readers abandon after 2 minutes.

5. **Claps are worth less than follows.** A reader following you after reading contributes to future article distribution to their feed. Claps add engagement points but don't compound.

6. **Titles with "I" perform differently than titles without.** First-person titles signal personal essay/memoir, which attracts a specific reader segment. Pure how-to titles ("How to X") attract a different segment. Both work, but mixing the signals ("How I Did X") captures both audiences.

7. **Most Medium-operated publications are defunct since 2022.** Don't submit to @Medium or Medium's own publications — they don't accept submissions. Submit to user-owned publications.

8. **Publishing cadence matters less than Boost rate.** Writers with 2 Boosted articles/month typically out-earn writers with 20 non-Boosted articles/month.

9. **Subtitle and cover image are curation signals.** Curators see these in their review queue. A sensational cover image can disqualify an otherwise strong article from Boost.

10. **Medium's traffic is 50% organic Google** and 31% direct. Articles on topics with search intent (how-to, explainers, comparisons) compound over time; articles on trending news decay quickly.

11. **7-minute read time = ~1,600 words = the earnings sweet spot**, based on Medium's own internal data science research.

12. **Reading level 6th grade = 75% more recommends** than college-level prose. Shorter sentences and plain vocabulary outperform on this platform specifically.

13. **The member read ratio adjustment** means articles that get clicks but no reads (compelling title, bad opening) are actively penalized in earnings — not just neutral.

14. **Earnings update daily** with up to 48-hour finalization lag. Don't panic about day-1 stats.

15. **92% of MPP writers earn under $100/month.** The platform is viable for supplemental income; building a primary income requires consistent Boost nominations + audience building over 12–18+ months.

---

## Key vocabulary

**Boost** — Medium's top-tier curation designation. Requires human nomination from a publication editor + confirmation from Medium's internal curation team. Triggers algorithmic distribution to non-followers and email newsletter inclusion.

**General Distribution** — Second tier. Stories distributed via tags and homepage recommendations to all readers. Default for stories meeting quality guidelines. Maximum tier for disclosed AI-assisted content.

**Network Distribution** — Lowest tier. Stories visible only to existing followers of the writer or publication. Default for undisclosed AI content.

**Member Read Ratio** — Percentage of paying members who spent 30+ seconds on your story out of all paying members who loaded it. A final multiplier/divisor on earnings — low ratio reduces earnings even when total reading time is high.

**Engagement Points** — Internal Medium metric combining reading time + claps + highlights + replies, weighted by whether the engager is a paying member.

**Boost Multiplier** — A multiplier applied to engagement points for Boosted stories. Proportional to total engagement points AND breadth (number of distinct members who engaged).

**Community Curators** — Publication editors who have been granted the ability to nominate stories for Boost consideration. The nomination pipeline goes: community curator → Medium's internal curation team → algorithm.

**Tags** — Up to 5 topic labels per story. Function as distribution channels: followers of a tag see stories tagged with it in their feed. Also function as curation routing — curators typically cover specific tags.

**Publication** — A user-run blog or magazine on Medium. Stories published under a publication's masthead inherit that publication's followers and branding. The publication editor can nominate stories for Boost.

**Follower-to-Story Ratio (FSR)** — Practitioner metric for evaluating tags: followers of a tag divided by number of stories published under it. High FSR = more readers per story published in that tag.

**MPP** — Medium Partner Program. Opt-in monetization program. Requires 100 followers + published story + $5/month subscription status check. Earnings based on paying-member engagement only.

---

## What's still unknown / active frontiers

**The Boost selection rate is opaque.** Medium has never published what percentage of submitted stories get Boosted, what the editorial acceptance rate for nominations is, or how many community curators there are in each topic area. Practitioner estimates suggest ~5–10% of stories get Boosted, but this is anecdotal.

**AI detection reliability is unresolved.** Medium acknowledges its detection algorithms are flawed. Human curators read for signs of AI writing, but skilled AI-assisted writing is increasingly indistinguishable. As of early 2026, the policy is still being stress-tested — one writer's analysis ("Why Medium's AI Content Policy is Already Obsolete") argues it's unenforceable at scale.

**The relationship between tag follower counts and actual distribution is unclear.** Medium doesn't publish how its tag-based feed algorithm weights articles. The high-FSR tag strategy is practitioner theory, not confirmed by Medium.

**Earnings floor is in debate.** Multiple reports from 2024 show per-1,000-views earnings ranging from $0.50 to $25+ depending on article, audience, and Boost status. The variance is too high to use as a planning number. Medium's new August 2023 formula added member read ratio as a final adjustment but hasn't published the exact weighting.

**Platform trajectory.** Medium has gone through multiple pivots (ad model → subscription model, 2017; MPP launched 2017; curation redesign 2022–2024). As of 2025, the platform is profitable and the CEO has been explicit it's not a primary income vehicle for most writers. Whether it becomes more or less writer-friendly under current ownership is genuinely unsettled.
