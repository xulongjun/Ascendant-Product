# Technical Architecture — Target

## Topology
GitHub repository -> PR CI (lint/build/check) -> merge main -> GitHub Actions CD -> Azure Static Web Apps **production** -> public HTTPS.

Separate Infrastructure workflow: GitHub Actions -> Azure via OIDC federation -> Terraform with remote Azure Blob state -> resource group + Azure Static Web App (Free).

## Decisions
- Azure Static Web Apps `Free` tier, single production environment; `preview_environments_enabled = false` when supported by pinned provider.
- No API, database, App Service plan, CDN, Key Vault, custom domain, or paid observability initially.
- Terraform under `infra/terraform/`; separate bootstrap process provisions state storage and identity prerequisites. No committing any `.tfstate`, secrets or credentials.
- Terraform provider and GitHub Actions versions are pinned and reviewed at implementation time, not guessed now.
- GitHub Actions handles CI/CD; GitHub CLI may be used for repo administration after explicit authentication and approval.
- Prefer OIDC instead of long-lived service principal secrets for Terraform Azure authorization.
- Scope federated credential to the chosen GitHub repository/approved workflow/environment; GitHub changed default OIDC sub format for repos created after 2026-07-15, so **verify actual claims before creating trust**.
- SWA site deployment authorization is separate from Azure infrastructure OIDC: phase-2 implementation must choose and document a supported deployment method (e.g. SWA deployment token in GitHub Actions secret, with rotation, never in git) and avoid assuming ARM login grants SWA upload rights.
- Backend and frontend framework are deliberately *not selected* in Phase 1; a future ADR will pick it based on the chosen UI.

## Naming draft — confirm before provisioning
- GitHub repo: `ascendant-product` (private initially, can make public after review).
- Azure resource group: `rg-ascendant-product-prd`.
- Azure Static Web App: `swa-ascendant-product-prd-<unique-suffix>`.
- State storage: dedicated bootstrap resource group/storage account/container with globally unique names.
- Preferred region: West Europe if Azure Free tier offers capacity at deployment time; fallback subject to approval.
- Tags: `project=ascendant-product`, `environment=prod`, `managed-by=terraform`.

## Security / blast radius
- Run Terraform plan on PR, apply only on protected main via approved workflow; require explicit approval for destroy.
- Principle of least privilege, protected branch, scoped Actions permissions.
- No production secrets in workflow output, application bundle, tracked files, or Terraform outputs.
- Azure pricing and Free eligibility must be checked before apply; no cost guarantee if additional resources, quotas or network charges are introduced.

## Definition of production smoke test (planned phase 2)
- Successful GitHub Actions run on main.
- Published URL responds over HTTPS; expected title/content present.
- Fresh deployment visibly updates site.
- No leaked credentials or production state in repository.
- Document rollback path and validate redeploy of prior known-good commit.

## Documentation references
- Terraform Azure SWA: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/static_web_app
- Microsoft SWA build: https://learn.microsoft.com/azure/static-web-apps/build-configuration
- Microsoft SWA deployment tokens: https://learn.microsoft.com/azure/static-web-apps/deployment-token-management
- GitHub OIDC Azure: https://docs.github.com/actions/how-tos/secure-your-work/security-harden-deployments/oidc-in-azure
