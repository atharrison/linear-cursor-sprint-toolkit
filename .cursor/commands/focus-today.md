# What Should I Focus On Today?

Help me identify my priorities as team lead.

## Output

Save to: `focus/YYYY-MM/YYYY-MM-DD-focus.md`

This is separate from `meetings/` — focus notes are me-centered, meetings are team-centered.

## Instructions

1. **Check previous day's standup:**
   - **Read the previous day's standup file** (`meetings/cycle-XX/YYYY-MM-DD-standup.md`)
   - Extract action items from "Post-Standup Reminders" section
   - Note what people said they'd work on today (to check during standup)
   - Identify any blockers or follow-ups that need attention
2. **Check other recent meeting notes:**
   - Read other recent files in `meetings/cycle-XX/` for context (grooming, planning, etc.)
   - Look for action items, blockers, or follow-ups from previous days

3. **Check sprint calendar:**
   - Read `docs/processes/sprint-calendar.md` for expected meetings
   - What day of the sprint are we on?
   - Any ceremonies coming up? (grooming, demo, retro, planning)

4. **Check current sprint status:**
   - **If Linear MCP is available** (preferred):
     - Use `mcp_Linear_list_issues` with `team: "[TEAM]"` and `state: "started"` for active work
     - Use `mcp_Linear_list_issues` with `team: "[TEAM]"` and `state: "triage"` for urgent items
   - **If Linear MCP is NOT available**:
     - Run `npm run issues:inprogress` for active work
     - Run `npm run triage` for any urgent items

5. **Ask about today's calendar:**
   - What meetings do I have today? (1:1s, planning sessions, etc.)
   - Check for scheduled 1:1s with team members

6. **Identify focus areas:**

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

7. **Consider the time of day:**
   - **Morning–Mid-afternoon**: Best overlap with team
   - **Late afternoon**: Other work, less team focus

## Output

Provide:
1. Sprint day and upcoming ceremonies
2. Today's time blocks including any mentioned calendar items
3. **Action items from previous day's standup** (from "Post-Standup Reminders")
4. Prioritized list of 3-5 things to focus on, with reasoning
5. Any follow-ups or action items from recent meeting notes
6. Tomorrow reminder (especially for async standup days)
