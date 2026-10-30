# mo-stack

The agentic workflows I reuse, packaged as skills. Each folder under `skills/` contains a `SKILL.md` and any resources it needs, following [tstack](https://github.com/t3dotgg/tstack)'s structure, with selected solo workflows adapted from [pstack](https://github.com/cursor/plugins/tree/main/pstack).

## Skills

| Skill | Say | What it does |
| --- | --- | --- |
| [implement](skills/implement/SKILL.md) | "Use implement" | Takes a requested change through implementation and verification. |
| [ui](skills/ui/SKILL.md) | "Use ui" | Builds or improves UI using the project's design conventions. |
| [browser](skills/browser/SKILL.md) | "Use browser" | Automates a website with the installed Agent Browser CLI. |
| [debug](skills/debug/SKILL.md) | "Use debug" | Proves the cause, applies the smallest fix, and checks it. |
| [verify](skills/verify/SKILL.md) | "Use verify" | Checks existing work and handles authorized independent review. |
| [review](skills/review/SKILL.md) | "Review this diff" | Investigates bugs and improvements, with prioritized evidence and precise fix handoffs. |
| [write](skills/write/SKILL.md) | "Use write" | Rewrites a professional message for its audience. |
| [checkpoint](skills/checkpoint/SKILL.md) | "Use checkpoint" | Saves a concise checkpoint and resumes the same task. |
| [delegate](skills/delegate/SKILL.md) | "Use delegate" | Coordinates authorized specialists and includes optional Codex presets. |
| [headroom](skills/headroom/SKILL.md) | "Use headroom" | Runs a measured Codex CLI compression trial. |
| [evolve](skills/evolve/SKILL.md) | "Evolve and implement this work" | Activates stronger proof, bounded Sol review, and a PR left for you to merge. |
| [fullstop](skills/fullstop/SKILL.md) | "Use fullstop for this task" | Runs the shipping workflow and leaves the PR unmerged. |
| [fullsend](skills/fullsend/SKILL.md) | "Evolve and merge this work" | Runs the shipping workflow through a protected merge. |
| [solloop](skills/solloop/SKILL.md) | "Use solloop on this diff" | Uses one Sol High reviewer for up to three rounds of necessary fixes. |
| [sharpen](skills/sharpen/SKILL.md) | "Sharpen this prompt" | Improves the request and its success checks before execution. |
| [study-with-me](skills/study-with-me/SKILL.md) | "Study with me" | Gives a concise, complete explanation with architecture flowcharts, decisions, implementation, and reusable lessons. |
| [blast](skills/blast/SKILL.md) | "Check the blast radius of this change" | Proves consequential safety assumptions against real code. |
| [tdd](skills/tdd/SKILL.md) | "Use tdd for this bug" | Runs a focused regression check before and after the fix. |
| [unslop](skills/unslop/SKILL.md) | "Unslop this text" | Removes filler, vague claims, jargon, and unnecessary dash punctuation. |
| [filepr](skills/filepr/SKILL.md) | "Use filepr for this branch" | Opens a concise PR without duplicating an existing one. |
| [babysit](skills/babysit/SKILL.md) | "Babysit PR 123" | Handles CI and review feedback within the authorized scope. |

Ordinary work keeps the existing single Sol reviewer where authorized. New subagents default to fresh conversation context and a self-contained brief; related follow-ups reuse the same agent. Evolve uses that reviewer in a bounded loop without adding an implementation team or review panel. "Evolve and implement" requests task branch commits, pushes, PR creation, and monitoring; "evolve and merge" also requests merging after the gate. Narrower instructions such as "local only" still apply.

Expanded requests ready to copy are in [docs/WORKFLOW.md](docs/WORKFLOW.md).

`review` is the shared investigation and reporting method used by `verify` and `solloop`. It reports by default and fixes only when requested. Ask for an independent reviewer to use fresh context; direct use in the current agent remains available. It requires no Greptile account. Detection quality against Greptile has not been benchmarked.

## Install

From this repository's root, copy all skills to include the Evolve dependencies:

```sh
mkdir -p ~/.agents/skills
cp -Ri skills/* ~/.agents/skills/
```

Review overwrite prompts when a destination already exists. For selected installs, also copy the [required sibling skills](docs/WORKFLOW.md#16-selected-install-dependencies). Open a new Codex session and invoke a skill by name, for example `$debug`. See [Codex skill locations](https://learn.chatgpt.com/docs/customization/overview#skills).

## Requirements

- Codex or another agent that supports `SKILL.md` folders; features specific to the host are labeled in the skills.
- `browser`: an installed `agent-browser` CLI.
- `headroom`: `uv`, a working `codex` CLI, and authorization to install and wrap it.
- PR workflows need an authenticated GitHub connection or `gh`, a writable task branch, and the repository's required checks and approvals. `babysit` uses a native watcher or the installed GitHub CLI rather than requiring paid review bots.
- `evolve`, `solloop`, `delegate`, and independent review: a host with subagent support and access to the selected models. Evolve uses one GPT-6.1 Sol High reviewer. The separate optional delegation presets also include GPT-6 Luna High for research and code mapping.

## Workflow

```mermaid
flowchart LR
    A[Describe one outcome] --> B[Implement and verify]
    B --> C{Evolve requested?}
    C -->|No| D[Single Sol review where authorized]
    D --> E[Report results]
    C -->|Yes| F[Bounded Sol review loop]
    F --> G[Prepare PR and handle CI]
    G --> H{Explicit merge request?}
    H -->|No| I[Leave PR open and unmerged]
    H -->|Yes| J[Merge only after the gate passes]
```

## Make them yours

Edit the skills to fit your work. Keep personal model choices and generic operating policy in `~/.codex/AGENTS.md`, and project constraints in each repository's `AGENTS.md`. User and project instructions override skill defaults.

The [UI template](skills/ui/assets/DESIGN.md) and [Codex configuration examples](skills/delegate/assets/codex/) ship with their owning skills. Copying the skills does not activate those presets. Use `pnpm` or `bun` for JavaScript/TypeScript package management and scripts.

Plan files, delegation, and Git delivery require explicit authorization. An explicit shipping invocation supplies the task permissions described above; merely installing or discussing a skill does not. Keep private plans and checkpoints under `.codex/`, excluded through `.git/info/exclude`.

## License

[MIT](LICENSE). Adapted skills retain upstream source links and a bundled license.
