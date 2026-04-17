#!/bin/bash
# Robot Speed SEO Tools — Claude Code Skill Installer
set -e

SKILL_DIR="$HOME/.claude/skills/robot-speed"

if [ -d "$SKILL_DIR" ]; then
  echo "Updating Robot Speed skill..."
  cd "$SKILL_DIR" && git pull --ff-only
else
  echo "Installing Robot Speed skill..."
  git clone --depth 1 https://github.com/robot-speed/mcp.git "$SKILL_DIR"
fi

# Run setup
chmod +x "$SKILL_DIR/setup" "$SKILL_DIR/bin/update-check" 2>/dev/null || true
"$SKILL_DIR/setup"
