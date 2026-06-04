---
updated: 2026-06-04
unread: true
---

Quick reference for sub-agents. Full conventions in [[CLAUDE.md]].

## Folder routing

| Folder | What goes here | Naming |
| --- | --- | --- |
| `01 Updates/` | Ongoing topic updates (one file per topic) | `Topic Name.md` |
| `02 Daily/YYYY/MM/` | Daily session logs | `MM-DD-YY ddd.md` (e.g. `06-04-26 Thu.md`) |
| `03 Meetings/` | Call and meeting notes, by year | `MM-DD-YY Day Name1 x Name2.md` |
| `03 Meetings/Transcriptions/` | Raw timestamped transcripts | same base name + ` Transcript` |
| `04 People/` | One note per person | `Full Name.md` |
| `05 Projects/` | One folder per project with root note | `<projectName>/<projectName>.md` |
| `06 Research/` | Deep research docs | descriptive name |
| `07 References/` | Concepts, tools, companies, books | `Term.md` |
| `08 Summaries/` | AI-generated summaries (books, videos, podcasts) | `<Channel>/Summaries/<Title>.md` for YouTube |
| `10 Places/` | Place notes | `Place Name.md` |
| `Archive/` | Completed or inactive projects | move folder here |
| `_Attachments/` | Media only (audio, images, PDFs, ebooks) | original filename |
| `_Bases/` | `.base` files only | — |
| `_Templates/` | Note templates | — |

Root-level files: `CLAUDE.md`, `AGENTS.md`, `PROJECTS.md`, `README.md` only.

## Hard rules

- **No `# Title` headings** — ever. Filename is the title.
- **Never repeat frontmatter in the body.**
- **`unread: true`** on every note you create or modify.
- **Never delete or rename files** without explicit user approval.
- **Update `02 Daily/` at the end of every session.**
- **Update `PROJECTS.md`** when any project is created or changed.

## Frontmatter minimums

Every `.md` file needs at least:
```yaml
---
created: YYYY-MM-DDTHH:mm
updated: YYYY-MM-DDTHH:mm
unread: true
---
```

## Daily note

Path: `02 Daily/YYYY/MM/MM-DD-YY ddd.md`
Log work under `##` section headers. End with `## TODO for next session`.

## Person notes

Path: `04 People/Full Name.md`
Use template at `_Templates/new person template (minimal).md`.
Always include `> [!info]` bio callout and `## updates` section.
Link updates to source content notes — never to daily notes.

## Wikilinks

Link every person, place, company, concept, product, and book/film title. Use alias syntax for the same entity with multiple names: `[[Canonical Name|Display Name]]`. One entity = one link target.
