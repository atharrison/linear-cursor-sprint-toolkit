# Daily Sprint Status

Synthesize standup notes into a complete daily status update.

## Prerequisites

Run `/standup-prep` first to create the standup file, then take notes during standup.

## Input

Read the standup notes from: `meetings/cycle-XX/YYYY-MM-DD-standup.md`

Look for the "Standup Notes" section which you fill in during the meeting.

## Output

Update the same file (`meetings/cycle-XX/YYYY-MM-DD-standup.md`) OR create a separate status file at `meetings/cycle-XX/YYYY-MM-DD-sprint-status.md`.

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

## Instructions

1. Read the standup notes from today's standup file
2. Check `docs/processes/sprint-calendar.md` for:
   - What day of the sprint are we on?
   - Any upcoming ceremonies (grooming, demo, retro, planning)?
3. Run `npm run issues:inprogress` to get current ticket states
4. Run `npm run triage` to check the triage queue
5. Synthesize the standup notes with the current ticket data

## Synthesize Into

### Standup Summary
For each team member, summarize:
- What they're working on (from their notes)
- Key updates or progress
- Any blockers mentioned

### Current Sprint State
Table of all in-progress and in-review tickets with:
- Ticket ID and title
- Assignee
- Status
- Last updated
- Any notes from standup

### Today's Priorities
Based on standup discussion, identify top 3 priorities

### Review Queue
List PRs needing review (note who reviews whose code from team-roster.md)

### Triage Queue
List items needing attention, with any notes from standup

### Blockers & Risks
Highlight any blockers or risks mentioned

### Upcoming Ceremonies
Based on sprint calendar, note:
- Days until demo
- Grooming scheduled?
- Retro scheduled?
- Next sprint planning?

### Notes
- Any other context from standup
- Reminders (e.g., async standup days, team members OOO)

## Context

- Sprint is 2 weeks
- Code reviews are often a bottleneck — prioritize unblocking developers
- Check `docs/team-roster.md` for code review assignments
