# Sprint Health Check

Assess the overall health of the current sprint.

## Output

Save to: `meetings/cycle-XX/YYYY-MM-DD-sprint-health.md`

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

## Instructions

1. Check sprint dates (2-week sprints, started first Monday)
2. Calculate: What day of the sprint are we on? How much time remains?

3. Run these commands to gather data:
   - `npm run issues:inprogress` — work in flight
   - `npm run linear -- issue list -A -s unstarted` — todo items
   - `npm run issues:backlog` — backlog depth

4. Analyze by looking for:
   - **Velocity concerns**: Too much WIP? Items stuck?
   - **Scope creep**: New items added mid-sprint?
   - **Blockers**: Reviews waiting, dependencies, unclear requirements
   - **Carryover risk**: Items that won't complete this sprint
   - **Delivery gaps**: Work "done" but not deployed or verified

5. For each major piece of work, ask: **"How are we delivering this?"**
   - What's the path to production?
   - Who reviews? Who tests? Who deploys?
   - Are there dependencies blocking delivery?

6. For each team member, assess:
   - Are they on track?
   - Too much in progress?
   - Any items stale (no updates in 3+ days)?

## Health Indicators

🟢 **Healthy**: Work flowing, reviews happening, on track
🟡 **Watch**: Some blockers, minor delays, need attention
🔴 **At Risk**: Major blockers, likely carryover, need intervention

## Output

Provide a sprint health summary with:
1. Overall health rating (🟢/🟡/🔴)
2. Days remaining in sprint
3. Key risks or blockers
4. Recommended actions
