---
created:
updated: 2026-07-24T05:00
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

### [[07-24-26 Fri]]

> [!breaking]- AI: DeepSeek V4 goes stable — enterprises can finally move production workloads off preview builds (Build Fast with AI)
> DeepSeek V4 exited its extended preview phase with a stable release on July 24, ending the caution that had blocked enterprises from committing production workloads to the model. Combined with Kimi K3's open weights expected later this week, late July is shaping up as the most concentrated week of frontier open-weight releases in AI history. The stable build lands as the 29-nation World Artificial Intelligence Cooperation Organization formed at Shanghai's World AI Conference begins its first working sessions. [Build Fast with AI](https://www.buildfastwithai.com/blogs/ai-news-today-july-20-2026-16-biggest-stories)

> [!note]- Tech: US government in advanced talks with AI labs on voluntary deployment standards for powerful new models (StyleTech)
> The US government is in advanced discussions with major AI companies over voluntary standards governing deployment of powerful new models, including access controls, red-teaming requirements, and responsible disclosure protocols. The talks aim to establish governance guardrails before binding Congressional legislation arrives, as AI model capabilities continue to expand rapidly across consumer and enterprise settings. The push comes as the EU AI Act's August 2 Article 50 transparency deadline adds international pressure on model governance. [StyleTech](https://www.styletech.net/post/top-news-in-tech-july-2026)

> [!breaking]- Macro: Markets fall sharply — Dow −507 pts, S&P −1.21% to 7,408, Nasdaq −2.15% to 25,138 as Alphabet/Tesla disappoint and oil surges (CNBC)
> US equities suffered their worst single-day decline in weeks on July 23, with the Dow dropping 506.93 points (−0.97%) to 51,711, the S&P 500 falling 1.21% to 7,408, and the Nasdaq sliding 2.15% to 25,138 as Alphabet tumbled 7% and Tesla plunged 14% following earnings reports. Surging oil prices on renewed Middle East tension amplified the selloff as markets digested a dual shock of macro risk and Mag-7 earnings misses. Asia-Pacific opened green Friday — Japan's Nikkei +0.55%, South Korea's Kospi +2.3%, Australia's ASX 200 +0.72% — signalling overnight stabilisation. [CNBC](https://www.cnbc.com/2026/07/22/stock-market-today-live-updates.html)

> [!breaking]- World: US-Iran bombing enters Day 9 — peace talks collapse over Hormuz MOU; Congress asked for billions more (CNBC)
> US military strikes against Iran entered their ninth consecutive day after peace talks collapsed over the terms of the Strait of Hormuz memorandum of understanding, with the Trump administration asking Congress for more funding on top of the $37.5 billion the conflict has already cost. Iran struck commercial vessels near the Strait, reigniting hostilities and derailing the June ceasefire framework. Regional mediators from Qatar, Oman, and Egypt have tabled a new emergency ceasefire proposal while Washington demands a longer cessation. [CNBC](https://www.cnbc.com/2026/07/21/us-iran-war-trump-hormuz-houthis.html)

> [!note]- Singapore: PM Wong reshuffles Cabinet; HDB million-dollar flat resales hit 1,002 in H1 2026 (Mothership.SG)
> Singapore's Prime Minister Lawrence Wong unveiled a reshuffled Cabinet line-up with new ministerial appointments in the first major reshuffle of his administration. Separately, Singapore's housing market remains elevated with 1,002 HDB flats resold for at least $1 million from January through July 16 — on pace below 2025's record 1,593 transactions but still historically high. [Mothership.SG](https://mothership.sg/)

> [!note]- Science: Webb telescope unmasks giant hidden planet inside closely watched dust-disk planetary system (ScienceDaily)
> NASA's James Webb Space Telescope revealed a giant planet that had been hiding inside one of astronomy's most closely studied planetary systems, concealed for years behind a thick disk of cosmic dust that blocked detection by earlier instruments. The discovery suggests planetary systems may harbour more bodies than currently catalogued, with broad implications for planetary formation models. Separately, researchers in the Gulf of California documented unprecedented orca behaviour — one individual gripping a dead sunfish while a second charged it at speed — the first such hunting strategy observed in the species. [ScienceDaily](https://www.sciencedaily.com/news/top/)

> [!note]- NKE: $40.93 (−3.0%); P&L −$1,415; China e-commerce restrictions called "risky" and "strategic misstep" (Yahoo Finance)
> Nike closed at approximately $40.93 on July 23, down roughly 3% from Wednesday's $42.21 close as the broader Nasdaq selloff weighed on consumer discretionary names. Nike has confirmed plans to restrict franchise partners in China from digital channels, limiting online sales to company-operated e-commerce and major platforms Tmall, Douyin, and JD.com — a move analysts are labelling "risky." The 46-share position at avg cost $71.69 carries an unrealised loss of −$1,415; 52-wk range $40.00–$80.17; analyst 12-month target $51.12. [Yahoo Finance](https://finance.yahoo.com/quote/NKE/)

> [!note]- [[07-23-26 Thu]]
> 
> > [!note]- AI: EU AI Act Article 50 transparency rules enforceable from Aug 2 (Technology.org)
> > The European Commission on July 20 adopted final guidelines clarifying Article 50 of the EU AI Act, with mandatory transparency obligations taking effect August 2 — 10 days away. Providers must disclose when users interact with AI, mark AI-generated content in machine-readable format, and label deepfakes and AI-generated public-interest text. The rules cover all chatbots, synthetic media tools, and general-purpose AI systems operating in the EU, marking the broadest binding AI transparency enforcement ever enacted. [Technology.org](https://www.technology.org/2026/07/17/eu-ai-act-what-actually-applies-on-2-august-2026/)
>
> > [!note]- Tech: Alphabet Q2 beats — Search +17% to $63B, Gemini at 950M users; capex doubles YoY (CNBC)
> > Alphabet reported Q2 2026 results after the bell on July 22, with Google Search revenue up 17% to $63.3B, YouTube ad revenue up 13% to $11.06B, and a Cloud backlog of $514 billion — comfortably beating consensus and kicking off Magnificent Seven earnings season strong. The Gemini app reached 950 million monthly active users processing 22 billion API tokens per minute, up from 16 billion last quarter. Capital expenditures hit $44.9 billion for the quarter — a 100% year-on-year increase — raising investor questions about the timeline for returns on AI infrastructure spend. [CNBC](https://www.cnbc.com/2026/07/22/google-earnings-q2-goog-live-updates.html)
>
> > [!note]- Macro: Oil hits 6-week high — Brent $93.40 on Iran strikes; gold $4,154; S&P flat at 7,514 (CNBC)
> > Oil prices hit their highest level in six weeks on July 22 as renewed US strikes on Iran rekindled supply fears: Brent crude climbed 2.7% to $93.40/barrel and WTI jumped above $86. Gold rose 1.98% to $4,154 on safe-haven demand while the S&P 500 held flat at 7,514 as strong Alphabet earnings offset energy-driven inflation concerns. The Federal Reserve under Chair Kevin Warsh remains on hold at 3.50–3.75%, with persistent oil pressure complicating the Q3 rate path. [CNBC](https://www.cnbc.com/2026/07/21/stock-market-today-live-updates.html)
>
> > [!note]- World: Mediators table 10-day Iran-US ceasefire to reopen Hormuz via "middle corridor" (Al-Monitor)
> > International mediators — senior Qatari, Egyptian, Omani, and Pakistani officials — on July 20 proposed a 10-day ceasefire between Iran and the US to revive the collapsed June memorandum and reopen the Strait of Hormuz. The plan includes a "middle corridor" between Omani- and Iranian-controlled waters for safe commercial vessel transit — a novel diplomatic architecture to avoid either side appearing to capitulate. Iran confirmed receipt of the proposal; the US is demanding a longer cessation than 10 days, with negotiations ongoing and the Strait still effectively closed. [Al-Monitor](https://www.al-monitor.com/originals/2026/07/mediators-propose-10-day-ceasefire-revive-iran-us-interim-deal-senior-iranian)
>
> > [!breaking]- Malaysia: Biggest fuel hike yet — RON95 +20 sen to RM3.62, diesel +35 sen to RM4.42 from July 23 (Paultan.org)
> > Malaysia's managed fuel prices for July 23–29 delivered the steepest single-week increases since the Madani subsidy rationalisation began: RON95 jumped 20 sen to RM3.62/L, RON97 rose 20 sen to RM4.20/L, and B10/B15 diesel surged 35 sen to RM4.42/L — driven directly by Brent crude hitting six-week highs above $93 a barrel. Subsidised rates remain at RM1.99 for eligible RON95 consumers and RM2.10 for citizens on subsidised diesel. The hike lands nine days before the Negeri Sembilan election on August 1, adding sharp cost-of-living pressure to an already-contested political environment. [Paultan.org](https://paultan.org/2026/07/22/malaysian-fuel-prices-july-23-to-29-2026-diesel-up-35-sen-to-rm4-42-litre-ron95-ron97-petrol-up-20-sen/)
>
> > [!note]- Science: Ocean oxygen loss now pushes Earth past safe planetary boundary, Scripps warns (ScienceDaily)
> > Researchers at UC San Diego's Scripps Institution of Oceanography published a July 19 study arguing that the accelerating loss of dissolved oxygen from oceans, lakes, rivers, and coastal waters constitutes a planetary boundary breach and should be formally added to the nine-boundary framework tracking Earth system stability. Deoxygenation — driven by warming and nutrient pollution — expands dead zones and collapses marine food webs in ways that may be irreversible on human timescales. The finding elevates aquatic oxygen loss to the same governance priority tier as climate change and biodiversity loss. [ScienceDaily](https://www.sciencedaily.com/releases/2026/07/260719035939.htm)
>
> > **Evening update**
>
> > [!note]- Singapore & Malaysia: SG core inflation quickens to 1.6% in June; oil risks ahead of MAS review (Bloomberg)
> > Singapore's core inflation — stripping out private transport and accommodation — rose to 1.6% year-on-year in June, faster than May's 1.4% but below the median economist estimate of 1.7%. The acceleration reflects higher global energy costs filtering through to consumer prices, with Brent crude above $93 a barrel amplifying the oil-price channel this week. The Monetary Authority of Singapore is expected to review its exchange-rate-centred monetary policy stance soon, and the hotter print narrows the case for near-term easing. [Bloomberg](https://www.bloomberg.com/news/articles/2026-07-23/singapore-core-inflation-accelerates-to-1-6-as-oil-risks-linger)
>
> > [!note]- Malaysia: BN reaffirms Unity Government commitment as NS election enters final week (Bernama)
> > Barisan Nasional reiterated its commitment to the Unity Government coalition until the end of Malaysia's 15th Parliament, pushing back on opposition-fuelled narratives of a pending collapse. The reaffirmation arrives as the Negeri Sembilan state election enters its final week before the August 1 polling day, with BN and coalition partners targeting a repeat of the Johor landslide. Rival opposition factions remain fractured, with Bersatu's Muhyiddin Yassin publicly attacking PAS-BN talks as a betrayal. [Bernama](https://www.bernama.com/en/)
>
> > [!breaking]- World: Iran strikes Hormuz tanker; US-Iran ceasefire MOU collapses; war resumes (CNBC)
> > The June 17 US-Iran memorandum of understanding has effectively collapsed after Iran struck commercial vessels bypassing its preapproved Hormuz corridor, resuming mutual strikes weeks after the ceasefire was signed. Iran targeted a tanker in the Strait of Hormuz as the Trump administration announced it is seeking billions more from Congress — the conflict has already cost $37.5 billion. Regional mediators from Qatar, Oman, and Egypt have tabled a new 10-day emergency ceasefire proposal to reopen the Strait, with Washington demanding a longer cessation before agreeing. [CNBC](https://www.cnbc.com/2026/07/21/us-iran-war-trump-hormuz-houthis.html)
>
> > [!note]- World: France passes first EU blanket social media ban for children under 15 (Euronews)
> > France's parliament passed legislation prohibiting children under 15 from opening accounts on major social media platforms, making it the first EU country to enact a blanket age-based ban rather than relying on voluntary parental controls or age-verification alone. The law aims to protect minors from harmful content and predatory behaviour, arriving amid a wave of similar moves across Europe and Australia. Platforms face significant compliance requirements, with enforcement powers granted to a national digital regulator. [Euronews](https://www.euronews.com/video/2026/07/23/latest-news-bulletin-july-23rd-2026-morning)
>
> > [!note]- Tech: AMD Advancing AI 2026 — network efficiency overtakes raw compute as AI scales to "factory" paradigm (AMD)
> > AMD's Advancing AI 2026 conference concluded in San Francisco today with a sharp focus on infrastructure: AMD executives argued that network interconnect efficiency, not GPU count alone, is becoming the binding constraint as clusters scale toward "AI factory" architectures handling trillion-parameter workloads. The event spotlighted AMD's accelerator roadmap competing directly with Nvidia as enterprise buyers seek second-source options for multibillion-dollar AI build-outs. The shift reflects a broader industry reckoning that AI infrastructure is increasingly treated as a sovereign strategic asset rather than generic cloud commodity. [AMD](https://www.amd.com/en/corporate/events/advancing-ai.html)
>
> > [!note]- Economy: IMF July WEO — global growth in "crosscurrents of war and technology"; Iran oil shock hits importers (IMF)
> > The IMF's July 2026 World Economic Outlook Update revised growth forecasts downward for oil-importing economies as Brent crude pushes above $93 per barrel on Iran conflict supply disruptions, while AI-driven productivity gains provide a partial offsetting tailwind for advanced economies. The report flags the Strait of Hormuz closure as a significant near-term risk to global trade volumes, with Asian supply chains — including Singapore, Japan, and South Korea — particularly exposed. Central banks face a difficult dual challenge: taming inflation reignited by energy shocks while avoiding growth-damaging overtightening in a fragile recovery. [IMF](https://www.imf.org/en/publications/weo/issues/2026/07/08/world-economic-outlook-update-july-2026)
>
> > [!note]- Nike (NKE): $40.93 (−3.0%); P&L −$1,415; China franchise digital curbs labelled "risky" (Yahoo Finance)
> > Nike closed July 23 at $40.93, down 3.0% as the broader Nasdaq selloff (−2.15%) dragged consumer discretionary lower alongside Alphabet (−7%) and Tesla (−14%). The 46-share position at avg cost $71.69 sits at an unrealised loss of −$1,415 (−42.9% from cost). Nike confirmed restrictions on franchise partners accessing digital channels in China — limiting online sales to company-operated e-commerce, Tmall, Douyin, and JD.com — a move analysts have labelled a potential strategic misstep in its largest growth market. [Yahoo Finance](https://finance.yahoo.com/quote/NKE/)

> [!note]- [[07-22-26 Wed]]
> 
> > [!note]- AI: China's World AI Conference wraps; 400+ humanoid robots showcased, annual output to hit 100k units (Xinhua)
> > The 2026 World AI Conference and High-Level Meeting on Global AI Governance concluded in Shanghai on July 20, showcasing over 400 humanoid robot products from Chinese companies — more than half the world's total — with capabilities spanning industrial sorting, tea ceremony, table tennis, and piano performance. China's annual humanoid robot output is projected to exceed 100,000 units in 2026, cementing Beijing's ambition to dominate the physical-AI sector. The conference launched the World Artificial Intelligence Cooperation Organization, a 29-nation intergovernmental body, and featured Xi Jinping's first in-person appearance at the event since 2018. [Xinhua](https://english.news.cn/20260720/e2550c55ecfd413188eb965e304c8be2/c.html)
> 
> > [!note]- Tech: Thomson Reuters to cut 500 engineering jobs; AI now drives 54% of all 2026 tech layoffs (InformationWeek)
> > Thomson Reuters announced plans to eliminate up to 500 engineering roles as part of an AI-driven restructuring, the latest in a wave that has already cut 201,754 tech workers across 302 companies as of mid-July. Artificial intelligence has been explicitly cited in 54% of all 2026 layoff events — the highest share ever recorded — as firms from Oracle to Meta slash legacy headcount to fund AI pivots. The pattern signals a structural shift: software engineering roles built around pre-AI product stacks are being replaced faster than equivalent AI-native roles are being created. [InformationWeek](https://www.informationweek.com/it-staffing-careers/2026-tech-company-layoffs)
> 
> > [!note]- Macro: Gold at $4,082 on Middle East tensions; S&P 500 at 7,443 as July winning streak at risk (Yahoo Finance)
> > Gold gained 1.86% to $4,082.73/oz on July 21 on safe-haven demand, though it remains more than 25% below its January 2026 record of $5,589/oz. The S&P 500 dipped 0.19% to 7,443.28 on Monday — every July since 2015 has ended higher, placing 2026 on the cusp of snapping an 11-year run as Q2 earnings and CPI data take centre stage. Oil continues near $80/bbl on Hormuz risk, while the Federal Reserve under Chair Kevin Warsh holds rates at 3.50–3.75% with no guidance. [Yahoo Finance](https://finance.yahoo.com/personal-finance/investing/article/gold-prices-today-monday-july-20-2026-gold-holds-above-4000-despite-limited-violence-in-the-middle-east-152926843.html)
> 
> > [!note]- World: Ukraine on defensive as Russia advances; Kursk footholds lost, NATO aid pledges yet to shift momentum (DB Research)
> > Ukraine has relinquished its last positions inside Russia's Kursk region — seized in a surprise August 2024 cross-border incursion — and is now defending against Russian advances along the eastern front line. The July 7–8 NATO Ankara summit pledged €50 billion in joint procurement and a fresh €70 billion Ukraine aid package, but analysts say new commitments have not yet shifted battlefield momentum. US focus remains divided between the Gulf conflict and European security, with no ceasefire framework in sight. [DB Research](https://www.dbresearch.com/PROD/IE-PROD/PROD0000000000632129/This_Month_in_Geopolitics:_July_2026.PDF)
> 
> > [!note]- Malaysia: RON95 fuel up 5 sen to RM3.42/L for July 16–22 week as subsidy rationalisation continues (Paultan.org)
> > Malaysia's weekly managed fuel pricing for July 16–22 set RON95 petrol at RM3.42 per litre — a five-sen increase from the prior week — while diesel rose 10 sen to RM4.07/L and RON97 was unchanged at RM4.00/L. The increases reflect PM Anwar Ibrahim's ongoing Madani subsidy rationalisation, gradually aligning RON95 prices toward market rates while managing fiscal savings. The fuel hike adds to cost-of-living pressures ahead of August 1 Negeri Sembilan polling day. [Paultan.org](https://paultan.org/2026/07/15/malaysian-fuel-prices-july-16-to-22-2026-diesel-up-10-sen-rm4-07-ron95-up-five-sen-to-rm3-42-per-litre/)
> 
> > [!note]- Science: Cascadia and San Andreas faults may sync — double quake could hit West Coast simultaneously (Phys.org)
> > Scientists analysing deep-sea sediment cores found evidence that the Cascadia subduction zone and the San Andreas fault have ruptured in tandem at least three times in the past 1,500 years, potentially triggering each other within minutes or hours. The most recent candidate dual rupture was the 1700 Cascadia megathrust event, which would have sent seismic stress crashing down the San Andreas toward San Francisco. A simultaneous rupture of both systems would represent an unprecedented disaster corridor from Vancouver to San Francisco, though experts stress more research is needed before the triggering link is confirmed. [Phys.org](https://phys.org/news/2025-10-cascadia-megathrust-earthquake-trigger-san.html)
> 
> > **Evening update**
> 
> > [!note]- Singapore & Malaysia: JS-SEZ master plan finalised, Anwar-Lawrence Wong Q4 joint launch set (NST)
> > Malaysia's Economy Ministry confirmed the Johor-Singapore Special Economic Zone (JS-SEZ) master plan is complete, with the formal launch aligned with the Malaysia-Singapore Leaders' Retreat in Q4 2026 to secure the highest-level bilateral commitment from PM Anwar Ibrahim and PM Lawrence Wong. The Johor Bahru–Singapore Rapid Transit System (RTS) Link remains on track for commercial operations in January 2027, deepening cross-border connectivity between the two neighbours. Together the two flagship initiatives represent the most structured deepening of Malaysia-Singapore economic integration in a generation, with annual bilateral trade now exceeding S$120 billion. [NST](https://www.nst.com.my/amp/news/nation/2026/07/1489960/singapore-malaysia-strengthen-ties-through-js-sez-rts-link)
> 
> > [!note]- Malaysia: Senate passes Cyber Security Bill 2026 — minimum 3-year jail for offences (The Sun)
> > Malaysia's Senate passed the Cyber Security Bill 2026, establishing a mandatory minimum three-year prison sentence for cybersecurity offences and creating an enforcement framework aligned with international standards. The legislation marks a major step in PM Anwar Ibrahim's Madani government's digital governance agenda and positions Malaysia alongside Singapore and Australia in adopting legally binding minimum sentences for cyber crime. Separately, Anwar held campaign rallies in Seremban and Paroi on Wednesday as the Negeri Sembilan state election enters its final stretch ahead of the August 1 polling day. [The Sun](https://thesun.my/news/malaysia-news/malaysia-senate-passes-cyber-security-bill-2026/)
> 
> > [!note]- World: Zelenskyy fires Ukraine army chief Gen. Syrskyi, appoints Drapatyi as new commander (Euronews)
> > Ukrainian President Volodymyr Zelenskyy dismissed Gen. Oleksandr Syrskyi as commander-in-chief of Ukraine's armed forces following days of public protests demanding his removal, and appointed battlefield general Mykhailo Drapatyi as his successor. The leadership change comes as Ukraine defends against sustained Russian advances along the eastern front line, months after relinquishing its last positions inside Russia's Kursk region. The reshuffle signals Kyiv's effort to restore military morale and public confidence as the war approaches its fifth year with no ceasefire in sight. [Euronews](https://www.euronews.com/video/2026/07/22/latest-news-bulletin-july-22nd-2026-midday)
> 
> > [!note]- World: Spain's World Cup champions parade through Madrid — 2 million fans, royals greet title winners (AP)
> > Spain's 2026 FIFA World Cup-winning squad paraded through the streets of Madrid on Wednesday, with an estimated 2 million fans lining the route after their final victory over Argentina at MetLife Stadium on July 19. The players and coaching staff were received by Spain's royal family and Prime Minister Pedro Sánchez in a ceremony celebrating the nation's fourth World Cup title. The celebrations rank among the largest sporting gatherings in Madrid's history and cap a dominant Spanish tournament campaign that sealed their place as the joint-most successful nation in World Cup history. [AP](https://apnews.com/sports/soccer)
> 
> > [!note]- Tech: Google ships Gemini 3.6 Flash and 3.5 Flash-Lite; security-tuned Flash Cyber restricted to govts; 3.5 Pro still delayed (Build Fast with AI)
> > Google released three new Gemini models on July 21–22: Gemini 3.6 Flash (a general-purpose update), Gemini 3.5 Flash-Lite (a low-cost economy tier), and Gemini 3.5 Flash Cyber — a security-tuned variant restricted to governments and vetted trusted partners. However, Gemini 3.5 Pro — the flagship model Google had signalled as its answer to top-tier rivals — has now missed its release window multiple times, with Google confirming it is still not shipping. The US government is separately weighing the creation of an independent body to evaluate leading AI models before or after public release amid rising governance pressure. [Build Fast with AI](https://www.buildfastwithai.com/blogs/ai-news-today-july-22-2026)
> 
> > [!note]- Economy: Wall St snaps 3-day losing streak — S&P 500 +0.89% near 7,509; chip stocks surge; Brent at $91.24 (Rio Times)
> > Wall Street ended a three-day losing streak with the S&P 500 closing up 0.89% near 7,509, led by a semiconductor rally after stronger-than-expected export data from South Korea and Taiwan reinforced confidence in AI hardware demand. International Brent crude rose 2.26% to $91.24 per barrel, driven by heightened Middle East supply threats including Houthi rebel escalation near Gulf shipping lanes. The rebound offers partial relief to markets caught between resilient AI chip fundamentals and persistent geopolitical energy risk as the second half of 2026 begins. [Rio Times](https://www.riotimesonline.com/global-economy-briefing-july-22-2026/)

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