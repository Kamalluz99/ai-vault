---
created:
updated: 2026-07-19T05:00
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

### [[07-19-26 Sun]]

> [!note]- AI: Autonomous AI agents dominate July 2026 — industry pivots from model size to task completion (ZoneTechify)
> The defining shift of July 2026 is the industry abandoning raw model-size races in favour of usefulness, cost, and reliability — with autonomous AI agents (systems that complete multi-step workflows without supervision) emerging as the category that moves AI from "answering questions" to "completing work." Inference costs for a GPT-3.5-level model have fallen more than 280-fold since late 2022 and the curve continues steepening, making capable AI economically viable at enterprise scale. The UN Independent International Scientific Panel on AI released its preliminary report this month urging binding global governance frameworks before autonomous systems outpace oversight capacity. [ZoneTechify](https://www.zonetechify.com/blog/ai-news-july-2026-latest-ai-developments)

> [!note]- Tech: TSMC Q2 profit +77% confirmed but shares fell on "priced-in" reads; chip stocks −9% for the week (CNBC)
> Taiwan Semiconductor's Q2 profit surged 77% year-on-year, topping estimates, yet shares fell ~4% as investors treated the blow-out print as already priced in — the second straight session where strong chip earnings triggered a pullback rather than a rally. Nvidia expanded its physical AI ecosystem in Japan, and Alibaba and Baidu surged in Hong Kong on an Apple AI partnership. The PHLX Semiconductor Index (SOX) slid ~9% for the week, its third decline in four, deepening a divide between AI hardware fundamentals and market sentiment. [CNBC](https://www.cnbc.com/technology/)

> [!breaking]- Macro: S&P 500 −1.6% weekly, Nasdaq −2.9%; Brent >$85/bbl as US-Iran Hormuz battle escalates (Schwab/CNBC)
> US equities posted another losing week — S&P 500 −1.6%, Nasdaq −2.9%, Dow −0.9% — as a chip-sector rout, Netflix's 10% post-earnings drop, and surging oil converged. Brent crude extended above $85/bbl as US-Iran strikes slow energy flows through the Strait of Hormuz. Friday close: S&P 500 at 7,457.69 (−1.01%), Nasdaq at 25,520.24 (−1.4%), Dow at 52,146.42 (−407 pts). Consumer pessimism remains elevated at 61% despite earlier CPI relief. [Schwab](https://www.schwab.com/learn/story/stock-market-update-open)

> [!breaking]- World: FIFA World Cup 2026 Final today — Argentina vs Spain at MetLife; US-Iran strikes intensify over Hormuz (ESPN/CNN)
> The 2026 FIFA World Cup reaches its finale today at MetLife Stadium with Argentina facing Spain — the first final featuring the top two FIFA-ranked sides since the rankings were introduced in 1992. In the Middle East, the US and Iran exchanged infrastructure and military strikes over the weekend as their Strait of Hormuz standoff intensified; Brent is above $85/bbl on slowing energy flows. In South America, Venezuela's earthquake death toll climbed to 2,295 with acting president Delcy Rodriguez declaring seven days of national mourning. [ESPN](https://www.espn.com/soccer/story/_/id/49381872/world-cup-2026-today-live-updates-news-england-france-spain-argentina-july-17)

> [!note]- Malaysia & Singapore: NS election set — 103 candidates for 36 seats; Malaysia Fest 2026 at Singapore Expo July 30-Aug 2 (The Star)
> Nominations closed for Malaysia's Negeri Sembilan state election with 103 candidates confirmed across all 36 seats — following BN's Johor landslide, the race tests coalition momentum with PAS-BN talks adding tactical complexity. Separately, Malaysia Fest 2026 will be held at Singapore Expo July 30 to August 2 under the theme "Unveil the Wonders of Malaysia," showcasing premium agro-products including Chokanan mango, Cempedak King, Giant Sapodilla, and Lohan guava. [The Star](https://www.thestar.com.my/aseanplus/aseanplus-news/2026/07/17/malaysia-fest-2026-to-promote-unique-malaysian-agro-products-in-singapore)

> [!note]- Science: India's Vikram-1 successfully reaches orbit July 18 — 3rd nation with private orbital launch; Starship Flight 13 Monday (ScienceDaily)
> Skyroot Aerospace's Vikram-1 successfully achieved orbit on July 18, making India the third nation with a privately built orbital launch capability — a milestone expanding commercial space beyond the US and China. SpaceX has completed stacking of both Starship stages ahead of Flight 13, scheduled for Monday July 20. Scientists also found evidence that a Cascadia megaquake could trigger a secondary rupture on the San Andreas Fault, raising cascading multi-fault risk assessments for the US Pacific Northwest. [ScienceDaily](https://www.sciencedaily.com/)

> [!note]- NKE: $43.76 (+4.21%); P&L −$1,285; restructuring retail strategy amid declining online sales (Yahoo Finance)
> Nike (NKE) most recently traded at $43.76 (+4.21%), with the 46-share position at $71.69 avg cost carrying an unrealised loss of −$1,285 (46 × −$27.93). The company continues restructuring — closing stores and grappling with declining online sales and China competition; the turnaround timeline remains uncertain. Analyst consensus remains Buy at an average 12-month target of $51.30; 52-week range $40.00–$80.17. [Yahoo Finance](https://finance.yahoo.com/quote/NKE/)

> [!note]- [[07-18-26 Sat]]
> 
> > [!breaking]- AI: 200+ economists and 16 Nobel laureates demand urgent AI governance — disruption "larger than Industrial Revolution" (UN News)
> > More than 200 economists and AI researchers — including 16 Nobel laureates — signed an open letter demanding policymakers "must act now" to prepare for AI's economic impact, warning the transformation could be "larger than the Industrial Revolution, but unfolding over a vastly shorter time frame." The UN Independent International Scientific Panel on AI simultaneously released its preliminary report warning the governance window remains open but may not stay open much longer, stressing the need for binding international frameworks before autonomous AI systems scale beyond current oversight capacity. The joint signals from top economists and UN bodies represent the most coordinated expert pressure on governments since the 2023 AI Safety Summit. [UN News](https://news.un.org/en/story/2026/07/1167848)
> 
> > [!note]- Tech: Anthropic advances toward mega-IPO as bankers arrange investor meetings; SpaceX dips below $135 IPO price (TechStartups)
> > Anthropic is moving toward a major IPO with investment bankers now lining up investor meetings, marking the highest-profile AI lab listing in progress since OpenAI's private valuation crossed $300 billion. SpaceX shares fell below their $135 IPO price for the first time — a notable reversal for a stock that had surged more than 50% post-listing on AI and satellite tailwinds. The two contrasting moves reflect a bifurcation within AI infrastructure investing: pure-model labs gaining premium, hardware-adjacent space plays correcting. [TechStartups](https://techstartups.com/)
> 
> > [!breaking]- Macro: S&P 500 −1.01% to 7,457; Nasdaq −1.4%; chip rout + Netflix −10% + oil >$80/bbl trigger broad selloff (CNBC/Schwab)
> > US equities fell sharply on Friday as three headwinds converged: the PHLX Semiconductor Index neared 20% off recent highs as investors rotated out of AI-hardware and memory names; Netflix tumbled 10% on earnings; and oil climbed above $80/bbl amid intensifying Middle East conflict. The S&P 500 closed at 7,457.69 (−1.01%), Nasdaq at 25,520.24 (−1.4%), and the Dow lost 406.55 pts (−0.77%) to 52,146.42. June housing starts beat but building permits missed; 61% of Americans now say they are pessimistic about the economic outlook. [Schwab](https://www.schwab.com/learn/story/stock-market-update-open)
> 
> > [!breaking]- World: Argentina beats England 2-1 (Messi ×2 assists) — faces Spain in FIFA World Cup 2026 final; US strikes Iran again (CNN)
> > Lionel Messi delivered two assists as Argentina overturned a deficit to beat England 2-1 in the World Cup 2026 semifinal, setting up a showpiece final against Spain. Simultaneously, the US military executed a second wave of strikes on Iran targeting infrastructure used to threaten vessels in the Strait of Hormuz; Iran retaliated by hitting Kuwait border posts and an offshore oil rig. Secretary of State Marco Rubio notified Congress that Syria will be removed from the US "state sponsor of terrorism" list — a diplomatic pivot signalling a broader Middle East recalibration. [CNN](https://www.cnn.com/)
> 
> > [!note]- Malaysia & Singapore: Tharman says SG-MY partnership built on "mutual respect"; PM Wong champions mother tongue languages (Mothership)
> > Singapore President Tharman Shanmugaratnam stated that the Singapore-Malaysia partnership is driven by mutual respect and understanding of each other's interests, reaffirming ties following his July 13–15 state visit that accelerated the Johor-Singapore Special Economic Zone. Prime Minister Lawrence Wong separately emphasised that mother tongue languages connect Singaporeans to roots, values, and cultural heritage — elevating the policy profile of multilingual education in a week of deepened bilateral dialogue. [Mothership](https://mothership.sg/)
> 
> > [!note]- Science: India's Skyroot Vikram-1 attempts first private orbital launch Saturday; Perseverance completes a full marathon on Mars (ScienceDaily)
> > Skyroot Aerospace's Vikram-1 rocket, India's first privately built orbital launch vehicle, was scheduled to attempt to reach orbit early Saturday morning — a milestone that would place India among a handful of countries with a private orbital rocket capability. NASA's Perseverance rover hit a symbolic milestone on July 14, completing the equivalent of a full marathon (26.2 miles / 42.2 km) across Martian terrain since landing in February 2021. Both events mark a broadening of space exploration beyond traditional state agencies. [ScienceDaily](https://www.sciencedaily.com/)
> 
> > [!note]- NKE: $44.12 (+3.16%, Jul 16); P&L −$1,268; World Cup jersey shortage — 28% sold out, 4× Adidas turnover rate (Yahoo Finance)
> > Nike (NKE) last closed at $44.12 on July 16 (+3.16% from prev close $42.77), with the 46-share position at an average cost of $71.69 carrying an unrealised loss of −$1,268 (46 × −$27.57). A notable side story: NKE is experiencing significant World Cup jersey shortages — 28% of authenticated World Cup merchandise sold out within two weeks and inventory turned over 4× faster than Adidas, prompting emergency restocking after the US team's exit. Analyst consensus remains Buy at an average 12-month target of $51.30. [Yahoo Finance](https://finance.yahoo.com/quote/NKE/)
> 
> > **Evening update**
> 
> > [!note]- Singapore & Malaysia: SG moves to block under-18s from platforms failing child safety standards — Josephine Teo (Mothership)
> > Singapore announced plans to block minors under 18 from accessing social media platforms that do not meet child safety standards, with Minister for Digital Development and Information Josephine Teo leading the regulatory push. Platforms would need to implement robust age-verification and child-protection measures or risk exclusion for young users — one of Southeast Asia's firmest government stances on minors' digital safety to date. The move aligns Singapore with Australia's social media restrictions and signals a broader regional rethink of Big Tech's obligations toward young users. [Mothership](https://mothership.sg/)
> 
> > [!note]- Malaysia: Negeri Sembilan candidates file nominations for Aug 1 state election (Free Malaysia Today)
> > Candidates filed nomination papers for the Negeri Sembilan state election set for August 1, marking Malaysia's first major ballot since Barisan Nasional's sweep of Johor. PAS is separately mapping its Sarawak state election strategy, eyeing at least eight seats, while quiet BN-PAS talks over Negeri Sembilan complicate the opposition front and have drawn sharp condemnation from Muhyiddin Yassin over protocol breaches. The NS result will test whether BN's momentum can extend beyond Johor before the next general election. [Free Malaysia Today](https://www.freemalaysiatoday.com/)
> 
> > [!note]- World: Magnitude 7.4 earthquake strikes off Mexico's Pacific coast — no casualties reported (Reuters)
> > A powerful 7.4-magnitude earthquake struck off Mexico's southeastern Pacific coast on July 18, prompting authorities to deploy civil protection teams to coastal communities for damage assessments. No casualties or significant structural damage were immediately confirmed, though residents in low-lying areas were briefly put on alert. Mexico sits atop one of the world's most seismically active convergence zones and has experienced a string of significant tremors this year. [Reuters](https://www.reuters.com/)
> 
> > [!note]- World: Belgium records ~2,000 excess deaths from June–July heat wave as European toll mounts (Reuters)
> > Belgian health authorities registered approximately 2,000 excess deaths linked to an intense heat wave that swept the country from late June through mid-July 2026, with delayed administrative reporting suggesting the final toll may rise further. The figures add to a growing body of evidence that extreme heat is now one of Europe's leading seasonal public health risks, with summer mortality rates increasing sharply against pre-industrial baselines. Climate scientists warned such lethal events could occur multiple times per decade in Central and Western Europe by the 2040s without deeper emissions cuts. [Reuters](https://www.reuters.com/)
> 
> > [!note]- Tech: Oracle to cut 30,000 employees to fund $500B Stargate AI infrastructure push (AIToolsRecap)
> > Oracle announced plans to eliminate up to 30,000 employees as it redirects capital into the $500 billion Stargate AI infrastructure partnership — among the starkest illustrations yet of how frontier AI hardware investment is being funded across the enterprise software industry. The cuts follow Microsoft's 4,800 and Meta's 8,000 job reductions this month, all explicitly linked to AI pivots, pushing 2026's tech-sector layoff count well past 200,000. Analysts noted the scale signals that AI infrastructure now carries sufficient strategic premium to justify mass displacement even at mature, profitable software companies. [AIToolsRecap](https://aitoolsrecap.com/Blog/AINewsJuly2026.aspx)
> 
> > [!note]- Science: AI tool flags integrity issues in 250,000 of 2.6 million cancer research papers (ScienceDaily)
> > Researchers deployed a large-scale AI tool to screen 2.6 million cancer research papers published between 1999 and 2024, identifying more than 250,000 studies — roughly one in ten — with potential data-integrity problems including manipulated figures, duplicated results, and statistical anomalies. The analysis represents what experts are calling one of the most sweeping integrity audits in biomedical science, raising urgent questions about peer review standards, publication incentives, and retraction rates. Calls are growing for journals and funding bodies to adopt systematic AI-assisted screening as a standard pre-publication step. [ScienceDaily](https://www.sciencedaily.com/)

> [!note]- [[07-17-26 Fri]]
> 
> > [!breaking]- AI: Google Gemini 3.5 Pro launches — 2M-token context, $1.25/M input, undercuts GPT-5.6 Sol 4× as World AI Conference opens in Shanghai (AIToolsRecap)
> > Google DeepMind's Gemini 3.5 Pro launched today in general availability with a 2-million-token context window and Deep Think extended reasoning mode behind the $250/month Ultra subscription, rebuilt from a new pretraining run rather than adapted from 2.5 Pro. API input pricing at $1.25/M tokens undercuts GPT-5.6 Sol by 4× on cost, making it the most competitively priced frontier model at launch. The release lands the same day Shanghai's 2026 World AI Conference opened with President Xi Jinping attending in person for the first time since 2018. [AIToolsRecap](https://aitoolsrecap.com/Blog/AINewsJuly2026.aspx)
> 
> > [!note]- Tech: Apple sues OpenAI — alleges coordinated hiring of 400+ employees extracted silicon and on-device AI trade secrets (Build Fast with AI)
> > Apple filed suit in Northern California federal court on July 11 alleging OpenAI orchestrated the targeted recruitment of more than 400 former Apple employees — including silicon engineers and on-device AI specialists — in what Apple calls a coordinated extraction of confidential technology. The complaint frames the hiring campaign not as normal talent competition but as a deliberate strategy to acquire Apple's proprietary hardware-AI integration knowledge. The suit escalates legal tensions between two of the world's most valuable companies and could reshape how frontier AI labs recruit from established tech hardware firms. [Build Fast with AI](https://www.buildfastwithai.com/blogs/ai-news-today-july-14-2026)
> 
> > [!note]- Macro: TSM +77% on earnings but shares fall 4%; retail sales miss at +0.2%; oil and yields weigh ahead of Michigan sentiment (CNBC/Schwab)
> > Taiwan Semiconductor's Q2 earnings surged 77% year-on-year yet shares dropped more than 4% — the second straight session where a blow-out chip print triggered a sector pullback, raising concern that AI infrastructure expectations are already priced beyond what even strong results can support. June retail sales rose only 0.2% month-on-month, below the 0.3% consensus. Rising Treasury yields and Gulf-tension oil prices are adding further headwinds on a data-heavy day that includes June housing starts, industrial production, and preliminary July University of Michigan consumer sentiment. [Schwab](https://www.schwab.com/learn/story/stock-market-update-open)
> 
> > [!breaking]- World: UK designates Iran's IRGC as terrorist organisation; Iran strikes Kuwait border posts and offshore rig (Al Jazeera)
> > The United Kingdom announced it will formally designate Iran's Islamic Revolutionary Guards Corps as a terrorist organisation and ban support for the group — aligning with Washington while going further than Brussels has been willing to go. Iran separately struck three Kuwait land border posts and an offshore Kuwait Oil Company rig, prompting a formal condemnation from Kuwait's defence ministry. US Vice President JD Vance confirmed US-Iran technical talks are underway in Doha under a 14-point memorandum, signalling Washington still prefers a negotiated off-ramp over sustained military escalation. [Al Jazeera](https://www.aljazeera.com/news/)
> 
> > [!note]- Singapore & Malaysia: JS-SEZ accelerates as bilateral trade tops S$120B following Tharman's state visit (AsiaNews)
> > Following Singapore President Tharman Shanmugaratnam's concluded state visit to Malaysia (July 13–15), both governments are accelerating the Johor-Singapore Special Economic Zone, positioning southern Peninsular Malaysia as a regional manufacturing and innovation hub. Annual bilateral trade now exceeds S$120 billion — up 14.5% year-on-year — reflecting deep economic interdependence as both countries navigate global supply chain disruptions together. Both leaders jointly reaffirmed UNCLOS and freedom of navigation, a pointed signal amid Strait of Hormuz tension affecting Southeast Asian trade routes. [AsiaNews](https://www.asianews.it/en/south-east-asia/malaysia/singapore-and-malaysia-strengthen-cooperation-in-the-face-of-global-crises)
> 
> > [!note]- Science: NASA awards $600M for four 2028 commercial Moon landings; Uganda confirms Marburg case alongside Ebola (Space.com)
> > NASA committed nearly $600 million to four commercial Moon landing missions planned for late 2028, each carrying instruments to improve lunar navigation, study hazardous dust dispersal during landings, and map the radiation environment in preparation for crewed Artemis surface operations. SpaceX separately launched 81 satellites on Transporter-17 from California — the Falcon 9 booster landing on a drone ship at sea. The Africa CDC confirmed an isolated Marburg virus case in Uganda alongside the ongoing DRC Ebola outbreak, marking a rare dual-pathogen emergency in East Africa. [Space.com](https://www.space.com/space-exploration/launches-spacecraft/spacex-falcon-9-transporter-17-rideshare-launch-81-satellites)
> 
> > [!note]- NKE: $44.12 (+3.16%); P&L −$1,268; Q4 beat on tariff recovery; analyst avg target $51.30 Buy (Yahoo Finance)
> > Nike (NKE) gained 3.16% to $44.12 on July 16 (range $42.90–$44.40; 52-wk $40–$80.17) after fiscal Q4 2026 revenue of ~$11.0 billion beat the $10.85 billion consensus, aided by a one-time $986 million tariff recovery that helped stabilised sentiment around a stock down 32% YTD. The 46-share position at an average cost of $71.69 carries an unrealised loss of −$1,268 (46 × −$27.57). Stifel reiterated Hold at $45 flagging low-to-mid single-digit revenue declines through year-end; overall analyst consensus remains Buy at an average 12-month target of $51.30. [Yahoo Finance](https://finance.yahoo.com/quote/NKE/)
> 
> > **Evening update**
> 
> > [!note]- Singapore & Malaysia: Shanmugam and Tan See Leng win Bloomberg defamation suit (Mothership)
> > Singapore's Law and Home Affairs Minister K. Shanmugam and Health Minister Tan See Leng won their defamation lawsuit against Bloomberg LP, with the court ruling in their favour over articles the ministers said falsely implied misconduct in their lease of state bungalows. The case was closely watched as a test of Singapore's defamation laws applied to a major international financial news organisation. Bloomberg has not indicated whether it will appeal the ruling. [Mothership](https://mothership.sg/)
> 
> > [!note]- Malaysia: Two suspects detained over murder of 11-year-old Nurjilya Abdullah in Sabah (Malay Mail)
> > Malaysian police detained two suspects for questioning after the body of 11-year-old Nurjilya Abdullah was discovered near an under-construction house on a hillside in Kampung Numbak, Sabah. Authorities are treating the case as a murder inquiry and investigations are ongoing. The case has drawn widespread public outrage and renewed calls for stronger child protection measures in rural Sabah communities. [Malay Mail](https://www.malaymail.com/)
> 
> > [!breaking]- World: Bangkok music bar fire kills 30+, injures 70+ — Thailand nightlife safety under scrutiny (Al Jazeera)
> > A fire swept through a music bar in Bangkok in the early hours, killing more than 30 people and injuring over 70 in one of Thailand's deadliest nightlife disasters in years. The blaze reignited national debate over fire safety and emergency exit enforcement at entertainment venues, with investigators examining the venue's structural layout and safety certifications. Authorities face pressure to overhaul licensing checks before the tourist high season resumes. [Al Jazeera](https://www.aljazeera.com/)
> 
> > [!note]- World: Hong Kong official warns booksellers after third independent bookstore raid in four months (NPR)
> > Hong Kong police raided independent bookstores for the third time in four months, targeting stores carrying titles deemed to threaten national security under the city's 2020 security law. A senior official subsequently warned remaining booksellers about the legal risks of stocking such material. Press freedom groups say the repeated sweeps are further contracting Hong Kong's literary and journalistic space. [NPR](https://www.npr.org/2026/07/16/g-s1-133931/hong-kong-official-warns-booksellers-on-security-risks-after-raids)
> 
> > [!note]- Tech: Apple Intelligence clears China CAC approval on Alibaba Qwen; Xi opens Shanghai World AI Conference (Al Jazeera)
> > Apple Intelligence received formal registration from China's Cyberspace Administration, specifying that it will run on Alibaba's Qwen language models — allowing Apple to offer AI features in its largest hardware market. President Xi Jinping attended the Shanghai World AI Conference in person for the first time since the event began in 2018, declaring AI "should not be a solo performance by a single country" and calling for equitable international access to AI benefits. The dual developments mark a pivotal moment for AI's globalisation and China's strategy of shaping international AI governance. [Al Jazeera](https://www.aljazeera.com/news/2026/7/17/ai-xi)
> 
> > [!note]- Science: Astronomers detect helium escaping from habitable-zone exoplanet LHS 1140b (Nature)
> > Astronomers detected helium escaping from the upper atmosphere of LHS 1140b, an exoplanet orbiting within its star's habitable zone and one of the strongest candidate worlds for surface liquid water beyond Earth. The detection confirms the planet has retained at least a partial atmosphere — a critical question given that red-dwarf stars bombard close-in worlds with intense radiation capable of stripping gas away. The finding positions LHS 1140b alongside K2-18b as a high-priority James Webb Space Telescope target for heavier biosignature gas searches. [Nature](https://www.nature.com/news)

> [!note]- [[07-16-26 Thu]]
> 
> > [!note]- AI: UK designates AWS, Google Cloud, Microsoft, Oracle as critical financial infrastructure (FT)
> > The UK's Prudential Regulation Authority placed the four largest cloud AI providers under the systemic oversight framework reserved for firms capable of destabilising the financial system, requiring mandatory operational resilience rules, concentration-risk reporting, and supervisory inspections. The ECB issued parallel guidance the same week, giving every significant European bank until October 31 to demonstrate it can absorb an AI-related operational shock. Together, the moves mark the most consequential AI governance escalation in financial services since cloud computing emerged — and the first time AI infrastructure firms are regulated as systemic risk vectors in the West. [Mintz](https://www.mintz.com/insights-center/viewpoints/54941/2026-07-08-ai-washington-report-july-2026-edition)
> 
> > [!note]- Tech: Microsoft axes 3,200 Xbox roles — gaming unit bears two-thirds of 4,800-job cut (TechCrunch)
> > Microsoft confirmed its Xbox division will lose 3,200 roles through fiscal year 2027, with 1,600 positions eliminated on July 6 — making gaming the hardest-hit segment of the company's broader 4,800-person restructuring (roughly 2.1% of its global workforce). The cuts span game studios, publishing, and marketing teams inherited from the $69 billion Activision Blizzard acquisition. The reduction is the largest gaming-sector headcount cut of 2026 and raises fresh questions about Microsoft's post-acquisition strategy for its gaming empire. [TechCrunch](https://techcrunch.com/2026/07/06/the-running-list-major-tech-layoffs-in-2026-where-employers-cited-ai/)
> 
> > [!note]- Macro: June CPI 3.5% below 3.8% forecast — stocks rally, chips rebound; WTI $79.56, Brent $84.95 (CNBC)
> > The June consumer price index came in at 3.5% year-on-year, beating the 3.8% consensus as easing energy prices provided relief, sending US stocks higher with chip shares leading the bounce. Oil rallied after President Trump dropped a proposed 20% fee on ships transiting the Strait of Hormuz, with WTI futures up 1.8% to $79.56/bbl and Brent up 2.0% to $84.95. The softer inflation print trimmed near-term Fed rate-hike odds, offering temporary relief from the 2026 stagflation narrative after weeks of energy-driven pressure. [CNBC](https://www.cnbc.com/2026/07/13/stock-market-today-live-updates.html)
> 
> > [!breaking]- World: Hungary's Orbán ousted after 16 years — Péter Magyar wins PM, pledges EU reset (Reuters)
> > Hungary's national elections ended Viktor Orbán's 16-year grip on power as opposition leader Péter Magyar won the premiership, overturning the EU's longest-standing internal holdout on Ukraine aid, Russia sanctions, and rule-of-law reforms. Magyar pledged to deepen ties with Austria and Central European partners and restore Hungary's standing within EU institutions. The result removes a persistent veto block that had complicated Brussels' consensus-building on major foreign and security policy, and analysts called it the most consequential Central European political shift since 2010. [DB Research](https://www.dbresearch.com/PROD/IE-PROD/PROD0000000000632129/This_Month_in_Geopolitics:_July_2026.PDF)
> 
> > [!note]- Malaysia: PN wiped out in Johor as BN wins 48/56 — PAS eyes BN pact for NS poll, Muhyiddin cries betrayal (FMT)
> > Perikatan Nasional lost all 33 seats it contested in Johor's state election as Barisan Nasional swept 48 of 56 constituencies — the opposition's worst Johor showing in decades. In the aftermath, PAS began quiet talks with BN on an electoral pact for the Negeri Sembilan state election (August 1), bypassing PN's Supreme Council entirely. Bersatu president Muhyiddin Yassin publicly slammed the move as a violation of coalition protocol and a betrayal of the shared opposition front, deepening a fracture that could redraw Malaysia's political landscape before the next general election. [Free Malaysia Today](https://www.freemalaysiatoday.com/category/nation/2026/07/15/muhyiddin-slams-pas-for-holding-alliance-talks-with-bn)
> 
> > [!breaking]- Science: Ebola in DRC kills 754+, third-largest outbreak ever — no vaccine, spreading internationally (NPR)
> > The DRC's 2026 Ebola outbreak surpassed 2,000 confirmed cases and 754 deaths as of July 15, caused by the Bundibugyo strain for which no approved vaccine or treatment exists, making it the third-largest Ebola outbreak in history. The outbreak is now the fastest-growing on record: 1,000 cases in just 40 days versus 235 days in the 2018 crisis. Cases have been confirmed internationally in Uganda, Germany, and France, and the virus has breached two new DRC provinces; active conflict zones are hampering containment teams' access to affected communities. [NPR](https://www.npr.org/2026/07/15/g-s1-133630/ebola-congo-deaths)
> 
> > **Evening update**
> 
> > [!note]- Singapore & Malaysia: STI snaps 10-session record run in Asia-wide AI chip rout (Jakarta Post)
> > Singapore's Straits Times Index slipped 21 points (0.4%) to 5,538 on Thursday, ending a ten-session winning streak the day after the index hit a new all-time high, as profit-taking swept Asian tech stocks. South Korea's Kospi led regional losses, tumbling as much as 7.6% at intraday lows before trimming declines, while Japan's Nikkei 225 fell 2.8% and MSCI's Asia Pacific gauge dropped 1.2% as investors grew skeptical the AI-driven rally can sustain elevated valuations. Analysts characterised Singapore's retreat as a healthy correction rather than a structural reversal given the STI's strong year-to-date performance. [The Jakarta Post](http://www.thejakartapost.com/business/2026/07/16/asian-stocks-mostly-sink-as-ai-worries-hammer-tech)
> 
> > [!note]- Malaysia: High Court orders JPJ chief to pay RM40k over 'MADANI' plate copyright (Malay Mail)
> > Malaysia's High Court ruled that the Road Transport Department director-general infringed the copyright of Hasan Azhari Hashim by copying his proposal to issue "MADANI" as a special vehicle number plate series, ordering RM40,000 in compensation and RM25,000 in costs. The MADANI branding became nationally prominent after PM Anwar Ibrahim adopted it as his government's social contract framework, adding political resonance to this rare successful IP claim against a senior government official. JPJ has not indicated whether it will appeal the ruling. [Malay Mail](https://www.malaymail.com/)
> 
> > [!breaking]- World: US Senator Lindsey Graham dies at 71 — sister sworn in as first woman to represent SC in Senate (NPR)
> > Republican Senator Lindsey Graham died Saturday at age 71 of aortic dissection, ending a 24-year Senate career defined by hawkish foreign policy and Judiciary Committee influence. South Carolina Governor Henry McMaster, acting on a suggestion by President Trump, appointed Graham's sister Darline Graham Nordone — who has never held elected office — to serve out the remainder of the term, making her the first woman ever to represent South Carolina in the US Senate. Nordone is expected to serve as caretaker until January 2027, with no decision yet on whether she will seek a full six-year term. [NPR](https://www.npr.org/2026/07/13/nx-s1-5891839/lindsey-graham-senate-seat-darline-graham)
> 
> > [!note]- World: US House passes Sunshine Protection Act to make daylight saving time permanent (Fox News)
> > The House of Representatives passed the Sunshine Protection Act, moving the US toward ending the biannual clock change by permanently locking in daylight saving time for over 330 million Americans. President Trump signalled support for the bill, which would ripple through global scheduling, financial markets, and cross-border trade if enacted. The legislation now moves to the Senate, where similar measures previously stalled; backers argue momentum is stronger than ever given broad bipartisan fatigue with the twice-yearly disruption. [Fox News](https://www.foxnews.com/politics/house-passes-major-daylight-saving-time-reform-trump-signals-support-ending-clock-change)
> 
> > [!note]- Tech: TSMC posts record Q2 revenue of $39.6B — June surges 68% YoY on AI chip demand (AIToolsRecap)
> > Taiwan Semiconductor Manufacturing Company reported record Q2 2026 revenue of US$39.6 billion, with June alone up 68% year-on-year, confirming AI hardware demand remains historically strong even as equities turned skeptical of AI valuations on the same day. The record quarter came alongside reports that Anthropic is in early talks with Samsung to develop custom Claude inference chips, deepening the integration of frontier AI labs with advanced foundries. Analysts noted a sharp divergence between TSMC's robust fundamentals and the sentiment-driven tech selloff across Asia. [AIToolsRecap](https://aitoolsrecap.com/Blog/AINewsJuly2026.aspx)
> 
> > [!note]- Economy: China Q2 GDP slows to 4.3% — first growth target miss since Covid as property investment plunges 18% (CNBC)
> > China's economy grew just 4.3% in the April-June quarter, its weakest pace since late 2022 and the first time it has fallen short of Beijing's 4.5–5% annual growth target since the pandemic, as real-estate investment collapsed 18% year-on-year and retail sales barely rose 1.3%. An AI-driven export surge and strong industrial output cushioned the miss, but economists warned the economy is dangerously unbalanced — heavy state capital flows into chips, AI, and EVs while services industries and private consumption languish. Mainland stocks were choppy in volatile trade following the release. [CNBC](https://www.cnbc.com/2026/07/15/china-gdp-retail-sales-investment-june-.html)
> 
> > [!note]- NKE: $42.86 (−2.06%); P&L −$1,326; avg analyst target $49.55 Buy (MarketBeat)
> > Nike closed at $42.86 on July 14 (−2.06%), with pre-market trading on July 15 showing a recovery to $43.27 (+0.94%). The 46-share position held at an average cost of $71.69 carries an unrealised loss of −$1,326 (46 × −$28.83). Analyst consensus remains "Buy" at an average 12-month price target of $49.55, though Berenberg (cut to $49), UBS (cut to $48), and Telsey Advisory (cut to $47) trimmed targets this week amid soft sportswear demand and strained wholesale relationships. [Source](https://www.marketbeat.com/stocks/NYSE/NKE/)

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
>
> > [!note]- NKE: $42.86 (−2.06%); P&L −$1,326; avg analyst target $49.55 Buy (MarketBeat)
> > Nike closed at $42.86 on July 14 (−2.06%), with pre-market trading on July 15 showing a recovery to $43.27 (+0.94%). The 46-share position held at an average cost of $71.69 carries an unrealised loss of −$1,326 (46 × −$28.83). Analyst consensus remains "Buy" at an average 12-month price target of $49.55, though Berenberg (cut to $49), UBS (cut to $48), and Telsey Advisory (cut to $47) trimmed targets this week amid soft sportswear demand and strained wholesale relationships. [Source](https://www.marketbeat.com/stocks/NYSE/NKE/)