---
name: tdd
description: Use when the user requests a failing regression test or when a bug has an obvious cheap local test path.
---

# Prove a bug with a regression test

Identify the intended behavior and narrowest observable reproduction. Reuse the closest test setup instead of building new infrastructure for a small fix.

1. Add a focused test of intended behavior, not implementation details.
2. Run it before changing production code. Confirm it fails because of the reported defect, rather than setup or unrelated state.
3. Make the smallest root cause fix while preserving nearby contracts.
4. Rerun the regression test and relevant affected checks. Report the failure before and success after.

If a useful test would require brittle mocks, broad fixture changes, slow infrastructure, or production access, use a targeted executable reproduction or the nearest reliable check. Say why evidence before the fix could not be established when that is the case. Never weaken assertions to accommodate a wrong implementation or claim a reproduction ran when it did not.

For a test only or diagnosis only request, stop at that boundary rather than implementing a fix. This skill grants no Git delivery permission.

Adapted from [pstack tdd](https://github.com/cursor/plugins/blob/main/pstack/skills/tdd/SKILL.md). [MIT license](LICENSE).
