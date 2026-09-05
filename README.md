# Codex Powers

A small, portable workflow for building verified software with Codex while keeping session context focused.

It combines:

- **Superpowers** for choosing the right development workflow.
- **Grill** for clarifying large or ambiguous work.
- **Ponytail** for selecting the smallest safe implementation.
- **Fresh verification** before completion or Git delivery.

## Workflow

```mermaid
sequenceDiagram
    actor User
    participant Codex
    participant Discovery
    participant Build
    participant Verify

    User->>Codex: Describe one outcome
    Codex->>Codex: Select only relevant skills and tools
    alt Large or ambiguous work
        Codex->>Discovery: Grill, resolve decisions, then plan
        Discovery-->>User: Summarize alignment; ask only consequential questions
    else Bug or unexpected behavior
        Codex->>Discovery: Reproduce and prove root cause
    else Small clear change
        Codex->>Build: Start directly
    end
    Discovery->>Build: Implement the smallest safe change
    Build->>Verify: Run relevant checks
    alt Checks fail
        Verify->>Discovery: Diagnose with evidence
    else Checks pass
        Verify-->>User: Report results and requested Git delivery
    end
```

## Core rules

- **One outcome per task.** Keep a concise checkpoint when context becomes noisy; continue the same outcome through compaction.
- **Finish the requested outcome.** Continue through implementation and relevant verification; stop at discovery or review only when requested.
- **Infer acceptance criteria.** Identify the requested outcome, constraints, permitted side effects, and proof of success; ask only about ambiguities that could materially change the result.
- **Use the lightest workflow that fits.** Small changes start directly; risky or ambiguous work gets discovery and planning.
- **Resolve the nearest unknown first.** Do not write detailed plans past unsettled decisions.
- **Prefer references over pasted context.** Point Codex to an existing file, example, or URL when possible.
- **Implement minimally.** Reuse project code, the standard library, native features, or installed dependencies before adding code.
- **Verify in proportion to risk.** Test behavior changes meaningfully; use parse, diff, link, or configuration checks for docs and config. Broaden suites only when integration or unresolved risk warrants it.
- **Keep Git user-controlled.** Codex commits, pushes, merges, or opens a PR only when explicitly requested.
- **Name branches by intent.** Use `<type>/<short-description>` with `fix`, `feat`, `ui`, `docs`, `refactor`, `test`, or `chore` based on the requested work.

## Request routing

- **New project or large ambiguous feature:** Grill → resolve consequential decisions → plan when needed → implementation.
- **Bug or failing test:** reproduce → root cause → smallest fix → regression check.
- **UI build or redesign:** inspect existing patterns → `frontend-design` → visual and accessibility checks.
- **UI or accessibility review:** `web-design-guidelines`.
- **Small clear change:** direct implementation using the Ponytail decision ladder.
- **Completion or integration:** fresh verification → user-approved Git action.

## Skills

Invoke only the skills relevant to the current request. User and project instructions override skill defaults, and `superpowers:using-superpowers` is not a universal gate.

- `grill-me`, `grilling`, and `grill-with-docs`: clarify new projects, consequential decisions, and large ambiguous features.
- `domain-modeling`: establish shared terminology and durable domain decisions.
- `ponytail`: choose the smallest correct implementation using existing code, the standard library, or native features first.
- `superpowers:systematic-debugging`: reproduce failures and prove the root cause before fixing them.
- `superpowers:brainstorming` and `superpowers:writing-plans`: use only when unresolved design decisions or implementation risk justify them; keep artifacts local unless tracked documentation is requested.
- `frontend-design` and `web-design-guidelines`: build distinctive UI and review usability, accessibility, responsiveness, and visual hierarchy.
- `superpowers:test-driven-development`: use when a behavioral change benefits from red-green evidence, not as ceremony for documentation or configuration edits.
- `superpowers:verification-before-completion`: gather fresh, risk-proportional evidence before declaring completion.
- `superpowers:finishing-a-development-branch`: perform only the Git delivery actions the user authorized.
- `professional-communication`: adapt technical writing to its audience and desired outcome.

The global `~/.codex/AGENTS.md` owns operating policy, including overrides for universal skill invocation and mandatory approval steps. Audit installed skills after updates for conflicts with that policy. Skills never independently authorize tracked plans, worktrees, commits, pushes, subagents, merges, or pull requests.

## Local-only agent artifacts

Plans, Superpowers specs, handoffs, and private context belong under `.codex/` and stay out of the product repository.

- Add `/.codex/` to `.git/info/exclude` for each project.
- Never stage, commit, or push agent-only documents.
- A handoff should contain the objective, settled decisions, Git state, changed files, verification evidence, blockers, and exact next action.
- Continue the same task from the checkpoint. Create a fresh task only when requested, using the handoff instead of copied conversation history.

This repository also ignores the historical `docs/plans/` and `docs/superpowers/` locations.

## Astra setup and context trial

[OpenAI’s Astra guidance](https://developers.openai.com/api/docs/guides/latest-model) recommends auditing conflicting instructions, encouraging end-to-end execution, tuning delegation explicitly, and keeping verification proportional to the change.

This setup keeps the existing `low` reasoning effort as a baseline. Increase it for difficult tasks when the results justify it. Subagents remain opt-in; authorize bounded independent research or review when useful.

For the context trial, retain the existing 50,000-token compaction setting but continue the same task after compaction, using a concise local checkpoint when needed. The threshold is a personal setting, not an Astra requirement. Automatic compaction no longer triggers task creation.

Compare the next few substantial tasks for repeated discovery, lost decisions, unnecessary questions, verification quality, and completion time before changing the threshold or adding more workflow rules.

## Quick start

1. Use the core rules above as a starting point for `~/.codex/AGENTS.md`.
2. Keep each repository's `AGENTS.md` limited to project-specific constraints.
3. Install Superpowers and the Grill skills you use.
4. Keep specialist plugins disabled until a task needs them.
5. Open the project in Codex and describe one concrete outcome.

Useful Grill skills from [`mattpocock/skills`](https://github.com/mattpocock/skills):

- `skills/productivity/grill-me`
- `skills/productivity/grilling`
- `skills/engineering/grill-with-docs`
- `skills/engineering/domain-modeling`

## Example requests

- **Large feature:** “Clarify consequential decisions using grill-with-docs, plan when needed, then implement and verify this feature. Ask only about decisions that materially change the result.”
- **Conversation-only idea:** “Use grill-me to stress-test this idea without creating project files.”
- **Bug:** “Reproduce this issue, prove the root cause, then implement and verify the smallest fix.”
- **Small change:** “Implement this directly. Reuse existing code and run the smallest relevant verification.”

More copy-ready prompts are in [`docs/WORKFLOW.md`](docs/WORKFLOW.md).

## Influences

- [Theo Browne's AI coding workflow](https://www.youtube.com/watch?v=xJaMTo2YgO8): focused tasks, concrete references, and active steering.
- [Matt Pocock's writing-for-agents guidance](https://github.com/mattpocock/skills/blob/main/docs/productivity/writing-for-agents.md): progressive disclosure and one source of truth.
- [OpenAI model guidance](https://developers.openai.com/api/docs/guides/latest-model): lean prompts and relevant tools.

## License

[MIT](LICENSE)
