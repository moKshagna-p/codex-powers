---
name: verify
description: Use when checking whether existing changes meet their acceptance criteria or assessing readiness for requested delivery.
---

# Verify existing work

Read the acceptance criteria and actual diff, then inspect affected callers and invariants. Run the smallest checks that establish the result: meaningful tests for behavior, or parse, diff, link, and configuration checks for documentation and settings.

- In checks only mode, run verification without spawning a reviewer. When Evolve owns review, defer to its existing [reviewloop](../reviewloop/SKILL.md) record instead of duplicating review.
- Use [blast](../blast/SKILL.md) when safety depends on indirect callers or a consequential assumption beyond the diff.
- Read the complete relevant results before claiming success. Distinguish checks run from assumptions and unavailable checks.
- Repeat passing checks only after new changes or a concrete unresolved concern.
- When independent review is requested or required by risk, start an authorized reviewer with fresh conversation context. Give it [review](../review/SKILL.md) and a self-contained brief covering the objective, constraints, permissions, criteria, diff, relevant paths, and verification evidence. Use its prioritized findings and fix packets as the shared review record; disclose if independent review or fresh context is unavailable.
- Assess each finding against the implementation, apply necessary fixes within the authorized scope, and rerun affected checks. Reviewing your own work does not satisfy independent review; report missing required review as outstanding.

Report actual results and remaining gaps. Checking readiness does not authorize commits, pushes, merges, or pull requests; perform only requested Git delivery.
