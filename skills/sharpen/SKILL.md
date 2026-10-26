---
name: sharpen
description: Use when the user asks to sharpen or improve a task prompt before execution; this skill rewrites the request rather than performing it.
---

# Sharpen a prompt

Keep the user's outcome and scope. Identify the relevant professional method, the original material needed instead of secondhand summaries, and an observable check independent of the model's confidence.

Return a tighter prompt that names the outcome, useful source paths or data, appropriate methods, constraints, and evidence of success. Preserve choices that belong to the user. Do not turn a better prompt into a larger project or add features, agents, tools, or deliverables merely because an expert could use them.

Clarify only missing information that materially changes the request. Sharpening does not authorize implementation, file changes, or publishing; perform those only when separately requested.

Adapted from [pstack sharpen](https://github.com/cursor/plugins/blob/main/pstack/skills/sharpen/SKILL.md). [MIT license](LICENSE).
