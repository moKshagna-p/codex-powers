---
name: evolve
description: Use only when the user directly requests evolve for a concrete task, such as evolve and implement or evolve and merge. Quoted examples and discussion are not activation.
---

# Evolve

Use the heavier shipping workflow with one lead and one GPT-6.1 Sol High reviewer. Load only the selected path:

- "Evolve and implement this work" or "use evolve": follow [fullstop](../fullstop/SKILL.md). Prepare the PR and leave it unmerged.
- "Evolve and merge this work": follow [fullsend](../fullsend/SKILL.md) through its merge gate.
- A narrower instruction such as "no push" or "local only" limits either path. Complete authorized local work and report the unmet delivery step.

An explicit task invocation requests branch creation, scoped commits, task branch pushes, PR creation, and CI monitoring for that task. Merging requires the explicit merge path. It never authorizes production changes, data deletion, protection bypasses, or changes to unrelated branches. Installing or discussing this skill does not authorize running it.

Resolve consequential uncertainty first, then implement and verify. Use the existing native Sol reviewer, with at most one reviewer active and no delegated implementation or reviewer children. Reuse the review record instead of adding the ordinary review again. Missing Sol access or GitHub capabilities is a reported blocker, not permission to provision another provider or silently substitute a model.

Keep ordinary work on the existing implement, verify, and single Sol review path where authorized. Evolve is requested extra assurance, not a promise of greater model capability.
