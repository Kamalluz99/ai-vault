---
created:
updated: 2026-06-07T09:00
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

### [[06-07-26 Sun]]

> [!note]- AI: Apple WWDC 2026 opens tomorrow — Gemini-powered Siri and iOS 27 expected (TechTimes)
> Apple's Worldwide Developers Conference 2026 kicks off Monday with its most anticipated software overhaul in years: a rebuilt Siri powered by a custom 1.2-trillion-parameter Google Gemini model, for which Apple reportedly pays $1 billion per year. iOS 27, iPadOS 27, and macOS 27 will debut alongside a dedicated Siri app with an "Extensions" feature, letting users hand off queries to third-party assistants including Claude or Gemini. The deal marks a historic shift for Apple — outsourcing its core AI to a competitor — and signals a direct challenge to ChatGPT in the mass consumer market. [Source](https://www.techtimes.com/articles/317902/20260606/wwdc-2026-opens-monday-gemini-powers-rebuilt-siri-iphone-11-faces-ios-27-cut.htm)

> [!breaking]- Macro: US adds 172k jobs in May — double consensus — rate-cut hopes collapse (CNBC)
> The May payrolls report blew past expectations with 172,000 new jobs against an 80,000 consensus, and the unemployment rate held steady at 4.3%. Leisure and hospitality led with 70,000 gains. Markets reacted with a "good news is bad news" sell-off: the 10-year Treasury yield jumped to 4.54%, S&P 500 and Nasdaq 100 futures fell 0.7% and 1.4% respectively, and CME FedWatch now prices a rate hike — not a cut — as the likelier outcome by October. [Source](https://www.cnbc.com/2026/06/05/the-jobs-report-doubled-expectations-why-the-stock-market-doesnt-like-it.html)

> [!note]- World: Armenia's ruling Civil Contract leads 55.7% in landmark parliamentary vote (Armenpress)
> Armenians went to the polls on June 7 for the first scheduled parliamentary election since 2017, with turnout at 58.97% — nearly 10 points above the last election. Early counts from 204 precincts put PM Nikol Pashinyan's Civil Contract at 55.7%, with opposition Strong Armenia distant at 21.9%. The result shapes Armenia's continued pivot away from Russia toward EU alignment and its fragile peace process with Azerbaijan over the former Nagorno-Karabakh region. [Source](https://armenpress.am/en/article/1252293)

> [!note]- Malaysia/SG: Malaysia sets Q1 tourism record at 10.6M arrivals; SIA signs joint MoU (Travel & Tour World)
> Malaysia received a record 10.6 million international visitors in Q1 2026, outpacing Bali and Thailand to top Asia's tropical resort market. Singapore led the source-market list, followed by Australia, China, Indonesia, India, and the UK. Singapore Airlines and Tourism Malaysia sealed a memorandum of understanding to run joint promotional campaigns across Europe, Asia-Pacific, and Australia to sustain the momentum. [Source](https://www.travelandtourworld.com/news/article/tici221p16wq/)

> [!note]- Science: GLP-1 drugs linked to 30% lower breast cancer risk in Penn Medicine study of 111k women (ScienceDaily)
> A retrospective Penn Medicine study of 111,646 women aged 45–80 found those prescribed GLP-1 medications (Ozempic, Wegovy, Mounjaro) had 30.5% lower breast cancer incidence after controlling for confounders, presented at ASCO 2026 and published in JCO Oncology Practice. The absolute difference was 0.7 percentage points (2.3% vs 1.6%), and researchers caution that randomised controlled trials are still needed to confirm causality. If confirmed, it would add oncology prevention to the growing roster of GLP-1 benefits beyond diabetes and weight management. [Source](https://www.sciencedaily.com/releases/2026/06/260605023400.htm)

> [!note]- [[06-05-26 Fri]]
>
> > [!breaking]- AI: Anthropic files confidential IPO at $965B valuation, eyes October listing (Fortune)
> > Anthropic submitted a confidential S-1 to the SEC on June 1, targeting an October 2026 IPO at a $965 billion pre-money valuation — the highest ever for a private AI company — after closing a $65 billion Series H round. The company projects Q2 2026 revenue of $10.9 billion, more than doubling Q1's $4.8 billion and exceeding all of 2025 in a single quarter. If the listing proceeds at that valuation, Anthropic would debut as one of the most valuable companies ever to go public, surpassing OpenAI's last private round. [Source](https://fortune.com/2026/06/01/anthropic-confidentially-files-ipo-965-billion-valuation/)
>
> > [!note]- Tech: Microsoft and Google enter AI coding race vs Anthropic and OpenAI (CNBC)
> > Microsoft and Google are making major pushes into AI coding assistants — using Azure and Google Cloud scale — to challenge Anthropic's Claude Code and OpenAI's Codex, which have dominated developer mindshare. Anthropic's Claude Code is widely credited with driving the company's explosive Q2 revenue surge, making it the primary competitive target for both hyperscalers. The contest marks a new phase in the AI wars, with coding infrastructure and developer loyalty as the decisive battleground. [Source](https://www.cnbc.com/2026/06/01/microsoft-and-google-take-on-anthropic-and-openai-in-ai-coding-models.html)
>
> > [!note]- Macro: Broadcom plunges 15% on flat guidance, dragging chip stocks lower (CNBC)
> > Broadcom's Q2 FY2026 earnings barely missed expectations ($22.19B vs. $22.27B) and CEO Hock Tan declined to raise the full-year $100B AI chip target despite 143% YoY AI revenue growth, sending the stock down 15% and erasing over $270B in market value. Nasdaq 100 futures fell 1.1% and the VanEck Semiconductor ETF (SMH) dropped 3%+ before the open Friday. The miss amplified investor concern over whether the ~$700B hyperscaler AI capex wave can sustain its pace through H2 2026. [Source](https://www.cnbc.com/2026/06/03/broadcom-avgo-earnings-report-q2-2026.html)
>
> > [!breaking]- World: Iran strikes Kuwait airport; US retaliates as Gulf ceasefire frays (CNN/NPR)
> > Iran's IRGC launched missiles at Kuwait International Airport on June 2–3 in retaliation for US strikes, killing at least one person and injuring 63, forcing airport closure. The US responded with "self-defense strikes" against an Iranian military ground control station on Qeshm Island in the Strait of Hormuz. The exchange puts the fragile 60-day ceasefire MOU — still awaiting Trump's final approval — under severe strain, with Kuwait's FM heading to Washington to meet Secretary Rubio in an emergency session. [Source](https://www.npr.org/2026/06/01/g-s1-125126/us-iran-war-updates)
>
> > [!note]- Malaysia: Negeri Sembilan assembly dissolved; snap election imminent (FMT)
> > Menteri Besar Datuk Seri Aminuddin Harun dissolved the Negeri Sembilan state assembly on June 5 after losing support within the legislature, with the Yang di-Pertuan Besar Tuanku Muhriz granting consent. All 36 seats will be contested; Pakatan Harapan has confirmed it will field candidates in every constituency, with coalition seat allocations to be finalised next week. The dissolution follows Johor's on June 1, making Malaysia's 2026 political calendar unusually dense ahead of a potential general election cycle. [Source](https://www.freemalaysiatoday.com/category/nation/2026/06/04/negeri-sembilan-assembly-dissolved)
>
> > [!note]- Science: Researchers reverse energy flow in turbulence, upending 80-year-old theory (ScienceDaily)
> > A team from the University of Pittsburgh and the University of Turin discovered that the direction of energy transfer in turbulence can be reversed under specific geometric conditions — challenging Kolmogorov's 1941 prediction that energy in 3D flows always cascades from large to small scales. Using a tensor-alignment framework, they showed energy can instead propagate via a "zig-zag" pattern from small to large scales, published in Scientific Reports. Applications include controlling ocean currents, improving medical fluid dynamics, and enhancing climate models. [Source](https://www.sciencedaily.com/releases/2026/06/260602021655.htm)

> [!note]- [[06-04-26 Thu]]
>
> > [!note]- AI: Trump orders early gov't access to AI models before release (CNBC)
> > The White House signed an executive order requiring AI companies to voluntarily submit their most powerful models for government testing up to 30 days before public release. The move follows Anthropic limiting its Mythos Preview model due to its ability to identify and exploit software security vulnerabilities. Companies face no legal obligation to comply, but the order signals growing federal intent to oversee frontier AI development. [Source](https://www.cnbc.com/2026/06/02/trump-executive-order-ai.html)
>
> > [!note]- Tech: Meta cuts 8,000 jobs as AI capex soars to $135B in 2026 (Newsweek)
> > Meta announced layoffs affecting roughly 10% of its global workforce while simultaneously planning up to $135B in capital expenditures for 2026 — an 87% increase — to build out AI infrastructure for its "superintelligence" lab. The move is part of a broader wave of tech layoffs in 2026, with 363 companies cutting ~150,000 workers as AI-driven automation reshapes headcount. [Source](https://www.newsweek.com/all-tech-giants-announcing-sweeping-layoffs-2026-11872935)
>
> > [!breaking]- Macro: Oil hits $96/barrel, stocks slide as US-Iran strikes escalate (CNBC)
> > WTI crude surged 2.4% to $96.02/barrel and Brent rose to $97.81 following reports of new US-Iran military strikes, stoking inflation fears. The Dow fell 620 points (−1.2%), the S&P 500 dropped 0.74%, and AI-linked stocks led losses — Nvidia and Microsoft each shed 3%+, Oracle fell 5%. The Fed's next rate decision is June 16–17, with markets pricing in no change. [Source](https://www.cnbc.com/amp/2026/06/02/stock-market-today-live-updates.html)
>
> > [!breaking]- World: US-Iran confirm 60-day ceasefire MOU with nuclear talks (PBS)
> > The White House confirmed that US and Iranian negotiating teams reached a 60-day memorandum of understanding to extend the current ceasefire and launch formal nuclear talks, mediated by Pakistan. The deal would reopen the Strait of Hormuz, lift the US blockade on Iranian ports, and begin structured negotiations on Iran's nuclear and ballistic programs. Separate direct Lebanon-Israel talks are also scheduled in Washington this week. [Source](https://www.pbs.org/newshour/world/u-s-and-iranian-negotiators-reach-tentative-deal-to-extend-ceasefire-and-start-new-nuclear-talks)
>
> > [!note]- Malaysia: US proposes 10% tariff on Malaysia over forced labour failures (FMT)
> > The US Trade Representative proposed an additional 10% duty on Malaysian exports after a Section 301 probe found Malaysia failed to enforce a prohibition on imports made with forced labour. Malaysia joins 59 other economies including Canada, the EU, and Indonesia in facing the proposed duties. Malaysia's MITI acknowledged a legal gap — no existing law to screen imported goods made with forced labour — and said it is being addressed, with a public comment deadline of July 6. [Source](https://www.freemalaysiatoday.com/category/nation/2026/06/03/us-probe-finds-malaysia-failed-to-impose-forced-labour-import-ban)
>
> > [!note]- Science: Splitting a photon creates an infinite swarm of particles (Phys.org)
> > A study in Physical Review Letters by physicists at the University of Oslo found that "cutting" a single photon with an ultra-fast optical shutter doesn't produce two photons — it generates an infinite swarm via quantum electromagnetic field fluctuations. The result challenges assumptions about manipulating individual quantum particles and has implications for precision optical measurement and quantum computing. Researchers plan to test whether the effect holds for other elementary particles such as electrons. [Source](https://phys.org/news/2026-06-photon-infinite-swarm-particles.html)
>
> > **Evening update**
>
> > [!note]- SG & MY: Chinese nationals rob S$50k at MBS, lock victims on balcony (TOC)
> > Three Chinese nationals aged 29–34 lured a 45-year-old woman to a Marina Bay Sands hotel room under the guise of a foreign currency exchange, robbed her of S$50,000, then locked her and her child on the balcony. Singapore Police Force recalled a Shanghai-bound flight and arrested the trio within hours, recovering all stolen cash. The suspects face robbery with hurt charges, carrying 5–20 years' jail and a minimum 12 strokes of the cane. [Source](https://theonlinecitizen.com/2026/06/03/3-chinese-nationals-lock-woman-child-on-mbs-balcony-and-rob-s-50k-arrested-after-shanghai-bound-flight-recalled)
>
> > [!note]- Malaysia: First haj pilgrims return home; KL-Jakarta JCBC opens (Malay Mail)
> > The first group of 329 Malaysian haj pilgrims landed at KLIA early Thursday, opening Phase 2 of the 2026 Haj season; 100 charter flights via Malaysia Airlines and Saudia will repatriate all 31,600 pilgrims by July 1. Separately, Foreign Minister Mohamad Hassan led Malaysia's delegation to the 17th Malaysia-Indonesia Joint Commission for Bilateral Cooperation in Jakarta, covering trade, border management, and migrant labour. Seventeen pilgrims died in the Holy Land this season, most from cardiac events. [Source](https://www.malaymail.com/news/malaysia/2026/06/04/first-group-of-329-pilgrims-return-home-as-malaysia-begins-2026-haj-phase-two/222457)
>
> > [!breaking]- World: Russia's mass drone-missile blitz on Ukraine kills 22, wounds 138 (PBS)
> > Russia launched 73 missiles and 656 drones overnight at Kyiv, Dnipro, Poltava, Kharkiv, and Zaporizhzhia, killing at least 22 civilians and wounding 138. Ukrainian air defences intercepted 40 missiles and 602 drones, but depletion of US-supplied systems left the country exposed to ballistic missiles — at least 16 died in Dnipropetrovsk alone, including children. The assault came as Putin hosted the St. Petersburg Economic Forum, where Ukrainian drones simultaneously set an oil terminal in the city ablaze. [Source](https://www.pbs.org/newshour/world/massive-russian-attack-on-kyiv-and-other-ukrainian-cities-kills-22-people-officials-say-as-moscow-escalates-fighting)
>
> > [!note]- World: Israel seizes Beaufort Castle, signals extended Lebanon presence (AJ)
> > Israeli forces captured the 12th-century Crusader fortress of Beaufort Castle in southern Lebanon — the first time Israel has held it since its 2000 withdrawal — as Netanyahu ordered forces deeper into the country in a broadening Hezbollah offensive. The hilltop site offers commanding observation over both southern Lebanon and northern Israel, and analysts say the seizure signals intent to maintain a long-term military foothold beyond the nominal ceasefire. The UNESCO-protected castle sustained heavy damage during Israel's previous 18-year occupation. [Source](https://www.aljazeera.com/news/2026/6/1/what-is-lebanons-beaufort-castle-and-why-has-israel-captured-it)
>
> > [!note]- Tech: Altman meets Congress and White House over Trump's AI order (CNBC)
> > OpenAI CEO Sam Altman held back-to-back meetings in Washington with House Speaker Mike Johnson, Minority Leader Hakeem Jeffries, Senator Bernie Sanders, and senior Trump officials, one day after Trump signed an order seeking voluntary 30-day pre-release government access to frontier AI models. Altman publicly backed the EO on X, writing it "gets the balance right" between US AI leadership and safety oversight. The meetings are seen as OpenAI's effort to shape implementation and prevent the voluntary scheme from hardening into mandatory preclearance. [Source](https://www.cnbc.com/2026/06/03/open-ai-altman-congress-trump-eo.html)
>
> > [!note]- Economy: Nikkei hits record; Korea's AI chips to add 0.7pp to GDP (T. Rowe Price)
> > Japan's Nikkei 225 rose 4.72% and the TOPIX gained 1.66% this week, driven chiefly by the tentative US-Iran ceasefire framework that eased global risk aversion and lifted equities across Asia. South Korea's Bank of Korea governor projected that AI-related chip exports will add 0.7 percentage points to real GDP growth in 2026, more than offsetting the drag from elevated oil prices. J.P. Morgan Global Research estimates the AI investment supercycle will sustain 13–15% above-trend earnings growth across global equities for at least two more years. [Source](https://www.troweprice.com/personal-investing/resources/insights/global-markets-weekly-update.html)
>
> > **Evening update**
>
> > [!note]- SG & MY: Johor election due by July 29, raising stakes for JS-SEZ and RTS Link (The Star)
> > The Johor state assembly was dissolved on 1 June by the Regent, setting up the 16th Johor state election — all 56 seats to be contested by 29 July 2026. Incumbent BN under Menteri Besar Onn Hafiz Ghazi defends the two-thirds supermajority it won in March 2022. The outcome carries direct implications for Singapore: both the Johor–Singapore Special Economic Zone and the RTS Link (opening end-2026) depend on continuity of state-level cooperation. [Source](https://www.thestar.com.my/news/nation/2026/06/01/johor-state-assembly-dissolved-paving-way-for-16th-state-polls)
>
> > [!note]- Malaysia: PM Anwar distances federal govt from Johor polls, stays on national agenda (Malay Mail)
> > Prime Minister Datuk Seri Anwar Ibrahim stated that decisions on dissolving state assemblies rest with state governments, not Putrajaya, distancing himself from political ferment surrounding the Johor polls. He emphasised the federal government remains focused on its agenda regardless of state electoral dynamics. Johor is a test for all major coalitions — PH hopes to significantly improve on its five seats from 2022, while Perikatan Nasional seeks to deny BN's supermajority. [Source](https://www.malaymail.com/amp/news/malaysia/2026/06/04/pm-stays-focused-on-federal-agenda-amid-johor-election-buzz/222480)
>
> > [!note]- World: Iran briefly halted US nuclear talks over Israeli Lebanon strikes — Trump says back on (NPR)
> > Iran's negotiating team suspended all diplomatic communications with US counterparts on June 1, citing Israel's continued strikes in Lebanon and Gaza as violations of ceasefire preconditions Tehran had insisted upon. Within hours, Trump posted that talks were back "at a rapid pace" after discussions with both Israeli and Hezbollah representatives — though Netanyahu said Israeli operations in southern Lebanon would continue "as planned." The episode highlights the fragility of the 60-day ceasefire MOU and Iran's use of diplomatic suspensions as leverage. [Source](https://www.npr.org/2026/06/01/g-s1-125285/iran-israel-us-lebanon-gaza)
>
> > [!note]- World: Hong Kong CE seals 43 deals in Kazakhstan, building "hub-to-hub" bridge (The Standard)
> > Hong Kong Chief Executive John Lee's official visit to Kazakhstan yielded 43 bilateral agreements and memoranda of understanding, anchored around a "hub-to-hub" partnership model connecting Central Asia with global financial markets through Hong Kong. The accords span trade facilitation, financial services, and logistics corridors. The visit signals Hong Kong's push to broaden economic partnerships beyond traditional Western and mainland Chinese markets amid continuing geopolitical headwinds. [Source](https://www.thestandard.com.hk/news/article/333748/Morning-Recap-June-4-2026)
>
> > [!note]- Tech: DeepSeek eyes $7.4B debut funding — Tencent & CATL lead at up to $59B valuation (TechNode)
> > China's AI champion DeepSeek is in final talks to raise approximately ¥50 billion ($7.4B) in its first-ever external funding round, with Tencent Holdings committing $1.5B and CATL pledging $740M as the largest outside investors; founder Liang Wenfeng personally contributes $3B. Fewer than 10 investors are expected to participate, with the round due to close within weeks and the company targeting a valuation of $52B–$59B. DeepSeek upended US assumptions about Chinese AI when its V3 and R1 models drew widespread Silicon Valley praise early last year at a fraction of Western training costs. [Source](https://technode.com/2026/06/04/deepseek-in-talks-to-raise-7-billion-from-tencent-catl-and-other-investors/)
>
> > [!note]- Economy: Broadcom revenue miss erases $270B in market cap; Nasdaq futures fall 1.1% (CNBC)
> > Broadcom's Q2 FY2026 revenue of $22.19B barely missed the $22.27B analyst consensus, and Q3 AI chip guidance of $16B fell well short of the $17.2B expected — CEO Hock Tan also declined to raise the full-year $100B AI chip target. The stock slid over 12% after-hours, threatening to erase more than $270B in market value, and dragged Nasdaq 100 futures down 1.1% and the VanEck Semiconductor ETF (SMH) more than 3% before the open. The miss amplified investor anxiety over whether the AI infrastructure spending boom can sustain its breakneck pace into the back half of 2026. [Source](https://www.cnbc.com/2026/06/03/broadcom-avgo-earnings-report-q2-2026.html)
