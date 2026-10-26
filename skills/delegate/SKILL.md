---
name: delegate
description: Use when the user authorizes subagents for bounded independent implementation, research, or review, or requests specialist configuration examples.
---

# Delegate bounded work

Keep architecture, consequential decisions, integration, and final verification with the lead. Use no children for trivial work, usually one or two when useful, and at most three concurrently. Run dependent work sequentially.

Assign each child an objective, relevant paths or sources, acceptance criteria, and explicit edit ownership. Keep parallel exploration free of file edits, use one writer per file, and tell writers to preserve others' changes. Children report blockers instead of delegating further.

Default to GPT-6.1 Sol at high reasoning for implementation and independent review; use GPT-6 Luna at high reasoning for research and code mapping. Respect models selected by the user and actual host availability. Give reviewers the criteria, diff, relevant invariants, and check results; request concrete findings and minimal fixes. Model review complements deterministic and domain checks.

Request concise findings with file or source references, evidence, and unresolved questions. Reuse findings and stop research once supported. Verify consequential claims and changed behavior without repeating the entire investigation.

## Optional Codex presets

Only when configuration changes are requested, merge [config.toml](assets/codex/config.toml) into `~/.codex/config.toml` and the four [agent presets](assets/codex/agents/) into `~/.codex/agents/`, preserving unrelated settings and customizations. Start a new session afterward. The example concurrency limit counts children; presets disable further delegation. Host permissions may override the access intended by the presets, which permits reading only.

Named preset model settings take precedence over spawn overrides. If custom roles are unavailable, use a generic child with explicit model, effort, and equivalent scoped instructions. If inheritance of the full history prevents overrides, pass a focused handoff. Configuration defaults alone do not authorize delegation.
