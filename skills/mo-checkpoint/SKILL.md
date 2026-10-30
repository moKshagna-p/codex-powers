---
name: mo-checkpoint
description: Use when a long task needs a checkpoint before compaction or must resume from an existing checkpoint.
---

# Checkpoint a task

Keep one outcome in the same task. Compact at a safe boundary when a milestone is complete, repetitive output dominates, or context headroom is low; retain useful evidence during active investigation.

Finish the current atomic step before writing a concise checkpoint under `.mo-stack/handoffs/`. Ensure `/.mo-stack/` is excluded through `.git/info/exclude`. Record only:

- Objective, acceptance criteria, and settled decisions.
- Git state and changed files.
- Verification evidence and blockers.
- The exact next action.

On resume, check the checkpoint against current files and Git state, then continue without repeating completed work. Never copy conversation history or commit private context. Compaction alone does not authorize a new task. Keep automatic compaction at model defaults; do not change host configuration merely to write a checkpoint.
