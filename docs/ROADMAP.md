# Roadmap — Ascendant

## M0: Product foundation — active
- Publish reviewed documentation directly in `xulongjun/Ascendant-Product`.
- Align Product and Code repo responsibilities and security rules.
- No Azure or app code as part of this deliverable.

## M1: Infrastructure-first production delivery — planned
Order: **PBI-001 → PBI-002 → PBI-004 → PBI-003 → PBI-005 → PBI-006 → PBI-007**.
- First secure the existing GitHub repositories.
- Configure Terraform backend and Azure OIDC with approved subscription and least privilege.
- Provision only approved Azure Static Web Apps production resources.
- Build/test/validate in GitHub Actions and deploy real production placeholder.
- Verify HTTPS URL, incremental redeploy and rollback.

## M2: RPG CV requirements and experience — deferred
- PBI-008 character/stat/career data and privacy review
- PBI-009 navigation, interactivity and accessibility

## M3: Original visual language — deferred
- PBI-010 visual/art direction, personal portrait approach (only after M1)

## Backlog table
| Feature | PBI | Title | Priority |
|---|---|---|---|
| F01 | PBI-001 | Existing GitHub baseline / dual repo | P0 |
| F01 | PBI-002 | Governance and backlog | P0 |
| F02 | PBI-003 | Terraform production Static Web Apps | P0 |
| F02 | PBI-004 | Remote state bootstrap + Azure OIDC | P0 |
| F03 | PBI-005 | GitHub Actions CI | P0 |
| F03 | PBI-006 | GitHub Actions production CD | P0 |
| F04 | PBI-007 | Real deployment & smoke checks | P0 |
| F05 | PBI-008 | Character/skill/career content model | P1 |
| F05 | PBI-009 | RPG UX requirements | P1 |
| F06 | PBI-010 | Original art direction | P2 |

## Blocking dependencies
Azure subscription and approval for RBAC/provisioning/spend are required before PBI-004 execution. No visual design before initial infra pipeline and HTTPS validation.
