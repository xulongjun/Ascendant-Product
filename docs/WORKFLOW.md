# PO → GitHub → Cursor delivery workflow

## Roles and repo boundaries
- **PO:** decides product scope, approves PBI, accepts delivery and cloud costs.
- **Assistant:** edits GitHub product documents, creates scoped PRs, performs repo checks, produces review evidence.
- **Cursor:** implements approved PBIs in `xulongjun/Ascendant`; does not invent scope.
- **Ascendant-Product:** requirements and decision log. **Ascendant:** Terraform, pipelines and application.

## Per-PBI lifecycle
1. Define goal, scope, out-of-scope, dependencies, acceptance criteria and risks in Product repo.
2. PO approves PBI; open related GitHub issue/PR as appropriate.
3. Branch naming: `feature/pbi-003-terraform-swa`, `docs/pbi-002-governance`.
4. Implement only approved tasks on a branch; document checks and evidence in PR.
5. Review automated CI and changes, then merge to protected `main`.
6. Validate production deployment when applicable; PO accepts; record outcome and evidence.
7. Update PBI/roadmap state; avoid claims of completion without evidence.

## Definition of Ready
AC defined, constraints and dependencies known, security/cost decisions resolved or explicitly blocked.

## Definition of Done
AC verified with links/logs, no secrets, checks green, docs updated, PR reviewed and PO accepted. For deployment PBIs, public production HTTPS check required.

## Current authority
The PO has authorized direct GitHub **documentation** updates. This does not itself authorize Azure provisioning, subscriptions/RBAC changes, Terraform apply/destroy, setting secrets or automatic merging. GitHub repositories already exist; do not create them again.

## Safe handling of user-specific profile data
No sensitive personal information in Product repo. The final portfolio needs deliberate PO review of which professional profile details are public; runtime browser code never receives a GitHub Secret simply because that value is stored in Actions.
