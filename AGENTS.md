# Working Agreement

## Default delivery loop

1. For a request that changes more than one file or has unclear requirements, use `writing-plans` first and save the plan in `docs/plans/`.
2. Review the plan with the user before implementation when it contains product, architectural, or irreversible decisions.
3. Implement the approved plan in small, independently verifiable steps using `executing-plans`.
4. For bugs, test failures, and unexpected behavior, use `systematic-debugging`: reproduce, gather evidence, identify the root cause, then make the smallest fix.
5. Before claiming a task is complete, run the relevant tests, type-check, lint, and/or build. Report the actual command results.

## Code generation

- Apply Ponytail's decision ladder to every code-generating task: avoid unnecessary work, reuse existing code, prefer the standard library or native platform features, then write the smallest safe implementation.
- Never trade away validation, data-loss handling, security, accessibility, or required tests merely to reduce code.

## UI work

- Use `frontend-design` when building or materially redesigning an interface.
- Use `web-design-guidelines` for a UI review, accessibility pass, or UX audit.
- Keep UI copy concise, direct, and consistent; ask for the intended audience when it changes the wording materially.

## Git and delivery

- Do not initialize a repository, create a worktree, commit, push, or open a pull request unless the user asks.
- When a Git repository exists and a multi-step implementation is approved, prefer an isolated worktree.
- Before merging or creating a pull request, run the full relevant verification suite and summarize the evidence.

## Communication

- Lead status updates with outcome, then blockers, then next action.
- For stakeholders, explain impact and decisions in plain language before technical detail.
