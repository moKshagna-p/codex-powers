---
name: filepr
description: Use when the user explicitly asks to open a pull request or when an authorized fullsend or fullstop workflow reaches PR creation.
---

# File a pull request

Check the actual branch diff against the target branch and look for an existing PR before creating another. Preserve the authorized scope and unrelated changes. If branch publication is not authorized or complete, report that prerequisite rather than silently expanding permissions.

Use repository title conventions. Lead the description with the concrete problem, then the resulting behavior and relevant verification. Avoid an inventory of edited files. Preserve an explicit draft request; otherwise create a ready PR. Disclose missing checks.

Use the connected PR tool or authenticated `gh`. For CLI descriptions, write the exact Markdown to a temporary file and pass `--body-file`; do not embed untrusted text in shell syntax. Inspect descriptions, quotes, links, and attachments for private details before publishing. Include verified model/harness attribution only when appropriate to the project; never guess identity.

Creating a PR does not authorize merging or posting followup comments. Verify the returned URL. When the host supports attaching created PRs to the current chat, attach every PR created by this workflow.

Adapted from [tstack file-pr](https://github.com/t3dotgg/tstack/blob/main/skills/file-pr/SKILL.md). [MIT license](LICENSE).
