# Working Agreement

## Default delivery loop

1. For a request that changes more than one file or has unclear requirements, use `writing-plans` first and save the plan in `docs/plans/`.
2. Review the plan with the user before implementation when it contains product, architectural, or irreversible decisions.
3. Implement the approved plan in small, independently verifiable steps using `executing-plans`.
4. For bugs, test failures, and unexpected behavior, use `systematic-debugging`: reproduce, gather evidence, identify the root cause, then make the smallest fix.
5. Before claiming a task is complete, run the relevant tests, type-check, lint, and/or build. Report the actual command results.

## Session context budget

- Treat 60K tokens as a quality checkpoint, 80K as the preferred handoff point, and 90K as a hard ceiling when reliable live usage is available.
- Never invent or estimate a token count when the product does not expose one.
- At 60K, finish the current atomic step and assess whether the remaining context is focused and relevant.
- At 80K, prepare a handoff and switch at the next safe milestone.
- At 90K, start no substantial new work; verify the current state and continue in a fresh task.
- When exact usage is unavailable, trigger a handoff after compaction, repeated questions, forgotten constraints, multiple completed or unrelated phases, or before a major new phase following long tool-heavy work.
- The handoff must contain the objective and acceptance criteria, settled decisions and constraints, current branch/worktree and Git status, changed files, verification evidence, blockers, remaining steps, and the exact next action.
- Start the fresh task in the same project using only the concise handoff and links to durable plans, `CONTEXT.md`, and ADRs. Do not copy or fork the full conversation, and do not commit or push unless authorized.

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
