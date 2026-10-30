# Repository constraints

- This repository distributes portable agent workflow skills for Claude Code, Codex, and any `SKILL.md` host, not an application. Keep reusable instructions in `skills/<name>/SKILL.md` and required resources inside the owning skill. Keep examples independent of particular tools where possible and label behavior specific to a platform.
- Keep `README.md` simple and limited to exactly one Mermaid diagram. Put expanded prompts ready to copy in `docs/WORKFLOW.md`.
- Keep the README and workflow examples consistent when changing the documented process.
- Generic operating policy belongs in each agent's global instructions; add rules here only when they are specific to maintaining this reference repository.
- Keep skills free of vendor model names and single-host paths; put host-specific setup in `install.sh` or labeled preset assets.
- Commits and PRs carry no AI attribution: no agent `Co-Authored-By` trailers and no "Generated with" footers.
