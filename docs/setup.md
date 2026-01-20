# Repository Setup Guide

This document covers how to set up this repository for a new machine or contributor.

---

## Prerequisites

### Node.js

Required for npm scripts and dotenvx. The `.nvmrc` file specifies the recommended version.

```bash
# Check if installed
node --version  # v18+ required; see .nvmrc for recommended version

# If using nvm, install the recommended version
nvm install

# Or install via Homebrew
brew install node
```

---

## Installation Steps

### 1. Clone the repository

```bash
git clone git@github.com:atharrison/linear-cursor-sprint-toolkit.git
cd linear-cursor-sprint-toolkit
```

### 2. Install npm dependencies

```bash
npm install
```

This installs:
- `@dotenvx/dotenvx` — Loads environment variables from `.env` for scripts
- `md-to-pdf` — Generates PDFs from markdown files

### 3. Install Linear CLI

The [Linear CLI](https://github.com/schpet/linear-cli) provides command-line access to Linear for listing and managing issues.

```bash
# Install via official installer script (recommended)
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/schpet/linear-cli/releases/latest/download/linear-installer.sh | sh
```

This installs to `~/.cargo/bin`. Add to your PATH by adding this to `~/.zshrc`:

```bash
source $HOME/.cargo/env
```

Then restart your shell or run `source ~/.zshrc`.

Verify installation:
```bash
linear --version
```

> **Note:** Homebrew (`brew install schpet/tap/linear`) has binary compatibility issues on some systems. The installer script above is more reliable.

### 4. Set up environment variables

Create a `.env` file in the repository root:

```bash
# Get your API key from: https://linear.app/settings/api
echo 'LINEAR_API_KEY=lin_api_your_key_here' > .env
```

> ⚠️ **Never commit `.env` to git** — it's already in `.gitignore`

### 5. Configure Linear for this repository

Run the interactive configuration wizard:

```bash
npm run config
```

This will prompt you to:
1. Select your Linear workspace
2. Select your team

It creates a `.linear.toml` file with your settings.

---

## Verify Setup

Test that everything works:

```bash
# List your assigned issues
npm run issues

# List all team issues
npm run issues:all
```

---

## Available npm Scripts

### Team Views
| Script | Description |
|--------|-------------|
| `npm run sprint` | Active sprint: todo + in-progress (all assignees) |
| `npm run issues:all` | Everything open: backlog + todo + in-progress |
| `npm run issues:active` | Todo + in-progress |
| `npm run issues:inprogress` | In-progress + in-review only |
| `npm run issues:backlog` | Backlog only |

### By Assignee
| Script | Description |
|--------|-------------|
| `npm run issues` | Your assigned issues |
| `npm run issues:[initials]` | Team member's active issues (customize in package.json) |

### Single Issue
| Script | Description |
|--------|-------------|
| `npm run issue -- TICKET-123` | View issue details in terminal |
| `npm run issue:web -- TICKET-123` | Open issue in browser |

### Utilities
| Script | Description |
|--------|-------------|
| `npm run web` | Open in-progress issues in Linear web UI |
| `npm run config` | Run Linear configuration wizard |
| `npm run linear -- <cmd>` | Run any linear CLI command |
| `npm run pdf -- <file.md>` | Generate PDF from markdown |

---

## Known Limitations

### CLI doesn't filter by Cycle

The Linear CLI lists issues by state but **cannot filter by Linear Cycle/Sprint**. It will show all "started" issues across all cycles, not just the current sprint.

For accurate sprint views, use the Linear web UI filtered to the current cycle, or use `npm run sprint` as a rough approximation.

### State Mapping

Linear's custom workflow states map to CLI states:
- `started` → In Progress + In Review
- `unstarted` → Todo
- `backlog` → Backlog (refined and unrefined)

### Global Install Required

The Linear CLI currently requires a global installation (via the installer script or Deno). A future enhancement could use JSR via npx (`npx jsr:@schpet/linear-cli`) to avoid the global install requirement, though this adds latency on each invocation.

---

## Troubleshooting

### "Could not find standalone binary section" error

This occurs with the Homebrew installation on some systems. Solution:

1. Uninstall the Homebrew version:
   ```bash
   brew uninstall linear
   ```

2. Install via Deno instead:
   ```bash
   brew install deno  # if not already installed
   deno install -A --reload -f -g -n linear jsr:@schpet/linear-cli
   ```

### Linear CLI not found after install

Make sure the cargo bin directory is in your PATH. Add to `~/.zshrc`:

```bash
source $HOME/.cargo/env
```

Then restart your terminal or run `source ~/.zshrc`.

---

**Last Updated:** [Update when you customize this]
