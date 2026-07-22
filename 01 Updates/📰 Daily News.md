---
created:
updated: 2026-07-22T19:05
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

### [[07-22-26 Wed]]

> [!note]- AI: China's World AI Conference wraps; 400+ humanoid robots showcased, annual output to hit 100k units (Xinhua)
> The 2026 World AI Conference and High-Level Meeting on Global AI Governance concluded in Shanghai on July 20, showcasing over 400 humanoid robot products from Chinese companies — more than half the world's total — with capabilities spanning industrial sorting, tea ceremony, table tennis, and piano performance. China's annual humanoid robot output is projected to exceed 100,000 units in 2026, cementing Beijing's ambition to dominate the physical-AI sector. The conference launched the World Artificial Intelligence Cooperation Organization, a 29-nation intergovernmental body, and featured Xi Jinping's first in-person appearance at the event since 2018. [Xinhua](https://english.news.cn/20260720/e2550c55ecfd413188eb965e304c8be2/c.html)

> [!note]- Tech: Thomson Reuters to cut 500 engineering jobs; AI now drives 54% of all 2026 tech layoffs (InformationWeek)
> Thomson Reuters announced plans to eliminate up to 500 engineering roles as part of an AI-driven restructuring, the latest in a wave that has already cut 201,754 tech workers across 302 companies as of mid-July. Artificial intelligence has been explicitly cited in 54% of all 2026 layoff events — the highest share ever recorded — as firms from Oracle to Meta slash legacy headcount to fund AI pivots. The pattern signals a structural shift: software engineering roles built around pre-AI product stacks are being replaced faster than equivalent AI-native roles are being created. [InformationWeek](https://www.informationweek.com/it-staffing-careers/2026-tech-company-layoffs)

> [!note]- Macro: Gold at $4,082 on Middle East tensions; S&P 500 at 7,443 as July winning streak at risk (Yahoo Finance)
> Gold gained 1.86% to $4,082.73/oz on July 21 on safe-haven demand, though it remains more than 25% below its January 2026 record of $5,589/oz. The S&P 500 dipped 0.19% to 7,443.28 on Monday — every July since 2015 has ended higher, placing 2026 on the cusp of snapping an 11-year run as Q2 earnings and CPI data take centre stage. Oil continues near $80/bbl on Hormuz risk, while the Federal Reserve under Chair Kevin Warsh holds rates at 3.50–3.75% with no guidance. [Yahoo Finance](https://finance.yahoo.com/personal-finance/investing/article/gold-prices-today-monday-july-20-2026-gold-holds-above-4000-despite-continued-violence-in-the-middle-east-152926843.html)

> [!note]- World: Ukraine on defensive as Russia advances; Kursk footholds lost, NATO aid pledges yet to shift momentum (DB Research)
> Ukraine has relinquished its last positions inside Russia's Kursk region — seized in a surprise August 2024 cross-border incursion — and is now defending against Russian advances along the eastern front line. The July 7–8 NATO Ankara summit pledged €50 billion in joint procurement and a fresh €70 billion Ukraine aid package, but analysts say new commitments have not yet shifted battlefield momentum. US focus remains divided between the Gulf conflict and European security, with no ceasefire framework in sight. [DB Research](https://www.dbresearch.com/PROD/IE-PROD/PROD0000000000632129/This_Month_in_Geopolitics:_July_2026.PDF)

> [!note]- Malaysia: RON95 fuel up 5 sen to RM3.42/L for July 16–22 week as subsidy rationalisation continues (Paultan.org)
> Malaysia's weekly managed fuel pricing for July 16–22 set RON95 petrol at RM3.42 per litre — a five-sen increase from the prior week — while diesel rose 10 sen to RM4.07/L and RON97 was unchanged at RM4.00/L. The increases reflect PM Anwar Ibrahim's ongoing Madani subsidy rationalisation, gradually aligning RON95 prices toward market rates while managing fiscal savings. The fuel hike adds to cost-of-living pressures ahead of August 1 Negeri Sembilan polling day. [Paultan.org](https://paultan.org/2026/07/15/malaysian-fuel-prices-july-16-to-22-2026-diesel-up-10-sen-rm4-07-ron95-up-five-sen-to-rm3-42-per-litre/)

> [!note]- Science: Cascadia and San Andreas faults may sync — double quake could hit West Coast simultaneously (Phys.org)
> Scientists analysing deep-sea sediment cores found evidence that the Cascadia subduction zone and the San Andreas fault have ruptured in tandem at least three times in the past 1,500 years, potentially triggering each other within minutes or hours. The most recent candidate dual rupture was the 1700 Cascadia megathrust event, which would have sent seismic stress crashing down the San Andreas toward San Francisco. A simultaneous rupture of both systems would represent an unprecedented disaster corridor from Vancouver to San Francisco, though experts stress more research is needed before the triggering link is confirmed. [Phys.org](https://phys.org/news/2025-10-cascadia-megathrust-earthquake-trigger-san.html)

> **Evening update**

> [!note]- Singapore & Malaysia: JS-SEZ master plan finalised, Anwar-Lawrence Wong Q4 joint launch set (NST)
> Malaysia's Economy Ministry confirmed the Johor-Singapore Special Economic Zone (JS-SEZ) master plan is complete, with the formal launch aligned with the Malaysia-Singapore Leaders' Retreat in Q4 2026 to secure the highest-level bilateral commitment from PM Anwar Ibrahim and PM Lawrence Wong. The Johor Bahru–Singapore Rapid Transit System (RTS) Link remains on track for commercial operations in January 2027, deepening cross-border connectivity between the two neighbours. Together the two flagship initiatives represent the most structured deepening of Malaysia-Singapore economic integration in a generation, with annual bilateral trade now exceeding S$120 billion. [NST](https://www.nst.com.my/amp/news/nation/2026/07/1489960/singapore-malaysia-strengthen-ties-through-js-sez-rts-link)

> [!note]- Malaysia: Senate passes Cyber Security Bill 2026 — minimum 3-year jail for offences (The Sun)
> Malaysia's Senate passed the Cyber Security Bill 2026, establishing a mandatory minimum three-year prison sentence for cybersecurity offences and creating an enforcement framework aligned with international standards. The legislation marks a major step in PM Anwar Ibrahim's Madani government's digital governance agenda and positions Malaysia alongside Singapore and Australia in adopting legally binding minimum sentences for cyber crime. Separately, Anwar held campaign rallies in Seremban and Paroi on Wednesday as the Negeri Sembilan state election enters its final stretch ahead of the August 1 polling day. [The Sun](https://thesun.my/news/malaysia-news/malaysia-senate-passes-cyber-security-bill-2026/)

> [!note]- World: Zelenskyy fires Ukraine army chief Gen. Syrskyi, appoints Drapatyi as new commander (Euronews)
> Ukrainian President Volodymyr Zelenskyy dismissed Gen. Oleksandr Syrskyi as commander-in-chief of Ukraine's armed forces following days of public protests demanding his removal, and appointed battlefield general Mykhailo Drapatyi as his successor. The leadership change comes as Ukraine defends against sustained Russian advances along the eastern front line, months after relinquishing its last positions inside Russia's Kursk region. The reshuffle signals Kyiv's effort to restore military morale and public confidence as the war approaches its fifth year with no ceasefire in sight. [Euronews](https://www.euronews.com/video/2026/07/22/latest-news-bulletin-july-22nd-2026-midday)

> [!note]- World: Spain's World Cup champions parade through Madrid — 2 million fans, royals greet title winners (AP)
> Spain's 2026 FIFA World Cup-winning squad paraded through the streets of Madrid on Wednesday, with an estimated 2 million fans lining the route after their final victory over Argentina at MetLife Stadium on July 19. The players and coaching staff were received by Spain's royal family and Prime Minister Pedro Sánchez in a ceremony celebrating the nation's fourth World Cup title. The celebrations rank among the largest sporting gatherings in Madrid's history and cap a dominant Spanish tournament campaign that sealed their place as the joint-most successful nation in World Cup history. [AP](https://apnews.com/sports/soccer)

> [!note]- Tech: Google ships Gemini 3.6 Flash and 3.5 Flash-Lite; security-tuned Flash Cyber restricted to govts; 3.5 Pro still delayed (Build Fast with AI)
> Google released three new Gemini models on July 21–22: Gemini 3.6 Flash (a general-purpose update), Gemini 3.5 Flash-Lite (a low-cost economy tier), and Gemini 3.5 Flash Cyber — a security-tuned variant restricted to governments and vetted trusted partners. However, Gemini 3.5 Pro — the flagship model Google had signalled as its answer to top-tier rivals — has now missed its release window multiple times, with Google confirming it is still not shipping. The US government is separately weighing the creation of an independent body to evaluate leading AI models before or after public release amid rising governance pressure. [Build Fast with AI](https://www.buildfastwithai.com/blogs/ai-news-today-july-22-2026)

> [!note]- Economy: Wall St snaps 3-day losing streak — S&P 500 +0.89% near 7,509; chip stocks surge; Brent at $91.24 (Rio Times)
> Wall Street ended a three-day losing streak with the S&P 500 closing up 0.89% near 7,509, led by a semiconductor rally after stronger-than-expected export data from South Korea and Taiwan reinforced confidence in AI hardware demand. International Brent crude rose 2.26% to $91.24 per barrel, driven by heightened Middle East supply threats including Houthi rebel escalation near Gulf shipping lanes. The rebound offers partial relief to markets caught between resilient AI chip fundamentals and persistent geopolitical energy risk as the second half of 2026 begins. [Rio Times](https://www.riotimesonline.com/global-economy-briefing-july-22-2026/)

> [!note]- [[07-21-26 Tue]]
> 
> > [!note]- AI: Alibaba Qwen3.8 Max preview — 2.4T params, claims #2 behind Fable 5, going open-weight (Dataconomy)
> > Alibaba previewed Qwen3.8 Max on July 19–20 — a 2.4-trillion-parameter multimodal model the company claims ranks second globally, trailing only Claude Fable 5 in benchmark performance. Alibaba shares climbed as much as 5% in Hong Kong on the announcement, and the Qwen team confirmed the model will go open-weight "soon," breaking from its previous approach of keeping flagship Max models API-only. The release arrives days after Moonshot AI's Kimi K3 drop, deepening the wave of Chinese open-weight challenges to Western frontier labs. [Dataconomy](https://dataconomy.com/2026/07/20/qwen3-8-24t-parameters-alibaba-ai-model-launch/)
> 
> > [!note]- Tech: Moonshot AI plots $30B Hong Kong IPO after Kimi K3 wipes $3.3T from chip stocks (CryptoBriefing)
> > Moonshot AI, the Beijing company behind Kimi K3, is planning a Hong Kong IPO within six months targeting a valuation above $30 billion — up from roughly $4 billion at end-2025. The Kimi K3 release erased more than $3.3 trillion from global semiconductor market capitalisation in days, and Moonshot's latest funding round — backed by Alibaba, Tencent, and China Mobile — already values it at $20–30 billion. The company plans to dismantle its Cayman VIE structure while preserving foreign investor access via a joint-venture model. [CryptoBriefing](https://cryptobriefing.com/moonshot-hong-kong-ipo-30b-valuation/)
> 
> > [!note]- Macro: Markets steady — S&P +0.34%, oil at $81/bbl as Oman talks offer partial relief (TheStreet)
> > US equities held up with the S&P 500 up 0.34% and Nasdaq +0.65% despite ongoing Iran tensions, with oil retreating to around $81/bbl from Monday's $90.97 Asian-session spike as news of US-Iran talks in Oman provided partial relief. Gold held steady at roughly $4,027/oz while markets continue to price a dual-track environment — sustained military operations alongside a potential diplomatic off-ramp. The Federal Reserve remains on hold at 3.50–3.75% as sustained energy-price pressure complicates rate-cut expectations heading into Q3. [TheStreet](https://www.thestreet.com/stock-market-today/stock-market-today-dow-jones-sp-500-nasdaq-updates-july-20-2026)
> 
> > [!breaking]- World: US-Iran: Oman talks open as third US fatality confirmed; Hormuz still closed (CBS News)
> > US and Iranian negotiators opened talks in Oman even as American military strikes against Iran continued into a second week and a third US service member death was confirmed, bringing the total to three killed and one missing. The Trump diplomatic team — led by VP Vance, Jared Kushner, Steve Witkoff, and Secretary Rubio — is pursuing a dual-track approach of military pressure and negotiation, while Iran's foreign ministry simultaneously insists it has "no plans for negotiations." Washington has briefed options to expand operations against Iranian energy infrastructure if talks collapse; the Strait of Hormuz remains effectively closed. [CBS News](https://www.cbsnews.com/live-updates/iran-war-trump-ceasefire-talks-strait-of-hormuz/)
> 
> > [!note]- Malaysia: NS election Day 4 — BN targets 30+ seats riding Johor wave; Aug 1 polling (The Star)
> > The Negeri Sembilan state election campaign enters its fourth day with BN fielding candidates across all 36 seats, buoyed by its Johor landslide (48 of 56 seats won in July). PAS-BN coalition talks are deepening behind the scenes despite Bersatu's Muhyiddin Yassin publicly labelling them a betrayal — a fracture that could redraw the opposition landscape ahead of GE16. MUDA has opted out of NS to focus on national-election preparation; early voting is scheduled for July 28 and polling day is August 1. [The Star](https://elections.thestar.com.my/)
> 
> > [!note]- Science: KCL-286 — spinal cord drug repairs DNA damage in Alzheimer's mouse models (ScienceDaily)
> > King's College London researchers found that KCL-286, a retinoic acid receptor-β agonist already cleared in Phase 1 human safety trials for spinal cord injury, significantly repaired DNA damage, reduced neuroinflammation, and targeted multiple Alzheimer's pathways simultaneously in mouse models. Unlike amyloid- or tau-focused drugs, KCL-286 addresses DNA damage and inflammation that occur in the earliest disease stages, and its existing human safety data could allow faster entry into Alzheimer's clinical trials than a de novo compound. Published in FEBS Open Bio, the study adds to mounting evidence that DNA damage repair is a viable therapeutic target in neurodegeneration. [ScienceDaily](https://www.sciencedaily.com/releases/2026/07/260711010118.htm)
> 
> > **Evening update**
> 
> > [!note]- Singapore & Malaysia: JS-SEZ master plan nearing finalisation as RTS Link targets Jan 2027 (NST)
> > Malaysia and Singapore have confirmed strong progress on the Johor-Singapore Special Economic Zone (JS-SEZ), with both governments expecting the master plan to be finalised soon following President Tharman Shanmugaratnam's state visit to Malaysia on July 12–15. PM Anwar Ibrahim highlighted the JS-SEZ and the Johor Bahru–Singapore Rapid Transit System (RTS) Link as twin flagship initiatives deepening cross-border economic integration, with the RTS Link on track to begin commercial operations in January 2027. [NST](https://www.nst.com.my/amp/news/nation/2026/07/1489960/singapore-malaysia-strengthen-ties-through-js-sez-rts-link)
> 
> > [!note]- Malaysia: AGC orders formal inquest into 3 men killed in Durian Tunggal police op (Malay Mail)
> > The Attorney General's Chambers has ordered a formal inquest into the deaths of three men fatally shot during a police operation in Durian Tunggal, Melaka on November 24, 2025 — a significant escalation in judicial accountability following sustained public and civil society pressure. The inquest order signals a rare formal review of police use of lethal force in Malaysia and is expected to draw renewed scrutiny of operational protocols and oversight. [Malay Mail](https://www.malaymail.com/news/malaysia)
> 
> > [!note]- World: Andy Burnham becomes UK's 7th PM in a decade, replacing Keir Starmer (NPR)
> > Andy Burnham, former Mayor of Greater Manchester, was formally appointed by King Charles as the United Kingdom's 59th Prime Minister on Monday, succeeding Sir Keir Starmer who resigned the Labour leadership in June after less than two years in Downing Street. Burnham ran unopposed in the Labour contest, pledging to "end instability," and appointed John Healey as Chancellor, Ed Miliband as Foreign Secretary, and Wes Streeting as Defence Secretary — while President Trump immediately labelled Britain a "poverty stricken disaster." [NPR](https://www.npr.org/2026/07/19/nx-s1-5895993/andy-burnham-prime-minister-keir-starmer)
> 
> > [!note]- World: Trump imposes 50% tariffs on Canada over autos, alcohol and dairy (Anadolu Agency)
> > President Donald Trump has imposed 50% tariffs on most Canadian goods, citing what he called unfair Canadian discrimination against American automobiles, alcohol, and dairy products — a sharp escalation in the US-Canada trade relationship. The sweeping new duties add to a widening web of US trade barriers and come at a moment when Canada faces mounting pressure to align more closely with Washington on trade and security as the Gulf conflict strains global supply chains. [Anadolu Agency](https://aa.com.tr/en/world/morning-briefing-july-21-2026/4004218)
> 
> > [!note]- Tech: 2026 World AI Conference closes in Shanghai; Xi keynote launches 29-nation AI cooperation body (UN News)
> > The 2026 World AI Conference in Shanghai concluded on July 20 after four days that included Xi Jinping's first-ever keynote address at an AI summit and the formal launch of the World Artificial Intelligence Cooperation Organization — a new intergovernmental body with 29 founding countries including Russia, Pakistan, and Kazakhstan. The UN has separately issued warnings of "catastrophic harm" from unchecked AI development and is pushing for binding global governance frameworks, as rapid Chinese open-weight model releases intensify the US-China AI race. [UN News](https://news.un.org/en/story/2026/07/1167862)
> 
> > [!note]- Economy: IMF cuts 2026 global growth forecast to 3.0% — war weighs on energy importers, AI lifts tech chains (IMF)
> > The IMF's July 2026 World Economic Outlook Update projects global growth at 3.0% for 2026 and 3.4% for 2027, flagging a deeply uneven recovery: the prolonged Gulf conflict continues to depress energy-importing and vulnerable economies, while AI-driven demand is lifting countries deeply integrated into global technology value chains. China's fixed-asset investment fell 4.1% in the first five months of 2026 — the steepest drop since May 2020 — even as its semiconductor exports surged 110% year-on-year on AI-related demand. [IMF](https://www.imf.org/en/publications/weo/issues/2026/07/08/world-economic-outlook-update-july-2026)

> [!note]- [[07-20-26 Mon]]
> 
> > [!note]- AI: US House advances 10 bipartisan AI bills in single markup session (Mintz)
> > The House Science, Space, and Technology Committee advanced ten bipartisan AI bills in a single markup session — spanning AI research access, cybersecurity, workforce development, transparency requirements, and data centre energy standards. Separately, Claude Fable 5 became available today to Anthropic Max and Team Premium subscribers at 50% of usage limits, and Claude Sonnet 5 API intro pricing is set at $2/M input and $10/M output tokens through August 31. [Mintz](https://www.mintz.com/insights-center/viewpoints/54941/2026-07-08-ai-washington-report-july-2026-edition)
> 
> > [!note]- Tech: AI now drives 54% of 2026 tech layoffs — 201,754 workers cut; Sprout Social latest with 20% reduction (TechCrunch)
> > As of mid-July 2026, tech companies have eliminated 201,754 jobs across 302 events — more than 1,024 cuts per day — with AI explicitly cited in 54% of cases, the highest share ever recorded. Sprout Social became the latest casualty on July 16, cutting 20% of its workforce in an AI-driven restructuring. Oracle's 30,000-person cut remains the year's single largest, while total 2026 tech job losses are on pace to surpass the 2022–2023 wave. [TechCrunch](https://techcrunch.com/2026/07/06/the-running-list-major-tech-layoffs-in-2026-where-employers-cited-ai/)
> 
> > [!breaking]- World: US completes second wave of Iran strikes; NATO Ankara summit pledges €50B+ rearmament (CNN)
> > The US military completed a second wave of strikes on Iran targeting capabilities to threaten Strait of Hormuz shipping, while VP JD Vance simultaneously signalled the war "will not be won through military force alone" and defended ongoing diplomatic tracks. At NATO's Ankara summit, all 32 members pledged €50 billion in joint military procurement and $40 billion over five years for aerial and drone technology, plus a new €70 billion Ukraine aid package — the alliance's biggest rearmament commitment in decades. [CNN](https://www.cnn.com/2026/07/15/world/live-news/iran-war-trump)
> 
> > [!note]- Macro: Markets recover — S&P +0.38% to 7,572; Brent $78/bbl; gold slides to $4,030 (CNBC)
> > US equities staged a modest recovery with the S&P 500 up 0.38% to 7,572.40, the Nasdaq up 0.62%, and the Dow up 0.29% to 52,658 as cooling inflation data lifted sentiment. International Brent crude held near $78.19 per barrel on Iran tensions, while gold — which briefly hit a record $5,626.80 — fell 0.6% to $4,030.25 per ounce, now down more than 20% since the conflict began in late February as the geopolitical risk premium deflates. [CNBC](https://www.cnbc.com/2026/07/14/stock-market-today-live-updates.html)
> 
> > [!note]- Malaysia: Fire destroys 200+ homes in Sabah's Kampung Bahagia floating village (Malay Mail)
> > A massive blaze tore through Kampung Bahagia, a floating village community in Sabah, destroying more than 200 homes and displacing hundreds of residents — one of the worst fires to hit Sabah's water village communities in recent years. Emergency relief operations are underway, with authorities coordinating temporary shelter and aid for affected families while investigating the cause. [Malay Mail](https://www.malaymail.com/news/malaysia)
> 
> > [!note]- Science: NASA's Perseverance rover completes a full marathon — 26.2 miles driven across Mars (SciTechDaily)
> > NASA's Perseverance rover hit a milestone on Mars, having driven 26.2 miles across the Martian surface since its February 2021 landing — the equivalent of a full marathon. The rover continues its primary science mission in the ancient river delta of Jezero Crater, collecting rock samples for eventual Earth return. The achievement highlights the durability of its drivetrain across five-plus years in extreme Martian conditions. [SciTechDaily](https://scitechdaily.com/)
> 
> > **Evening update**
> 
> > [!note]- Singapore & Malaysia: Tharman's Malaysia state visit bolsters Johor-Singapore SEZ partnership (AsiaNews)
> > Singapore President Tharman Shanmugaratnam's first state visit to Malaysia (July 12–15) advanced cooperation on food security, energy, and the Johor-Singapore Special Economic Zone — a flagship joint initiative to attract manufacturing and innovation investment to southern Peninsular Malaysia. The two nations reaffirmed plans to deepen cross-border connectivity as geopolitical pressures from the US-Iran conflict and US-China rivalry heighten supply-chain risks for both. [AsiaNews](https://www.asianews.it/en/south-east-asia/malaysia/singapore-and-malaysia-strengthen-cooperation-in-the-face-of-global-crises)
> 
> > [!note]- Malaysia: Deputy PM Zahid eyes hosting FIFA World Cup for Malaysia (Khao Sod English)
> > Speaking at a public viewing of the 2026 World Cup Final between Argentina and Spain on Sunday, Deputy Prime Minister Ahmad Zahid Hamidi declared that Malaysia hopes to one day host the FIFA World Cup and have its national team qualify to represent Southeast Asia on the global stage. The statement came as the 2026 tournament — co-hosted by the US, Canada, and Mexico at MetLife Stadium — concluded with an estimated 1.5 billion viewers watching the final. [Khao Sod English](https://www.khaosodenglish.com/news/asean/2026/07/20/malaysia-hopes-to-host-fifa-world-cup-deputy-pm-says/)
> 
> > [!breaking]- World: US service member killed in Iraq as Iran strikes enter second week (CBS News)
> > An American service member was killed in Iraq on Monday as US military operations against Iran entered their second week, bringing confirmed US fatalities to at least three killed and one missing in action since strikes began in mid-July. The Strait of Hormuz remains effectively closed, and President Trump has been briefed on expanded options potentially including Iranian energy infrastructure, as all diplomatic tracks have stalled. [CBS News](https://www.cbsnews.com/live-updates/iran-war-trump-strait-of-hormuz-attacks-persian-gulf/)
> 
> > [!note]- World: Wildfire smoke blankets US East Coast — millions face hazardous air quality alerts (CBS News)
> > Heavy smoke from large wildfires burning in Canada and Minnesota has drifted across wide swaths of the US Midwest and East Coast, triggering air quality alerts for millions of residents and prompting health authorities to advise limiting outdoor activity. The event is one of 2026's most geographically extensive smoke episodes, adding to a summer of compounding climate-linked disruptions across North America. [CBS News](https://www.cbsnews.com/news/wildfires-smoke-millions-exposed-midwest-northeast-us/)
> 
> > [!note]- Tech: OpenAI proposes $42.6B government stake; Anthropic in talks with Samsung for 2nm AI chip (ZoneTechify)
> > OpenAI has proposed giving the US government a 5% equity stake — worth approximately $42.6 billion at its $852 billion valuation — with CEO Sam Altman pitching the idea directly to President Trump and senior cabinet members, deepening ties between frontier AI labs and federal power. Separately, Anthropic is in preliminary discussions with Samsung Electronics to manufacture a custom AI accelerator using Samsung's 2nm process, which would make Anthropic one of only a handful of AI labs with a proprietary silicon roadmap. [ZoneTechify](https://www.zonetechify.com/blog/ai-news-july-2026-latest-ai-developments)
> 
> > [!breaking]- Economy: Brent crude surges to $90.97/bbl on 9th night of Iran strikes; ECB eyes second rate hike (Rio Times)
> > Brent crude jumped 3.3% to $90.97 a barrel in Monday Asian trading as US strikes against Iran entered a ninth straight night, rekindling a full supply-risk premium and pushing the Bloomberg dollar index to its highest since early February while markets trimmed implied Fed rate cuts to 56 basis points. The European Central Bank — which already hiked to 2.25% in June — is now gaming out a second consecutive rate increase as sustained oil prices threaten to re-ignite European inflation. The IMF's July 2026 World Economic Outlook projects global growth at 3.0% this year, with energy-importing economies bearing the steepest headwinds from the Gulf conflict. [Rio Times](https://www.riotimesonline.com/global-economy-briefing-july-20-2026/)

> [!note]- [[07-19-26 Sun]]
> 
> > [!breaking]- AI: Kimi K3 debuts at #3 globally — world's largest open-weight LLM at 2.8T params (CNBC)
> > China's Moonshot AI released Kimi K3 on July 16–17, a 2.8-trillion-parameter sparse Mixture-of-Experts model that is the largest open-weight AI ever built, handling text, images, and video natively in a 1-million-token context window. It debuted at #3 on the Artificial Analysis leaderboard — behind Claude Fable 5 and GPT-5.6 Sol only — while ranking first on Arena's Frontend Code benchmark in blind developer testing. Full weights arrive July 27 at pricing competitive with mid-tier closed models, marking the most consequential open-weight challenge to Western frontier labs since DeepSeek. [CNBC](https://www.cnbc.com/2026/07/17/moonshot-ai-kimi-k3-model-openai-anthropic-china.html)
> 
> > [!note]- Tech: Oracle axes 30,000 jobs to fund $500B Stargate AI infrastructure as chip race accelerates (AIToolsRecap)
> > Oracle announced it is cutting up to 30,000 employees — its largest-ever workforce reduction — to redirect capital toward the $500 billion Stargate AI infrastructure partnership with OpenAI and SoftBank. The move comes as TSMC reported AI chips rising to 66% of quarterly revenue with Q2 net income up 77.4% year-on-year, and aggregate 2026 tech layoffs surpassed 201,000 workers across 460+ companies. Together the moves signal a structural shift: legacy software headcount is being sacrificed to fund the AI compute layer. [AIToolsRecap](https://aitoolsrecap.com/Blog/AINewsJuly2026.aspx)
> 
> > [!note]- Macro: S&P −1.6% for week to 7,457; WTI $81.78; BTC ~$64k; gold $4,019 — oil and chips weigh (CNBC)
> > US equities closed the week sharply lower: the S&P 500 fell 1.6% to 7,457, the Nasdaq shed 2.9%, and the Dow lost 0.9%, as chip-sector profit-taking combined with Iran-conflict oil pressure. WTI crude settled at $81.78/barrel (+4.47% on the week) as the Strait of Hormuz remains blocked, while Bitcoin held around $64,376 and gold at $4,019/oz. The Federal Reserve under Chair Kevin Warsh holds at 3.50–3.75% with no forward guidance, as oil-driven inflation keeps rate-cut expectations subdued heading into Q3. [CNBC](https://www.cnbc.com/2026/07/16/stock-market-today-live-updates.html)
> 
> > [!breaking]- World: US completes 8th night of Iran strikes — 2 soldiers killed, Hormuz closed 136+ days (CBS News)
> > The United States completed its eighth consecutive night of military strikes against Iran after Iranian forces killed two US soldiers and left a third missing in action. President Trump has been briefed on options to expand operations potentially targeting Iranian energy infrastructure, as the Strait of Hormuz remains effectively closed for more than 136 days with no diplomatic off-ramp in sight. Iran's foreign ministry reiterated it has "no plans for negotiations," while the FIFA World Cup 2026 Final — Spain vs Argentina at MetLife Stadium, the first World Cup co-hosted by three nations — drew an estimated 1.5 billion viewers. [CBS News](https://www.cbsnews.com/live-updates/iran-war-trump-strait-of-hormuz-attacks-persian-gulf/)
> 
> > [!note]- Malaysia & Singapore: NS election campaign opens — 103 candidates for 36 seats; Anwar warns officials (The Star)
> > The Negeri Sembilan state election campaign officially began after July 18 nomination day confirmed 103 candidates across all 36 state seats, with polling on August 1. Prime Minister Anwar Ibrahim publicly reminded government officials and civil servants to observe discipline and refrain from attacking the federal government while campaigning. BN rides Johor landslide momentum while PAS holds quiet coalition talks with BN, drawing a furious rebuke from Bersatu's Muhyiddin Yassin who called the move a betrayal of the PN front. [The Star](https://elections.thestar.com.my/)
> 
> > [!note]- Science: Earth's space dust may come from an unknown asteroid, new atmospheric-entry simulation finds (Daily Galaxy)
> > A July 2026 study simulating cosmic dust entry into Earth's atmosphere at 14–17 km/s found particles with two distinct material compositions — one matching carbonaceous chondrites, another with no analogue in any known meteorite group. The findings suggest a significant fraction of the ~40,000 tonnes of space dust Earth receives annually originates from an unidentified asteroid body not yet catalogued. Identifying the source could reshape models of early solar system composition and Earth's ongoing chemical inputs from space. [Daily Galaxy](https://dailygalaxy.com/2026/07/earth-space-dust-unknown-asteroid/)
> 
> > [!note]- NKE: $43.76 last close (Jul 17, −1.82%); P&L −$1,285; World Cup Final features Nike Argentina jersey (Yahoo Finance)
> > Nike (NKE) last closed at $43.76 on Friday July 17 (−1.82%), with markets closed over the weekend; the 46-share position held at an average cost of $71.69 carries an unrealised loss of −$1,285 (46 × −$27.93). The FIFA World Cup 2026 Final at MetLife Stadium featured Argentina in Nike kits — Argentina's Nike jersey has been the best-selling national team shirt of the tournament, giving Nike its highest-profile global brand moment of the year despite the stock trading 39% below its 52-week high of $80.17. [Yahoo Finance](https://finance.yahoo.com/quote/NKE/)

> [!note]- [[07-18-26 Sat]]
> 
> > [!breaking]- World: US-Iran ceasefire collapses — first US military deaths since March as fighting resumes (CNN)
> > The fragile US-Iran ceasefire agreed in mid-June has effectively broken down, with CNN's July 18 live updates confirming the first US military deaths since March after a week of renewed fighting over control of the Strait of Hormuz. Iranian attacks on vessels prompted fresh US strikes; Iran's foreign ministry stated it has "no plans for negotiations" as Pakistani and Qatari diplomatic missions gave way to pessimism among regional diplomats. President Trump has been presented options to expand military operations, potentially including Iranian energy infrastructure, while Strait traffic remains at a trickle with no visible off-ramp. [CNN](https://www.cnn.com/2026/07/18/world/live-news/iran-war-trump)
> 
> > [!note]- Science: India's Vikram-1 achieves orbit — third country with private orbital launch capability (Space.com)
> > Skyroot Aerospace's Vikram-1 lifted off from the Satish Dhawan Space Centre at 12:05 IST on July 18, successfully inserting cargo into a 450-km low Earth orbit at 60° inclination after a 35-minute hold for a technical issue at T-minus 5 minutes. The milestone makes India the third country — after the US and China — with private orbital launch capability, and Hyderabad-based Skyroot (founded 2018, now a unicorn) the first Indian private company to reach orbit. The successful mission positions Skyroot to compete for global small-satellite rideshare contracts and marks a watershed for India's commercial space sector. [Space.com](https://www.space.com/space-exploration/launches-spacecraft/skyroot-aerospace-india-first-private-orbital-launch-vikram-1)
> 
> > [!note]- AI: Mira Murati's Thinking Machines releases "Inkling" — open-weight frontier-competitive LLM (LLM Stats)
> > Thinking Machines Lab, the startup founded by former OpenAI CTO Mira Murati, released "Inkling," its first general-purpose large language model with fully downloadable weights under an open licence and a hosted enterprise API, positioned as competitive with mainstream closed frontier models. The launch is the highest-profile open-weight release from a lab founded by a top-tier AI executive this year, arriving in a busy month that included Google's Gemini 3.5 Pro and the UN's coordinated global governance push. EU AI Act high-risk compliance deadlines arrive August 2, further tightening the regulatory environment for frontier labs operating in Europe. [LLM Stats](https://llm-stats.com/ai-news)
> 
> > [!note]- Tech: Intuit cuts 3,000 jobs (17% of workforce) to fund AI pivot (TechCrunch)
> > Intuit announced the elimination of roughly 3,000 positions — approximately 17% of its total workforce — in a restructuring aimed at reducing organisational complexity and reallocating capital toward AI product development. The cuts are among the deepest percentage reductions at a major software company this year, pushing 2026's aggregate tech-sector layoffs past 167,000 across over 460 companies. Intuit joins Oracle (30,000), Meta (8,000), and Microsoft (4,800) as major software firms explicitly funding AI pivots through large-scale headcount reduction. [TechCrunch](https://techcrunch.com/2026/07/06/the-running-list-major-tech-layoffs-in-2026-where-employers-cited-ai/)
> 
> > [!breaking]- Macro: S&P −1.01% to 7,457; oil >$80; Bitcoin at $60,925 as US-Iran ceasefire collapses (CNBC/CoinDesk)
> > US equities closed sharply lower on Friday as the collapse of the US-Iran ceasefire drove oil above $80/barrel: the S&P 500 fell 1.01% to 7,457.69, the Nasdaq shed 1.4%, and the Dow lost 407 points, with chip stocks and Netflix (−10% on earnings) adding to the broad selloff. Bitcoin retreated to $60,925 as investors exited risk assets amid renewed stagflation pressure from sustained energy-price disruption. The Federal Reserve holds rates at 3.50–3.75% under new Chair Kevin Warsh, who removed traditional forward guidance; no hike is expected this month despite persistent oil-driven inflation. [CNBC](https://www.cnbc.com/markets/)
> 
> > [!note]- Malaysia & Singapore: NS election nominations close — 103 candidates confirmed across all 36 seats for August 1 (The Star)
> > The Negeri Sembilan state election nomination day concluded on July 18 with 103 candidates confirmed across all 36 state seats for the August 1 poll, featuring fractured alliances and multi-cornered fights reflecting the post-Johor political realignment. BN is riding its Johor landslide momentum while PAS continues quiet coalition talks with BN despite Bersatu's Muhyiddin Yassin publicly condemning the move. Malaysia Fest 2026, a bilateral agricultural showcase, is simultaneously set for Singapore from July 30 to August 2. [The Star](https://www.thestar.com.my/aseanplus/aseanplus-news/2026/07/17/malaysia-fest-2026-to-promote-unique-malaysian-agro-products-in-singapore)
> 
> > [!note]- NKE: $43.76 (−1.82%, Jul 17 close); P&L −$1,285; World Cup final Spain vs Argentina tomorrow (Yahoo Finance)
> > Nike (NKE) closed at $43.76 on Friday July 17 (−1.82%), giving the 46-share position held at an average cost of $71.69 an unrealised loss of −$1,285 (46 × −$27.93). The broader market selloff weighed on consumer discretionary names alongside the rest of equities. On the brand front, the FIFA World Cup final between Spain and Argentina is set for Sunday July 19 — a high-visibility event for Nike's football kit business, with Argentina's Nike jersey having outpaced Adidas supply throughout the tournament. [Yahoo Finance](https://finance.yahoo.com/quote/NKE/)

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