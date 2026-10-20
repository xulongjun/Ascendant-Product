# Cursor handoff — Ascendant M0/M1

## Local layout (if cloning locally; no ZIP needed)
```text
D:\source\Cleancode_Consulting\Useless-Product\
  Ascendant-Product\  (clone github.com/xulongjun/Ascendant-Product)
  Ascendant\          (clone github.com/xulongjun/Ascendant)
```

The GitHub repositories ALREADY EXIST. Do not call `gh repo create`, do not nest repositories and do not use old publish scripts.

## Read before starting
From `Ascendant-Product`: `AGENTS.md`, `docs/PRODUCT.md`, `docs/ARCHITECTURE.md`, `docs/ROADMAP.md`, `docs/WORKFLOW.md`, `docs/SECURITY.md`, `docs/AZURE_PREREQUISITES.md`, the selected Feature and PBI.

## Next implementation plan (DO NOT auto-execute)
- PBI-001: inspect code repository; prepare minimal repo baseline and `.gitignore`; PR review.
- PBI-002: ensure backlog and security governance complete.
- PBI-004: propose secure Azure backend bootstrap and Azure OIDC identity setup after PO supplies Azure permission/scope.
- PBI-003: Terraform Azure SWA Free in a single production environment.
- PBI-005/006/007: CI, deploy, public smoke-test and rollback.

**Current scope:** documentation changes only. No Terraform apply, Azure RBAC, GitHub Secrets mutations or site implementation until separately approved. No RPG UI, images or frontend framework yet.
