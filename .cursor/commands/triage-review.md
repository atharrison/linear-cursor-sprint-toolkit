# Triage Queue Review

Review the triage queue and help prioritize or assign incoming issues.

## Output

Save detailed reviews to: `meetings/cycle-XX/YYYY-MM-DD-triage-review.md`

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

## Instructions

1. **Get the triage queue:**
   ```bash
   npm run triage
   ```

2. **For each triaged item, fetch full details:**
   ```bash
   npm run issue -- TICKET-XXX
   ```

3. **Assess each issue using the priority framework:**

   Reference: `docs/references/ticket-prioritization.md`

   | Priority | Impact | Users | Action |
   |----------|--------|-------|--------|
   | **Urgent** | Product unusable | >50% | Stop everything, swarm |
   | **High** | Core feature broken | 5-50% | Pull into current/next cycle |
   | **Medium** | Minor disruption | <5% | Backlog for future sprint |
   | **Low** | Polish/cosmetic | Negligible | Polish phase |

   **Key questions:**
   - Is it a valid bug or feature request?
   - What's the user impact? (use priority definitions above)
   - Is it a duplicate of existing work?
   - Is it stale and should be closed?

4. **Categorize issues:**

   | Category | Action |
   |----------|--------|
   | 🔴 Urgent/High | Assign immediately, pull into sprint |
   | 🟡 Medium | Move to backlog (refined), assign owner |
   | 🟢 Low | Move to backlog (unrefined) |
   | ⚪ Duplicate | Mark as duplicate, link to original |
   | ❌ Won't fix / Invalid | Cancel with explanation |

   **When in doubt:** Escalate to Product for prioritization guidance.

5. **For stale triage items (30+ days):**
   - Is it still relevant?
   - Has it been fixed by other work?
   - Should it be closed or escalated?

## Context

- **Triage queue** = Incoming issues that need assessment before sprint planning
- Items should NOT stay in triage long — they need to be moved to backlog or closed
- Production bugs should be prioritized immediately
- Stale triage items are a smell — something fell through the cracks

## Team Assignment Guidelines

Check `docs/team-roster.md` for team member focus areas to assign appropriately.

## Summary Format

Provide:
1. Total items in triage
2. Breakdown by category (bugs, features, stale)
3. Recommended actions for each
4. Any items needing immediate attention (production bugs)
