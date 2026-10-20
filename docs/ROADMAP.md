# Roadmap and Backlog

## Milestone M0 — Product Management (NOW, documentation only)
Deliver project charter, architecture, decisions, feature/PBI backlog, governance and Cursor instructions. **No code, no infrastructure deployment**.

## Milestone M1 — Production Delivery Foundation (execute only after M0 approval)
PBI-001 through PBI-007, in dependency order. End state: live production placeholder deployed automatically from protected main. This placeholder is **not a prototype environment**.

## Milestone M2 — Game CV Content / Experience
PBI-008 and PBI-009, planned only. Establish real professional story, data model, navigation, interaction.

## Milestone M3 — Original Visual Identity
PBI-010, planned only. Concept art direction, portrait treatment, polished visual assets.

## Dependency order
001 -> 002 -> 004 (bootstrap/identity) -> 003 (Terraform app) -> 005 -> 006 -> 007 -> 008 -> 009 -> 010.
PBI-004 must be complete before any authenticated Terraform apply. M1 infrastructure changes require user approval.

## Feature / PBI index
| Feature | PBI | Priority | Milestone |
|---|---|---|---|
| F01 Project Foundation | 001 Git repository and project baseline | P0 | M1 |
| F01 Project Foundation | 002 Governance and backlog operations | P0 | M1 |
| F02 Azure Infrastructure | 003 Terraform app infrastructure | P0 | M1 |
| F02 Azure Infrastructure | 004 Remote state, bootstrap and identity | P0 | M1 |
| F03 CI/CD | 005 Pull-request CI | P0 | M1 |
| F03 CI/CD | 006 Production CD | P0 | M1 |
| F04 Production Readiness | 007 First live deployment and smoke test | P0 | M1 |
| F05 RPG CV Content | 008 Character/skill/career content model | P1 | M2 |
| F05 RPG CV UX | 009 RPG navigation and interaction requirements | P1 | M2 |
| F06 Art Direction | 010 Original visual direction | P2 | M3 |

## Current status
M0 documents drafted. Every implementation PBI remains `Ready / Not Started` pending approval; no claims of infra or CI completion.
