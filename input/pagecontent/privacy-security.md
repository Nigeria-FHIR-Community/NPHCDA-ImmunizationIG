
# Privacy and Security Guidance for Nigeria Immunization FHIR IG

## 1. Introduction

Immunization data handled under the **Nigeria Immunization FHIR Implementation Guide** contains **sensitive personal data** as defined in the **Nigeria Data Protection Act (NDPA, 2023)**. Such data includes identifiers, demographic details, and health status information of clients, often linked to children and vulnerable populations. This section provides additional guidance on how to implement privacy and security safeguards in line with:

- **NDPA 2023** – Sections 24–32, 39–40 (data processing principles, lawful basis, sensitive personal data, security).
- **NIS ISO 14441:2019** – Security and privacy requirements for EHR systems.
- **NIS ISO 27789:2019** – Audit trails for electronic health records.
- **NIS ISO 21547:2019** – Security requirements for long-term EHR archiving.
- **NIS ISO 25237:2019** – Pseudonymization for privacy protection.
- **NIS ISO/TR 17975:2019** – Principles and data requirements for consent.

This extended guidance applies **from FHIR IG design through to deployed immunization systems**, ensuring that the IG is not just an interoperability framework but a **privacy-by-design reference**.

---

## 2. Core Privacy and Security Principles

All systems claiming conformance to this IG MUST implement:

1. **Lawfulness, fairness, and transparency** in processing immunization data (NDPA Sec. 24).
2. **Data minimization** – only process data necessary for the specified purpose.
3. **Purpose limitation** – data may not be repurposed without lawful basis or consent.
4. **Integrity and confidentiality** – ensure protection against unauthorized access, alteration, or loss.
5. **Accountability** – maintain demonstrable evidence of compliance through logs, audits, and documentation.

---

## 3. Technical Requirements by Standard

### 3.1 NIS ISO 14441:2019 – Security & Privacy for EHR Systems

FHIR server and client implementations for immunization bundles MUST:

- **Implement Access Control Policies**: Fine-grained RBAC aligned with `NgImmBundle` operation scopes.
- **Ensure Authentication Mechanisms**: OAuth2.0, OpenID Connect, or SMART-on-FHIR tokens with expiry and refresh.
- **Protect Data in Transit and at Rest**: TLS 1.2+ for API traffic, AES-256 or equivalent for storage.
- **Include Session Management Controls**: Automatic logout, token revocation, inactivity timeouts.
- **Maintain System Hardening**: Disable unused services, enforce OS security patches.

These map to ISO 14441 Clause 5.3 requirements on **identification, authentication, authorization, confidentiality, integrity, accountability, and non-repudiation**.

### 3.2 NIS ISO 27789:2019 – Audit Trails

All immunization transactions, whether via `$submit-ngimm-bundle` or `$export-ngimm-bundle`, MUST be recorded in **immutable audit logs** containing:

- Event type (access, update, delete, export).
- Timestamp in UTC.
- User identity and role.
- Patient or bundle identifiers accessed.
- Operation outcome (success, failure, error code).
- Access location (IP, device ID, facility).

Audit data MUST be **retained for a minimum of 10 years** for compliance investigations, per Clause 9.3 (Retention) of ISO 27789.

### 3.3 NIS ISO 21547:2019 – Long-Term Archiving

For long-term immunization records (e.g., >5 years post-service):

- Maintain **availability** through redundant storage and regular integrity checks.
- Store in formats that remain **readable despite system changes** (e.g., FHIR JSON/XML exports with documentation).
- Apply **integrity checksums** and version control to detect tampering.
- Implement **non-repudiation measures** so that no record can be denied or altered without trace.

Archived bundles SHOULD be cryptographically signed and stored with metadata linking them to consent and audit records.

### 3.4 NIS ISO 25237:2019 – Pseudonymization

Where immunization data is used for analytics, research, submitted to the registry, or dashboarding:

- **Replace direct identifiers** (e.g., `Patient.identifier`) with generated pseudonyms (e.g., `patient-pseudo-id`).
- Store pseudonymization keys in a **separate, access-controlled service**.
- Apply **risk assessment for re-identification** before sharing datasets externally (Clause 6.2).
- Use **consistent pseudonyms** across datasets where linkage is required, but without exposing raw identifiers.

### 3.5 NIS ISO/TR 17975:2019 – Consent

FHIR `Consent` resources SHOULD be implemented to capture:

- Consent for collection and use.
- Consent for disclosure to third parties.
- Withdrawal or denial of consent.
- Purpose of use (treatment, program monitoring, research).

Consent directives MUST be **machine-readable** and enforceable by the FHIR server to filter operations and exports.

---

## 4. Integration into Workflow and Operations

### 4.1 At System Implementation Stage
- Build **shared libraries or modules** for authentication, audit logging, consent enforcement, pseudonymization, and archiving.
- Ensure modules are **tested against conformance criteria**.

### 4.2 At Certification & Compliance Stage
- Use **conformity assessment programs** for vendor and system certification.
- Maintain **DPIAs** before major deployments or system upgrades.

---

## 5. Privacy-by-Design for NgImmBundle Operations

### `$submit-ngimm-bundle`
- Validate bundle contents against consent and scope before commit.
- Log all submitted resources with `AuditEvent`.

### `$export-ngimm-bundle`
- Apply role-based filters.
- Support **data masking** or **pseudonymization** for non-care uses.
- Encrypt exports and enforce download expiry.

### `$get-patient-history` / `$get-next-dose-schedule`
- Return only minimum necessary data fields.
- Apply consent restrictions dynamically.

---

## 6. Compliance Monitoring

The FHIR server SHOULD expose:
- `AuditEvent` queries for compliance audits.
- `Consent` status checks.
- Privacy breach detection triggers.

Data Protection Officers must review audit and consent logs regularly (Monthly at a minimum).

---

_These access rules aim to balance data utility with privacy and compliance, in line with the Nigeria Data Protection Act (NDPA), Standard Organization of Nigeria (SON) NIS standards, and WHO SMART Guidelines._
