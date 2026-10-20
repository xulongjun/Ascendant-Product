# Security and privacy policy

## Rules for public GitHub repos
1. **No secrets in any tracked file**: access tokens, passwords, private keys, client secrets, SWA deployment token, Azure service credentials, connection strings, personal email/phone/address, identity document scans, brokerage/workplace/confidential data or private CV records.
2. **GitHub Actions Secrets** for sensitive build/deployment material. GitHub **Variables** for nonsensitive configuration and identifiers; use Secrets for identifiers too if PO wants them hidden from public configuration.
3. **Azure OIDC** is preferred for Terraform/ARM authentication. GitHub Actions must use least-privilege `id-token: write`; the Entra application/federated credential is bound to the approved repo and subject.
4. **Static Web Apps deploy token** (if used) must be stored as a repository/environment secret in **Ascendant**, never exposed in Action logs, PR workflow, site JavaScript, HTML, or Terraform output. Review rotation/revocation procedure.
5. **Terraform state** is sensitive even if variables are not: backend in private Azure Blob with RBAC, encryption, access control, locking; never committed; redact logs/plans before publishing.
6. Treat public profile data differently from secrets: career and public contact links may intentionally appear in a published CV **only after PO review**. GitHub Secrets are not a method to make browser-rendered data private; anything displayed in a public website is public.
7. Use least privilege for repos, approved PRs and dependencies. No cloud provisioning or spend without explicit PO authorization.
8. Add `.gitignore` rules for state, `.terraform/`, `.env*`, tfvars, credential exports, generated artifacts as appropriate in the code repository.
9. If a secret is leaked: revoke/rotate it first, then remove exposure (including history where justified) and inspect audit logs. Deleting the latest commit alone does not revoke it.

## Responsibility
- `Ascendant-Product`: policy and backlog; no operational secrets.
- `Ascendant`: secret names referenced by workflow, not their secret values.
- Only PO provides cloud account access through trusted GitHub/Azure administrative interfaces.
