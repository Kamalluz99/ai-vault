---
created: 2026-06-04T00:00
updated: 2026-06-04T00:00
date: 2026-05-10
tags:
  - youtube
recording: "https://www.youtube.com/watch?v=UXJA22y4C80"
creator: "[[Reysu]]"
people:
  - "[[Reysu]]"
duration: 925
views: 29025
uploaded: 2026-05-10
summary: "Reysu walks through his Claude Code–powered Obsidian second brain"
categories: ["[[posts.base]]"]
unread: true
---

> [!tldr]
> [[Reysu]] gives a full walkthrough of his [[Claude Code]]–managed [[Obsidian]] vault: a true [[second brain]] that autonomously summarizes books, podcasts, and meetings, maintains a people [[Rolodex]], tracks projects, and surfaces a daily brief and news digest. He covers the 10-folder structure, three essential root files, two custom Obsidian plugins, and four privacy hygiene practices for running AI agents safely.

## Why build an AI-managed second brain

The core value proposition is memory and ownership. Unlike asking [[Claude]] or [[ChatGPT]] a one-off question, an [[LLM]]-managed [[Obsidian]] vault accumulates context across everything you've ever worked on — every meeting, book, podcast, and research session — and makes it queryable in plain English. Because it's just markdown files in a local folder, you own the data and can plug it into any [[open source models|open source agent]] in the future. The vault runs mostly autonomously once configured: [[Claude Code]] updates notes, logs its own work, and surfaces the things that matter without you having to check multiple apps.

## Folder structure overview

The vault has 10 folders: `01 Updates`, `02 Daily`, `03 Meetings`, `04 People`, `05 Projects`, `06 Research`, `07 References`, `08 Summaries`, skills, and `10 Places`. Each folder has a specific purpose and [[Claude Code]] is instructed to route notes into the correct location.

## 01 Updates — Daily Brief and Daily News

The Updates folder holds two continuously updated files.

**Daily Brief**: pulls from calendar, email, messages, and tasks and surfaces the most important items based on heuristics and examples [[Reysu]] gave the agent. The goal is eliminating the need to check separate apps — you open one page and know what to focus on and who to respond to. For privacy, only a work email is connected (not personal banking email), and a mix of cloud and [[local LLMs]] handles different tasks.

**Daily News**: a one-page digest of the most important headlines across topics the user cares about, written in multiple languages if needed. This replaces doomscrolling [[Twitter]] and other feeds with a single clean read. Both files are updated on a schedule via a [[Claude Code]] routine, and each re-reads the agent instructions embedded in the file every time it runs so formatting stays consistent.

The **unread indicator** plugin ([[unread-dot]]) marks files with a blue dot when the agent updates them, so you can immediately see what's changed without opening every file.

## 02 Daily — AI session log

Daily notes function as [[Claude Code]]'s own journal — a record of every task it completed, file it summarized, or change it made. This serves two purposes: the agent can reference it to find context quickly, and you can audit its work and catch anything destructive. Setting this up is simple: instruct [[Claude Code]] in [[CLAUDE.md]] to update the daily note at the end of every session.

## 03 Meetings — automated transcription and notes

Pass a meeting recording to [[Claude Code]] and it will: transcribe the audio with [[speaker diarization]] (identifying who said what), create a detailed summary with [[wikilinks]] for every concept and person discussed, and update the person note (Rolodex entry) for each participant.

The format is: a `> [!tldr]` callout at the top, a summary with hyperlinked concepts, and a people-mentioned section at the bottom. You own the data permanently — unlike [[AI meeting note]] subscription services where access disappears if you stop paying. The entire pipeline can run offline using [[open source models]].

## 04 People — automated Rolodex

Every person encountered — whether from a meeting, a book, or a podcast — gets a person note. The template includes: birthday (used to calculate current age via [[Dataview]]), a bio, and backlinks to every note in the vault where they appear. The [[Obsidian]] graph view shows how each person connects to other notes. This is especially powerful for studying people you learn from: you can reference everything they've said or written in one place.

## 05 Projects — persistent project context

Each project gets its own subfolder with a root note that [[Claude Code]] keeps updated with a brief of recent changes and next steps. The agent reads this file whenever resuming work on a project, so long breaks don't cost context. Project notes also contain SOPs — if [[Claude Code]] ever gets confused about the workflow, it can re-read the spec and continue correctly. The daily note links to project updates so the log stays coherent.

## 06–08 Research, References, and Summaries

This is the learning engine of the vault. [[Claude Code]] produces chapter-by-chapter summaries for books (with [[wikilinks]] to every concept so you can click through anything unfamiliar), section summaries for long podcasts, and topic breakdowns for videos. The example shown is *[[I Am a Strange Loop]]* — a dense philosophy book by [[Douglas Hofstadter]] — where every chapter is summarized with linked concepts, making a 30-hour read achievable in 30 minutes at much higher comprehension. A minimal-mode version of the skill exists for lower token usage.

## Root files — CLAUDE.md, AGENTS.md, PROJECTS.md

Three files at the vault root are essential:

1. **[[CLAUDE.md]]** — the full agent instruction file. Defines folder structure, note conventions, templates, formatting rules, and any other behaviour the agent should follow. This is the vault's constitution.
2. **AGENTS.md** — a shorter, faster-loading version for [[sub-agents]] that need quick context without parsing the full CLAUDE.md.
3. **[[PROJECTS.md]]** — a table linking to all active projects so the agent can find them without searching. Keeps routing fast.

[[Reysu]] also mentions [[LLM wiki]] by [[Andrej Karpathy]] as a source of useful community-built [[Obsidian]] skills compatible with [[Claude Code]] and other agents.

## Extensions

Two custom [[Obsidian]] plugins:

- **[[unread-dot]]** — marks files with a blue dot when the agent modifies them. Click to see what changed.
- **Anki flashcard maker** — highlight any text in a summary note and it generates a flashcard and sends it to [[Anki]] for [[spaced repetition]] review. Useful for material you actually want to retain long-term.

## Privacy hygiene

Four practices for running AI agents safely:

1. **[[Local LLMs]]** — use [[LM Studio]] (free) to run [[open source models]] locally for sensitive tasks. Data never leaves your machine. A year ago these models were too weak, but for limited tasks they now match paid models.
2. **Isolation** — connect only accounts you'd be comfortable with an AI reading. Keep a separate laptop with minimal apps, mostly offline, for sensitive work. There is a real risk of agent compromise leading to full filesystem access.
3. **[[Anthropic API]] over subscription** — the API retains data for only one week and does not train on it, versus the consumer subscription which has weaker guarantees. Trade-off: significantly higher cost.
4. **Limit scope** — don't grant the agent the ability to send messages. Default is off; keep it off. Prompt injection attacks could cause the agent to exfiltrate data without your knowledge. Use [[frontier models]] — smarter models are harder to trick.

[[Reysu]] uses a hybrid of local and [[frontier models]] and is exploring full [[self-hosting]] as a path to complete subscription independence.

## People Mentioned

- [[Reysu]] — creator and presenter; built the ai-life-skills vault template and associated Claude Code skills
- [[Andrej Karpathy]] — AI researcher and educator; mentioned for his [[LLM wiki]] Obsidian skill collection on GitHub
