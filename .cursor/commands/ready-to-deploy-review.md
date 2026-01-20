# Ready to Deploy Review

Review items stuck in "Ready for Deploy" status and determine if they can be moved to Done.

## Output

Save the review to: `meetings/cycle-XX/YYYY-MM-DD-ready-to-deploy-review.md`

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

## Instructions

1. Run `npm run ready-to-deploy` to list all items in "Ready for Deploy" status

2. For each item, determine:
   - **Has it been deployed to Production?** Check deployment history or ask the assignee
   - **Has it been verified in Prod?** Look for QA notes or testing confirmation
   - **Are metrics/alerting in place?** (Required by DoD for new features)

3. Group items by assignee for efficient follow-up

4. For each item, recommend one of:
   - ✅ **Move to Done**: Deployed, verified, can be closed
   - ⏳ **Needs Verification**: Deployed but needs testing confirmation
   - 🚫 **Not Yet Deployed**: Still waiting for deployment
   - ❓ **Unclear**: Needs investigation or owner input

## Output

Create a summary table:

| Ticket | Title | Assignee | Age | Recommendation | Notes |
|--------|-------|----------|-----|----------------|-------|
| TICKET-XXX | ... | XX | X days | ✅/⏳/🚫/❓ | ... |

## Context

- DoD: "Deployed to Prod and verified, metrics/alerting established for new features"
- Check your team's deployment processes
- Items stuck in "Ready for Deploy" often indicate deployment bottlenecks
