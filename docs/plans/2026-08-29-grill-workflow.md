# Grill Workflow Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use `executing-plans` to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Make Matt Pocock's conversational and documented grilling workflows available globally with clear automatic trigger rules.

**Architecture:** Install the four canonical skill directories under `~/.codex/skills`. Add one small global policy to `~/.codex/AGENTS.md` that selects the documented or stateless workflow based on project context and skips grilling for routine work.

**Tech Stack:** Codex skills, Markdown configuration, the bundled skill installer.

**Spec:** User-approved workflow in the current Codex task.

## Global Constraints

- Use the canonical `mattpocock/skills` repository.
- Do not grill small fixes or clearly specified work.
- Do not create a worktree. Commit and push only after explicit user authorization.

---

### Task 1: Install the skills

**Files:**
- Create: `~/.codex/skills/grill-me/`
- Create: `~/.codex/skills/grilling/`
- Create: `~/.codex/skills/grill-with-docs/`
- Create: `~/.codex/skills/domain-modeling/`

- [x] Run the bundled GitHub skill installer for all four canonical directories.
- [x] Verify each installed directory contains a readable `SKILL.md`.

### Task 2: Configure global selection rules

**Files:**
- Modify: `~/.codex/AGENTS.md`

- [x] Add the approved selection rules: documented grilling for large existing-project work, stateless grilling for large pre-project decisions, and no grilling for routine work.
- [x] Verify the resulting global instructions and installed skill metadata.

### Task 3: Document the complete workflow

**Files:**
- Modify: `README.md`

- [x] Rewrite the README in plain language around the complete Superpowers, Grill, Ponytail, specialist-skill, verification, and delivery workflow.
- [x] Add simple Mermaid diagrams for request routing, large-feature sequencing, Ponytail's decision ladder, and Git delivery.
- [x] Verify Markdown structure, Mermaid fence pairs, links, and whitespace.

### Task 4: Publish the documentation

**Files:**
- Commit: `README.md`
- Commit: `docs/plans/2026-08-29-grill-workflow.md`

- [x] Review the final diff and commit only the approved documentation files.
- [x] Push the current `main` branch to `origin` and verify the local and remote commit IDs match.
