---
created:
updated: 2026-06-04T13:26
topic: daily news
frequency: daily
ongoing: false
unread: true
---

> [!prompt]- Agent Instructions
> A one-page daily news digest. Pick the **single most important story** from each topic. One item per topic — quality over quantity.
>
> **How to use**
> 1. Edit the topic list below to whatever you actually care about.
> 2. To run an update: ask the agent "update my daily news" — it will web-search each topic, pick the top story, and prepend a new day entry.
> 3. To run on a schedule, use `/schedule` (cloud) or `/loop` (local recurring).
>
> **Topics (customize freely):**
> 1. **AI** — model releases, research, product launches, regulation
> 2. **Tech** — major company news, product launches, layoffs, M&A
> 3. **Macro** — markets, oil, gold, FX, central banks, crypto
> 4. **World** — geopolitics, wars, diplomacy, disasters
> 5. **Local** — replace with your country/city
> 6. **<your interest>** — sports, anime, science, whatever
>
> Any topic can be in a non-English language if that's what you read in. Just say so in the topic line (e.g. "JP — write in Japanese", "TW — write in 繁體中文").
>
> **Callout types — most items should be grey:**
> - `[!note]` = default. Use for MOST items. Grey.
> - `[!breaking]` = truly major, once-a-week level (war escalation, market crash, paradigm-shifting launch). Yellow.
> - `[!critical]` = historic/unprecedented, once-a-month at most (nuclear strike, regime change, currency crisis). Red.
>
> Heuristic: if you'd tell a friend "hey did you see this?" → `[!note]`. If you'd call them → `[!breaking]`. If it'd be on every channel all day → `[!critical]`.
>
> **Rules:**
> - Each callout title starts with a topic tag: `AI:`, `Macro:`, `World:`, etc.
> - Title = tag + one-line headline (under 80 chars) + source in parentheses
> - Body = 2–4 sentences, short paragraph form, ending with `[Source](url)`. No bullet lists.
> - All callouts collapsed by default — use `[!type]-` (with the dash)
> - Newest day at the top, after this prompt callout
> - Group days under `## YYYY-MM` month headers
> - Day heading: `### [[MM-DD-YY Day]]` (e.g. `### [[03-29-26 Sun]]`)
> - When inserting a new day, collapse the previous day into a `> [!note]- [[date]]` callout (prefix all its lines with `> `)
> - Pick ONE story per topic. Skip a topic only if genuinely nothing happened.
> - Search multiple sources per topic — don't rely on a single outlet.
> - Set `unread: true` and update `updated:` in frontmatter when adding entries.
>
> **Format each day EXACTLY like this:**
> ```
> ### [[03-29-26 Sun]]
>
> > [!note]- AI: New model release — 1T MoE, $5M training cost (TechNode)
> > A new model dropped today with native multimodal support under Apache 2.0. Scores 81% on SWE-bench at $5M training cost. [Source](https://example.com)
>
> > [!note]- Macro: Gold hits new high — up 40% YTD (Reuters)
> > Gold at $4,686/oz on safe-haven demand. Up 40% since January. Analysts see $5,000 if conflict escalates. [Source](https://example.com)
>
> > [!breaking]- World: Major diplomatic deadline expires tonight (Al Jazeera)
> > A strategic chokepoint deadline expires at 8pm ET. Negotiations have stalled and military action looks imminent. [Source](https://example.com)
> ```

## 2026-06

### [[06-04-26 Thu]]

> [!note]- AI: Trump orders early gov't access to AI models before release (CNBC)
> The White House signed an executive order requiring AI companies to voluntarily submit their most powerful models for government testing up to 30 days before public release. The move follows Anthropic limiting its Mythos Preview model due to its ability to identify and exploit software security vulnerabilities. Companies face no legal obligation to comply, but the order signals growing federal intent to oversee frontier AI development. [Source](https://www.cnbc.com/2026/06/02/trump-executive-order-ai.html)

> [!note]- Tech: Meta cuts 8,000 jobs as AI capex soars to $135B in 2026 (Newsweek)
> Meta announced layoffs affecting roughly 10% of its global workforce while simultaneously planning up to $135B in capital expenditures for 2026 — an 87% increase — to build out AI infrastructure for its "superintelligence" lab. The move is part of a broader wave of tech layoffs in 2026, with 363 companies cutting ~150,000 workers as AI-driven automation reshapes headcount. [Source](https://www.newsweek.com/all-tech-giants-announcing-sweeping-layoffs-2026-11872935)

> [!breaking]- Macro: Oil hits $96/barrel, stocks slide as US-Iran strikes escalate (CNBC)
> WTI crude surged 2.4% to $96.02/barrel and Brent rose to $97.81 following reports of new US-Iran military strikes, stoking inflation fears. The Dow fell 620 points (−1.2%), the S&P 500 dropped 0.74%, and AI-linked stocks led losses — Nvidia and Microsoft each shed 3%+, Oracle fell 5%. The Fed's next rate decision is June 16–17, with markets pricing in no change. [Source](https://www.cnbc.com/amp/2026/06/02/stock-market-today-live-updates.html)

> [!breaking]- World: US-Iran confirm 60-day ceasefire MOU with nuclear talks (PBS)
> The White House confirmed that US and Iranian negotiating teams reached a 60-day memorandum of understanding to extend the current ceasefire and launch formal nuclear talks, mediated by Pakistan. The deal would reopen the Strait of Hormuz, lift the US blockade on Iranian ports, and begin structured negotiations on Iran's nuclear and ballistic programs. Separate direct Lebanon-Israel talks are also scheduled in Washington this week. [Source](https://www.pbs.org/newshour/world/u-s-and-iranian-negotiators-reach-tentative-deal-to-extend-ceasefire-and-start-new-nuclear-talks)

> [!note]- Malaysia: US proposes 10% tariff on Malaysia over forced labour failures (FMT)
> The US Trade Representative proposed an additional 10% duty on Malaysian exports after a Section 301 probe found Malaysia failed to enforce a prohibition on imports made with forced labour. Malaysia joins 59 other economies including Canada, the EU, and Indonesia in facing the proposed duties. Malaysia's MITI acknowledged a legal gap — no existing law to screen imported goods made with forced labour — and said it is being addressed, with a public comment deadline of July 6. [Source](https://www.freemalaysiatoday.com/category/nation/2026/06/03/us-probe-finds-malaysia-failed-to-impose-forced-labour-import-ban)

> [!note]- Science: Splitting a photon creates an infinite swarm of particles (Phys.org)
> A study in Physical Review Letters by physicists at the University of Oslo found that "cutting" a single photon with an ultra-fast optical shutter doesn't produce two photons — it generates an infinite swarm via quantum electromagnetic field fluctuations. The result challenges assumptions about manipulating individual quantum particles and has implications for precision optical measurement and quantum computing. Researchers plan to test whether the effect holds for other elementary particles such as electrons. [Source](https://phys.org/news/2026-06-photon-infinite-swarm-particles.html)
