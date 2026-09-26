# Rego Compliance Policies

| Control | Policy File | Severity | Remediation |
|---|---|---|---|
| **SC-28** | `policies/sc28_encryption.rego` | High | Add `encryption { default_kms_key_name = ... }` block. |
| **AC-3** | `policies/ac3_no_public.rego` | Critical | Set `uniform_bucket_level_access = true`, `public_access_prevention = "enforced"`, and restrict SSH/RDP ingress. |
| **CM-6** | `policies/cm6_required_tags.rego` | Medium | Include labels: `project`, `environment`, `managed_by`, `compliance_scope`. |
