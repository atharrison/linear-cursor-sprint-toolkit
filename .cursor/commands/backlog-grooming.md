# Backlog Grooming

Review and prepare the ticket backlog for upcoming sprints.

## When to Run

- **Bi-weekly** at scheduled grooming session
- **Mid-sprint** when team members need more work (queues running low)
- **End of sprint** to prepare for next sprint planning

## Output

Save notes to: `meetings/cycle-XX/YYYY-MM-DD-backlog-grooming.md`

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

## Instructions

### 1. Check Current Sprint Capacity

Run these commands to see current state:

```bash
npm run issues:inprogress   # What's actively being worked on
npm run issues:active       # Todo + In Progress items
npm run triage              # Items needing triage decisions
```

**Signs the team needs more work:**
- Team members have < 2 items in progress
- Items are about to be completed with nothing queued
- Someone explicitly asks for more work

### 2. Review the Backlog

```bash
npm run issues:backlog      # Items in backlog state
```

For each item, assess:
- **Is it ready?** Does it have clear scope and acceptance criteria?
- **Is it sized?** Does it have a t-shirt size estimate?
- **Is it prioritized?** Should it be in this sprint or later?
- **Who should own it?** Based on team member focus areas from `docs/team-roster.md`

### 3. Apply Definition of Ready (DoR)

A ticket is ready for sprint when:
- [ ] Clear, specific scope (not ambiguous)
- [ ] Acceptance criteria defined
- [ ] Small enough to complete in a few days (break down if needed)
- [ ] Dependencies identified
- [ ] Sized with target cycle time:

| Size | Target Time |
|------|-------------|
| XS | < 1 day |
| S | 1 day |
| M | 2 days |
| L | 4 days |
| XL | 8 days (consider breaking down) |

### 4. Ticket Breakdown

If a ticket is too large or ambiguous:
1. Break it into smaller, specific tasks
2. Create sub-tickets or convert to a project with milestones
3. Ensure each piece is independently deliverable

**Tip:** Check `docs/team-roster.md` for team member preferences — some engineers prefer very specific tickets, others handle ambiguity well.

### 5. Prioritization

Reference: `docs/references/ticket-prioritization.md`

| Priority | Impact | Users Affected | Action |
|----------|--------|----------------|--------|
| **Urgent** | Product unusable | >50% | Stop everything, swarm, deploy ASAP |
| **High** | Core feature broken | 5-50% | Pull into current or next cycle |
| **Medium** | Minor disruption | <5% | Backlog for future sprint |
| **Low** | Polish/cosmetic | Negligible | Polish phase or slow cycles |

**Empower engineers to push back:** It's OK to tell product to wait until we have more information before adding to the refined backlog.

### 6. Assignment

Consider team strengths from `docs/team-roster.md`:
- Match work to focus areas
- Balance workload across team
- Consider timezone overlap for collaborative work

## Grooming Session Format

1. **Review sprint health** (5 min) — Are we on track? Capacity issues?
2. **Review triage queue** (5 min) — Quick decisions: fix now, backlog, or cancel
3. **Walk the backlog** (15 min) — Top items, check readiness
4. **Break down large items** (20 min) — Split ambiguous work
5. **Prioritize and assign** (15 min) — What's next, who owns it
