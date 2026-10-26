---
name: browser
description: Use when the user requests website automation through the installed agent-browser CLI.
---

# Run a browser task

Check `agent-browser --version`. If unavailable, report the missing requirement; do not silently switch tools when the user explicitly chose this CLI.

```sh
agent-browser open https://example.com
agent-browser snapshot -i
agent-browser click @e3 # Use a ref from the current snapshot.
agent-browser snapshot -i
agent-browser screenshot page.png
agent-browser close
```

Refresh the snapshot after navigation or page updates because refs can change. Add `--headed` to `open` for a visible window. Stay within the requested site and authorized actions; report the observed result, with a screenshot when useful.

The CLI and a browser built into the host application can have separate sessions. Registering an MCP server does not replace a desktop browser. Do not infer permission to send messages, submit purchases, or mutate external data from permission to browse.
