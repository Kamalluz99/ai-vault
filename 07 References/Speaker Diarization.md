---
created: 2026-06-04T00:00
updated: 2026-06-04T00:00
type: reference
unread: true
---

Speaker diarization is the process of segmenting an audio recording by speaker identity — answering "who spoke when." It is distinct from [[speech-to-text]] (transcription) and is typically a separate pipeline step. Modern diarization models (e.g. pyannote.audio) use speaker embeddings and clustering to identify and label distinct voices without prior enrollment. In meeting transcription workflows like the [[summarize-call]] skill, diarization runs after [[Whisper]] transcription to assign speaker labels to each segment, enabling the AI to produce a structured transcript that attributes quotes to named participants.
