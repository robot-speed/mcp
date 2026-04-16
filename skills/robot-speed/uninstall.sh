#!/bin/bash
# Robot Speed SEO Tools — Uninstaller
SKILL_DIR="$HOME/.claude/skills/robot-speed"
if [ -d "$SKILL_DIR" ]; then
  rm -rf "$SKILL_DIR"
  echo "✓ Robot Speed skill removed."
else
  echo "Robot Speed skill not found at $SKILL_DIR"
fi
