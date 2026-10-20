# Architecture — Ascendant

## Repository boundaries
| Repo | Source of truth | Must contain |
|---|---|---|
| `xulongjun/Ascendant-Product` | PO | Charter, Features, PBIs, roadmap, decisions, security policy, acceptance |
| `xulongjun/Ascendant` | Engineering | `infra/terraform/`, `.github/workflows/`, web app source, runbooks |

Repositories exist already; both are currently public with `main` as default branch.

## Target delivery
```text
PR in Ascendant -> GitHub Actions CI (format, build, security)
    -> reviewed main merge -> GitHub Actions production deploy
    -> Azure Static Web Apps Free -> public HTTPS -> smoke test

Separate infrastructure pipeline:
GitHub Actions -> Azure Entra ID OIDC -> Terraform
    -> remote Azure Blob state -> Azure RG + Static Web App
```

No separate staging, preview or test environments. Build/unit/security checks may execute in GitHub Actions; the final smoke test is on the real production URL.

## Infra and secret separation
- Terraform config and workflow YAML belong only in `Ascendant`; remote state belongs in an access-controlled Azure Storage Account, never in Git.
- State-storage and workload identity bootstrap should be scripted/idempotent. Backend must use authenticated Azure identity, state locking and least privilege; never output secrets or state content.
- Azure OIDC for Terraform authenticates to ARM. Static Web Apps content upload authorization is a **different channel**; document and scope its deploy token or another Microsoft-supported mechanism in a GitHub Secret.
- Non-secret values (region, static app name, subscription ID, tenant ID, client ID) may be stored in GitHub repository/environment **Variables**. Sensitive values and credentials must go into **Secrets**. User may choose to treat identifiers as secrets too.
- Use scoped GitHub permissions, protected `main`, PR CI, pinned provider/action versions and production-environment controls where supported. Verify federated OIDC claims emitted by the current repository/branch/environment before configuring Azure trust.
- GitHub public repository: never commit `.env`, private professional/personal details, keys, `terraform.tfstate*`, `.terraform/`, tfvars with identifiers/secrets or credential exports.

## Initial resource scope — pending PO approval
- One resource group, one Azure Static Web App Free (when available for chosen subscription/region), bootstrap storage for Terraform state, minimum RBAC and federated identity.
- Preferred deployment geography: West Europe, subject to provider-supported SWA location and region capacity verification.
- Draft naming: `rg-ascendant-prd`, `swa-ascendant-prd-<suffix>`; state storage names must be globally unique.
- No API, SQL, VM, App Service Plan, custom domain, paid monitoring, Key Vault or extra environments in initial scope.
- Deployment and resource creation are blocked until PO provides authorized Azure scope and approves costs.

## Exit criteria of M1
1. Terraform validate/plan checks pass, reviewed apply succeeds and resources are visible in approved subscription.
2. GitHub PR CI succeeds; merge to protected `main` triggers production deployment.
3. Static Web Apps HTTPS endpoint responds with the intended minimal non-RPG placeholder.
4. A small content change redeploys; rollback procedure documented and verified.
5. Logs and repository contain no credential or sensitive data.

## References
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/static_web_app
- https://learn.microsoft.com/azure/static-web-apps/build-configuration
- https://learn.microsoft.com/azure/static-web-apps/deployment-token-management
- https://docs.github.com/actions/how-tos/secure-your-work/security-harden-deployments/oidc-in-azure
