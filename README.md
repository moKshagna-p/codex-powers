# Codex Powers

A practical, portable setup for building with Codex: structured planning, disciplined debugging, UI quality checks, evidence-based verification, and minimal safe code.

## What you get

- `AGENTS.md` — project-level working agreement that Codex reads while it works.
- `docs/WORKFLOW.md` — copy-ready prompts for features, UI work, debugging, verification, and professional writing.
- A recommended skill stack for a reliable development loop.
- Ponytail guidance: reuse what exists and write the smallest safe solution.

## Quick start

1. Create or enter a project directory.
2. Copy `AGENTS.md` into that project’s root.
3. Optionally copy `docs/WORKFLOW.md` into the project’s `docs/` directory.
4. Open the project in Codex and describe the outcome you want. You can name a skill explicitly when you want a particular workflow.

Example:

> Use writing-plans to plan a responsive account-settings page. Inspect the project first, save the plan to `docs/plans/`, and do not edit code yet.

## Recommended workflow

```text
Outcome → plan → approve → implement → verify → merge or open a PR
```

Use the full process for multi-step, risky, or unfamiliar work. For small, obvious edits, ask Codex to make the change and verify it.

| Situation | Ask Codex to use |
| --- | --- |
| New multi-step feature | `writing-plans`, then `executing-plans` |
| UI build | `frontend-design` |
| UI/UX or accessibility review | `web-design-guidelines` |
| Bug or failing test | `systematic-debugging` |
| Pre-ship check | `verification-before-completion` |
| Branch handoff | `finishing-a-development-branch` |
| Clear update, email, or PR summary | `professional-communication` |

## Ponytail

Ponytail is a code-generation guardrail: first decide whether code is needed, then prefer existing project code, standard libraries, native platform features, and installed dependencies before adding new abstractions.

Install it for Codex:

```sh
codex plugin marketplace add DietrichGebert/ponytail
codex plugin add ponytail@ponytail
```

Then open `/hooks` in Codex, review and trust Ponytail’s lifecycle hooks, and restart the app. The fallback Ponytail instructions in this repository’s `AGENTS.md` still apply if the hooks are unavailable.

## Use in another project

Copy the baseline files:

```sh
cp /path/to/codex-powers/AGENTS.md /path/to/your-project/AGENTS.md
mkdir -p /path/to/your-project/docs
cp /path/to/codex-powers/docs/WORKFLOW.md /path/to/your-project/docs/WORKFLOW.md
```

Then adapt the `UI work`, `Git and delivery`, and project-specific verification rules in `AGENTS.md` to your stack.

## Contributing

Keep templates short, concrete, and tool-agnostic where possible. Any workflow should preserve user control over commits, pushes, pull requests, and destructive changes.

## License

[MIT](LICENSE)
