# Azure production prerequisites — PBI-004 kickoff

**State: pending PO authorization. Do not provision until approved.**

## Before Terraform
1. Confirm the intended Azure **Subscription** and **Tenant** privately; do not paste identifiers or credential values into public GitHub files.
2. Confirm PO has adequate role to create resource groups, storage, Azure Static Web Apps and Entra workload federation/RBAC assignments (Owner, RBAC Administrator, or scoped equivalent as necessary).
3. Decide a small monthly **Azure budget alert** and verify whether SWA Free is available in chosen region/subscription; Azure Blob Storage for Terraform state may cost money.
4. Agree names for production resource group, Static Web App, bootstrap resource group/container and region (West Europe preferred, contingent on availability).
5. Set up GitHub Actions secrets/variables for **Ascendant**, not the Product repo. Proposed names:
   - Variables: `AZURE_CLIENT_ID`, `AZURE_TENANT_ID`, `AZURE_SUBSCRIPTION_ID`, `AZURE_LOCATION`, `TF_STATE_RESOURCE_GROUP`, `TF_STATE_STORAGE_ACCOUNT`, `TF_STATE_CONTAINER`.
   - Secret: `AZURE_STATIC_WEB_APPS_API_TOKEN` **only if token-based deployment is selected**.
   - No `AZURE_CLIENT_SECRET` for OIDC; no plain Azure account passwords in Actions.
6. Define protected `main` and production deployment review/permissions if supported by the GitHub plan.
7. Verify GitHub OIDC token subject/audience claims for the actual repository/environment and match Azure federated trust exactly.

## Responsibility for bootstrap
Terraform remote state storage cannot use the not-yet-created backend. Use a documented one-time, idempotent bootstrap via Azure CLI / script (or separate bootstrap stack), explicitly approved before execution. Verify storage RBAC and state lock behavior.

## Acceptance evidence for PBI-004
- Azure login from the intended GitHub workflow using OIDC and **no client secret**
- Remote backend `terraform init` works in CI; state remains private
- RBAC scope is least privilege and secrets not disclosed
- Cost and rollback steps documented

## Important constraint
The GitHub connector used for product documentation may not support creating repository secrets, Azure accounts or permission changes. Those actions require suitable authorized tooling or direct PO action in GitHub/Azure settings; never request the literal secret value in chat.
