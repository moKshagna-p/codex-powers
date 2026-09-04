# Working Agreement

- Agent-only plans, Superpowers specs, handoffs, and private context belong under `.codex/`, excluded through `.git/info/exclude`; never stage, commit, or push them.
- Grill new projects and large ambiguous features. Finish discovery with the goal, constraints, non-goals, and success criteria; do not repeat settled questions.
- Diagnose bugs before fixing them. Plan only multi-step, risky, decision-heavy, or multi-session work; resolve the nearest unknown before planning beyond it.
- Implement small clear changes directly using existing code, the standard library, native features, or the minimum safe code—in that order.
- Prefer concrete examples and local reference paths over pasted context or prescribed filenames.
- Run the smallest relevant verification. Broaden checks before integration or when risk requires it.
- Keep one outcome per task and hand off at noisy phase boundaries using local artifacts, Git state, verification evidence, and the exact next action.
- Use `frontend-design` for UI builds or redesigns and `web-design-guidelines` for UI, UX, or accessibility reviews.
- Prefer `agent-browser`; use the in-app browser when authenticated or visual state matters.
- Add workflow rules only after repeated observed failures, and keep each rule in one place.
- Name branches `<type>/<short-kebab-case-description>` from the requested work: `fix/`, `feat/`, `ui/`, `docs/`, `refactor/`, `test/`, or `chore/`. Never use an agent/tool prefix.
- Do not initialize repositories, create worktrees, commit, push, merge, or open pull requests unless the user asks.
