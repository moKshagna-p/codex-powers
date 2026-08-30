# Session Context Handoff Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use `executing-plans` to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Preserve output quality by handing long-running work to a fresh Codex task before the current task becomes noisy or difficult to continue reliably.

**Architecture:** Define one shared session budget: checkpoint at 60K tokens, prepare a handoff at 80K, and stop starting substantial work at 90K. When an exact count is unavailable, use explicit quality signals and pass a concise state summary into a fresh task rather than copying the full conversation.

**Tech Stack:** Markdown instructions and Mermaid documentation.

**Spec:** User-approved design in the current Codex task.

## Global Constraints

- Never invent an unavailable token count.
- Finish and verify the current atomic step before switching tasks.
- Reuse existing plans, `CONTEXT.md`, and ADRs instead of creating another persistent handoff format.
- Do not create a worktree. Commit and push only after explicit user authorization.

---

### Task 1: Add the enforceable policy

**Files:**
- Modify: `~/.codex/AGENTS.md`
- Modify: `AGENTS.md`

- [x] Add identical 60K checkpoint, 80K handoff, and 90K ceiling rules.
- [x] Add observable fallback signals and the required concise handoff contents.

### Task 2: Document the workflow

**Files:**
- Modify: `README.md`
- Modify: `docs/WORKFLOW.md`

- [x] Add a simple session-handoff diagram and plain-language explanation to the README.
- [x] Add a copy-ready long-session prompt to the workflow guide.

### Task 3: Verify consistency

**Files:**
- Verify: `~/.codex/AGENTS.md`
- Verify: `AGENTS.md`
- Verify: `README.md`
- Verify: `docs/WORKFLOW.md`

- [x] Confirm every policy uses the same thresholds and never claims exact usage when it is unavailable.
- [x] Validate Markdown whitespace, links, and Mermaid rendering.
