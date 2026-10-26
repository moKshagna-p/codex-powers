---
name: blast
description: Use when assessing what a change could break beyond its diff, especially indirect callers, lifecycle behavior, or external contracts.
---

# Check a change's consequences

Read the diff, affected callers, dependency versions and patches, and relevant lifecycle or data boundaries. Follow consequences a symbol search misses: serialized data, API consumers, database fields, feature flags, teardown, and other languages reading the same values.

Find the one or two assumptions that make the change safe. Trace a concrete failure case, then run the smallest test or reproduction against the real code that can disprove those assumptions. Add a focused check only within the user's authorized scope; for review only, use a temporary check or existing tests and leave tracked files untouched.

Report confirmed risks with file and line, impact, and evidence. Separate cleared risks from unproven assumptions. State whether each conclusion is based on source inspection, an executable check, or the running application. Missing proof remains a gap, not a reason to invent hypothetical fixes.

Run this in the main agent without panels or exploratory subagents. This assessment does not replace independent review when required and does not authorize fixing, committing, or shipping findings from a review only request.

Adapted from the solo verification steps of [pstack blast-radius](https://github.com/cursor/plugins/blob/main/pstack/skills/blast-radius/SKILL.md). [MIT license](LICENSE).
