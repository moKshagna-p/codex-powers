# Review report and fix handoff

Use the same contract for the reader and the agent receiving the fixes. Keep evidence concise and specific enough to resume from the report. Do not duplicate the entire investigation or make the implementer infer the failure from a title.

## Summary and priorities

Lead with what the code does and who is affected, then state **changes needed**, **no actionable findings**, or **incomplete review**. An incomplete review may still contain confirmed findings. Avoid treating a verdict as deployment approval.

Record the review identity: repository; comparison mode; resolved base/merge-base and head when applicable; local diff/untracked content fingerprints; scoped paths; requirements sources; and whether the review was independent. For source provided outside Git, identify the supplied snapshots instead of inventing SHAs.

List defects in priority order, highest first. Assign stable IDs (`R1`, `R2`) and keep them through follow-ups. Priority is independent of proof strength:

| Priority | Meaning |
| --- | --- |
| P0 | Immediate blocker: demonstrated broad outage, severe exposure, or irreversible loss in the supported execution path. |
| P1 | Fix before delivery: a reachable security, correctness, data integrity, or compatibility failure with substantial impact. |
| P2 | A real defect with narrower impact, a less common supported trigger, or demonstrated performance degradation. |

Do not label every crash or edge case P0. An unproven severe risk belongs under open questions with its potential impact and missing proof, not among confirmed defects. Show evidence as **reproduced** or **source-traced**; do not invent confidence percentages. Existing out-of-scope defects stay explicitly separate from introduced regressions.

## Every defect gets a fix packet

Start with `[priority] ID — action and consequence`, linked to the smallest relevant line range. Use the host's clickable file/PR links; include the symbol because line numbers move. Prefer the changed cause for inline placement, and link unchanged callers as supporting evidence.

Explain these elements in a short paragraph and compact bullets:

- **Failure:** what the code is meant to do; triggering input/state; entry point → relevant calls → failure; expected versus actual behavior; user impact. Name the violated requirement or invariant and why the path is reachable.
- **Evidence:** exact source locations and proof status. For execution, include the working directory, command or complete small reproduction, input/setup, expected/observed result, and exit status. Distinguish observed results from proposed checks. For a regression, identify the behavior in the base revision.
- **Fix scope:** smallest correction; exact files/symbols and affected callers/fixtures/exports; contracts and error handling to preserve. Suggest code only when sufficiently grounded; label an unexecuted suggestion as proposed.
- **Regression check:** nearest test file or reproduction, cases/assertions that expose this cause, and focused command. State what should fail before and pass after; commands not run remain explicitly proposed.
- **Dependencies:** other finding IDs that must be fixed first, or independent. Do not infer permission for parallel writers.

For example, a useful explanation is: "The lookup now returns `None` for an unknown account. `render_invoice()` still indexes the result; its `except KeyError` cannot catch the resulting `TypeError`. An unknown account now crashes invoice rendering instead of returning the existing fallback." Link both locations, show the actual reproduction when available, and name the caller changes and regression cases. Do not report just "handle nulls."

## Improvements, open questions, and coverage

- **Improvements (`I1`, ...):** observed issue/cost, location, minimal improvement, expected benefit, and a validation check. Keep these nonblocking unless an explicit acceptance criterion makes them required. Avoid filling an arbitrary quota.
- **Open questions (`Q1`, ...):** plausible failure, missing evidence, potential impact, and the smallest next check. Missing authorization, dependencies, runtime, source, or external consumer access limits the verdict rather than disappearing from the report.
- **Coverage:** relevant paths/contracts inspected, actual checks and outcomes, cleared candidate risks worth preserving, skipped areas, unavailable checks, and assumptions. A scoped review never implies exhaustive repository coverage.

End with one copyable handoff covering selected finding IDs, the review snapshot, edit locations, fix order, checks, and explicit permissions. Reference the packets instead of restating them. On reuse, verify the snapshot and reread the exact edit targets; use the evidence map to avoid a full repository rescan. Changed dependencies or contradictory evidence invalidate the affected conclusions. Mark findings fixed, declined with evidence, unresolved, or stale; a timeout or exhausted loop is not approval.

## Inspiration and limits

This contract combines the repository's existing verify, blast, and reviewloop methods with independently written guidance inspired by [Ponytail review](https://github.com/DietrichGebert/ponytail), [Matt Pocock's review skill](https://github.com/mattpocock/skills/blob/main/skills/engineering/code-review/SKILL.md), and [fresh-context change](https://github.com/mattpocock/skills/pull/1341). It uses one evidence-ranked report rather than Matt's two parallel standards/spec reports.

Greptile documents a [summary, prioritized inline findings, and suggested fixes](https://www.greptile.com/docs/code-review/first-pr-review). Its [review-agent article](https://www.greptile.com/blog/how-to-build-a-code-review-agent) discusses codebase context, execution, evaluation, and model selection. These inform the design; this skill does not copy its private engine, provide its codebase index, guarantee runtime availability, or reproduce its scoring. Compare detection and false positives on held-out real changes before claiming parity; a smoke test only demonstrates behavior on its fixture.
