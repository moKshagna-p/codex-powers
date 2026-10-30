---
name: fullstop
description: Use only when the user explicitly requests full stop, fullstop, or evolve implementation without merging.
---

# Full stop

Read [fullsend](../fullsend/SKILL.md) and execute its preparation mode. Its implementation, proof, independent review, PR, and CI requirements apply; its merge step never does.

When the user limits work to local changes, do not modify remote PR settings or perform delivery; finish authorized local work and report that no ready PR can be claimed. Otherwise, apply [the automation guard](../babysit/SKILL.md#prevent-unintended-merging) before starting and before every push. Keep the PR unable to merge automatically; block further publication if that cannot be confirmed.

Never merge, enable auto merge, enqueue the PR, push to the default branch, or delegate any of those actions. A queue requirement is not permission to enter it in this mode.

Handoff only after checking the live final head, target branch, checks, reviews, and mergeability. Report one of: ready for the user to merge, waiting for required human approval, or blocked with the actual cause. Say whether the PR is still open and unmerged. If someone else merged it, report that observed state instead.

Adapted from [tstack full-stop](https://github.com/t3dotgg/tstack/blob/main/skills/full-stop/SKILL.md). [MIT license](LICENSE).
