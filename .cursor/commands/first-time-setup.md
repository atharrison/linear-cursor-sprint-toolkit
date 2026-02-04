# First Time Setup

Interactive setup wizard to configure this toolkit for your team.

## Overview

This command walks you through initial configuration:
1. Team information
2. Team members (generates roster + npm scripts)
3. Sprint schedule
4. Verify Linear CLI setup

---

## Step 1: Team Information

Ask the user for:
- **Team name** (e.g., "Platform Team", "Boom Squad")
- **Slack channel** (e.g., "#platform-team")
- **Team handle** (e.g., "@platform-team")

---

## Step 2: Team Members

For each team member, collect:
- **Name** (full name)
- **Initials** (2-3 letters, used for Linear queries)
- **Role** (Team Lead, Engineer, Designer, etc.)
- **Timezone** (e.g., America/New_York, Europe/London)
- **Focus area** (optional — what they primarily work on)

Start with the team lead, then add each team member.

Ask: "How many people are on your team (including yourself)?"

---

## Step 3: Generate Files

After collecting all information, update these files:

### `docs/team-roster.md`

Replace the template placeholders with actual team data:

```markdown
# Team Roster

## Team Overview

**Squad:** [Team Name from Step 1]  
**Team Lead:** [First team member's name]  
**Slack Channel:** [Channel from Step 1]  
**Task Tracking:** Linear (t-shirt sizing)  

---

## Team Members

[For each team member, generate a section:]

### [Name] — [Role]
- **Role:** [Role]
- **Linear Initials:** [Initials]
- **Time Zone:** [Timezone]
- **Focus Area:** [Focus area or "General"]

---
```

Keep the template sections for:
- Working Agreements (Definition of Done, Definition of Ready)
- Code Review matrix (leave as template for user to fill in)
- Related Teams & Contacts
- Time Zones & Collaboration Windows
- 1:1 Schedule

### `package.json`

Add npm scripts for each team member. Insert after the existing scripts:

```json
"issues:[initials]": "dotenvx run -- $HOME/.cargo/bin/linear issue list -s unstarted -s started --assignee [INITIALS]"
```

Use lowercase initials for the script name (e.g., `issues:ah`, `issues:jd`).

> **Important:** Use `--assignee [INITIALS]` (long form) to filter by assignee.
> Do NOT use `-a` — that flag means "open in Linear.app", not filter by assignee.
> Do NOT use `-A` — that means "all assignees" which defeats the purpose.

---

## Step 4: Sprint Schedule (Optional)

Ask if they want to set up their sprint schedule now or later.

If yes, update `docs/processes/sprint-calendar.md`:
- Current cycle number
- Ceremony times (standup, grooming, retro, planning)
- Sprint start day

If no, leave the template as-is.

---

## Step 5: Verify Linear Setup

Check for Linear CLI configuration:

1. **Check `.env` exists** — If not, prompt user to create it:
   ```bash
   echo 'LINEAR_API_KEY=lin_api_your_key_here' > .env
   ```
   Link: https://linear.app/settings/api

2. **Check Linear CLI installed** — Run `which linear` or check `$HOME/.cargo/bin/linear`
   - If not installed, point to `docs/setup.md` for instructions

3. **Run `npm run config`** — Interactive Linear configuration
   - This creates `.linear.toml` with workspace/team selection

4. **Test connection** — Run `npm run issues` to verify it works

---

## Output Summary

After setup, display a summary:

```
✅ First-time setup complete!

Team: [Team Name]
Members: [Count] configured
Scripts added: npm run issues:[initials] for each member

Next steps:
1. Run `npm run config` to select your Linear workspace/team
2. Fill in the Code Review matrix in docs/team-roster.md
3. Update docs/processes/sprint-calendar.md with your ceremony times
4. Try `/standup-prep` to test the workflow
```

---

## Notes

- This command modifies `docs/team-roster.md` and `package.json`
- Original template content is replaced, not appended
- User should commit changes after setup
- If they want to start over, they can re-run this command
