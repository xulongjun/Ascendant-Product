# Ascendant-Product

> Status: Planning approved; implementation not started. Date: 2026-10-20.

An original RPG-inspired interactive professional CV for a **Senior .NET / Azure Developer and DevOps Engineer**. **Not** an architect title, and not a clone of any existing game.

## Current instruction
**Phase 1 = documentation and project governance only.** Do not create infrastructure, GitHub repo, pipelines, application code, UI or assets in this phase.

- Product spec: `docs/PRODUCT.md`
- Architecture: `docs/ARCHITECTURE.md`
- Scope and roadmap: `docs/ROADMAP.md`
- Features: `docs/features/`
- PBIs: `docs/pbi/`
- Decisions: `docs/DECISIONS.md`
- Workflow: `docs/WORKFLOW.md`
- Cursor handoff: `CURSOR_PHASE1_INSTRUCTIONS.md`

## Target location
`D:\source\Cleancode_Consulting\Useless-Product\Ascendant-Product`

## Deployment target (planned, not provisioned)
Azure Static Web Apps Free, production only, GitHub Actions, Terraform (remote state), GitHub OIDC for Azure infrastructure workflows.

## GitHub publication
Target repository: `xulongjun/Ascendant-Product` (private initially). On your Windows computer, from this folder, run `./PUBLISH_GITHUB.ps1` in PowerShell (requires `git` and GitHub CLI `gh`, authenticated). Inspect the script before running.
