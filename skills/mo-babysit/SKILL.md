---
name: mo-babysit
description: Use when the user requests monitoring a pull request or when an authorized evolve shipping workflow is waiting on CI and review feedback.
---

# Handle PR checks and feedback

Read the live PR head, target branch, checks, reviews, and mergeability. Work only on the task PR. Verify findings against current source and the latest relevant head before acting. Distinguish actual repository failures from infrastructure errors and stale feedback.

## Prevent unintended merging

Before starting a publishing workflow and before every push, inspect the task PR for auto merge and merge queue membership. Under the existing task delivery grant, disable auto merge, remove the queue entry, and confirm both are inactive. If the grant does not cover those changes, the host cannot perform them, or the state cannot be confirmed, block further publication and report the cause. Report any settings changed. Never change unrelated PRs.

Read only and local only requests do not authorize changing remote settings or publishing. Report existing automatic merging when relevant without expanding those permissions. Keep automation disabled during preparation and CI fixes. Babysit and fullstop never restore it; only fullsend may request merging or queue entry after its final gate passes.

## Checks and feedback

Use one host supported PR watcher when available. Otherwise `gh pr checks <pr> --watch --required --fail-fast` can wait for required CI checks. That command does not watch every review or approval: inspect those separately afterward. Do not build custom polling scripts, start multiple watchers, or create recurring automations without authorization. If no supported mechanism can wait for a missing approval or review, report the precise waiting state rather than claiming readiness or continued monitoring.

Apply only justified fixes within scope, verify them, and push only under the existing task grant, with no AI `Co-Authored-By` trailers in commits. Behavior changes need updated proof and any required mo-reviewloop followup within the original review budget. A red check, missing approval, unknown status, or unresolved material finding prevents readiness.

Post replies or resolve threads only when the user authorized handling that feedback. Explain rejected findings with evidence, preserve privacy, and verify a reply succeeded before resolving its thread. Do not buy or require additional review bots.

Recheck target branch changes and relevant conflicts before handoff. Stop the watcher when done, blocked, or handing off. Report the PR, latest checked head, required status, and gaps. This skill does not itself authorize merging, auto merge, queue entry, or closing the PR.

Adapted from [tstack babysit-pr](https://github.com/t3dotgg/tstack/blob/main/skills/babysit-pr/SKILL.md). [MIT license](LICENSE).
