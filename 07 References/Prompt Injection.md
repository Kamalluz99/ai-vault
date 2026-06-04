---
created: 2026-06-04T00:00
updated: 2026-06-04T00:00
type: reference
unread: true
---

Prompt injection is a security attack on [[LLM]]-powered systems in which malicious instructions embedded in external content (emails, web pages, documents) hijack the agent into performing unintended actions. In an agentic context — where the AI can read files, send messages, or access APIs — a successful injection could exfiltrate data, send messages impersonating the user, or execute destructive commands. Mitigations include limiting agent scope (no send-message access by default), using [[frontier models]] that are harder to deceive, and keeping sensitive accounts isolated from agent-connected ones. A key reason [[Reysu]] recommends not enabling message-sending permissions in [[Claude Code]].
