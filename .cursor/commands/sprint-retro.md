# Sprint Retrospective

Facilitate a sprint retrospective and ensure we capture actionable items.

## When to Run

- Monday or Tuesday following the sprint end
- After the Friday demo

## Output

Save retro notes to: `meetings/cycle-XX/YYYY-MM-DD-retro.md`

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

## Format

We use three swimlanes:
1. **What Went Well** — Celebrate wins
2. **To Improve** — Identify pain points
3. **Action Items** — Concrete next steps

**Rule:** Always end with at least one actionable item assigned to someone.

## Instructions

### 1. Pre-Retro Prep

Gather context:
```bash
npm run issues:inprogress   # What's still in flight
npm run ready-to-deploy     # What's waiting to close
```

Review the sprint:
- What was the sprint goal?
- Did we achieve it?
- What carried over?

### 2. Run the Retro

**Suggested Time:** 30-60 minutes

**Structure:**
1. **Set the stage** (2 min) — Remind everyone of sprint goal
2. **Gather data** (10 min) — Silent brainstorming on stickies/Linear
3. **What Went Well** (10 min) — Share and discuss
4. **To Improve** (10 min) — Share and discuss
5. **Generate Actions** (10 min) — Identify concrete next steps
6. **Close** (3 min) — Summarize actions, assign owners

### 3. Capture Notes

```markdown
# Sprint Retro — [Sprint Name/Number]

**Date:** YYYY-MM-DD
**Attendees:** [list]
**Facilitator:** [Name]

## Sprint Summary
- **Goal:** [what we set out to do]
- **Achieved:** [what we actually did]
- **Carried Over:** [what didn't finish]

## What Went Well 🎉
- Item 1
- Item 2
- Item 3

## To Improve 🔧
- Item 1
- Item 2
- Item 3

## Action Items ✅

| Action | Owner | Due | Status |
|--------|-------|-----|--------|
| [Specific action] | [Name] | [Date] | ⏳ |
| [Specific action] | [Name] | [Date] | ⏳ |

**Reminder:** At least one action item is required!

## Notes
- Any other discussion points
```

### 4. Follow Through

- Create Linear tickets for action items if needed
- Review action items at next retro
- Track patterns across retros

## Alternative Formats

You have autonomy to try other formats:

### 4Ls
- **Loved** — What did we love?
- **Loathed** — What did we hate?
- **Longed For** — What do we wish we had?
- **Learned** — What did we learn?

### Start/Stop/Continue
- **Start** — What should we start doing?
- **Stop** — What should we stop doing?
- **Continue** — What should we keep doing?

## Context

- Keep it safe — no blame, focus on process not people
- Action items should be SMART (Specific, Measurable, Assignable, Relevant, Time-bound)
- Review previous retro's action items at the start
