# Pending Reviews

Check what PRs/code reviews are waiting and need attention.

## Output

Provide a summary in chat (no file needed for quick checks).

## Instructions

1. Run `npm run issues:inprogress` to see all started work
2. Look for items that are:
   - In "In Review" state
   - Haven't been updated in a while

3. Check `docs/team-roster.md` for code review assignments:
   - Who reviews whose code?
   - Is there a backlog building up?

4. Identify:
   - How many items are waiting for review?
   - How long have they been waiting?
   - Who's blocked waiting on reviews?

## Context

- Code reviews are often a bottleneck
- Clearing reviews unblocks the team to pick up new work
- Prioritize reviews that are blocking others

## Output

List the PRs/items needing review, who's blocked, and recommend a review priority order.
