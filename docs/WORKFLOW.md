# Ascendant delivery workflow — direct main

## Rules
- Product repository `xulongjun/Ascendant-Product` holds product scope, Features, PBI acceptance and decisions.
- Engineering repository `xulongjun/Ascendant` holds all source, Terraform, pipelines and runbooks.
- Human PO approves scope, Azure permissions/spend, production deployment and acceptance.
- **Direct commits to `main`; do not create branches or PRs by default.** The earlier PR #1 in each repository was merged as a one-time transition.
- Work in small, PBI-scoped commits, preferably `docs(PBI-002): ...`, `feat(PBI-003): ...`. No force pushes or destructive history edits.
- Read current main before changes; verify existing content and preserve unrelated work.
- For each PBI: acceptance criteria → implementation → required tests/security checks → commit on main → record links/evidence → PO acceptance. Never mark Done before proof.
- CI still runs on pushes to `main`; infrastructure deployments remain separately gated by explicit PO authorization and deployment controls.
- Both repositories are public. Never commit secret values, Terraform state, personal addresses, private CV details or confidential files.
- Secrets go in GitHub Actions Secrets, nonsensitive config in Variables (or Secrets if requested). Public website content is public even when built using a secret.
- No Azure provision, RBAC changes, setting of deployment tokens, spending or Terraform apply/destroy without specific PO approval.
- No frontend/RPG visuals until M1 infrastructure, CI/CD and production HTTPS smoke test complete.

## Definition of Done
Scope/AC verified; automated checks where applicable; privacy checks; evidence recorded; PO accepts the result. Production PBIs also require real deploy proof and documented rollback.


> Git policy: direct commits to `main` by PO instruction (2026-10-20); no mandatory PR.
