# Project Kickoff

Start a new project with proper documentation, scope breakdown, and design sign-off.

## When to Use

- New feature or initiative is starting
- PRD and/or designs are available
- Ready to break down work for the team

## Output

Create a kickoff document at: `meetings/cycle-XX/YYYY-MM-DD-project-kickoff-[project-name].md`

**Note:** Use the current cycle number (e.g., `cycle-19` for Cycle 19).

Also recommend creating a **Linear Project** with this document as a project resource.

## Prerequisites

Before kickoff, ideally have:
- [ ] PRD (Product Requirements Document) from Product
- [ ] Designs from Design team
- [ ] Product and Design have consulted the engineering team for initial feedback

## Instructions

### 1. Gather Inputs

Ask user for:
- Project name
- Link to PRD
- Link to designs
- Key stakeholders
- Target timeline (if known)

### 2. Create Kickoff Document

Include these sections:

```markdown
# [Project Name] Kickoff

**Date:** YYYY-MM-DD
**Attendees:** [list]
**PRD:** [link]
**Designs:** [link]

## Project Overview
One-paragraph summary of what we're building and why.

## Scope by Team/Platform

### [Platform/Backend Team]
- [ ] List backend work needed
- [ ] APIs, database changes

### [Frontend/Web Team]
- [ ] List frontend work needed
- [ ] UI components, integrations

### [Other Teams if applicable]
- [ ] Additional work

## Design Sign-Off

| Area | Designer | Status | Notes |
|------|----------|--------|-------|
| Web UI | [Name] | ⏳ Pending / ✅ Approved | |
| Mobile UI | [Name] | ⏳ Pending / ✅ Approved | |

**Rule:** If designs are not fully fleshed out, developer implements to achieve functional. File a follow-up ticket for "delightful" polish.

## Dependencies & Cross-Cutting Concerns
- List any dependencies on other teams or projects
- Note any shared components or APIs

## Milestones

| Milestone | Target Date | Owner |
|-----------|-------------|-------|
| Phase 1: [description] | | |
| Phase 2: [description] | | |

## Open Questions
- [ ] Question 1
- [ ] Question 2

## Next Steps
1. Create Linear project
2. Schedule engineering design session
3. Break down tickets per platform
```

### 3. Linear Project Setup

Recommend:
- Create a Linear Project for this initiative
- Add the kickoff doc as a Project Resource
- Set up milestones in Linear

### 4. Schedule Follow-Up

- Engineering Design session (see `/engineering-design`)
- Team breakdowns by platform
- Contract agreement between teams

## Context

- **Design sign-off is important** — don't start building on unclear designs
- **Break down by platform/team** — each team needs separate scopes
- **Milestones help** — break large projects into phases
- **Empower engineers** — it's OK to tell product to wait for more clarity

## Related Commands

- `/engineering-design` — Run after kickoff to define contracts and technical approach
- `/backlog-grooming` — To refine and size the tickets created from kickoff
