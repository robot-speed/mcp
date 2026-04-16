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

echo ""
echo "✓ Robot Speed installed!"
echo ""
echo "Available commands:"
echo "  /robot-speed audit <url>    — Full SEO audit (free)"
echo "  /robot-speed score <url>    — Quick SEO score (free)"
echo "  /robot-speed keywords <topic> — Keyword suggestions (free)"
echo ""
echo "Try it: /robot-speed audit https://example.com"
