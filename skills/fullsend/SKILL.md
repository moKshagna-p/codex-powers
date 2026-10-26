---
name: fullsend
description: Use only when the user explicitly requests full send, fullsend, or evolve and merge for a task, or when fullstop selects preparation mode.
---

# Full send

Read the user's requested outcome, current Git state, and delivery constraints. Default to merge mode only for an explicit full send or evolve and merge request. When called by fullstop, preparation mode overrides every merge instruction here.

## Scope and permission

The explicit shipping request covers a task branch, scoped commits and pushes, rebasing that branch, creating the PR, and monitoring CI. Create an intent named branch before edits when on the default branch. Preserve unrelated changes. If a branch contains unrelated commits or ownership is unclear, resolve the scope before publishing. Never push directly to the default branch.

A lease protected force push is permitted only when explicitly covered by the user's shipping request or standing policy, only on this task's owned branch, and only after checking for unexpected remote changes. Never force push another branch. Preserve explicit local only, no push, draft PR, and other narrower instructions.

Before starting delivery and before every push, apply [the automation guard](../babysit/SKILL.md#prevent-unintended-merging). Keep auto merge and queue membership disabled until the final merge gate passes, including when the user ultimately authorized merging.

## Workflow

1. Finish the smallest complete change using [implement](../implement/SKILL.md). Prove the affected behavior, including the original failure for bugs and the actual UI for visual work when available.
2. Run [verify](../verify/SKILL.md) in checks only mode, using relevant CI checks and direct runtime evidence where necessary. Report missing or already failing checks. Do not claim readiness without sufficient proof.
3. Run [solloop](../solloop/SKILL.md), retaining its single reviewer and bounded review record for this delivery. Do not start a second ordinary reviewer.
4. Fetch the PR target branch, resolve relevant conflicts on the task branch, and reverify material changes. Review approval must cover the final behavior diff. Commit only scoped files, push under the user's grant, and use [filepr](../filepr/SKILL.md).
5. Use [babysit](../babysit/SKILL.md) for checks and review feedback. Prove each accepted fix and update Sol review when behavior changes, within the same review budget. Budget exhaustion with unresolved issues blocks delivery.
6. In merge mode only, recheck the gate below and merge through the repository's allowed method. Use a merge operation pinned to the approved head, such as `gh pr merge --match-head-commit <sha>`. Never bypass protection. Wait for GitHub to confirm a queued merge before reporting it merged.

## Gate for readiness and merging

Check the live PR immediately before handoff or merge: the final head matches the tested and reviewed diff, required checks pass, required approvals are present, no human review requests changes, relevant configured bot findings are handled, the target branch is current, and GitHub confirms mergeability. Missing or unknown status is not a passing gate. If there are no configured checks or bots, state that and rely on the actual required evidence.

In preparation mode, leave the PR open and unmerged, with auto merge disabled and no merge queue entry. In merge mode, respect any remaining human approval or production approval requirement. Neither path authorizes production changes or data deletion.

Report the PR URL, head or confirmed merge commit, proof, Sol outcome, material decisions, and gaps. If blocked, say what remains and whether anything is still running. Do not claim ongoing monitoring after ending without a supported wake mechanism.

Adapted from [tstack full-send](https://github.com/t3dotgg/tstack/blob/main/skills/full-send/SKILL.md). [MIT license](LICENSE).
