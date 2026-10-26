---
name: fix-bug
description: Use when a reported bug, failing check, or unexpected behavior needs diagnosis and a fix.
---

# Fix a bug

Reproduce the symptom and inspect recent changes, relevant data flow, and every caller of the affected function. Establish the cause with evidence before editing; distinguish observations from hypotheses.

Fix the cause in the shared implementation with the smallest complete change. Preserve validation and error handling. Add regression evidence that fails for the original defect and passes with the fix when practical.

Run focused affected checks. Broaden only for integration needs, new changes, failures, or unresolved risk. Sensitive boundaries and irreversible effects still require deterministic verification and independent review; resolving the cause does not remove that risk. Delegate only when authorized and report required review as outstanding if unavailable.

Continue from diagnosis through verification without a separate implementation prompt. Report the cause, fix, checks, and remaining gaps. Respect requests for diagnosis only and existing Git authorization boundaries.
