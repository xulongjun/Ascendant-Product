# Decision log

| ID | Date | Status | Decision |
|---|---|---|---|
| ADR-001 | 2026-10-20 | Accepted | Azure Static Web Apps Free as initial production host, subject to eligibility/capacity |
| ADR-002 | 2026-10-20 | Accepted | GitHub/GitHub Actions for version control, build and deployment |
| ADR-003 | 2026-10-20 | Accepted | Terraform with secured Azure Blob remote state |
| ADR-004 | 2026-10-20 | Accepted | Only one production Azure environment; no staging/preview |
| ADR-005 | 2026-10-20 | Accepted | Infrastructure and deployment first; game visuals later |
| ADR-006 | 2026-10-20 | Accepted | Feature/PBI/PR/acceptance discipline aligned with ConvictionOS |
| ADR-007 | 2026-10-20 | **Accepted** | Separate existing repositories: `Ascendant-Product` for PO and `Ascendant` for implementation |
| ADR-008 | 2026-10-20 | **Accepted** | GitHub OIDC for Azure infra; separate secured SWA deployment authorization |
| ADR-009 | 2026-10-20 | Deferred | Frontend framework until relevant PBI is approved |
| ADR-010 | 2026-10-20 | **Accepted** | Both repositories currently public. Secrets/state/private personal data must never be committed |
| ADR-011 | 2026-10-20 | **Accepted** | Sensitive values go to GitHub Secrets; nonsecret configuration to GitHub Variables, or Secrets if PO prefers |
| ADR-012 | 2026-10-20 | **Accepted** | Direct GitHub connector work and PRs, no ZIP transfer workflow |

All Azure provisioning, identity/RBAC assignments, costs and production deploys still require separate PO authorization. Do not record sensitive subscription or tenant identifiers in this public log.
