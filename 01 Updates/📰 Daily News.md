---
created:
updated: 2026-06-08T05:08
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

### [[06-08-26 Mon]]

> [!breaking]- AI: Apple WWDC 2026 opens: new Siri powered by Google Gemini, iOS 27 unveiled (Tom's Guide)
> Apple's Worldwide Developers Conference 2026 keynote launched today at 10am PT, marking the company's biggest AI push to date. The headline is a rebuilt Siri running on Google Gemini, delivering conversational AI capabilities across iOS 27, iPadOS 27, and macOS 27. Apple Intelligence gains Visual Intelligence features — scanning nutrition labels, event tickets, and physical signage — while users can now set third-party AI services as the default for Writing Tools and Image Playground. [Source](https://www.tomsguide.com/news/live/wwdc-2026-live-news-updates)

> [!note]- Tech: Intuit cuts 3,000 jobs (17% of workforce) to fund AI restructuring (TechCrunch)
> Intuit is laying off approximately 3,000 employees — 17% of its global workforce — across TurboTax, QuickBooks, Credit Karma, and Mailchimp, closing two offices as it eliminates management layers and coordination-heavy roles. CEO Sasan Goodarzi framed the cuts as operational simplification rather than AI displacement, even as the company simultaneously signed multi-year AI partnerships with both Anthropic and OpenAI to embed AI models across its financial and marketing products. The restructuring mirrors a broader enterprise software sector shift toward AI-native operations. [Source](https://techcrunch.com/2026/05/20/intuit-to-lay-off-over-3000-employees-to-refocus-on-ai/)

> [!note]- Macro: S&P 500 heads into uncertain Monday after worst week since January; Bitcoin holds near $59K (CNBC)
> US equities face an uncertain start to the week after the S&P 500 fell 2.64% and the Nasdaq dropped 4.2% on Friday, driven by a semiconductor selloff and the blowout May jobs report (172K vs. 85K expected) that reinforced the Fed's hold-rate stance ahead of its June 16–17 FOMC meeting. Bitcoin is holding near $59,352 after breaching $60,000 last Friday for the first time in months; gold settled at $4,328/oz. Prediction markets assign just a 55% probability of a positive open, with Iran ceasefire fragility adding to macro uncertainty. [Source](https://www.cnbc.com/markets/)

> [!note]- World: Armenia's Pashinyan wins landslide; Civil Contract takes 57% in parliamentary election (Armenpress)
> Preliminary results from Armenia's June 7 parliamentary election show PM Nikol Pashinyan's Civil Contract party winning an overwhelming majority at 57%, far ahead of Strong Armenia (21.4%), Armenia Alliance (8.2%), and Prosperous Armenia (5.1%). The result gives Pashinyan a renewed mandate to continue Armenia's EU integration path and consolidate the peace process with Azerbaijan following the Nagorno-Karabakh ceasefire. International OSCE observers described the vote as broadly competitive despite pre-election concerns. [Source](https://armenpress.am/en/article/1252293)

> [!note]- Malaysia: PM Anwar arrives in Japan; RM6.56B investment package on the table in talks with PM Takaichi (Bernama)
> Prime Minister Anwar Ibrahim arrived in Japan today for a three-day official visit, accompanied by the foreign, trade, and entrepreneurship ministers. Bilateral talks with PM Sanae Takaichi are expected to yield RM6.56 billion in potential investments targeting manufacturing, technology, and Johor's growing industrial ecosystem. Anwar will also address a regional conference themed "Working together for a more resilient and prosperous Asia" and discuss the Middle East situation with Japanese counterparts. [Source](https://www.bernama.com/en/news.php?id=2301194)

> [!note]- Science: James Webb maps the cosmic web across 13.7 billion years — most detailed survey ever (UCR News)
> Astronomers at UC Riverside led by PhD student Hossein Hatamnia published the most detailed map of the universe's cosmic web ever made, using JWST's COSMOS-Web survey to trace 800,000 galaxies back to when the universe was one billion years old. The study, in The Astrophysical Journal, reveals how galaxies and dark matter filaments have evolved across the full 13.7-billion-year history of the cosmos, and the complete large-scale structure catalog has been released publicly — surpassing all previous dark matter surveys in scale and resolution. [Source](https://news.ucr.edu/articles/2026/05/11/astronomers-produce-most-detailed-map-cosmic-web)

> [!note]- [[06-07-26 Sun]]
>
> > [!note]- AI: OpenAI releases GPT-5.5 — new SOTA on agentic coding and computer-use benchmarks (LLM Stats)
> > OpenAI released GPT-5.5, its most capable model to date, scoring 82.7% on Terminal-Bench 2.0 and 78.7% on OSWorld-Verified — two leading agentic coding and computer-use benchmarks. Running on NVIDIA GB200 NVL72 infrastructure, it is priced at $5/$30 per million input/output tokens, double GPT-5.4's cost. The release intensifies competition in the AI coding market against Anthropic's Claude Code and Microsoft's newly announced MAI-Code-1-Flash. [Source](https://llm-stats.com/ai-news)
>
> > [!note]- Tech: Microsoft unveils MAI-Code-1-Flash — first in-house coding model to reduce OpenAI reliance (CNBC)
> > Microsoft announced MAI-Code-1-Flash at its Build conference — its first proprietary AI coding model, converting natural-language descriptions into full application source code. The launch signals a strategic shift to reduce Azure's dependence on OpenAI while competing directly against Anthropic's Claude Code and OpenAI's Codex in the AI developer tools market. Microsoft also announced new Claude and GPT integrations for GitHub Copilot, reflecting a dual strategy of in-house models alongside third-party partnerships. [Source](https://www.cnbc.com/2026/06/02/microsoft-unveils-new-ai-models-lessen-reliance-on-openai-lower-costs.html)
>
> > [!breaking]- Macro: Bitcoin crashes below $60K; S&P 500 posts worst single-day drop since January (CoinPedia)
> > Bitcoin fell 7.1% on June 6 to $59,141 — its first breach of the $60,000 mark in months — while the S&P 500 shed 1.65%, erasing over $1.14 trillion in market value in its worst single-session decline since January 2026. Ethereum dropped 1.8% to $1,555; gold settled at $4,328/oz and oil at $88.55/barrel as risk sentiment deteriorated broadly. The sell-off comes ahead of the Fed's June 16–17 FOMC meeting, where markets still price in no rate change. [Source](https://coinpedia.org/news/live-stock-market-gold-price-and-crypto-market-crash/)
>
> > [!note]- World: Armenia holds pivotal parliamentary election; Pashinyan bloc leads amid record-low approval (OSCE)
> > Armenia held its 9th National Assembly parliamentary election today, June 7, with pre-election polls showing PM Nikol Pashinyan's Civil Contract bloc at 47.2% — well ahead of a fragmented opposition despite his personal approval at just 32%. The result will determine Armenia's geopolitical orientation between the EU and Russia, and directly shapes its peace process with Azerbaijan following the Nagorno-Karabakh ceasefire. OSCE observers are deployed; official results are expected this evening. [Source](https://odihr.osce.org/node/662896)
>
> > [!note]- Malaysia: BN launches Johor election machinery; first-ever solo contest against unity ally PH (NST)
> > UMNO President Ahmad Zahid Hamidi and Johor Menteri Besar Onn Hafiz Ghazi launched Barisan Nasional's Johor election machinery at Educity Stadium today, firing the opening salvo of the campaign across all 56 state seats. In an unprecedented scenario, BN and Pakatan Harapan — federal unity government partners since 2022 — will contest every Johor and Negeri Sembilan seat against each other, testing whether coalition cooperation survives state-level rivalry. Both elections must be held by July 29. [Source](https://www.nst.com.my/amp/news/nation/2026/06/1456186/ph-bn-solo-contests-johor-negri-seen-key-test-ahead-future-polls)
>
> > [!note]- Science: Octopuses use mirrors to find hidden prey — first invertebrates to show mirror-guided cognition (Current Biology)
> > Dartmouth researchers trained California two-spot octopuses to use mirrors to locate food hidden outside their line of sight, achieving 73% accuracy — a skill previously documented only in vertebrates such as primates, dolphins, and elephants. The study, published in Current Biology, used a projected virtual crab stimulus to rule out olfactory and tactile cues, confirming true visual spatial inference from mirror reflection. The finding is the first evidence of mirror-guided spatial navigation in any invertebrate, expanding the known boundary of complex cognition across the animal kingdom. [Source](https://www.sciencedaily.com/releases/2026/06/260605023402.htm)
>
> > [!note]- Nike (NKE): $42.98 last close — football/World Cup turnaround under analyst scrutiny (Yahoo Finance)
> > Nike closed at $42.98 on Friday June 5, its last trade before the weekend — near its 52-week low of $41.35 (high: $80.17), and significantly below the user's average cost of $71.69 on 46 shares. The company is doubling down on a football-led recovery centred on FIFA World Cup 2026, with Goldman Sachs 'constructive' after Nike's Global Football showcase and UBS 'incrementally positive' following the event. Market cap: $64.02B. [Source](https://finance.yahoo.com/quote/NKE/news/)
>
> > **Evening update**
>
> > [!note]- SG & MY: Luxury superyacht Eagle Wings III sinks at Sentosa Cove after morning fire (Mothership)
> > A 112-foot superyacht, the Eagle Wings III, caught fire at the ONE°15 Marina Club in Sentosa Cove at around 8:10am Sunday, partially sinking after SCDF crews battled the blaze. No injuries were reported among the crew; the founder said he was devastated to see the boat burn but relieved everyone was safe. The yacht can accommodate up to 50 guests and is used for private charters and events. The cause of the fire remains under investigation. [Mothership](https://mothership.sg/2026/06/sentosa-cove-marina-yacht-fire/)
>
> > [!note]- Malaysia: PM Anwar departs Monday for Japan — RM6.56 bln in investments on the table (The Star)
> > Prime Minister Anwar Ibrahim undertakes a three-day official visit to Japan from Monday (June 8), meeting PM Sanae Takaichi to discuss bilateral ties, regional security, and the Middle East situation. The trip is expected to attract RM6.56 billion in potential investments, with Anwar accompanied by his ministers of foreign affairs, trade, and entrepreneurship. He will also address a conference themed "Working together for a more resilient and prosperous Asia." [The Star](https://www.thestar.com.my/news/nation/2026/06/07/pm-anwar-to-undertake-three-day-official-visit-to-japan-from-june-8)
>
> > [!breaking]- World: Iran and US trade strikes again as Gulf ceasefire edges toward collapse (CNN)
> > The US and Iran exchanged military strikes early Saturday, days after issuing contradictory statements about ceasefire negotiations. Kuwait briefly shut its main airport after Iranian drones damaged a terminal, killing one person and wounding dozens. Tehran has halted communications with ceasefire mediators, demanding enforcement of a separate Lebanon ceasefire first. The episode marks the most serious threat yet to the fragile agreement that ended five weeks of fighting in April. [CNN](https://www.cnn.com/2026/06/06/world/live-news/iran-war-trump-israel-lebanon)
>
> > [!note]- World: Ebola rages in DRC; US-Kenya quarantine facility sparks violent protests (Al Jazeera)
> > The 17th Ebola outbreak in the DRC's Ituri Province continues, complicated by the Bundibugyo strain for which the approved Zaire-strain vaccine offers reduced protection. Kenya, with no confirmed cases, became the centre of international controversy after plans emerged to build a US-funded quarantine facility on a military base in Nanyuki — protests turned violent, killing two people. Kenya's High Court has since blocked the facility's establishment and barred admission of virus-exposed individuals. [Al Jazeera](https://www.aljazeera.com/news/2026/6/4/why-is-a-us-ebola-facility-in-kenya-sparking-protests)
>
> > [!note]- Tech: OpenAI's "Dreaming V3" overhauled ChatGPT memory — factual recall jumps to 82.8% (Neowin)
> > OpenAI launched Dreaming V3 on June 4, a fully rebuilt memory architecture that lifts ChatGPT's factual recall from 67.9% to 82.8%, preference adherence from 55.3% to 71.3%, and accuracy over time from 52.2% to 75.1%. The system auto-updates stale memories and gives users a readable summary page with controls over what ChatGPT remembers about them. A 5x compute reduction makes free-tier rollout viable; Plus and Pro users in the US receive doubled memory capacity immediately. [Neowin](https://www.neowin.net/news/openai-is-rolling-out-a-major-upgrade-to-chatgpt-memory/)
>
> > [!note]- Science/Economy: Bank of Korea: AI chip exports to add 0.7pp to GDP in 2026, outweighing oil drag (Deloitte)
> > South Korea's new central bank governor estimates that surging AI-semiconductor exports — driven by Samsung and SK Hynix's HBM production for global AI data centres — will add 0.7 percentage points to real GDP growth in 2026, more than offsetting the 0.4pp drag from elevated oil prices. The forecast underscores how AI hardware demand is generating measurable macroeconomic lift in chip-exporting nations and reshaping growth models across East and Southeast Asia. [Deloitte Insights](https://www.deloitte.com/us/en/insights/topics/economy/global-economic-outlook/weekly-update.html)

> [!note]- [[06-06-26 Sat]]
>
> > [!note]- AI: OpenAI model outperforms ER physicians at diagnosis in Harvard study (Science)
> > Researchers at Harvard Medical School and Beth Israel Deaconess Medical Center published a study in Science finding that an OpenAI reasoning model outperformed experienced emergency physicians at diagnosing patients and managing their care using only electronic health records. The result marks one of the most rigorous clinical validations of AI-assisted medicine to date and sharpens debate around how AI should be embedded in emergency care workflows. [Source](https://www.science.org)
>
> > [!note]- Tech: Oracle cuts 30,000 jobs — 18.5% of workforce — as AI restructuring accelerates (InformationWeek)
> > Oracle announced the largest single-company tech layoff of 2026, eliminating 30,000 positions — 18.5% of its global workforce — as it pivots aggressively toward AI-native cloud services. The move is part of an industry wave that has cut over 150,000 jobs across 363 tech companies in 2026, even as Amazon, Microsoft, Alphabet, and Meta collectively plan $725 billion in AI capital expenditure. The consolidation dynamic is concentrating AI investment at the hyperscaler tier while compressing headcount at mid-tier enterprise software vendors. [Source](https://www.informationweek.com/it-staffing-careers/2026-tech-company-layoffs)
>
> > [!note]- Macro: US adds 172K jobs in May, crushing 85K forecast; unemployment holds at 4.3% (BLS)
> > The Bureau of Labor Statistics reported 172,000 nonfarm payrolls added in May 2026 — more than double the 85,000 consensus forecast — with upward revisions totalling 93,000 for March and April combined. Gains were led by leisure and hospitality (+70K), local government (+55K), and healthcare (+35K), while financial activities shed 22,000 jobs. The blowout print reinforces the Fed's wait-and-see stance ahead of its June 16–17 FOMC meeting, with markets still pricing in no rate change. [Source](https://www.bls.gov/news.release/empsit.nr0.htm)
>
> > [!note]- World: Hezbollah rejects Lebanon-Israel ceasefire; Iran re-suspends US nuclear talks (CNN)
> > Hezbollah formally rejected a US-brokered Lebanon-Israel ceasefire proposal while Iran again suspended diplomatic communications with Washington, citing continued Israeli strikes in Lebanon as violating agreed preconditions. Trump expressed confidence a deal over the Strait of Hormuz is achievable "over the next week," but Netanyahu confirmed Israeli operations in southern Lebanon would continue as planned. The episode exposes ongoing fragility in the 60-day ceasefire MOU and Iran's use of talk suspensions as diplomatic leverage. [Source](https://www.cnn.com/2026/06/04/world/live-news/iran-trump-war-news)
>
> > [!note]- Malaysia: Under-16 social media ban takes effect; platforms face RM10M fines (Malay Mail)
> > Malaysia's ban on children under 16 from registering social media accounts came into force on June 1, placing Malaysia among the world's strictest digital-access regulators alongside Australia. Facebook, Instagram, TikTok, and YouTube must implement age-verification mechanisms or face penalties up to RM10 million per violation. The law targets online harms, mental health impacts, and predatory content exposure, reflecting a regional trend of governments asserting direct control over youth access to social platforms. [Source](https://www.malaymail.com/news/malaysia/2026/06/01/malaysias-under-16-social-media-rule-starts-today-what-parents-need-to-know/221674)
>
> > [!note]- Science: NASA ISS crew 3D-bioprints cartilage; ESA astronaut grows bone on wood scaffold (NASA)
> > NASA flight engineer Jack Hathaway conducted 3D bioprinting of high-quality cartilage tissue aboard the International Space Station this week, leveraging microgravity to produce structures superior to those achievable on Earth, while ESA astronaut Sophie Adenot simultaneously grew human bone cells on a rattan-wood scaffold to simulate osteoporosis progression. Both experiments are part of the ISS's ongoing regenerative medicine programme, targeting on-demand patient-specific implants and improved bone-healing therapies for both spaceflight and terrestrial use. [Source](https://www.nasa.gov/blogs/spacestation/2026/06/03/human-research-biotechnology-for-advanced-health-fill-station-research-schedule/)
>
> > **Evening update**
>
> > [!note]- SG & MY: Singapore-to-Malaysia corporate exodus reshapes Southeast Asia's economic map (bne IntelliNews)
> > Rising costs, persistent inflation, and a tight labour market are driving Singapore-based companies to offshore operations to Malaysia and Vietnam. H&M confirmed the relocation of its Southeast Asian headquarters from Singapore to Kuala Lumpur, while Yeo's and Asia Pacific Breweries announced plans to shift production lines to Malaysia and Vietnam. Johor is emerging as the primary beneficiary, attracting manufacturing and corporate functions, though analysts warn the influx risks widening Malaysia's wage inequality. [Source](https://www.intellinews.com/the-singapore-to-malaysia-migration-reshaping-southeast-asia-446097/)
>
> > [!note]- Malaysia: King Sultan Ibrahim urges political restraint as twin state polls loom (The Star)
> > His Majesty Sultan Ibrahim, the Yang di-Pertuan Agong, called on Malaysian political leaders to exercise caution and proper conduct in public statements amid a volatile election period. Both Johor (dissolved June 1) and Negeri Sembilan (dissolved June 5) now head to state elections within 60 days, making 2026 an unusually dense political calendar. Observers note the King's intervention signals concern over rhetorical escalation between parties ahead of hotly contested seats. [Source](https://www.thestar.com.my/)
>
> > [!note]- World: US Senate passes $70B immigration enforcement bill without settlement fund limits (NPR)
> > The Senate passed legislation funding Trump's immigration enforcement agencies early Friday, after weeks of deadlock over an unrelated $1.776 billion legal settlement fund that critics say lets the executive branch bypass congressional appropriations. The bill cleared without the guardrails Democrats demanded on the settlement mechanism, marking a significant win for the administration's border and deportation agenda. The legislation now heads to the House, where conservatives are expected to push for further amendments. [Source](https://www.npr.org/2026/06/05/nx-s1-5847589/senate-passes-immigration-enforcement-bill-without-limits-on-trump-settlement-fund)
>
> > [!note]- World: World Cup 2026 attendance blow — US visa rejections and Iran war deter fans (Al Jazeera)
> > High US visa fees, elevated rejection rates, and the ongoing Iran conflict are deterring large numbers of international fans from attending FIFA World Cup 2026 in the United States. Iranian fans face outright travel restrictions, while visitors from dozens of other countries report processing delays and denials months before tournament kickoff. The accessibility crisis casts a shadow over what was projected to be the most commercially successful World Cup in history. [Source](https://www.aljazeera.com/sports/2026/6/5/us-visa-rejections-war-on-iran-keep-fans-away-from-world-cup)
>
> > [!note]- Tech: Uber, WeRide and AVOMO launch Spain's first commercial robotaxi service in Madrid (AIapps)
> > Uber, WeRide, and Spanish mobility startup AVOMO launched Spain's first commercial autonomous ride-hailing service in the Madrid metropolitan region, marking autonomous mobility's debut in continental Europe at commercial scale. The service operates through Uber's app with no safety driver during daytime hours, using WeRide's Gen 4 autonomous vehicle platform. The launch follows Uber's similar deployments with Waymo in the US and positions WeRide for broader European regulatory approvals. [Source](https://www.aiapps.com/blog/ai-news-breakthroughs-launches-trends-must-read/)
>
> > [!note]- Science: Flesh-eating New World screwworm detected in Texas calf; USDA escalates monitoring (CBS News)
> > The USDA confirmed detection of the New World screwworm — a flesh-eating parasitic fly eradicated from North America in 1966 — in a three-week-old calf in Zavala County, Texas, marking a potentially significant reemergence event. Larvae were identified in the calf's umbilical area, following detections in southern Mexico and Central America in 2025. The USDA is deploying sterile fly release operations and urging livestock owners to report unusual wound myiasis cases. [Source](https://www.cbsnews.com/news/flesh-eating-new-world-screwworm-found-texas-calf-usda/)
>
> > [!note]- [[06-05-26 Fri]]
> >
> > > [!breaking]- AI: Anthropic files confidential IPO at $965B valuation, eyes October listing (Fortune)
> > > Anthropic submitted a confidential S-1 to the SEC on June 1, targeting an October 2026 IPO at a $965 billion pre-money valuation — the highest ever for a private AI company — after closing a $65 billion Series H round. The company projects Q2 2026 revenue of $10.9 billion, more than doubling Q1's $4.8 billion and exceeding all of 2025 in a single quarter. If the listing proceeds at that valuation, Anthropic would debut as one of the most valuable companies ever to go public, surpassing OpenAI's last private round. [Source](https://fortune.com/2026/06/01/anthropic-confidentially-files-ipo-965-billion-valuation/)
> >
> > > [!note]- Tech: Microsoft and Google enter AI coding race vs Anthropic and OpenAI (CNBC)
> > > Microsoft and Google are making major pushes into AI coding assistants — using Azure and Google Cloud scale — to challenge Anthropic's Claude Code and OpenAI's Codex, which have dominated developer mindshare. Anthropic's Claude Code is widely credited with driving the company's explosive Q2 revenue surge, making it the primary competitive target for both hyperscalers. The contest marks a new phase in the AI wars, with coding infrastructure and developer loyalty as the decisive battleground. [Source](https://www.cnbc.com/2026/06/01/microsoft-and-google-take-on-anthropic-and-openai-in-ai-coding-models.html)
> >
> > > [!note]- Macro: Broadcom plunges 15% on flat guidance, dragging chip stocks lower (CNBC)
> > > Broadcom's Q2 FY2026 earnings barely missed expectations ($22.19B vs. $22.27B) and CEO Hock Tan declined to raise the full-year $100B AI chip target despite 143% YoY AI revenue growth, sending the stock down 15% and erasing over $270B in market value. Nasdaq 100 futures fell 1.1% and the VanEck Semiconductor ETF (SMH) dropped 3%+ before the open Friday. The miss amplified investor concern over whether the ~$700B hyperscaler AI capex wave can sustain its pace through H2 2026. [Source](https://www.cnbc.com/2026/06/03/broadcom-avgo-earnings-report-q2-2026.html)
> >
> > > [!breaking]- World: Iran strikes Kuwait airport; US retaliates as Gulf ceasefire frays (CNN/NPR)
> > > Iran's IRGC launched missiles at Kuwait International Airport on June 2–3 in retaliation for US strikes, killing at least one person and injuring 63, forcing airport closure. The US responded with "self-defense strikes" against an Iranian military ground control station on Qeshm Island in the Strait of Hormuz. The exchange puts the fragile 60-day ceasefire MOU — still awaiting Trump's final approval — under severe strain, with Kuwait's FM heading to Washington to meet Secretary Rubio in an emergency session. [Source](https://www.npr.org/2026/06/01/g-s1-125126/us-iran-war-updates)
> >
> > > [!note]- Malaysia: Negeri Sembilan assembly dissolved; snap election imminent (FMT)
> > > Menteri Besar Datuk Seri Aminuddin Harun dissolved the Negeri Sembilan state assembly on June 5 after losing support within the legislature, with the Yang di-Pertuan Besar Tuanku Muhriz granting consent. All 36 seats will be contested; Pakatan Harapan has confirmed it will field candidates in every constituency, with coalition seat allocations to be finalised next week. The dissolution follows Johor's on June 1, making Malaysia's 2026 political calendar unusually dense ahead of a potential general election cycle. [Source](https://www.freemalaysiatoday.com/category/nation/2026/06/04/negeri-sembilan-assembly-dissolved)
> >
> > > [!note]- Science: Researchers reverse energy flow in turbulence, upending 80-year-old theory (ScienceDaily)
> > > A team from the University of Pittsburgh and the University of Turin discovered that the direction of energy transfer in turbulence can be reversed under specific geometric conditions — challenging Kolmogorov's 1941 prediction that energy in 3D flows always cascades from large to small scales. Using a tensor-alignment framework, they showed energy can instead propagate via a "zig-zag" pattern from small to large scales, published in Scientific Reports. Applications include controlling ocean currents, improving medical fluid dynamics, and enhancing climate models. [Source](https://www.sciencedaily.com/releases/2026/06/260602021655.htm)
> >
> > > **Evening update**
> >
> > > [!note]- SG & MY: Malaysia challenges double standards at SLD; Singapore hosts 550 defence officials (IISS)
> > > Malaysia's defence delegation used the Shangri-La Dialogue stage — hosted in Singapore from 29–31 May — to challenge what it termed double standards in international law, citing selective application of UN resolutions on Gaza and broader global governance failures. Singapore hosted over 550 defence ministers and officials from 40+ countries for the 23rd edition of Asia's premier security summit. The dialogue concluded with cautious optimism around renewed Sino-US communication channels, though China sent no high-level representative for a second consecutive year. [Source](https://www.iiss.org/events/shangri-la-dialogue/shangri-la-dialogue-2026/)
> >
> > > [!note]- Malaysia: Norway revokes Naval Strike Missile export licence; KL scouts alternative suppliers (NST)
> > > Norway's government revoked the export licence for the Naval Strike Missile system sold to Malaysia, leaving the Royal Malaysian Navy's frigate armament programme in limbo over undisclosed end-use concerns. Malaysia's Ministry of Defence confirmed it is evaluating alternative ship-launched and air-launched missile systems from European and Asian suppliers. The move comes as Malaysia accelerates its 15-to-5 Naval Transformation Plan to modernise an ageing fleet ahead of its 2030 deadline. [Source](https://www.nst.com.my/)
> >
> > > [!breaking]- World: North Korea unveils third uranium enrichment site; Kim vows exponential nuclear expansion (NPR)
> > > Kim Jong Un inspected a newly built uranium enrichment plant on 3 June, ordering production of weapons-grade material to be ramped up "at an exponential rate," with state media images showing dense rows of centrifuge tubes analysts assessed as a fully operational enrichment hall. This is North Korea's third known enrichment site, after Yongbyon and the covert Kangson complex revealed in 2024, and represents a substantial expansion of the country's fissile material capacity. South Korea's Joint Chiefs of Staff said it is closely coordinating with Washington to monitor the development. [Source](https://www.npr.org/2026/06/04/g-s1-126041/north-korea-unveils-a-new-plant-to-produce-fuel-for-nuclear-weapons)
> >
> > > [!note]- World: SLD 2026 closes with fragile Sino-US stability signals as China skips for second year (NUS)
> > > The 23rd Shangri-La Dialogue (29–31 May, Singapore) produced back-channel Sino-US contacts on avoiding accidental escalation in the South China Sea and Taiwan Strait, even as Beijing sent no ministerial delegation for a second consecutive year. NUS analysts described the signals as positive but fragile, with both sides carefully managing public optics while probing each other's red lines on AI weapons, undersea cables, and Taiwan contingencies. US Secretary Pete Hegseth pressed Indo-Pacific allies on higher defence spending and reaffirmed US commitment to regional deterrence. [Source](https://news.nus.edu.sg/shangri-la-dialogue-2026-highlights-renewed-positive-signals-in-sino-us-pursuit-of-strategic-stability)
> >
> > > [!note]- Tech: COMPUTEX 2026 closes in Taipei; 1,500 firms showcase AI robotics and smart manufacturing (PR Newswire)
> > > COMPUTEX 2026 wrapped its four-day run in Taipei today (2–5 June) with a record 1,500 exhibiting companies from 33 countries, headlined by a new AI Robotics Pavilion and a Tech Application & Experience Zone. Major themes spanned AI computing infrastructure, autonomous manufacturing, and next-generation memory — SK Hynix marked its $1 trillion market-cap milestone on the sidelines, joining Samsung and Micron as AI memory demand reshapes the chip industry. The show attracted over 100,000 trade visitors, underscoring Asia's pivotal role in the global AI hardware supply chain. [Source](https://www.prnewswire.com/news-releases/computex-2026-opens-amid-surging-global-demand-for-ai-infrastructure-302788497.html)
> >
> > > [!note]- Science: Cambridge & DIOSynVax launch first human trial of fully computer-designed vaccine (Rio Times)
> > > Researchers at the University of Cambridge and DIOSynVax initiated the first human clinical trial of a vaccine whose active component — a synthetic immunogen — was designed entirely by computer simulation, with no traditional wet-lab antigen derivation involved. The Phase 1 trial aims to generate broad cross-reactive immunity against multiple viral strains and marks a milestone in computational vaccinology. Success could substantially shorten future vaccine development timelines and reduce reliance on animal-derived biological inputs. [Source](https://www.riotimesonline.com/global-economy-briefing-june-5-2026/)
> >
> > > [!note]- [[06-04-26 Thu]]
> > >
> > > > [!note]- AI: Trump orders early gov't access to AI models before release (CNBC)
> > > > The White House signed an executive order requiring AI companies to voluntarily submit their most powerful models for government testing up to 30 days before public release. The move follows Anthropic limiting its Mythos Preview model due to its ability to identify and exploit software security vulnerabilities. Companies face no legal obligation to comply, but the order signals growing federal intent to oversee frontier AI development. [Source](https://www.cnbc.com/2026/06/02/trump-executive-order-ai.html)
> > >
> > > > [!note]- Tech: Meta cuts 8,000 jobs as AI capex soars to $135B in 2026 (Newsweek)
> > > > Meta announced layoffs affecting roughly 10% of its global workforce while simultaneously planning up to $135B in capital expenditures for 2026 — an 87% increase — to build out AI infrastructure for its "superintelligence" lab. The move is part of a broader wave of tech layoffs in 2026, with 363 companies cutting ~150,000 workers as AI-driven automation reshapes headcount. [Source](https://www.newsweek.com/all-tech-giants-announcing-sweeping-layoffs-2026-11872935)
> > >
> > > > [!breaking]- Macro: Oil hits $96/barrel, stocks slide as US-Iran strikes escalate (CNBC)
> > > > WTI crude surged 2.4% to $96.02/barrel and Brent rose to $97.81 following reports of new US-Iran military strikes, stoking inflation fears. The Dow fell 620 points (−1.2%), the S&P 500 dropped 0.74%, and AI-linked stocks led losses — Nvidia and Microsoft each shed 3%+, Oracle fell 5%. The Fed's next rate decision is June 16–17, with markets pricing in no change. [Source](https://www.cnbc.com/amp/2026/06/02/stock-market-today-live-updates.html)
> > >
> > > > [!breaking]- World: US-Iran confirm 60-day ceasefire MOU with nuclear talks (PBS)
> > > > The White House confirmed that US and Iranian negotiating teams reached a 60-day memorandum of understanding to extend the current ceasefire and launch formal nuclear talks, mediated by Pakistan. The deal would reopen the Strait of Hormuz, lift the US blockade on Iranian ports, and begin structured negotiations on Iran's nuclear and ballistic programs. Separate direct Lebanon-Israel talks are also scheduled in Washington this week. [Source](https://www.pbs.org/newshour/world/u-s-and-iranian-negotiators-reach-tentative-deal-to-extend-ceasefire-and-start-new-nuclear-talks)
> > >
> > > > [!note]- Malaysia: US proposes 10% tariff on Malaysia over forced labour failures (FMT)
> > > > The US Trade Representative proposed an additional 10% duty on Malaysian exports after a Section 301 probe found Malaysia failed to enforce a prohibition on imports made with forced labour. Malaysia joins 59 other economies including Canada, the EU, and Indonesia in facing the proposed duties. Malaysia's MITI acknowledged a legal gap — no existing law to screen imported goods made with forced labour — and said it is being addressed, with a public comment deadline of July 6. [Source](https://www.freemalaysiatoday.com/category/nation/2026/06/03/us-probe-finds-malaysia-failed-to-impose-forced-labour-import-ban)
> > >
> > > > [!note]- Science: Splitting a photon creates an infinite swarm of particles (Phys.org)
> > > > A study in Physical Review Letters by physicists at the University of Oslo found that "cutting" a single photon with an ultra-fast optical shutter doesn't produce two photons — it generates an infinite swarm via quantum electromagnetic field fluctuations. The result challenges assumptions about manipulating individual quantum particles and has implications for precision optical measurement and quantum computing. Researchers plan to test whether the effect holds for other elementary particles such as electrons. [Source](https://phys.org/news/2026-06-photon-infinite-swarm-particles.html)
> > >
> > > > **Evening update**
> > >
> > > > [!note]- SG & MY: Chinese nationals rob S$50k at MBS, lock victims on balcony (TOC)
> > > > Three Chinese nationals aged 29–34 lured a 45-year-old woman to a Marina Bay Sands hotel room under the guise of a foreign currency exchange, robbed her of S$50,000, then locked her and her child on the balcony. Singapore Police Force recalled a Shanghai-bound flight and arrested the trio within hours, recovering all stolen cash. The suspects face robbery with hurt charges, carrying 5–20 years' jail and a minimum 12 strokes of the cane. [Source](https://theonlinecitizen.com/2026/06/03/3-chinese-nationals-lock-woman-child-on-mbs-balcony-and-rob-s-50k-arrested-after-shanghai-bound-flight-recalled)
> > >
> > > > [!note]- Malaysia: First haj pilgrims return home; KL-Jakarta JCBC opens (Malay Mail)
> > > > The first group of 329 Malaysian haj pilgrims landed at KLIA early Thursday, opening Phase 2 of the 2026 Haj season; 100 charter flights via Malaysia Airlines and Saudia will repatriate all 31,600 pilgrims by July 1. Separately, Foreign Minister Mohamad Hassan led Malaysia's delegation to the 17th Malaysia-Indonesia Joint Commission for Bilateral Cooperation in Jakarta, covering trade, border management, and migrant labour. Seventeen pilgrims died in the Holy Land this season, most from cardiac events. [Source](https://www.malaymail.com/news/malaysia/2026/06/04/first-group-of-329-pilgrims-return-home-as-malaysia-begins-2026-haj-phase-two/222457)
> > >
> > > > [!breaking]- World: Russia's mass drone-missile blitz on Ukraine kills 22, wounds 138 (PBS)
> > > > Russia launched 73 missiles and 656 drones overnight at Kyiv, Dnipro, Poltava, Kharkiv, and Zaporizhzhia, killing at least 22 civilians and wounding 138. Ukrainian air defences intercepted 40 missiles and 602 drones, but depletion of US-supplied systems left the country exposed to ballistic missiles — at least 16 died in Dnipropetrovsk alone, including children. The assault came as Putin hosted the St. Petersburg Economic Forum, where Ukrainian drones simultaneously set an oil terminal in the city ablaze. [Source](https://www.pbs.org/newshour/world/massive-russian-attack-on-kyiv-and-other-ukrainian-cities-kills-22-people-officials-say-as-moscow-escalates-fighting)
> > >
> > > > [!note]- World: Israel seizes Beaufort Castle, signals extended Lebanon presence (AJ)
> > > > Israeli forces captured the 12th-century Crusader fortress of Beaufort Castle in southern Lebanon — the first time Israel has held it since its 2000 withdrawal — as Netanyahu ordered forces deeper into the country in a broadening Hezbollah offensive. The hilltop site offers commanding observation over both southern Lebanon and northern Israel, and analysts say the seizure signals intent to maintain a long-term military foothold beyond the nominal ceasefire. The UNESCO-protected castle sustained heavy damage during Israel's previous 18-year occupation. [Source](https://www.aljazeera.com/news/2026/6/1/what-is-lebanons-beaufort-castle-and-why-has-israel-captured-it)
> > >
> > > > [!note]- Tech: Altman meets Congress and White House over Trump's AI order (CNBC)
> > > > OpenAI CEO Sam Altman held back-to-back meetings in Washington with House Speaker Mike Johnson, Minority Leader Hakeem Jeffries, Senator Bernie Sanders, and senior Trump officials, one day after Trump signed an order seeking voluntary 30-day pre-release government access to frontier AI models. Altman publicly backed the EO on X, writing it "gets the balance right" between US AI leadership and safety oversight. The meetings are seen as OpenAI's effort to shape implementation and prevent the voluntary scheme from hardening into mandatory preclearance. [Source](https://www.cnbc.com/2026/06/03/open-ai-altman-congress-trump-eo.html)
> > >
> > > > [!note]- Economy: Nikkei hits record; Korea's AI chips to add 0.7pp to GDP (T. Rowe Price)
> > > > Japan's Nikkei 225 rose 4.72% and the TOPIX gained 1.66% this week, driven chiefly by the tentative US-Iran ceasefire framework that eased global risk aversion and lifted equities across Asia. South Korea's Bank of Korea governor projected that AI-related chip exports will add 0.7 percentage points to real GDP growth in 2026, more than offsetting the drag from elevated oil prices. J.P. Morgan Global Research estimates the AI investment supercycle will sustain 13–15% above-trend earnings growth across global equities for at least two more years. [Source](https://www.troweprice.com/personal-investing/resources/insights/global-markets-weekly-update.html)
> > >
> > > > **Evening update**
> > >
> > > > [!note]- SG & MY: Johor election due by July 29, raising stakes for JS-SEZ and RTS Link (The Star)
> > > > The Johor state assembly was dissolved on 1 June by the Regent, setting up the 16th Johor state election — all 56 seats to be contested by 29 July 2026. Incumbent BN under Menteri Besar Onn Hafiz Ghazi defends the two-thirds supermajority it won in March 2022. The outcome carries direct implications for Singapore: both the Johor–Singapore Special Economic Zone and the RTS Link (opening end-2026) depend on continuity of state-level cooperation. [Source](https://www.thestar.com.my/news/nation/2026/06/01/johor-state-assembly-dissolved-paving-way-for-16th-state-polls)
> > >
> > > > [!note]- Malaysia: PM Anwar distances federal govt from Johor polls, stays on national agenda (Malay Mail)
> > > > Prime Minister Datuk Seri Anwar Ibrahim stated that decisions on dissolving state assemblies rest with state governments, not Putrajaya, distancing himself from political ferment surrounding the Johor polls. He emphasised the federal government remains focused on its agenda regardless of state electoral dynamics. Johor is a test for all major coalitions — PH hopes to significantly improve on its five seats from 2022, while Perikatan Nasional seeks to deny BN's supermajority. [Source](https://www.malaymail.com/amp/news/malaysia/2026/06/04/pm-stays-focused-on-federal-agenda-amid-johor-election-buzz/222480)
> > >
> > > > [!note]- World: Iran briefly halted US nuclear talks over Israeli Lebanon strikes — Trump says back on (NPR)
> > > > Iran's negotiating team suspended all diplomatic communications with US counterparts on June 1, citing Israel's continued strikes in Lebanon and Gaza as violations of ceasefire preconditions Tehran had insisted upon. Within hours, Trump posted that talks were back "at a rapid pace" after discussions with both Israeli and Hezbollah representatives — though Netanyahu said Israeli operations in southern Lebanon would continue "as planned." The episode highlights the fragility of the 60-day ceasefire MOU and Iran's use of diplomatic suspensions as leverage. [Source](https://www.npr.org/2026/06/01/g-s1-125285/iran-israel-us-lebanon-gaza)
> > >
> > > > [!note]- World: Hong Kong CE seals 43 deals in Kazakhstan, building "hub-to-hub" bridge (The Standard)
> > > > Hong Kong Chief Executive John Lee's official visit to Kazakhstan yielded 43 bilateral agreements and memoranda of understanding, anchored around a "hub-to-hub" partnership model connecting Central Asia with global financial markets through Hong Kong. The accords span trade facilitation, financial services, and logistics corridors. The visit signals Hong Kong's push to broaden economic partnerships beyond traditional Western and mainland Chinese markets amid continuing geopolitical headwinds. [Source](https://www.thestandard.com.hk/news/article/333748/Morning-Recap-June-4-2026)
> > >
> > > > [!note]- Tech: DeepSeek eyes $7.4B debut funding — Tencent & CATL lead at up to $59B valuation (TechNode)
> > > > China's AI champion DeepSeek is in final talks to raise approximately ¥50 billion ($7.4B) in its first-ever external funding round, with Tencent Holdings committing $1.5B and CATL pledging $740M as the largest outside investors; founder Liang Wenfeng personally contributes $3B. Fewer than 10 investors are expected to participate, with the round due to close within weeks and the company targeting a valuation of $52B–$59B. DeepSeek upended US assumptions about Chinese AI when its V3 and R1 models drew widespread Silicon Valley praise early last year at a fraction of Western training costs. [Source](https://technode.com/2026/06/04/deepseek-in-talks-to-raise-7-billion-from-tencent-catl-and-other-investors/)
> > >
> > > > [!note]- Economy: Broadcom revenue miss erases $270B in market cap; Nasdaq futures fall 1.1% (CNBC)
> > > > Broadcom's Q2 FY2026 revenue of $22.19B barely missed the $22.27B analyst consensus, and Q3 AI chip guidance of $16B fell well short of the $17.2B expected — CEO Hock Tan also declined to raise the full-year $100B AI chip target. The stock slid over 12% after-hours, threatening to erase more than $270B in market value, and dragged Nasdaq 100 futures down 1.1% and the VanEck Semiconductor ETF (SMH) more than 3% before the open. The miss amplified investor anxiety over whether the AI infrastructure spending boom can sustain its breakneck pace into the back half of 2026. [Source](https://www.cnbc.com/2026/06/03/broadcom-avgo-earnings-report-q2-2026.html)
