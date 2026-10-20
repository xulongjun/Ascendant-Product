# Cursor handoff — Ascendant

GitHub is the source of truth. Clone or pull directly; **no ZIP and no repository creation**.

```text
D:\source\Cleancode_Consulting\Useless-Product\
  Ascendant-Product\  (Product requirements)
  Ascendant\          (Application/infra)
```

Read `Ascendant-Product/AGENTS.md`, `docs/WORKFLOW.md`, `docs/ARCHITECTURE.md`, `docs/SECURITY.md`, `docs/AZURE_PREREQUISITES.md`, and the approved Feature/PBI.

**Git workflow:** commits directly to `main`; no branches or PRs unless PO explicitly changes this rule. Verify changes and tests before each push; do not overwrite unrelated content.

Next: verify PBI-001/002 foundation, then plan PBI-004 remote Terraform state and Azure OIDC. Do not run Terraform apply, create cloud resources, change RBAC/secrets or incur spending without PO authorization. Do not implement RPG UI or visuals yet.


> Git policy: direct commits to `main` by PO instruction (2026-10-20); no mandatory PR.
