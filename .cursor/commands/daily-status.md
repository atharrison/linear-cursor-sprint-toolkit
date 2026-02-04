# Daily Sprint Status

Synthesize standup notes into a complete daily status update.

**This is part 2 of a 2-part workflow.** Run `/standup-prep` first to create the file and take notes during standup.

## Input

Read the standup notes from: `meetings/cycle-XX/YYYY-MM-DD-standup.md`

Look for the "Standup Notes (During)" section which was filled in during the meeting.

## Output

**Update the same file** — add/replace the "Sprint Status (After Standup)" section.

Do NOT create a separate file. Both `/standup-prep` and `/daily-status` work on the same daily file.

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

## Instructions

1. **Read today's standup notes** from the standup file
2. **Read the previous day's standup file** (if available) to:
   - Compare what people said they'd work on vs. what they actually did
   - Check if action items from yesterday were completed
   - Verify if blockers were resolved
   - Confirm if planned deployments happened
3. Check `docs/processes/sprint-calendar.md` for:
   - What day of the sprint are we on?
   - Any upcoming ceremonies (grooming, demo, retro, planning)?
4. **Get current ticket states:**
   - **If Linear MCP is available** (preferred): Use `mcp_Linear_list_issues` with `team: "[TEAM]"` and `state: "started"`
   - **If Linear MCP is NOT available**: Run `npm run issues:inprogress`
5. **Check the triage queue:**
   - **If Linear MCP is available**: Use `mcp_Linear_list_issues` with `team: "[TEAM]"` and `state: "triage"`
   - **If Linear MCP is NOT available**: Run `npm run triage`
6. Synthesize the standup notes with the current ticket data and previous day's context

## Add to "Sprint Status (After Standup)" Section

### Standup Summary
For each team member, summarize:
- What they're working on (from their notes)
- Key updates or progress
- Any blockers mentioned

### Current Tickets
Tables of all in-progress and in-review tickets with:
- Ticket ID and title
- Assignee
- Status
- Last updated
- Any notes from standup

### Today's Priorities
Based on standup discussion, identify top 3 priorities

### Review Queue
List PRs needing review (check `docs/team-roster.md` for code review assignments)

### Blockers & Risks
Highlight any blockers or risks mentioned

### Deployments Today
List any items deploying today

### Action Items
Table of action items with owner and status

### Upcoming Ceremonies
Based on sprint calendar, note:
- Days until demo
- Next standup
- Grooming scheduled?
- Retro scheduled?

### Team Availability
Table showing who's available, OOO, or transitioning

### Post-Standup Reminders
List of things to follow up on today (from standup and calendar)

**Note:** Compare with previous day's "Post-Standup Reminders" to:
- Mark completed items as ✅
- Carry forward incomplete items
- Add new items from today's standup

## Context

- Sprint is 2 weeks
- Code reviews are often a bottleneck — prioritize unblocking developers
- Check `docs/team-roster.md` for code review assignments
