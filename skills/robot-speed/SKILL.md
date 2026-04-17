---
name: robot-speed
description: "SEO audit, score, and keyword tools powered by Robot Speed. Free tools work without an account."
---

## Preamble (run first)

```bash
_UPD=$(~/.claude/skills/robot-speed/bin/update-check 2>/dev/null || true)
[ -n "$_UPD" ] && echo "$_UPD" || true
VERSION=$(cat ~/.claude/skills/robot-speed/VERSION 2>/dev/null || echo "unknown")
echo "Robot Speed MCP v$VERSION"
```

If output shows `UPGRADE_AVAILABLE <old> <new>`: Tell the user "Robot Speed MCP update available (v{old} → v{new}). Run `cd ~/.claude/skills/robot-speed && git pull --ff-only && ./setup` to update."

# Robot Speed SEO Tools

This skill connects Claude Code to Robot Speed's MCP server for SEO analysis.
Free tools work on any URL without authentication. Pro tools require a Robot Speed account.

## Available Commands

### Free (no account needed)

- `/robot-speed audit <url>` — Full 8-category SEO audit with score, issues, and AI summary
- `/robot-speed score <url>` — Quick SEO score (0-100) with letter grade
- `/robot-speed keywords <topic>` — Generate keyword suggestions for a topic

### Pro (requires account)

- `/robot-speed report` — Generate monthly client report with shareable link
- `/robot-speed publish` — Push approved articles to your CMS

## How it works

This skill uses the Robot Speed MCP server at `https://www.robot-speed.com/api/mcp`.
All SEO analysis runs server-side. No API keys needed for free tools.

## Setup for Pro tools

To use Pro tools, add your API key to Claude Desktop config:

```json
{
  "mcpServers": {
    "robot-speed": {
      "url": "https://www.robot-speed.com/api/mcp",
      "headers": {
        "X-API-Key": "YOUR_API_KEY"
      }
    }
  }
}
```

Get your key at: https://www.robot-speed.com/dashboard (Settings > API Keys)

## Instructions for Claude

When the user runs a /robot-speed command:

1. For `audit <url>`: Call the `seo_audit` tool on the Robot Speed MCP server with the provided URL. Present the results clearly: overall score, letter grade, top issues (with severity), top strengths, and the AI summary. If a previous audit exists for this URL, highlight the score change.

2. For `score <url>`: Call the `seo_score` tool. Show the score prominently with the letter grade.

3. For `keywords <topic>`: Call the `keyword_generator` tool. Present keywords in a table with search volume and difficulty.

4. For `report`: Call `generate_shareable_report` tool. Return the shareable URL.

5. For `publish`: Call `publish_to_cms` tool for each approved article.

The MCP server URL is: https://www.robot-speed.com/api/mcp
Free tools do not require authentication headers.
