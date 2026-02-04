# Standup Prep

Prepare notes for running the daily standup.

**Note:** Customize your standup schedule (e.g., Monday–Thursday live, Friday async via Slack).

## Output

Create a new file at: `meetings/cycle-XX/YYYY-MM-DD-standup.md` using today's date.

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

The file should include:
1. **Prep section** — current ticket status and questions to ask
2. **Notes section** — empty template to fill in during standup

## Instructions

### 1. Read Previous Day's Standup

**First, read the previous day's standup file** to get context:
- Find the most recent standup file in `meetings/cycle-XX/` (previous day's date)
- Extract:
  - **Action items** from "Post-Standup Reminders" section
  - **What each person said they'd work on today** (from "Standup Notes" → "Today:")
  - **Blockers** that were mentioned
  - **Follow-ups** that were needed
  - **Deployments** that were planned

This context helps you:
- Ask follow-up questions (e.g., "Did you finish X that you mentioned yesterday?")
- Check on action items that were assigned
- Identify blockers that may still be present
- Verify deployments that were planned

### 2. Data Gathering

**If Linear MCP is available** (preferred):
- Use `mcp_Linear_list_issues` with `team: "[TEAM]"` and `state: "started"` to get in-progress work
- Use `mcp_Linear_list_issues` with `team: "[TEAM]"` and `state: "triage"` to check triage queue
- Filter by assignee for each team member
- Use `mcp_Linear_get_issue` for detailed ticket info when needed

**If Linear MCP is NOT available** (fallback):
1. Run `npm run issues:inprogress` to see current work in flight
2. Run `npm run triage` to check the triage queue
3. For each team member, run their specific command

### Team Member Commands

Check `docs/team-roster.md` for team members, then use their configured npm scripts:

```bash
npm run issues:[initials]   # e.g., npm run issues:jd for John Doe
```

### 3. For Each Team Member, Identify:
- What's currently assigned to them
- Any blockers or stale items (no updates in 3+ days)
- **What they said they'd work on yesterday** (from previous standup)
- **Follow-up questions** based on previous day's notes:
  - Did they complete what they planned?
  - Are blockers from yesterday resolved?
  - Any action items assigned to them?
- Questions to ask them

## Output File Template

```markdown
# Daily Status — [Day], [Month] [Date], [Year]

**Sprint:** Cycle XX, Day X of 10  
**Sprint Goal:** [Current sprint goal]  
**Standup:** [Time]

---

## Prep (Before Standup)

### 🚨 Key Focus Today
[Any critical items, milestones, or deadlines]

### 📋 Follow-ups from Yesterday
[Action items from previous standup that need checking:
- [ ] [Action item from yesterday]
- [ ] [Deployment that was planned]
- [ ] [Blocker that was mentioned]
]

### Current Sprint State (Pre-Standup)

| Team Member | In Progress | In Review | Notes |
|-------------|-------------|-----------|-------|
| **[Name 1]** | X | X | [notes] |
| **[Name 2]** | X | X | [notes] |

### Triage Queue
[List any items needing attention, or ✅ Empty]

### Questions to Ask

#### [Team Member 1]
- [ ] [Questions based on current tickets]

#### [Team Member 2]
- [ ] [Questions based on current tickets]

---

## Standup Notes (During)

### [Team Member 1]
- **Yesterday:**
- **Today:**
- **Blockers:**

### [Team Member 2]
- **Yesterday:**
- **Today:**
- **Blockers:**

### Other Notes
-

---

## Sprint Status (After Standup)

*Run `/daily-status` after standup to fill in this section.*
```

## Standup Format Reminder

Keep it to 15 minutes max. For each person:
1. What did you work on yesterday?
2. What are you working on today?
3. Any blockers?

### Key Question to Ask Yourself

> **"How are we delivering this?"**

For each piece of work, consider:
- What's the path to production?
- Who needs to review it?
- What testing is required?
- Are there deployment dependencies?
- Is the DoD clear (deployed, verified, metrics)?

Watch for:
- Scope creep signals
- Items stuck for multiple days
- Dependencies between team members
- Work that's "done" but not deployed
