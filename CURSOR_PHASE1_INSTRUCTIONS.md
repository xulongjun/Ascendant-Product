# Paste into Cursor — Phase 1 / Documentation only

**Workspace target (Windows):** `D:\source\Cleancode_Consulting\Useless-Product\Ascendant-Product`

You are the delivery engineer assisting the Product Owner. This is a separate original RPG CV portfolio project, using the same Feature -> PBI -> Task governance as ConvictionOS. **You are not authorized to implement the backlog yet.**

## Required procedure
1. Inspect the existing `Useless-Product` folder and report conflicts; do NOT overwrite existing work.
2. Create the `Ascendant-Product` subdirectory if absent. Copy the supplied Markdown package into it exactly, preserving filenames and hierarchy. If already present, compare diffs before updates.
3. Read `AGENTS.md`, `docs/PRODUCT.md`, `docs/ARCHITECTURE.md`, `docs/ROADMAP.md`, `docs/DECISIONS.md`, `docs/WORKFLOW.md`, all `docs/features/*.md`, all `docs/pbi/*.md`.
4. Verify: six Features (F01-F06), ten PBIs (001-010), P0 exactly 001-007; M0 documentation-only; M1 infra-first; no dev/staging/preview environment; Terraform + GitHub + SWA chosen.
5. Check relative file references, numbering, title consistency, acceptance criteria, dependencies, source encoding UTF-8, and repository security exclusions as documentary requirements.
6. Return a concise report: files created/changed, inconsistencies found, proposed corrections, M0 acceptance status, and the recommended *next* implementation PBI (001).
7. Do not advance to PBI-001 implementation without explicit PO instruction.

## Strict prohibitions for this phase
- No `git init`, GitHub repository creation, `gh repo create`, commits, pushes or PRs.
- No Terraform `.tf` files, `terraform apply`, `az` login/deployment commands, Azure resources, state storage, service principals or federated credentials.
- No GitHub Actions YAML, app/framework scaffolding, `src` code, UI, images, portrait or CSS.
- No guessing Azure subscription/tenant, GitHub owner, pricing entitlement or app names as finalized.
- No tests against a live production website before one exists.

## Definition of Done for Phase 1
All supplied Markdown files are in the target folder, content cross-checked, project rules readable by Cursor, and M0 ready for PO review. Reporting completed documentation does NOT imply infrastructure or site is running.

## Next phase (separate approval)
Implement PBI-001/002 first, then identity + backend bootstrap (PBI-004), then SWA infrastructure (PBI-003), then CI/CD and live smoke verification (005-007). Do not start these from this instruction.


## Publication instruction (separately approved by PO 2026-10-20)
The PO has authorized publishing the **documentation-only** repository to `xulongjun/Ascendant-Product`. This overrides the earlier no-git prohibition **solely** for documentation Git initialization, private repository creation and first push. Do not create infrastructure, workflows, application code or UI. Use `PUBLISH_GITHUB.ps1` after reviewing its checks, or perform equivalent safe commands manually. Repository must be private by default.
