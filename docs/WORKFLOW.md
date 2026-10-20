# Product Owner / AI Development Workflow

## Roles
- Owner acts as PO, accepts scope and PBI outcomes, approves costs and external changes.
- Cursor acts as implementing developer, not autonomous PO.
- GitHub PR + Actions provide change history and verification.

## Change lifecycle
1. PO selects one PBI; examine Feature, dependencies, acceptance criteria and ADRs.
2. Mark PBI `In Progress` and note branch name `feature/pbi-NNN-...`.
3. Cursor creates minimal changes for that PBI only.
4. Local review, checks and diff; document test evidence.
5. Open PR, green CI, human review, merge into protected `main`.
6. Record actual result, links, deviations and state `Done` only after acceptance.
7. Production release only per deployment policy; verify smoke check.

## Every PBI must contain
ID, Feature, goal, value, scope, out of scope, dependencies, acceptance criteria, technical tasks, validation, rollback/recovery (when needed), status and evidence.

## Definition of Ready
Scope/AC defined; prerequisites identified; no unresolved security/cost-critical decisions; dependencies agreed.

## Definition of Done
Acceptance criteria demonstrably met; docs updated; no secrets; automated checks pass; PO accepts; deployment proof required when PBI calls for live deployment.

## Branch and commit conventions
`feature/pbi-003-terraform-swa`, `docs/pbi-002-governance`; conventional commits encouraged.
No commit directly to main once branch protection is configured.

## Phase guard
For the current handoff, **only produce and check documentation**. Do not create GitHub repository, Terraform files or Actions workflows, run `az` commands, provision resources, or build graphics unless a separate implementation PBI is approved.
