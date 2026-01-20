# Linear + Cursor Sprint Toolkit

A Cursor AI-powered toolkit for engineering team leads. Automate standups, sprint planning, retros, and backlog grooming with Linear integration.

---

## What Is This?

This toolkit provides:

- **Cursor AI Commands** — Slash commands for daily/weekly team ceremonies
- **Linear CLI Integration** — npm scripts to query tickets from the terminal
- **Templates** — Reusable templates for meetings and processes
- **Documentation Structure** — Organized folders for team docs, meetings, and focus notes

Built for engineering team leads who use [Linear](https://linear.app) for task tracking and [Cursor](https://cursor.sh) as their IDE.

---

## Getting Started

### 1. Clone or Fork This Repository

```bash
git clone https://github.com/atharrison/linear-cursor-sprint-toolkit.git
cd linear-cursor-sprint-toolkit
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Install Linear CLI

```bash
# Install via official installer script
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/schpet/linear-cli/releases/latest/download/linear-installer.sh | sh

# Add to your PATH (add to ~/.zshrc)
source $HOME/.cargo/env
```

### 4. Configure Environment

```bash
# Get your API key from: https://linear.app/settings/api
echo 'LINEAR_API_KEY=lin_api_your_key_here' > .env
```

### 5. Configure Linear for Your Team

```bash
npm run config
```

This will prompt you to select your workspace and team.

### 6. Customize for Your Team

1. Update `docs/team-roster.md` with your team members
2. Update `package.json` with npm scripts for your team members
3. Update `.cursor/commands/` to reference your team's workflows
4. Update `docs/processes/sprint-workflow.md` with your ceremony times

---

## Daily Workflow

### Morning (Before Standup)

Run `/standup-prep` to prepare for the daily standup:
- Creates a standup file with current ticket status
- Identifies questions to ask each team member
- Flags stale items or blockers

### Standup

Run your daily standup (live or async). Take notes in the standup file.

### After Standup

Run `/daily-status` to synthesize your notes into a sprint status update.

### Throughout the Day

Run `/focus-today` to identify your priorities as team lead.

---

## Cursor Commands Reference

Access these commands with `/command-name` in Cursor.

### Sprint Execution (Daily)

| Command | When to Use | Output |
|---------|-------------|--------|
| `/standup-prep` | Before standup | `meetings/cycle-XX/YYYY-MM-DD-standup.md` |
| `/daily-status` | After standup | Updates standup file with synthesis |
| `/focus-today` | Anytime | `focus/YYYY-MM/YYYY-MM-DD-focus.md` |

### Sprint Health (Weekly)

| Command | When to Use | Output |
|---------|-------------|--------|
| `/sprint-health` | Mid-sprint check | `meetings/cycle-XX/YYYY-MM-DD-sprint-health.md` |
| `/pending-reviews` | When reviews pile up | Summary in chat |
| `/analyze-tickets` | Deep dive on work | Updates sprint status |

### Queue Management

| Command | When to Use | Output |
|---------|-------------|--------|
| `/triage-review` | Incoming issues | `meetings/cycle-XX/YYYY-MM-DD-triage-review.md` |
| `/ready-to-deploy-review` | End of sprint | `meetings/cycle-XX/YYYY-MM-DD-ready-to-deploy-review.md` |
| `/backlog-grooming` | Bi-weekly or when team needs work | `meetings/cycle-XX/YYYY-MM-DD-backlog-grooming.md` |

### Sprint Lifecycle

| Command | When to Use | Output |
|---------|-------------|--------|
| `/sprint-planning` | First day of sprint | `meetings/cycle-XX/YYYY-MM-DD-sprint-planning.md` |
| `/sprint-retro` | End of sprint | `meetings/cycle-XX/YYYY-MM-DD-retro.md` |
| `/end-of-sprint-summary` | After retro | `meetings/cycle-XX/TEAM-cycle-XX-summary.md` |

### Project Lifecycle

| Command | When to Use | Output |
|---------|-------------|--------|
| `/project-kickoff` | Starting new project | `meetings/cycle-XX/YYYY-MM-DD-project-kickoff-[name].md` |
| `/engineering-design` | After kickoff, before tickets | `meetings/cycle-XX/YYYY-MM-DD-engineering-design-[name].md` |

---

## Linear CLI Scripts

Query Linear directly from the terminal:

```bash
# Sprint overview
npm run sprint              # All active work
npm run issues:inprogress   # In-progress/review items
npm run issues:backlog      # Backlog items

# By team member (customize in package.json)
npm run issues:[member]     # Individual's work

# Queues
npm run triage              # Triage queue
npm run ready-to-deploy     # Items waiting to close

# Individual tickets
npm run issue -- TICKET-123    # View ticket details
npm run issue:web -- TICKET-123  # Open in browser
```

---

## Repository Structure

```
├── README.md                    # This guide
├── package.json                 # npm scripts for Linear CLI
├── docs/
│   ├── setup.md                 # Installation & setup
│   ├── team-roster.md           # Team members & working agreements
│   ├── processes/               # Team processes
│   │   └── sprint-workflow.md   # Ceremonies, sizing, DoR/DoD
│   └── references/              # Reference documents
├── meetings/                    # Team-centered notes
│   └── cycle-XX/                # Per-sprint folders
├── focus/                       # Personal daily focus notes
│   └── YYYY-MM/
├── .cursor/commands/            # Cursor AI commands
├── templates/                   # Reusable templates
├── scripts/                     # Utility scripts
└── generated/                   # Generated files (PDFs, etc.)
```

---

## Ticket Sizing

Use t-shirt sizes with target cycle times:

| Size | Target Time | Use For |
|------|-------------|---------|
| **XS** | < 1 day | Quick fix, config change |
| **S** | 1 day | Small feature, simple bug |
| **M** | 2 days | Standard feature work |
| **L** | 4 days | Complex feature |
| **XL** | 8 days | Large scope — **consider breaking down** |

Most tickets should be **S or M**. If it's XL, break it into smaller pieces.

---

## Guiding Principles

1. **Clarity over speed** — Well-scoped work moves faster than rushed ambiguity
2. **Unblock ruthlessly** — Your expertise should accelerate, not gatekeep
3. **Confidence through structure** — People execute best when they know what's expected
4. **Challenge the process** — If something slows us down, fix it
5. **Empower the team** — It's OK to push back on unclear requirements

---

## License

MIT License — Feel free to use, modify, and share.

---

*This repository is a living guide — update it as your processes evolve.*
