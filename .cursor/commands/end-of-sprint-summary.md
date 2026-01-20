# End of Sprint Summary

Generate a comprehensive sprint summary document suitable for stakeholder communication.

## When to Run

- After retro on the last day of the sprint
- Before sprint planning for the next cycle

## Output

Save to: `meetings/cycle-XX/TEAM-cycle-XX-summary.md`

This is the "executive summary" of the sprint — shareable with managers, stakeholders, or the team.

## Instructions

### 1. Gather Sprint Data

```bash
npm run issues:inprogress   # What's still in flight (carried over)
npm run ready-to-deploy     # What shipped this sprint
```

### 2. Review Sprint Artifacts

Read from the current cycle folder:
- Retro notes (`YYYY-MM-DD-retro.md`)
- Sprint planning notes (if exists)
- Any sprint health or status docs

### 3. Check Linear for Completed Work

Look for items that moved to Done/Completed during the sprint.

### 4. Generate Summary

```markdown
# Cycle [XX] Summary

**Sprint Dates:** [Start Date] — [End Date]  
**Team:** [Team Name]  
**Lead:** [Name]

---

## 🎯 Sprint Goal

[What we set out to accomplish]

---

## ✅ Completed

### Highlights
- [Major accomplishment 1]
- [Major accomplishment 2]
- [Major accomplishment 3]

### Tickets Shipped
| ID | Title | Owner | Notes |
|----|-------|-------|-------|
| TICKET-XXX | ... | ... | ... |

---

## 🔄 Carried Over

| ID | Title | Owner | Reason |
|----|-------|-------|--------|
| TICKET-XXX | ... | ... | ... |

---

## 📊 Metrics

| Metric | Value |
|--------|-------|
| Tickets completed | X |
| Tickets carried over | X |
| Completion rate | X% |

---

## 🎉 Wins (from Retro)

- [Key win 1]
- [Key win 2]

---

## 🔧 Challenges

- [Challenge 1]
- [Challenge 2]

---

## 📝 Action Items

| Action | Owner | Status |
|--------|-------|--------|
| [From retro] | ... | ⏳ |

---

## 👀 Next Sprint Preview

- [Key focus for next sprint]
- [Any capacity notes — OOO, holidays]

---

**Generated:** [Date]
```

## Formatting Tips

- Keep highlights to 3-5 bullet points max
- Use ticket IDs for traceability
- Include context for stakeholders who aren't in daily standups
- Note any external dependencies or blockers resolved

## Example Use

After Cycle 18 retro:
1. Run this command
2. Review and edit the generated summary
3. Save as `meetings/cycle-18/TEAM-cycle-18-summary.md`
4. (Optional) Generate PDF for sharing
5. Email to manager or post in Slack

---

## Optional: Generate PDF

After creating and reviewing the markdown summary, generate a PDF for sharing:

```bash
npm run pdf -- meetings/cycle-XX/TEAM-cycle-XX-summary.md
```

Output: `generated/TEAM-cycle-XX-summary.pdf`

---

**Note:** This is meant to be a polished document — edit before sharing!
