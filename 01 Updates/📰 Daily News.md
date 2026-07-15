---
created:
updated: 2026-07-16T05:06
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

### [[07-16-26 Thu]]

> [!note]- AI: UK designates AWS, Google Cloud, Microsoft, Oracle as critical financial infrastructure (FT)
> The UK's Prudential Regulation Authority placed the four largest cloud AI providers under the systemic oversight framework reserved for firms capable of destabilising the financial system, requiring mandatory operational resilience rules, concentration-risk reporting, and supervisory inspections. The ECB issued parallel guidance the same week, giving every significant European bank until October 31 to demonstrate it can absorb an AI-related operational shock. Together, the moves mark the most consequential AI governance escalation in financial services since cloud computing emerged — and the first time AI infrastructure firms are regulated as systemic risk vectors in the West. [Mintz](https://www.mintz.com/insights-center/viewpoints/54941/2026-07-08-ai-washington-report-july-2026-edition)

> [!note]- Tech: Microsoft axes 3,200 Xbox roles — gaming unit bears two-thirds of 4,800-job cut (TechCrunch)
> Microsoft confirmed its Xbox division will lose 3,200 roles through fiscal year 2027, with 1,600 positions eliminated on July 6 — making gaming the hardest-hit segment of the company's broader 4,800-person restructuring (roughly 2.1% of its global workforce). The cuts span game studios, publishing, and marketing teams inherited from the $69 billion Activision Blizzard acquisition. The reduction is the largest gaming-sector headcount cut of 2026 and raises fresh questions about Microsoft's post-acquisition strategy for its gaming empire. [TechCrunch](https://techcrunch.com/2026/07/06/the-running-list-major-tech-layoffs-in-2026-where-employers-cited-ai/)

> [!note]- Macro: June CPI 3.5% below 3.8% forecast — stocks rally, chips rebound; WTI $79.56, Brent $84.95 (CNBC)
> The June consumer price index came in at 3.5% year-on-year, beating the 3.8% consensus as easing energy prices provided relief, sending US stocks higher with chip shares leading the bounce. Oil rallied after President Trump dropped a proposed 20% fee on ships transiting the Strait of Hormuz, with WTI futures up 1.8% to $79.56/bbl and Brent up 2.0% to $84.95. The softer inflation print trimmed near-term Fed rate-hike odds, offering temporary relief from the 2026 stagflation narrative after weeks of energy-driven pressure. [CNBC](https://www.cnbc.com/2026/07/13/stock-market-today-live-updates.html)

> [!breaking]- World: Hungary's Orbán ousted after 16 years — Péter Magyar wins PM, pledges EU reset (Reuters)
> Hungary's national elections ended Viktor Orbán's 16-year grip on power as opposition leader Péter Magyar won the premiership, overturning the EU's longest-standing internal holdout on Ukraine aid, Russia sanctions, and rule-of-law reforms. Magyar pledged to deepen ties with Austria and Central European partners and restore Hungary's standing within EU institutions. The result removes a persistent veto block that had complicated Brussels' consensus-building on major foreign and security policy, and analysts called it the most consequential Central European political shift since 2010. [DB Research](https://www.dbresearch.com/PROD/IE-PROD/PROD0000000000632129/This_Month_in_Geopolitics:_July_2026.PDF)

> [!note]- Malaysia: PN wiped out in Johor as BN wins 48/56 — PAS eyes BN pact for NS poll, Muhyiddin cries betrayal (FMT)
> Perikatan Nasional lost all 33 seats it contested in Johor's state election as Barisan Nasional swept 48 of 56 constituencies — the opposition's worst Johor showing in decades. In the aftermath, PAS began quiet talks with BN on an electoral pact for the Negeri Sembilan state election (August 1), bypassing PN's Supreme Council entirely. Bersatu president Muhyiddin Yassin publicly slammed the move as a violation of coalition protocol and a betrayal of the shared opposition front, deepening a fracture that could redraw Malaysia's political landscape before the next general election. [Free Malaysia Today](https://www.freemalaysiatoday.com/category/nation/2026/07/15/muhyiddin-slams-pas-for-holding-alliance-talks-with-bn)

> [!breaking]- Science: Ebola in DRC kills 754+, third-largest outbreak ever — no vaccine, spreading internationally (NPR)
> The DRC's 2026 Ebola outbreak surpassed 2,000 confirmed cases and 754 deaths as of July 15, caused by the Bundibugyo strain for which no approved vaccine or treatment exists, making it the third-largest Ebola outbreak in history. The outbreak is now the fastest-growing on record: 1,000 cases in just 40 days versus 235 days in the 2018 crisis. Cases have been confirmed internationally in Uganda, Germany, and France, and the virus has breached two new DRC provinces; active conflict zones are hampering containment teams' access to affected communities. [NPR](https://www.npr.org/2026/07/15/g-s1-133630/ebola-congo-deaths)

> [!note]- [[07-15-26 Wed]]
> 
> > [!note]- AI: Anthropic launches Claude Science Workbench — Opus 4.8 connects to 60+ research databases (Anthropic)
> > Anthropic launched the Claude Science Workbench, a research tool that links Claude Opus 4.8 directly to more than 60 curated scientific databases, accessible at claude.com/science. The platform targets academic researchers, independent scientists, and biotech startups, paired with an AI for Science grants program offering up to $30,000 in API credits to 50 projects (applications closed today). The launch marks Anthropic's sharpest move into vertical scientific tooling — positioning Claude as an active lab co-pilot rather than a general-purpose assistant. [LLM Stats](https://llm-stats.com/ai-news)
> 
> > [!note]- Tech: Meta cuts 8,000 jobs (10% of workforce), redeployes 7,000 to AI roles — Zuckerberg: "success isn't a given" (TechCrunch)
> > Meta announced it is eliminating roughly 8,000 employees — about 10% of its global workforce — while simultaneously moving approximately 7,000 staff into new AI-focused roles, the single largest AI-driven restructuring in tech in 2026. CEO Mark Zuckerberg told staff the cuts were necessary because "success isn't a given" in the AI race, signalling that savings from legacy headcount will fund the AI pivot. Meta's round pushes 2026's total tech layoffs past 166,000 impacted workers, with 56% of layoff events this year explicitly citing AI. [TechCrunch](https://techcrunch.com/2026/07/06/the-running-list-major-tech-layoffs-in-2026-where-employers-cited-ai/)
> 
> > [!note]- Macro: Hormuz oil shock deepens — Brent up 4%, Bitcoin slides to $62,600, Fed rate-hike odds jump to 36% (CoinDesk)
> > Risk-off sentiment swept markets after weekend strikes around the Strait of Hormuz — de facto closed for 136 days — sent Brent crude up nearly 4% while US equity futures slipped 0.3% and European stocks fell ~1%. Bitcoin retreated to $62,600 as traders exited riskier assets amid inflation concerns tied to sustained energy-price pressure. Prediction markets now assign a 36% probability of a Fed rate hike this month, a sharp shift from near-zero odds earlier in July. [CoinDesk](https://www.coindesk.com/daybook-us/2026/07/14/u-s-iran-escalation-weighs-on-bitcoin-stocks-as-oil-climbs)
> 
> > [!breaking]- World: DRC Ebola fastest-growing outbreak on record — 702 dead, virus breaches two new provinces; WHO: "This is a fire" (UN News)
> > The DRC's Ebola outbreak has spread to two new northeastern provinces — Haut-Uele (bordering South Sudan and CAR) and Tshopo (home to the major city of Kisangani) — reaching 1,926 confirmed cases and 702 deaths, now the third-largest Ebola outbreak on record. The WHO declared it the fastest-growing outbreak ever: 1,000 cases in just 40 days, versus 235 days in the 2018 North Kivu crisis. Imported cases have been confirmed in Uganda (20 cases, 2 deaths), Germany, and France, raising acute international containment concerns. [UN News](https://news.un.org/en/story/2026/07/1167933)
> 
> > [!note]- Malaysia: PKR backbenchers flip to back revised AG decoupling bill; Social Work Profession Act 2026 also passes Dewan Rakyat (Malay Mail)
> > PKR backbenchers who previously objected to the bill decoupling the public prosecutor's role from the Attorney General's Chambers reversed position to back the revised edition, clearing a key parliamentary hurdle for a reform long sought by rule-of-law advocates. A separate measure, the Social Work Profession Act 2026, also passed Dewan Rakyat in the same sitting, establishing a statutory council to regulate social workers nationwide. Both bills clearing in one session marks an unusually active legislative day. [Malay Mail](https://www.malaymail.com/)
> 
> > [!note]- Science: Yale identifies two neuron proteins driving Parkinson's tau spread — potential new drug target revealed (ScienceDaily)
> > Yale University scientists discovered two neuron surface proteins that appear to facilitate cell-to-cell transmission of the toxic tau protein underlying Parkinson's disease, pinpointing a mechanism that could serve as a direct drug target. The finding addresses a fundamental open question in Parkinson's biology — how tau propagates through the brain — and opens a pathway toward treatments that slow or arrest progression rather than only managing symptoms. The discovery adds to growing evidence that prion-like protein spread drives multiple neurodegenerative diseases. [ScienceDaily](https://www.sciencedaily.com/)
> 
> > **Evening update**
> 
> > [!note]- Singapore & Malaysia: President Tharman concludes three-day Malaysia state visit — energy and food security cooperation deepened (MFA Singapore)
> > Singapore President Tharman Shanmugaratnam departed Kuala Lumpur on July 15, concluding a three-day state visit during which both nations pledged deeper cooperation on food security, energy, and maritime governance. PM Anwar Ibrahim and President Tharman jointly reaffirmed commitment to UNCLOS and freedom of navigation — a pointed signal amid regional tensions. Bilateral trade surged 14.5% year-on-year to RM189.9 billion in the first five months of 2026. [The Edge Malaysia](https://theedgemalaysia.com/node/810687)
> 
> > [!note]- Malaysia: Johor by-election tests Anwar's coalition as opposition mounts coordinated challenge (The Star)
> > A Johor state constituency by-election is drawing national attention as the clearest barometer of public sentiment toward PM Anwar Ibrahim's Madani government since the 2023 state polls. Opposition parties are capitalising on cost-of-living grievances and governance concerns, making a coordinated push for an upset that would pressure Anwar's coalition calculus. The result is expected to influence the timing and strategy of the next general election. [The Star](https://www.thestar.com.my/aseanplus/aseanplus-news/2026/07/07/asean-news-headlines-at-10pm-on-tuesday-july-7-2026)
> 
> > [!note]- World: Trump scraps 20% Hormuz shipping fee — pivots to Gulf trade deals after fourth night of Iran strikes (Al Jazeera)
> > President Trump abandoned plans to impose a 20% fee on shipping through the Strait of Hormuz, saying he would instead pursue trade and investment deals with Gulf states — a potential de-escalation signal after four consecutive nights of US military strikes against Iran. The Strait remains effectively closed for over 136 days, keeping energy markets on edge. Analysts say the pivot hints Washington may prefer a negotiated path over sustained military escalation. [Al Jazeera](https://www.aljazeera.com/news/)
> 
> > [!note]- World: California leads multistate lawsuit to block Paramount-Warner Bros mega-merger (NPR)
> > A coalition of US states including California filed suit to halt Paramount Global's proposed acquisition of Warner Bros. Discovery — the largest entertainment industry merger attempt of 2026. Plaintiffs argue the deal would harm competition across streaming, film, and television distribution at the expense of consumers and independent studios. The case is a key test of antitrust enforcement posture toward major media consolidation in the post-streaming era. [NPR](https://www.npr.org/2026/07/13/nx-s1-5879286/paramount-warner-bros-discovery-lawsuit)
> 
> > [!note]- Tech: China's anthropomorphic AI rules take effect July 15 — ByteDance and Alibaba must disable humanlike agent features (AIToolsRecap)
> > China's new regulations restricting anthropomorphic AI behaviours came into force today, requiring ByteDance, Alibaba, and other domestic AI companies to disable features that allow AI agents to appear human — including voice personas, emotional responsiveness, and identity mimicry. Western AI labs face no equivalent restrictions, widening the regulatory gap between Beijing and Washington on AI persona rules. The move reflects Beijing's effort to curb AI's social influence ahead of anticipated mass agent deployment. [AIToolsRecap](https://aitoolsrecap.com/Blog/AINewsJuly2026.aspx)
> 
> > [!note]- Economy: IMF slashes 2026 global growth forecast to 0.7% — steepest peacetime deceleration since 2008 (IMF)
> > The IMF revised its 2026 global growth outlook sharply downward to just 0.7%, from 3.7% in 2025, citing the compounding drag of the Hormuz supply shock, US-China trade fragmentation, and tighter monetary conditions across advanced economies. A rebound to 6.5% is projected for 2027, contingent on conflict resolution and easing inflation. Emerging markets and commodity exporters face the sharpest near-term pain as energy revenue assumptions collapse. [IMF](https://www.imf.org/en/news/articles/2026/07/08/tr070826-weo-press-briefing-transcript-july-8-2026)
