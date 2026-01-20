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

1. Run `npm run issues:inprogress` to see current work in flight
2. Run `npm run triage` to check the triage queue
3. For each team member, run their specific command and identify:
   - What's currently assigned to them
   - Any blockers or stale items (no updates in 3+ days)
   - Questions to ask them

### Team Member Commands

Check `docs/team-roster.md` for team members, then use their configured npm scripts:

```bash
npm run issues:[initials]   # e.g., npm run issues:jd for John Doe
```

## Output File Template

```markdown
# Standup — [Day], [Month] [Date], [Year]

## Prep Notes

### Current Sprint State
[Table of in-progress/in-review tickets by team member]

### Triage Queue
[List any items needing attention]

### Questions to Ask

#### [Team Member 1]
- [Questions based on their current tickets]

#### [Team Member 2]
- [Questions based on their current tickets]

---

## Standup Notes

*Take notes below during standup*

### [Team Member 1]
- 

### [Team Member 2]
- 

### Blockers / Action Items
- 

### Other Notes
- 
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
