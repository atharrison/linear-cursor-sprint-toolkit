# What Should I Focus On Today?

Help me identify my priorities as team lead.

## Output

Save to: `focus/YYYY-MM/YYYY-MM-DD-focus.md`

This is separate from `meetings/` — focus notes are me-centered, meetings are team-centered.

## Instructions

1. **Check recent meeting notes:**
   - Read the most recent files in `meetings/cycle-XX/` for context (use current cycle)
   - Look for action items, blockers, or follow-ups from previous days

2. **Check sprint calendar:**
   - Read `docs/processes/sprint-calendar.md` for expected meetings
   - What day of the sprint are we on?
   - Any ceremonies coming up? (grooming, demo, retro, planning)

3. **Check current sprint status:**
   - Run `npm run issues:inprogress` for active work
   - Run `npm run triage` for any urgent items

4. **Ask about today's calendar:**
   - What meetings do I have today? (1:1s, planning sessions, etc.)
   - Check for scheduled 1:1s with team members

5. **Identify focus areas:**

### As Team Lead
- **Reviews blocking team**: Am I a reviewer for any PRs?
- **Standup**: Check your standup schedule
- **Unblocking the team**: Any blockers I can help resolve?
- **Sprint health**: Are we on track? Any items stale or at risk?
- **Upcoming ceremonies**: Grooming, demo, retro, planning?

### Other Responsibilities
- Supporting team members
- Architecture decisions
- Cross-team coordination

6. **Consider the time of day:**
   - **Morning–Mid-afternoon**: Best overlap with team
   - **Late afternoon**: Other work, less team focus

## Output

Provide:
1. Sprint day and upcoming ceremonies
2. Today's time blocks including any mentioned calendar items
3. Prioritized list of 3-5 things to focus on, with reasoning
4. Any follow-ups or action items from recent meeting notes
5. Tomorrow reminder (especially for async standup days)
