# Engineering Design

Post-kickoff technical design phase: define contracts, dependencies, and break down work.

## When to Use

- After a project kickoff (`/project-kickoff`)
- Before creating sprint tickets for a new feature
- When teams need to agree on APIs/contracts

## Output

Save design notes to: `meetings/cycle-XX/YYYY-MM-DD-engineering-design-[project-name].md`

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

Also create a platform-specific doc as a Linear Project Resource if needed.

## Purpose

Ensure full understanding of scope before breaking down tickets:
- What needs to be refactored?
- What are the dependencies?
- What are the cross-cutting concerns?
- What contracts need to be agreed upon?

## Instructions

### 1. Review the Kickoff

Read the project kickoff document:
- What's the overall scope?
- What platforms are involved?
- What are the milestones?

### 2. Platform-Specific Breakdown

For each platform/team, identify:

**Backend/Platform Team:**
- Database changes (migrations, new tables)
- API endpoints
- Business logic
- Infrastructure changes

**Frontend/Web Team:**
- UI components
- API integrations
- State management
- Feature flags

### 3. Define Contracts (Critical!)

> "Each platform understands and agrees on each contract... Important for consumer teams to review provider team's design and agree on contracts"

For each API/integration point:

```markdown
## Contract: [Endpoint/Function Name]

**Provider:** [Backend Team]
**Consumer:** [Frontend Team]

### Request
- Method: POST/GET/etc
- Endpoint: `/api/v1/...`
- Payload:
  ```typescript
  interface RequestPayload {
    field1: string;
    field2: number;
  }
  ```

### Response
- Success (200):
  ```typescript
  interface SuccessResponse {
    id: string;
    // ...
  }
  ```
- Error cases:
  - 400: Invalid input
  - 404: Not found
  - etc.

### Status
- [ ] Contract agreed by Provider
- [ ] Contract agreed by Consumer
- [ ] Stubs provided
- [ ] Implementation complete
```

### 4. Identify Dependencies

Map out what depends on what:

```markdown
## Dependency Chain

1. TICKET-XXX (DB migration) — Must be first
2. TICKET-XXX (API endpoint) — Depends on #1
3. TICKET-XXX (Web UI) — Depends on #2
```

### 5. Create Tickets

For each piece of work:
- Clear scope and acceptance criteria
- Sized appropriately (XS/S/M/L/XL with time estimates)
- Dependencies documented
- Assigned to appropriate team

### 6. Engineering Design Document

```markdown
# Engineering Design: [Project Name]

**Date:** YYYY-MM-DD
**Attendees:** [list]
**Related Kickoff:** [link]

## Overview
Technical summary of what we're building.

## Architecture
High-level diagram or description of the system changes.

## Backend/Platform Work

### Database Changes
- [ ] Migration: [description]
- [ ] New table: [description]

### APIs
- [ ] Endpoint: [description]

## Frontend/Web Work

### Components
- [ ] Component: [name] — [purpose]

### Integrations
- [ ] API call: [description]

## Contracts

### [Contract 1 Name]
[Use contract template above]

### [Contract 2 Name]
[Use contract template above]

## Dependencies
[Dependency chain]

## Open Technical Questions
- [ ] Question 1
- [ ] Question 2

## Tickets Created
| Ticket | Title | Team | Size | Owner |
|--------|-------|------|------|-------|
| TICKET-XXX | ... | Backend | M | [Name] |
| TICKET-XXX | ... | Frontend | S | [Name] |

## Next Steps
1. Backend provides stubs
2. Frontend reviews contracts
3. Begin implementation
```

## Best Practices

- **Contract-first:** Provider team provides stubs/interfaces before implementation
- **Agree before building:** Consumer team must review and agree on contracts
- **Book ad-hoc meetings** with dependent teams if needed
- **Break down milestones:** Large projects should have clear phases
- **Empower engineers:** It's OK to push back on unclear requirements

## Related Commands

- `/project-kickoff` — Run before this to establish scope
- `/backlog-grooming` — Run after to size and prioritize tickets
