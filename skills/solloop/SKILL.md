---
name: solloop
description: Use when the user requests sol loop or solloop, or when an explicitly invoked evolve shipping workflow requires bounded Sol review.
---

# Sol review loop

Use one native `gpt-6.1-sol` reviewer at `high` reasoning, unless the user explicitly selected another Sol version or effort. Verify the actual role/model configuration. If the selected Sol route is unavailable, report independent review as blocked. Do not substitute another provider or provision access.

## Bound the review

Run `git status --short`. Establish an explicit base and scoped paths, including relevant untracked files, and preserve unrelated work. Use the same base and scope throughout. Run covering checks before review; disclose unavailable and preexisting failures.

Use at most three rounds across the whole delivery, including later CI fixes. Stop earlier on approval or only cosmetic findings. Extend only when the user explicitly requests it. Keep the record in session context, or an ignored `.codex/` checkpoint if needed; do not create tracked review ledgers.

Start the reviewer with fresh conversation context and a self-contained brief covering the repository, base, intent, scope, constraints, relevant invariants, actual diff, surrounding code paths, and check results. Disclose if the host cannot exclude parent history. It reads only: no edits, Git writes, PR comments, or children. Ask for an approval verdict and stable finding IDs with severity, file and line, concrete impact, and the smallest fix. Prioritize real correctness, security, regressions, and unnecessary expansion; omit style preferences.

Wait for that reviewer before editing scoped files. Reuse its native ID for followups. Never overlap reviewers or add a normal review pass on top. A timeout or error is not approval; confirm a failed reviewer has stopped before restarting within budget.

## Resolve and stop

Check findings against the actual implementation. Apply the smallest justified fix; reject incorrect or speculative suggestions with evidence. Report important risks outside the change separately rather than silently expanding the task or downgrading real harm as cosmetic.

Rerun affected checks. Request another round only for unresolved substantive findings or behavior changes not covered by approval. Send open finding IDs and the incremental changes; do not repeat full exploration. Cosmetic corrections alone need no new round.

Finish when the current behavior diff is approved, no substantive finding remains, and the lead has no unresolved concern. If the budget ends or a finding stays disputed after two exchanges, present the disagreement and stop with review unresolved. Exhausting the budget is never approval. This skill alone authorizes no commit, push, or merge.

Report rounds, verified model and effort, accepted and declined findings, check results, diff growth, and remaining gaps. Never invent usage metrics or claim model agreement replaces proof.

Adapted from [tstack sol-loop](https://github.com/t3dotgg/tstack/blob/main/skills/sol-loop/SKILL.md). [MIT license](LICENSE).
