<div align="center">
  <img src="https://www.robot-speed.com/logo.png" alt="Robot Speed" width="120" />
  <h1>Robot Speed MCP Server</h1>
  <p><strong>Audit any website's SEO. Generate client reports. Manage content at scale.<br/>From any AI assistant — no dashboard needed.</strong></p>

  <p>
    <a href="https://github.com/robot-speed/mcp/stargazers"><img src="https://img.shields.io/github/stars/robot-speed/mcp?style=flat&color=22c55e" alt="Stars" /></a>
    <a href="#available-tools-27"><img src="https://img.shields.io/badge/tools-27-blue" alt="27 Tools" /></a>
    <a href="#free-seo-tools-no-account-needed"><img src="https://img.shields.io/badge/free_tools-90+-orange" alt="90+ Free Tools" /></a>
    <a href="#works-with"><img src="https://img.shields.io/badge/works_with-Claude_%7C_Cursor_%7C_Windsurf_%7C_VS_Code_%7C_ChatGPT-8A2BE2" alt="Cross-platform" /></a>
    <a href="https://discord.gg/X3qTR66sm2"><img src="https://img.shields.io/discord/1234567890?label=Discord&color=5865F2" alt="Discord" /></a>
    <a href="#license"><img src="https://img.shields.io/badge/license-Proprietary-lightgrey" alt="License" /></a>
  </p>

  <p>
    <a href="https://www.robot-speed.com">Website</a> &bull;
    <a href="https://www.robot-speed.com/dashboard">Dashboard</a> &bull;
    <a href="https://discord.gg/X3qTR66sm2">Discord</a> &bull;
    <a href="#quick-start-30-seconds">Quick Start</a>
  </p>

  <sub>Langue / Language: <strong>English</strong> &bull; <a href="#french">Fran&ccedil;ais</a></sub>

  <br/><br/>
</div>

---

**27 pro tools. 90+ free SEO tools. 8 audit categories. White-label reports.**
**One MCP server. Works everywhere.**

```
You:    "Audit the SEO of https://example.com"
Claude: Running seo_audit... 8 categories analyzed.

        Score: 72/100
        Top issues:
        - Missing FAQ schema (GEO/AEO impact)
        - 3 images without alt text
        - Meta description too short (89 chars, target 150-160)
        - No hreflang tags detected

        Top strengths:
        - HTTPS ✓, valid sitemap, clean robots.txt
        - H1 matches target keyword
        - Page loads in 1.2s (LCP < 2.5s)

You:    "Now generate the full monthly report and send me the link"
Claude: Done. Here's your shareable report:
        https://www.robot-speed.com/report/a8f2k...
        Branded "Acme Corp". Expires in 30 days. No login needed.
```

---

## Table of Contents

- [Quick Start (30 seconds)](#quick-start-30-seconds)
- [Works With](#works-with)
- [Free SEO Tools (No Account Needed)](#free-seo-tools-no-account-needed)
- [Pro Tools (27)](#available-tools-27)
- [Workflows](#workflows)
- [Example Conversations](#example-conversations)
- [White-Label Reports](#white-label-reports)
- [Authentication](#authentication)
- [FAQ](#faq)
- [What's New](#whats-new)

---

## Quick Start (30 seconds)

### Option A: OAuth (recommended — zero config)

```json
{
  "mcpServers": {
    "robot-speed": {
      "url": "https://www.robot-speed.com/api/mcp"
    }
  }
}
```

Claude opens a browser window. You log in. Done.

### Option B: API Key

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

Get your key: [Dashboard > Settings > API Keys](https://www.robot-speed.com/dashboard)

---

## Works With

Add the config above to your AI tool of choice:

| Platform | Config file | Auth |
|----------|-------------|------|
| **Claude Desktop** | `claude_desktop_config.json` | OAuth or API Key |
| **Claude Code** | `claude_desktop_config.json` | OAuth or API Key |
| **Cursor** | Settings > MCP Servers > Add | API Key |
| **Windsurf** | MCP config (`serverUrl` field) | API Key |
| **VS Code (Copilot)** | `.vscode/mcp.json` | API Key |
| **ChatGPT** | MCP bridge/plugin | API Key |

<details>
<summary><strong>Platform-specific configs</strong></summary>

#### Cursor

Settings > MCP Servers > Add:
- **Name:** `robot-speed`
- **Type:** `sse`
- **URL:** `https://www.robot-speed.com/api/mcp`
- **Headers:** `X-API-Key: YOUR_API_KEY`

#### Windsurf

```json
{
  "mcpServers": {
    "robot-speed": {
      "serverUrl": "https://www.robot-speed.com/api/mcp",
      "headers": { "X-API-Key": "YOUR_API_KEY" }
    }
  }
}
```

#### VS Code (GitHub Copilot)

`.vscode/mcp.json`:
```json
{
  "servers": {
    "robot-speed": {
      "url": "https://www.robot-speed.com/api/mcp",
      "headers": { "X-API-Key": "YOUR_API_KEY" }
    }
  }
}
```

</details>

---

## Free SEO Tools (No Account Needed)

These tools work on any URL without signing up. No account needed. Try them now via MCP or on the web at [robot-speed.com/free-tools](https://www.robot-speed.com/free-tools).

Robot Speed powers **90+ free SEO tools**. The best ones are available via MCP:

| Tool | What it does | Status |
|------|-------------|--------|
| `seo_audit` | Full 8-category audit: Foundation, Crawl & Index, Content SEO, Metadata, Performance, Media & UX, Architecture, GEO/AEO | ✅ Live |
| `seo_score` | SEO score (0-100) for any URL | ✅ Live |
| `meta_tag_analyzer` | Title, description, OG tags, Twitter cards analysis | ✅ Live |
| `page_speed_check` | Performance audit: blocking scripts, page weight, Core Web Vitals | ✅ Live |
| `broken_link_check` | Find broken links on any page | ✅ Live |
| `ai_visibility_score` | How well AI bots can crawl your site (ChatGPT, Perplexity, Claude) | ✅ Live |
| `readability_check` | Readability score and content quality analysis | ✅ Live |
| `schema_validator` | JSON-LD and schema markup validation | ✅ Live |
| `keyword_generator` | Keyword suggestions for any topic | ✅ Live |
| `noindex_checker` | Verify a page is indexable (no noindex tag) | ✅ Live |

**Why free?** Because great SEO starts with knowing what's broken. Audit first, then let Robot Speed fix it.

---

## Available Tools (27)

These require a Robot Speed account and a connected site.

### Discovery

| Tool | Description |
|------|-------------|
| `discover` | Tool index and recommended workflows — **call this first** |
| `list_sites` | List all sites accessible with your API key |

### Content Management

| Tool | Description |
|------|-------------|
| `list_articles` | Articles with title, status, SEO score, word count |
| `get_article` | Full article with HTML content and quality metrics |
| `search_articles` | Search by keyword in title or target keyword |
| `list_content_calendar` | Editorial pipeline: ideas → planned → in progress → completed |
| `list_content_ideas` | Idea backlog with cluster, intent, search volume, difficulty |
| `get_topical_clusters` | Cluster/pillar content view with coverage analysis |

### Reporting & Analytics

| Tool | Description |
|------|-------------|
| `get_performance_report` | Monthly report: articles published, SEO scores, GSC traffic |
| `get_traffic_report` | Google Search Console: clicks, impressions, CTR, avg position |
| `get_ai_visibility_report` | AI bot crawls — which AI agents visit your content |

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
| `list_refresh_candidates` | Articles needing update, sorted by priority score |

### Settings

| Tool | Description |
|------|-------------|
| `get_settings` | Auto-publish, content mode, language, connected platforms |
| `update_settings` | Change auto-publish or content quality mode |

### Actions

| Tool | Description |
|------|-------------|
| `approve_article` | Move draft → approved, or approved → published |
| `publish_to_cms` | Push to WordPress, Shopify, Kleap, Prestashop, Wix |
| `regenerate_article` | Re-generate with fresh content (1st free, then 1 credit) |
| `get_article_history` | View generation pipeline: 26+ steps, durations, status |

### Sharing

| Tool | Description |
|------|-------------|
| `generate_shareable_report` | Public report URL for your client — white-label, no login needed |

---

## Workflows

### Monthly Client Report

> *"Generate the monthly report for example.com and send me the link."*

```
You:    Generate a monthly report for my client Acme Corp.

Claude: Running site audit... ✓
        Fetching performance data (30 days)... ✓
        Pulling GSC traffic... ✓
        Generating shareable report...

        Here's your report:
        https://www.robot-speed.com/report/a8f2k3...

        Branded "Acme Corp" — no Robot Speed logo.
        Valid 30 days. No login required for Acme Corp to view it.

        Summary:
        - 12 articles published this month
        - Avg SEO score: 87/100
        - +23% organic clicks vs last month
        - Top performer: "Guide complet du SEO local" (1,200 clicks)
```

### Content Planning

> *"What should I write about next?"*

```
You:    What are my keyword gaps and articles that need refreshing?

Claude: Keyword gaps (no article yet):
        1. "seo local restaurant" — vol 1.2k, difficulty 32
        2. "audit technique seo" — vol 880, difficulty 28
        3. "backlinks gratuits" — vol 2.1k, difficulty 45

        Articles to refresh (performance declining):
        1. "Comment améliorer son SEO" — published 8 months ago,
           clicks dropped 40%, refresh priority: HIGH
        2. "Les meilleurs outils SEO" — SEO score 61,
           needs schema markup update
```

### Quick SEO Check

> *"How is my SEO doing?"*

```
You:    Quick SEO status check.

Claude: Site: example.com
        - 45 articles (38 published, 7 drafts)
        - Avg SEO score: 82/100
        - This week: 3,200 clicks, 45k impressions, CTR 7.1%
        - Position avg: 12.3 (improving from 14.1 last week)
        - Credits remaining: 18/30
        - AI bots: 342 visits this month (ChatGPT: 180, Perplexity: 95, Claude: 67)
```

---

## Example Conversations

| What you say | What Robot Speed does |
|---|---|
| "How is my SEO doing this month?" | `get_performance_report` + `get_traffic_report` |
| "Find me keyword gaps" | `get_keyword_gaps` — ideas with no article yet |
| "Generate a report for my client Marie" | `generate_shareable_report(client_name: "Marie")` — white-label URL |
| "Approve all draft articles" | `list_articles` → `approve_article` for each draft |
| "Which articles need refreshing?" | `list_refresh_candidates` — sorted by decay priority |
| "What AI bots are visiting my site?" | `get_ai_visibility_report` — ChatGPT, Perplexity, Claude visits |
| "Publish my approved articles to WordPress" | `list_articles(status: "approved")` → `publish_to_cms` each |
| "Show me the content calendar" | `list_content_calendar` — pipeline status |
| "How many credits do I have left?" | `get_credits` — used, remaining, plan tier |
| "Switch to quality mode" | `update_settings(content_mode: "quality")` |

---

## White-Label Reports

Set `client_name` on `generate_shareable_report` and Robot Speed branding disappears. Your agency name shows instead. Perfect for monthly client deliverables.

```
You:    Generate a 30-day performance report for client "Oxwork"

Claude: Report generated:
        https://www.robot-speed.com/report/x9k2m...

        Branded "Oxwork" — no Robot Speed mention.
        Expires in 30 days. Share directly with your client.
```

---

## Authentication

| Method | Setup | Best for |
|--------|-------|----------|
| **OAuth 2.1** | Just add the URL — browser auth flow handles the rest | Claude Desktop, interactive use |
| **API Key** | `X-API-Key` header with key from dashboard | Cursor, VS Code, CI/CD, scripts |

**Agency keys** access multiple sites — pass `site: "example.com"` to any tool.
**Site keys** are locked to one site — no `site` parameter needed.

OAuth follows the [MCP Authorization spec](https://modelcontextprotocol.io/specification/2025-06-18/basic/authorization) with PKCE, dynamic client registration, and token refresh.

---

## FAQ

<details>
<summary><strong>Do I need to pay to use this?</strong></summary>

The MCP server is included in all Robot Speed plans at no extra cost. Free tools work without an account. Pro tools require a subscription starting at $99/month.

</details>

<details>
<summary><strong>Which AI tools work with this?</strong></summary>

Any MCP-compatible client: Claude Desktop, Claude Code, Cursor, Windsurf, VS Code (Copilot), ChatGPT (via MCP bridge). The server is stateless HTTP — if your tool can call a URL, it works.

</details>

<details>
<summary><strong>I have multiple sites. How does that work?</strong></summary>

Use an **agency key**. It gives access to all your sites. Pass `site: "example.com"` to any tool to target a specific site. Or use `list_sites` to see everything you can access.

</details>

<details>
<summary><strong>Is my data safe?</strong></summary>

Your data stays in Robot Speed's infrastructure (Supabase + Vercel, EU-hosted). The MCP server is read-only except for `approve_article`, `publish_to_cms`, `update_settings`, and `regenerate_article`. OAuth tokens expire and can be revoked from the dashboard.

</details>

<details>
<summary><strong>How is this different from claude-seo or other SEO MCP tools?</strong></summary>

Most SEO MCP tools run locally — they analyze a page on-the-fly but have no persistent data. Robot Speed has your **historical data**: articles published over months, GSC trends, AI bot visit patterns, keyword tracking, backlink exchanges. You get trend analysis, not just snapshots.

</details>

<details>
<summary><strong>Can I use this in French?</strong></summary>

Yes. All tool descriptions are bilingual (EN/FR). The AI assistant will respond in your language. Reports adapt to your site's language setting.

</details>

---

## What's New

### v2.0.0 (April 2026)

- 27 tools across 10 categories
- OAuth 2.1 support (PKCE + dynamic client registration)
- AI visibility reports (track ChatGPT, Perplexity, Claude bot visits)
- White-label shareable reports
- Agency keys for multi-site access
- Smithery listing for MCP directory discovery

### Coming Next

- ~~10 free SEO tools~~ **Shipped!** 10 free tools live — audit, score, meta tags, speed, broken links, and more
- Claude Code skill installation (`/robot-speed audit <url>`)
- Multi-page site crawl audit
- Drift monitoring (baseline → compare over time)

---

## Pricing

Robot Speed MCP is **included in all plans**. No extra cost for API access.

| Plan | Credits/month | Price | Best for |
|------|--------------|-------|----------|
| **Starter** | 30 credits | $99/mo | Small sites, freelancers |
| **Growth** | 80 credits | $249/mo | Growing businesses |
| **Scale** | 200 credits | $599/mo | Agencies & large sites |

[See full pricing](https://www.robot-speed.com/#pricing)

---

## Support & Community

- **Discord**: [discord.gg/X3qTR66sm2](https://discord.gg/X3qTR66sm2)
- **Email**: support@robot-speed.com
- **Website**: [robot-speed.com](https://www.robot-speed.com)
- **Free tools**: [robot-speed.com/free-tools](https://www.robot-speed.com/free-tools)

---

<a name="french"></a>

## Version Francaise

Robot Speed MCP fonctionne en francais. Toutes les descriptions d'outils sont bilingues. Votre assistant IA repondra dans votre langue.

**Exemples de prompts :**

| Ce que vous dites | Ce qui se passe |
|---|---|
| "Comment va mon SEO ce mois-ci ?" | Rapport de performance + trafic GSC |
| "Genere le rapport mensuel pour mon client" | Lien de rapport partageable, marque blanche |
| "Quels articles faut-il rafraichir ?" | Liste triee par priorite de decay |
| "Quels sont mes keyword gaps ?" | Idees sans article correspondant |
| "Publie mes articles approuves sur WordPress" | Publication CMS automatique |

---

## License

This repository contains configuration and documentation for the Robot Speed MCP server. The server is a hosted service at `robot-speed.com/api/mcp`. See [Terms of Service](https://www.robot-speed.com/tos).

---

<div align="center">
  <sub>Built in Switzerland. Powered by AI. Made for SEO professionals.</sub>
</div>
