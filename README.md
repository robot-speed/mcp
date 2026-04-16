<div align="center">
  <img src="https://www.robot-speed.com/logo.png" alt="Robot Speed" width="80" />
  <h1>Robot Speed MCP Server</h1>
  <p><strong>Connect your AI assistant to your SEO content engine.</strong></p>
  <p>
    <a href="https://www.robot-speed.com">Website</a> &bull;
    <a href="https://www.robot-speed.com/dashboard">Dashboard</a> &bull;
    <a href="https://discord.gg/X3qTR66sm2">Discord</a>
  </p>
  <br/>
</div>

## What is this?

[Robot Speed](https://www.robot-speed.com) is an AI-powered SEO content engine. This MCP server lets you control it from any AI assistant — Claude, ChatGPT, Cursor, Windsurf, VS Code Copilot, and more.

Ask your AI assistant things like:
- *"Generate my monthly SEO report and send me the link"*
- *"What are my keyword gaps?"*
- *"Show me articles that need refreshing"*
- *"Approve this draft and publish it to WordPress"*

No code. No dashboard switching. Just talk to your AI.

## Quick Start

### Claude Desktop / Claude Code

Add this to your Claude config (`claude_desktop_config.json`):

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

Or use **OAuth** (no API key needed) — Claude will open a browser window to authenticate:

```json
{
  "mcpServers": {
    "robot-speed": {
      "url": "https://www.robot-speed.com/api/mcp"
    }
  }
}
```

### Cursor

Go to **Settings > MCP Servers > Add**, then:

- **Name:** `robot-speed`
- **Type:** `sse`
- **URL:** `https://www.robot-speed.com/api/mcp`
- **Headers:** `X-API-Key: YOUR_API_KEY`

### Windsurf

Add to your Windsurf MCP config:

```json
{
  "mcpServers": {
    "robot-speed": {
      "serverUrl": "https://www.robot-speed.com/api/mcp",
      "headers": {
        "X-API-Key": "YOUR_API_KEY"
      }
    }
  }
}
```

### VS Code (GitHub Copilot)

Add to `.vscode/mcp.json` in your project:

```json
{
  "servers": {
    "robot-speed": {
      "url": "https://www.robot-speed.com/api/mcp",
      "headers": {
        "X-API-Key": "YOUR_API_KEY"
      }
    }
  }
}
```

### ChatGPT

Use the MCP bridge or plugin that supports remote MCP servers, and point it to:

```
https://www.robot-speed.com/api/mcp
```

## Getting Your API Key

1. Go to [robot-speed.com/dashboard](https://www.robot-speed.com/dashboard)
2. Navigate to **Settings > API Keys**
3. Create a new key (site-scoped or agency-scoped)
4. Copy it into your MCP config

**Agency keys** can access multiple sites — pass `site: "example.com"` to any tool.
**Site keys** are locked to one site — no `site` parameter needed.

## Authentication

Two methods supported:

| Method | How | Best for |
|--------|-----|----------|
| **OAuth 2.1** | Auto browser flow, no key to manage | Claude Desktop, interactive use |
| **API Key** | `X-API-Key` header | CI/CD, scripts, non-interactive |

OAuth follows the [MCP Authorization spec](https://modelcontextprotocol.io/specification/2025-06-18/basic/authorization) with PKCE, dynamic client registration, and token refresh.

## Available Tools (27)

### Discovery

| Tool | Description |
|------|-------------|
| `discover` | Tool index and recommended workflows — call this first |
| `list_sites` | List all sites accessible with your API key |

### Content

| Tool | Description |
|------|-------------|
| `list_articles` | Articles with title, status, SEO score, word count |
| `get_article` | Full article with HTML content and quality metrics |
| `search_articles` | Search by keyword in title or target keyword |
| `list_content_calendar` | Editorial pipeline: ideas, planned, in progress, completed |
| `list_content_ideas` | Idea backlog with cluster, intent, search volume, difficulty |
| `get_topical_clusters` | Cluster/pillar content view with coverage analysis |

### Reporting

| Tool | Description |
|------|-------------|
| `get_performance_report` | Monthly report: articles, SEO scores, GSC traffic |
| `get_traffic_report` | Google Search Console: clicks, impressions, CTR, position |
| `get_ai_visibility_report` | AI bot crawls — ChatGPT, Perplexity, Claude, Google AI visits |

### Site Health

| Tool | Description |
|------|-------------|
| `get_site_stats` | Article counts, avg SEO score, avg word count |
| `get_site_audit` | Health snapshot: GSC, CMS, last publish, freshness |
| `get_credits` | Remaining content credits and plan tier |

### Backlinks

| Tool | Description |
|------|-------------|
| `list_backlinks` | Backlink exchanges: anchor text, status, verification |
| `get_backlink_stats` | Aggregate stats: total, by status, inbound vs outbound |
| `list_outreach_prospects` | Outreach pipeline with DR and contact info (beta) |

### Keywords

| Tool | Description |
|------|-------------|
| `list_keywords` | Tracked keyword opportunities with volume and difficulty |
| `get_keyword_gaps` | Content ideas with no matching article — gaps to fill |

### Content Refresh

| Tool | Description |
|------|-------------|
| `list_refresh_candidates` | Articles needing update, sorted by priority |

### Settings

| Tool | Description |
|------|-------------|
| `get_settings` | Auto-publish, content mode, language, connected platforms |
| `update_settings` | Change auto-publish or content quality mode |

### Actions

| Tool | Description |
|------|-------------|
| `approve_article` | Move draft to approved, or approved to published |
| `publish_to_cms` | Push published article to WordPress, Shopify, etc. |
| `regenerate_article` | Re-generate with fresh content (1st free, then 1 credit) |
| `get_article_history` | View generation pipeline steps, durations, status |

### Sharing

| Tool | Description |
|------|-------------|
| `generate_shareable_report` | Create a public report URL for your client (white-label) |

## Workflows

### Monthly Client Report

```
1. discover()                              → see available tools
2. get_site_audit()                        → health check
3. get_performance_report(period: "30d")   → articles, SEO, traffic
4. get_traffic_report(period: "28d")       → GSC clicks, impressions
5. generate_shareable_report(period: "30d") → shareable URL for the client
```

Just say: *"Generate the monthly report for example.com and give me the link."*

### Content Planning

```
1. list_keywords()            → keyword opportunities
2. get_keyword_gaps()         → ideas without articles
3. list_refresh_candidates()  → articles needing update
4. list_content_calendar()    → editorial pipeline status
```

### Quick SEO Check

```
1. get_site_stats()                     → overall health
2. get_traffic_report(period: "7d")     → recent trends
3. get_credits()                        → remaining budget
```

## Example Prompts

| What you say | What happens |
|---|---|
| "How is my SEO doing this month?" | Calls `get_performance_report` + `get_traffic_report` |
| "Find me keyword gaps" | Calls `get_keyword_gaps` |
| "Generate a report for my client Marie" | Calls `generate_shareable_report(client_name: "Marie")` — white-label link |
| "Approve all draft articles" | Calls `list_articles(status: "all")` then `approve_article` for each draft |
| "Which articles need refreshing?" | Calls `list_refresh_candidates` |
| "What AI bots are visiting my site?" | Calls `get_ai_visibility_report` |

## White-Label Reports

When you set `client_name` on `generate_shareable_report`, the report uses the client's name instead of Robot Speed branding. Perfect for agencies.

```
"Generate a 30-day performance report for client Acme Corp"
→ generate_shareable_report(client_name: "Acme Corp", period: "30d")
→ Returns: https://www.robot-speed.com/report/abc123 (branded "Acme Corp")
```

## Pricing

Robot Speed MCP is included in all plans. No extra cost for API access.

| Plan | Credits/month | Best for |
|------|--------------|----------|
| Starter ($99) | 30 credits | Small sites |
| Growth ($249) | 80 credits | Growing businesses |
| Scale ($599) | 200 credits | Agencies & large sites |

[See full pricing](https://www.robot-speed.com/#pricing)

## Support

- **Discord**: [discord.gg/X3qTR66sm2](https://discord.gg/X3qTR66sm2)
- **Email**: support@robot-speed.com
- **Docs**: [robot-speed.com/docs](https://www.robot-speed.com/docs)

## License

This repository contains configuration and documentation for the Robot Speed MCP server. The server itself is a hosted service at `robot-speed.com/api/mcp`. See [Terms of Service](https://www.robot-speed.com/tos).
