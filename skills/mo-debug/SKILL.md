---
name: mo-debug
description: Use when a reported bug, failing check, or unexpected behavior needs diagnosis and a fix.
---

# Fix a bug

Reproduce the symptom and inspect recent changes, relevant data flow, and every caller of the affected function. Establish the cause with evidence before editing; distinguish observations from hypotheses.

If two attempted fixes share an assumption and fail the same check, write down and test that assumption before trying another fix. Then correct the cause in the shared implementation, preserving validation and error handling. Use [mo-tdd](../mo-tdd/SKILL.md) for a cheap focused regression check; avoid creating expensive test infrastructure for a small fix.

Run focused affected checks. Broaden only for integration needs, new changes, failures, or unresolved risk. Sensitive boundaries and irreversible effects still require deterministic verification and independent review; resolving the cause does not remove that risk. Delegate only when authorized and report required review as outstanding if unavailable.

Continue from diagnosis through verification without a separate implementation prompt. Report the cause, fix, checks, and remaining gaps. Respect requests for diagnosis only and existing Git authorization boundaries.

The repeated failure rule is informed by [pstack attack-the-premise](https://github.com/cursor/plugins/blob/main/pstack/skills/principle-attack-the-premise/SKILL.md).
