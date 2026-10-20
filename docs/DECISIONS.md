# Architecture / Product Decision Log

| ID | Date | Status | Decision | Rationale |
|---|---|---|---|---|
| ADR-001 | 2026-10-20 | Accepted | Host on Azure Static Web Apps | Best fit for public static site; initially Free tier |
| ADR-002 | 2026-10-20 | Accepted | GitHub + GitHub Actions | Single SCM and automation platform |
| ADR-003 | 2026-10-20 | Accepted | Terraform for infrastructure | Repeatable provisioning, reviewable change |
| ADR-004 | 2026-10-20 | Accepted | Production only; no staging/preview environment | Keep small project simple; preserve predeployment CI and postdeploy smoke tests |
| ADR-005 | 2026-10-20 | Accepted | Infrastructure-first, visuals later | Decouple infrastructure from RPG design |
| ADR-006 | 2026-10-20 | Accepted | Same Feature/PBI discipline as ConvictionOS | Traceability without excessive ceremonies |
| ADR-007 | 2026-10-20 | Proposed | GitHub repo separate from Useless-Product parent | Independent deploy and future experiments |
| ADR-008 | 2026-10-20 | Proposed | GitHub OIDC for Terraform and distinct SWA deploy credential | Minimize long-lived Azure infrastructure credentials |
| ADR-009 | 2026-10-20 | Deferred | Frontend framework | Not needed until UI requirement/design phase |

Record new material decisions here before implementation; do not silently override Accepted decisions.
