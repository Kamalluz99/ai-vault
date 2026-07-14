---
created:
updated: 2026-07-15T05:09
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

## 2026-07

### [[07-15-26 Wed]]

> [!note]- AI: Anthropic launches Claude Science Workbench — Opus 4.8 connects to 60+ research databases (Anthropic)
> Anthropic launched the Claude Science Workbench, a research tool that links Claude Opus 4.8 directly to more than 60 curated scientific databases, accessible at claude.com/science. The platform targets academic researchers, independent scientists, and biotech startups, paired with an AI for Science grants program offering up to $30,000 in API credits to 50 projects (applications closed today). The launch marks Anthropic's sharpest move into vertical scientific tooling — positioning Claude as an active lab co-pilot rather than a general-purpose assistant. [LLM Stats](https://llm-stats.com/ai-news)

> [!note]- Tech: Meta cuts 8,000 jobs (10% of workforce), redeployes 7,000 to AI roles — Zuckerberg: "success isn't a given" (TechCrunch)
> Meta announced it is eliminating roughly 8,000 employees — about 10% of its global workforce — while simultaneously moving approximately 7,000 staff into new AI-focused roles, the single largest AI-driven restructuring in tech in 2026. CEO Mark Zuckerberg told staff the cuts were necessary because "success isn't a given" in the AI race, signalling that savings from legacy headcount will fund the AI pivot. Meta's round pushes 2026's total tech layoffs past 166,000 impacted workers, with 56% of layoff events this year explicitly citing AI. [TechCrunch](https://techcrunch.com/2026/07/06/the-running-list-major-tech-layoffs-in-2026-where-employers-cited-ai/)

> [!note]- Macro: Hormuz oil shock deepens — Brent up 4%, Bitcoin slides to $62,600, Fed rate-hike odds jump to 36% (CoinDesk)
> Risk-off sentiment swept markets after weekend strikes around the Strait of Hormuz — de facto closed for 136 days — sent Brent crude up nearly 4% while US equity futures slipped 0.3% and European stocks fell ~1%. Bitcoin retreated to $62,600 as traders exited riskier assets amid inflation concerns tied to sustained energy-price pressure. Prediction markets now assign a 36% probability of a Fed rate hike this month, a sharp shift from near-zero odds earlier in July. [CoinDesk](https://www.coindesk.com/daybook-us/2026/07/14/u-s-iran-escalation-weighs-on-bitcoin-stocks-as-oil-climbs)

> [!breaking]- World: DRC Ebola fastest-growing outbreak on record — 702 dead, virus breaches two new provinces; WHO: "This is a fire" (UN News)
> The DRC's Ebola outbreak has spread to two new northeastern provinces — Haut-Uele (bordering South Sudan and CAR) and Tshopo (home to the major city of Kisangani) — reaching 1,926 confirmed cases and 702 deaths, now the third-largest Ebola outbreak on record. The WHO declared it the fastest-growing outbreak ever: 1,000 cases in just 40 days, versus 235 days in the 2018 North Kivu crisis. Imported cases have been confirmed in Uganda (20 cases, 2 deaths), Germany, and France, raising acute international containment concerns. [UN News](https://news.un.org/en/story/2026/07/1167933)

> [!note]- Malaysia: PKR backbenchers flip to back revised AG decoupling bill; Social Work Profession Act 2026 also passes Dewan Rakyat (Malay Mail)
> PKR backbenchers who previously objected to the bill decoupling the public prosecutor's role from the Attorney General's Chambers reversed position to back the revised edition, clearing a key parliamentary hurdle for a reform long sought by rule-of-law advocates. A separate measure, the Social Work Profession Act 2026, also passed Dewan Rakyat in the same sitting, establishing a statutory council to regulate social workers nationwide. Both bills clearing in one session marks an unusually active legislative day. [Malay Mail](https://www.malaymail.com/)

> [!note]- Science: Yale identifies two neuron proteins driving Parkinson's tau spread — potential new drug target revealed (ScienceDaily)
> Yale University scientists discovered two neuron surface proteins that appear to facilitate cell-to-cell transmission of the toxic tau protein underlying Parkinson's disease, pinpointing a mechanism that could serve as a direct drug target. The finding addresses a fundamental open question in Parkinson's biology — how tau propagates through the brain — and opens a pathway toward treatments that slow or arrest progression rather than only managing symptoms. The discovery adds to growing evidence that prion-like protein spread drives multiple neurodegenerative diseases. [ScienceDaily](https://www.sciencedaily.com/)