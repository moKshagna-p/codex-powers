#!/bin/sh
# Install mo-stack skills for any SKILL.md agent, link them into Claude Code,
# and turn off Claude Code's co-author and "Generated with" attribution.
set -eu

src="$(cd "$(dirname "$0")" && pwd)/skills"
agents="$HOME/.agents/skills"
claude="$HOME/.claude"
backup="$HOME/.agents/mo-stack-backup-$(date +%Y%m%d%H%M%S)"

mkdir -p "$agents"
# Remove skills an earlier mo-stack install left behind under old or deleted names.
for old in "$agents"/*/; do
  name="$(basename "$old")"
  if [ -f "$old/.mo-stack" ] && [ ! -d "$src/$name" ]; then
    rm -rf "$old"
    [ -L "$claude/skills/$name" ] && rm "$claude/skills/$name"
    echo "removed old $name"
  fi
done

for dir in "$src"/*/; do
  name="$(basename "$dir")"
  dest="$agents/$name"
  # Replace earlier mo-stack installs; move anything else aside instead of overwriting it.
  if [ -f "$dest/.mo-stack" ]; then
    rm -rf "$dest"
  elif [ -e "$dest" ] || [ -L "$dest" ]; then
    mkdir -p "$backup"
    mv "$dest" "$backup/"
  fi
  cp -R "$dir" "$dest"
  touch "$dest/.mo-stack"

  if [ -d "$claude" ]; then
    mkdir -p "$claude/skills"
    link="$claude/skills/$name"
    if [ -e "$link" ] && [ ! -L "$link" ]; then
      mkdir -p "$backup/claude"
      mv "$link" "$backup/claude/"
    fi
    ln -sfn "$dest" "$link"
  fi
  echo "installed $name"
done

if [ -d "$claude" ]; then
  settings="$claude/settings.json"
  [ -f "$settings" ] && [ ! -f "$settings.mo-stack.bak" ] && cp "$settings" "$settings.mo-stack.bak"
  python3 - "$settings" <<'EOF'
import json, os, sys
path = sys.argv[1]
data = json.load(open(path)) if os.path.exists(path) else {}
data["attribution"] = {"commit": "", "pr": ""}
data["includeCoAuthoredBy"] = False  # older Claude Code versions
with open(path, "w") as f:
    json.dump(data, f, indent=2)
    f.write("\n")
EOF
  echo "disabled Claude Code commit and PR attribution in $settings"
fi

[ -d "$backup" ] && echo "previous copies moved to $backup"
echo "done; start a new agent session to load the skills"
