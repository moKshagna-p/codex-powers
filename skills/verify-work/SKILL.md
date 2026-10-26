---
name: verify-work
description: Use when checking whether existing changes meet their acceptance criteria or assessing readiness for requested delivery.
---

# Verify existing work

Read the acceptance criteria and actual diff, then inspect affected callers and invariants. Run the smallest checks that establish the result: meaningful tests for behavior, or parse, diff, link, and configuration checks for documentation and settings.

- Read the complete relevant results before claiming success. Distinguish checks run from assumptions and unavailable checks.
- Repeat passing checks only after new changes or a concrete unresolved concern.
- When independent review is requested or required by risk, use an authorized reviewer. Give it the criteria, diff, relevant paths, and verification evidence. Ask for evidence-backed defects and the smallest fixes; omit style preferences and speculative expansion.
- Assess each finding against the implementation, apply necessary fixes within the authorized scope, and rerun affected checks. Self-review does not satisfy independent review; report missing required review as outstanding.

Report actual results and remaining gaps. Checking readiness does not authorize commits, pushes, merges, or pull requests; perform only requested Git delivery.
