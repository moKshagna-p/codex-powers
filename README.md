# mo-stack

The agentic workflows I reuse, packaged as skills. Each folder under `skills/` contains a `SKILL.md` and any resources it needs, following [tstack](https://github.com/t3dotgg/tstack)'s structure, with selected solo workflows adapted from [pstack](https://github.com/cursor/plugins/tree/main/pstack).

## Skills

| Skill | Say | What it does |
| --- | --- | --- |
| [mo-implement](skills/mo-implement/SKILL.md) | "Use mo-implement" | Takes a requested change through implementation and verification. |
| [mo-ui](skills/mo-ui/SKILL.md) | "Use mo-ui" | Builds or improves UI using the project's design conventions. |
| [mo-browser](skills/mo-browser/SKILL.md) | "Use mo-browser" | Automates a website with the installed Agent Browser CLI. |
| [mo-debug](skills/mo-debug/SKILL.md) | "Use mo-debug" | Proves the cause, applies the smallest fix, and checks it. |
| [mo-verify](skills/mo-verify/SKILL.md) | "Use mo-verify" | Checks existing work and handles authorized independent review. |
| [mo-review](skills/mo-review/SKILL.md) | "Review this diff" | Investigates bugs and improvements, with prioritized evidence and precise fix handoffs. |
| [mo-write](skills/mo-write/SKILL.md) | "Use mo-write" | Rewrites a professional message for its audience. |
| [mo-checkpoint](skills/mo-checkpoint/SKILL.md) | "Use mo-checkpoint" | Saves a concise checkpoint and resumes the same task. |
| [mo-delegate](skills/mo-delegate/SKILL.md) | "Use mo-delegate" | Coordinates authorized specialists and includes optional Claude Code and Codex presets. |
| [mo-headroom](skills/mo-headroom/SKILL.md) | "Use mo-headroom" | Runs a measured context compression trial on an agent CLI. |
| [mo-evolve](skills/mo-evolve/SKILL.md) | "Evolve and implement this work" | Activates stronger proof, bounded independent review, and a PR left for you to merge. |
| [mo-fullstop](skills/mo-fullstop/SKILL.md) | "Use mo-fullstop for this task" | Runs the shipping workflow and leaves the PR unmerged. |
| [mo-fullsend](skills/mo-fullsend/SKILL.md) | "Evolve and merge this work" | Runs the shipping workflow through a protected merge. |
| [mo-reviewloop](skills/mo-reviewloop/SKILL.md) | "Use mo-reviewloop on this diff" | Uses one high-reasoning reviewer for up to three rounds of necessary fixes. |
| [mo-sharpen](skills/mo-sharpen/SKILL.md) | "Sharpen this prompt" | Improves the request and its success checks before execution. |
| [mo-study-with-me](skills/mo-study-with-me/SKILL.md) | "Study with me" | Gives a concise, complete explanation with architecture flowcharts, decisions, implementation, and reusable lessons. |
| [mo-blast](skills/mo-blast/SKILL.md) | "Check the blast radius of this change" | Proves consequential safety assumptions against real code. |
| [mo-tdd](skills/mo-tdd/SKILL.md) | "Use mo-tdd for this bug" | Runs a focused regression check before and after the fix. |
| [mo-unslop](skills/mo-unslop/SKILL.md) | "Unslop this text" | Removes filler, vague claims, jargon, and unnecessary dash punctuation. |
| [mo-filepr](skills/mo-filepr/SKILL.md) | "Use mo-filepr for this branch" | Opens a concise PR without duplicating an existing one. |
| [mo-babysit](skills/mo-babysit/SKILL.md) | "Babysit PR 123" | Handles CI and review feedback within the authorized scope. |

Ordinary work keeps a single independent reviewer where authorized. New subagents default to fresh conversation context and a self-contained brief; related follow-ups reuse the same agent. Evolve uses that reviewer in a bounded loop without adding an implementation team or review panel. "Evolve and implement" requests task branch commits, pushes, PR creation, and monitoring; "evolve and merge" also requests merging after the gate. Narrower instructions such as "local only" still apply.

Expanded requests ready to copy are in [docs/WORKFLOW.md](docs/WORKFLOW.md).

`mo-review` is the shared investigation and reporting method used by `mo-verify` and `mo-reviewloop`. It reports by default and fixes only when requested. Ask for an independent reviewer to use fresh context; direct use in the current agent remains available. It requires no Greptile account. Detection quality against Greptile has not been benchmarked.

## Install

```sh
git clone https://github.com/moKshagna-p/mo-stack.git
cd mo-stack && ./install.sh
```

The script copies every skill to `~/.agents/skills/`, which Codex and other `SKILL.md` agents read, and links each one into `~/.claude/skills/` for Claude Code. Rerun it after `git pull` to update. Existing skills with the same names that mo-stack did not install are moved to a timestamped backup, not overwritten.

For Claude Code, it also sets `attribution` to empty in `~/.claude/settings.json`, so no session adds a `Co-Authored-By: Claude` trailer or "Generated with Claude Code" footer to commits and PRs. The original file is kept as `settings.json.mo-stack.bak`. The shipping skills follow the same rule on every host.

For another agent, copy the folders under `skills/` into its skills directory. For selected installs, also copy the [required sibling skills](docs/WORKFLOW.md#16-selected-install-dependencies). Start a new session and invoke a skill by name: `/mo-debug` in Claude Code, `$mo-debug` in Codex, or just ask, for example "use debug".

## Requirements

- Claude Code, Codex, or another agent that supports `SKILL.md` folders; features specific to a host are labeled in the skills.
- `mo-browser`: an installed `agent-browser` CLI.
- `mo-headroom`: `uv`, a working agent CLI such as `claude` or `codex`, and authorization to install and wrap it.
- PR workflows need an authenticated GitHub connection or `gh`, a writable task branch, and the repository's required checks and approvals. `mo-babysit` uses a native watcher or the installed GitHub CLI rather than requiring paid review bots.
- `mo-evolve`, `mo-reviewloop`, `mo-delegate`, and independent review: a host with subagent support. Reviews default to the host's strongest available model at high reasoning; research and code mapping can use a faster model. Name a model in your request to override.

## Workflow

```mermaid
flowchart LR
    A[Describe one outcome] --> B[Implement and verify]
    B --> C{Evolve requested?}
    C -->|No| D[Single review where authorized]
    D --> E[Report results]
    C -->|Yes| F[Bounded review loop]
    F --> G[Prepare PR and handle CI]
    G --> H{Explicit merge request?}
    H -->|No| I[Leave PR open and unmerged]
    H -->|Yes| J[Merge only after the gate passes]
```

## Make them yours

Edit the skills to fit your work. Keep personal model choices and generic operating policy in your agent's global instructions (`~/.claude/CLAUDE.md`, `~/.codex/AGENTS.md`, or equivalent), and project constraints in each repository's `AGENTS.md` or `CLAUDE.md`. User and project instructions override skill defaults.

The [UI template](skills/mo-ui/assets/DESIGN.md) and [Claude Code and Codex preset examples](skills/mo-delegate/assets/presets/) ship with their owning skills. Copying the skills does not activate those presets. Use `pnpm` or `bun` for JavaScript/TypeScript package management and scripts.

Plan files, delegation, and Git delivery require explicit authorization. An explicit shipping invocation supplies the task permissions described above; merely installing or discussing a skill does not. Keep private plans and checkpoints under `.mo-stack/`, excluded through `.git/info/exclude`.

## License

[MIT](LICENSE). Adapted skills retain upstream source links and a bundled license.
