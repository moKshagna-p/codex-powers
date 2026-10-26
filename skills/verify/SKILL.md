---
name: verify
description: Use when checking whether existing changes meet their acceptance criteria or assessing readiness for requested delivery.
---

# Verify existing work

Read the acceptance criteria and actual diff, then inspect affected callers and invariants. Run the smallest checks that establish the result: meaningful tests for behavior, or parse, diff, link, and configuration checks for documentation and settings.

- In checks only mode, run verification without spawning a reviewer. When Evolve owns review, defer to its existing [solloop](../solloop/SKILL.md) record instead of duplicating review.
- Use [blast](../blast/SKILL.md) when safety depends on indirect callers or a consequential assumption beyond the diff.
- Read the complete relevant results before claiming success. Distinguish checks run from assumptions and unavailable checks.
- Repeat passing checks only after new changes or a concrete unresolved concern.
- When independent review is requested or required by risk, use an authorized reviewer. Give it the criteria, diff, relevant paths, and verification evidence. Ask for defects supported by evidence and the smallest fixes; omit style preferences and speculative expansion.
- Assess each finding against the implementation, apply necessary fixes within the authorized scope, and rerun affected checks. Reviewing your own work does not satisfy independent review; report missing required review as outstanding.

Report actual results and remaining gaps. Checking readiness does not authorize commits, pushes, merges, or pull requests; perform only requested Git delivery.
