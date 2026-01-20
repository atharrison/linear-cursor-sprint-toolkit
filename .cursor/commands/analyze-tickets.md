# Analyze Current Tickets

Do a deep-dive analysis of all in-progress tickets, fetching full descriptions and creating a comprehensive assessment.

## Output

Update or create a sprint status document at: `meetings/cycle-XX/YYYY-MM-DD-sprint-status.md`

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

## Instructions

1. **Get the list of active tickets:**
   ```bash
   npm run issues:inprogress
   ```

2. **For each team member, fetch full ticket details:**
   ```bash
   npm run issue -- TICKET-XXX
   ```

3. **For each ticket, analyze:**
   - What is the purpose/goal?
   - Are acceptance criteria clear and specific?
   - Are there technical notes or implementation guidance?
   - Are dependencies documented?
   - Is the scope appropriate (not too large/ambiguous)?

4. **Identify patterns:**
   - Do tickets form a cohesive feature? Map dependencies.
   - Any tickets that are vague or missing acceptance criteria?
   - Any stale tickets (no updates in 7+ days)?
   - Any blockers or risks?

5. **Create assessments for each team member:**

   **For well-scoped work:**
   - Show dependency chain
   - Recommend review/completion order
   - Note any risks

   **For problematic tickets:**
   - ⚠️ Flag vague descriptions
   - ⚠️ Flag missing acceptance criteria
   - ⚠️ Flag stale items
   - Recommend: refine, close, or escalate

6. **Generate standup discussion points:**
   - Questions to ask each team member
   - Decisions that need to be made
   - Action items for team lead

## Include in Output

- Ticket details table with descriptions
- Dependency diagrams (if applicable)
- Assessment notes (✅ well-scoped, ⚠️ needs attention, ❓ needs triage)
- Standup discussion points
- Action items

## Context

Check `docs/team-roster.md` for team member context:
- Some engineers prefer very specific tickets
- Others handle ambiguity well
- Flag any vague tickets for engineers who need clear scope

## Sizing Reference

| Size | Target Time |
|------|-------------|
| XS | < 1 day |
| S | 1 day |
| M | 2 days |
| L | 4 days |
| XL | 8 days (consider breaking down) |

## Example Assessment Format

```markdown
### TICKET-XXX — Title *(Status)*

| Field | Value |
|-------|-------|
| **Description** | One-line summary |
| **Size** | M (2 days) |
| **Status** | In Progress / Stale / etc |
| **Assessment** | ✅ Well-scoped OR ⚠️ Issue description |
```
