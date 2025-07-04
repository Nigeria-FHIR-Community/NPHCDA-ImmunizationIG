## Security and Access Control for Bundle Operations [work in progress]

To ensure the integrity, privacy, and appropriate use of immunization data, all operations on the `NgImmBundle` resource must comply with Nigeria’s national health data governance principles and security standards.

### Access Control Principles

| **Access Level**         | **User Role**                             | **Allowed Operations**                                               |
|--------------------------|-------------------------------------------|----------------------------------------------------------------------|
| National Admin           | NDHI, NPHCDA Data Steward                 | All operations including `$remove-obsolete-bundles`, `$resolve-conflicts` |
| State Immunization Officer | State Primary Health Care Board (SPHCB)  | `$submit-ngimm-bundle`, `$export-ngimm-bundle`, `$validate-ngimm-bundle` |
| LGA Immunization Officer | LGA Immunization Desk                     | `$submit-ngimm-bundle`, `$get-patient-history`, `$generate-summary` |
| Facility Immunization Staff | PHC/Health Facility EMR User            | `$submit-ngimm-bundle`, `$validate-ngimm-bundle`, `$get-next-dose-schedule` |
| Mobile Outreach Team     | Verified Field Devices (Online/Offline)  | `$submit-ngimm-bundle`, `$generate-summary`, `$sync-ngimm-bundle`   |
| System Integration API   | Trusted System Clients                    | `$validate-ngimm-bundle`, `$submit-ngimm-bundle`, `$export-ngimm-bundle` |

### Authentication & Authorization

- **Authentication:** All clients MUST be authenticated using OAuth2.0 with client credentials or SMART-on-FHIR tokens.
- **Authorization:** Role-based access control (RBAC) MUST be enforced by the FHIR server based on user claims or scopes:
  - `bundle.submit`
  - `bundle.read`
  - `bundle.write`
  - `bundle.sync`
  - `bundle.admin`

### Data Privacy & Filtering

- Bundles are scoped to **organization units** (facility, LGA, state) using associated `Organization.identifier`.
- Systems MUST not return bundles beyond the requestor’s scope (e.g., a facility user must not see state-wide data).
- Sensitive elements such as `deceasedDateTime`, `HIV status`, or sibling records must follow data minimization principles when returned to mobile apps or public dashboards.

### Operation-Specific Safeguards

- `$submit-ngimm-bundle`: MUST validate using `$validate-ngimm-bundle` before committing to the server.
- `$remove-obsolete-bundles`: REQUIRES elevated privileges (admin role) to execute.
- `$resolve-conflicts`: SHOULD trigger a manual review workflow or return a conflict report before automated resolution.
- `$export-ngimm-bundle`: SHOULD support export logging, throttling, and encryption of large payloads.

---

_These access rules aim to balance data utility with privacy and compliance, in line with the Nigeria Data Protection Act (NDPA) and WHO SMART Guidelines._

