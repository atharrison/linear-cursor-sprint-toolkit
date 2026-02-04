# Sprint Planning

Facilitate the sprint planning meeting and document commitments for the upcoming cycle.

## When to Run

- First day of the new sprint (typically Monday)
- Replaces standup on planning day
- May shift to Tuesday if Monday is a holiday

## Output

Update or create: `meetings/cycle-XX/YYYY-MM-DD-sprint-planning.md`

## Pre-Planning Prep

### 1. Gather Data

**If Linear MCP is available** (preferred):
- Use `mcp_Linear_list_issues` with `team: "[TEAM]"` and `state: "started"` — carried over from last sprint
- Use `mcp_Linear_list_issues` with `team: "[TEAM]"` and `state: "backlog"` — available work
- Use `mcp_Linear_list_issues` with `team: "[TEAM]"` and `state: "triage"` — any urgent items

**If Linear MCP is NOT available** (fallback):
```bash
npm run issues:inprogress   # Carried over from last sprint
npm run issues:backlog      # Available work
npm run triage              # Any urgent items
```

### 2. Review Previous Sprint

- Read the previous cycle's summary (`meetings/cycle-XX/TEAM-cycle-XX-summary.md`)
- Check retro action items
- Note what carried over and why

### 3. Check Capacity

Review `docs/team-roster.md` for:
- Team member availability
- Any OOO this sprint
- Holidays

## Planning Meeting Structure

**Duration:** 60 minutes (extended standup slot)

### Agenda

1. **Review last sprint** (5 min)
   - Quick wins recap
   - What carried over?

2. **Sprint goal** (10 min)
   - What's the main objective?
   - Any milestones or deadlines?

3. **Capacity check** (5 min)
   - Who's available?
   - Any OOO, holidays, reduced capacity?

4. **Backlog review** (15 min)
   - Walk through prioritized backlog
   - Clarify any unclear tickets
   - Flag items needing grooming

5. **Commitment** (20 min)
   - Each team member selects work
   - Discuss dependencies
   - Confirm sizing is realistic

6. **Wrap-up** (5 min)
   - Confirm sprint goal
   - Note any blockers or risks
   - Next steps

## Output Template

```markdown
# Sprint Planning — Cycle [XX]

**Date:** YYYY-MM-DD  
**Attendees:** [list]  
**Facilitator:** [Name]

---

## Sprint Goal

> [One sentence describing the main objective]

---

## Capacity

| Team Member | Availability | Notes |
|-------------|--------------|-------|
| [Name] | Full / Partial / OOO | |
| [Name] | Full / Partial / OOO | |

**Holidays/OOO this sprint:**
- [List any]

---

## Carried Over

| ID | Title | Owner | Notes |
|----|-------|-------|-------|
| TICKET-XXX | ... | ... | ... |

---

## Committed Work

### [Team Member 1]
| ID | Title | Est | Notes |
|----|-------|-----|-------|
| TICKET-XXX | ... | M | |

### [Team Member 2]
| ID | Title | Est | Notes |
|----|-------|-----|-------|
| TICKET-XXX | ... | S | |

---

## Sprint Risks / Dependencies

- [Any blockers or dependencies to watch]

---

## Action Items

- [ ] [Any follow-ups from planning]

---

**Next Standup:** [Day, Date] @ [Time]
```

## After Planning

1. Update Linear with sprint assignments
2. Ensure all committed tickets are in "Unstarted" or "In Progress"
3. Share sprint goal in team channel

---

## Context

- Sprint is 2 weeks
- Planning replaces standup on the first day
- Goal: Leave with clear commitments and no ambiguity
