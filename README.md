# Ascendant — Product

Product requirements and delivery governance for **Ascendant**, an original RPG-inspired career portfolio. The product showcases the owner's real Senior .NET / Azure / DevOps career; it must never misrepresent the role as "Architect".

## Two repositories (source of truth)
- **[Ascendant-Product](https://github.com/xulongjun/Ascendant-Product)** (this repository): Product charter, roadmap, Features F01–F06, PBIs 001–010, ADRs and PO acceptance.
- **[Ascendant](https://github.com/xulongjun/Ascendant)**: Application source, Terraform, GitHub Actions, operational instructions and releases.

Both repositories already exist (public, `main`). **Do not recreate them or assume they are private.** Never nest Git repositories. Windows workspace parent: `D:\source\Cleancode_Consulting\Useless-Product`.

## Delivery sequence
1. M0 — Publish and verify product docs + two-repo governance.
2. M1 — PBI-001/002 foundation → PBI-004 secure Terraform bootstrap/OIDC → PBI-003 Azure Static Web Apps infrastructure → PBI-005/006 CI/CD → PBI-007 public HTTPS smoke test.
3. M2 — RPG CV content/interaction.
4. M3 — Original artwork/visuals.

**Production only.** No Azure staging, test or preview environment. Automated validation, PR review, and post-deploy production smoke testing remain mandatory.

## Read first
- [Product charter](docs/PRODUCT.md)
- [Roadmap](docs/ROADMAP.md)
- [Architecture](docs/ARCHITECTURE.md)
- [Decision log](docs/DECISIONS.md)
- [Workflow](docs/WORKFLOW.md)
- [Security rules](docs/SECURITY.md)
- [Azure prerequisites](docs/AZURE_PREREQUISITES.md)
- [Features](docs/features/) and [PBIs](docs/pbi/)
- [AI agent rules](AGENTS.md)

## Data protection
Source control is PUBLIC: no tokens, passwords, Azure credentials, Terraform state, home address, contact details, personal documents or private work/financial records. GitHub Actions **Secrets** hold sensitive deployment material; GitHub Actions **Variables** hold non-secret configuration such as subscription/tenant IDs (may be secrets too if desired). Prefer GitHub OIDC rather than Azure client secrets. Only intentionally approved public profile information belongs in the final website.

**Status:** Product docs are being corrected on a PR. No Azure resources, CI/CD or application have been provisioned by this documentation change.
