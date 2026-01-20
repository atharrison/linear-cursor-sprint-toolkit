# Ticket/Bug Prioritization

This document outlines priority definitions and empowers you to make informed decisions about how to triage and prioritize work. The goal is a shared understanding of impact, ensuring we consistently focus on what matters most to users and the business.

---

## Priority Definitions

These levels are defined by impact, guiding how quickly an item needs to be addressed:

### 1. Urgent: Critical / Cycle Breaker

| Attribute | Description |
|-----------|-------------|
| **Definition** | Actively prevents users from using core product functionality or causes significant data loss/corruption. Requires immediate attention; drops all other work. |
| **Impact** | Severe, direct impact on all or a significant majority of users (>50% of active users on that platform), revenue, or legal/security compliance. The product is effectively unusable for many. |
| **Action** | Stop current work, engineering swarms to resolve, deploy fix ASAP. |
| **Think** | "Is the product effectively down or unusable for many?" |

**Examples:**
- Users cannot log in at all
- The entire website/app is down or inaccessible
- A critical form is not working for an account

---

### 2. High: Major Impact / Next Cycle

| Attribute | Description |
|-----------|-------------|
| **Definition** | Significantly degrades user experience for a notable segment of users, prevents use of a key feature, or causes substantial operational inefficiencies. While highly important, it does not completely halt core user workflows or critical business operations in the way an Urgent issue would. Address in the next immediate cycle. |
| **Impact** | Noticeable negative impact on a segment of users (e.g., 5% - 50% of active users on the platform) or key business metrics. There's often a workaround, or it doesn't block all usage. |
| **Action** | Prioritize above new features; pull into current cycle if possible, or top priority for the next. |
| **Think** | "Is a core feature largely broken or causing significant business cost, but users can still generally use the product, or there's a temporary workaround?" |

**Examples:**
- Users cannot upload a certain file type
- Performance issues cause load times of over 30 seconds for key pages
- UX/UI issue preventing use of product

---

### 3. Medium: Moderate Impact / Standard

| Attribute | Description |
|-----------|-------------|
| **Definition** | Minor disruptions to user experience, affects a small number of users, or represents non-critical internal inefficiencies. Includes most new features or improvements. Address in a future cycle. |
| **Impact** | Minor user frustration or internal friction; not blocking critical workflows. Affects a small percentage of users (e.g., <5% of active users). |
| **Action** | Add to backlog, groom for a future sprint alongside new features. |
| **Think** | "Is this an annoyance or something we want to fix, but it's not urgent?" |

**Examples:**
- A specific filter option doesn't work correctly
- An internal tool is slower than ideal, but not blocking work entirely
- A non-critical UI element is misaligned on a specific browser

---

### 4. Low: Minor Impact / Polish

| Attribute | Description |
|-----------|-------------|
| **Definition** | Very minor bugs, cosmetic issues, small internal tool fixes, or technical debt with minimal immediate impact. Ideal for "polish" or slow cycles. |
| **Impact** | Negligible impact on user experience or internal operations. Often affects negligible users or is purely aesthetic/technical debt. "Nice-to-have" fixes. |
| **Action** | Backlog item; address during dedicated polish phases or when higher priority work is complete. |
| **Think** | "Is this something we'd fix if we had infinite time, or just to make things perfect?" |

**Examples:**
- A typo on a help page
- An icon is slightly misaligned by a few pixels on a rarely visited screen
- Refactoring a small piece of code that has no current performance or functionality issues
- Adding a very minor visual enhancement that doesn't impact usability

---

## How to Triage Tickets

### For Tickets Without Explicit Product Priority

1. **Assess Impact First:** Read the ticket. Based on the description and observed symptoms, identify which of the four priority levels best fits the issue's impact.

2. **Default to "Medium" (or "Low") if Clear:** If the issue clearly falls into Low or Medium impact based on the definitions, you are empowered to set that priority and add it to the appropriate backlog.

3. **When in Doubt, Ask (Especially for Urgent/High):** If you believe a ticket might be Urgent or High impact, or if you're truly unsure, please flag it to Product immediately.
   - Escalate through your team's designated channel
   - Provide any context you have regarding the potential impact

### For Tickets with Explicit Product Priority

1. **Trust the Priority:** Work on these tickets according to the priority set by Product.

2. **Empowered to Challenge (Respectfully):** If you uncover new information about an issue's actual impact while working on it (e.g., a "Medium" ticket is critical, or a "High" is trivial), please raise this to the Product Manager. Your insights are invaluable for accurate prioritization.

---

## Quick Reference

| Priority | Impact | Users Affected | Action |
|----------|--------|----------------|--------|
| **Urgent** | Product unusable | >50% | Stop everything, swarm, deploy ASAP |
| **High** | Core feature broken | 5-50% | Pull into current or next cycle |
| **Medium** | Minor disruption | <5% | Backlog for future sprint |
| **Low** | Polish/cosmetic | Negligible | Polish phase or slow cycles |

---

*By working together with these guidelines, we can ensure our efforts are consistently focused on delivering the most value and addressing the most critical issues for our users.*
