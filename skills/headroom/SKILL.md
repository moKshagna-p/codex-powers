---
name: headroom
description: Use when the user requests a Headroom context compression trial for large or repetitive tool output.
---

# Trial Headroom compression

This optional workflow wraps a coding agent CLI, such as `claude` or `codex`, and requires `uv` and that working command. Check the [upstream instructions](https://github.com/headroomlabs-ai/headroom) for the installed version and supported agents. Desktop routing has not been validated here. Replace `<agent>` below with the CLI being trialed.

Choose a representative task and comparable unwrapped baseline. Keep model, reasoning effort, acceptance criteria, and compaction settings fixed. When installation and wrapping are authorized:

```sh
uv tool install --python 3.13 "headroom-ai[proxy,code]"
headroom wrap <agent> --code-memory none
```

Run from the target project. Wrapping starts a local proxy and can change durable configuration; inspect those changes. Keep shared memory, automatic instruction learning, and output shaping outside the initial trial.

During the trial, use `headroom doctor`, `headroom perf`, and `headroom dashboard` to confirm actual traffic reaches the proxy. A healthy installation alone does not prove compression. Preserve exact source and test evidence independently; retrieve originals whenever compression obscures a consequential detail.

Compare correctness, total usage, elapsed time, retries, retrieval failures, and lost details. Fewer tokens alone do not establish lower billed cost. Adopt only when comparable tasks improve without worse correctness or completion time.

To roll back durable wrapping, exit the trial session, run `headroom unwrap <agent>`, then launch the agent normally and verify routing and settings. Report measurements and gaps; do not claim desktop support or automatically apply generated workflow rules.
