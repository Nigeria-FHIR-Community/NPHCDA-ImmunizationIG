// ============================================================
// Profile: Client Registration Bundle (NG-IMM)
// ============================================================
Profile: NgImmClientRegistrationBundle
Parent: Bundle
Id: ngimm-client-registration-bundle
Title: "IMMZ.C.5 Bundle Client Registration"
Description: """
A transaction Bundle used by NG-IMM client systems to register a new immunization client
and related context in one atomic submission. Includes Patient, Practitioner, Organization,
(optional) Encounter, (optional) Registration/Update Observation, (optional) RelatedPerson(s),
and Provenance entries documenting the submission.
"""

// Bundle type
* type 1..1
* type = #transaction (exactly)
* timestamp 0..1
* entry 2..* MS

// Slice entries by resource (open to future additions like Location, PractitionerRole)
* entry ^slicing.discriminator.type = #pattern
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    patient        1..1 MS and
    practitioner   1..1 MS and
    organization   1..1 MS and
    encounter      0..1 MS and
    observation    0..1 MS and
    relatedperson  0..* MS and
    provenance     1..* MS

// ---- Patient ----
* entry[patient].fullUrl 1..1 MS
* entry[patient].resource 1..1
* entry[patient].resource only NgImmPatient
* entry[patient].request 1..1
* entry[patient].request.method = #POST (exactly)
* entry[patient].request.url = "Patient" (exactly)

// ---- Practitioner ----
* entry[practitioner].fullUrl 1..1 MS
* entry[practitioner].resource 1..1
* entry[practitioner].resource only NgImmPractitioner
* entry[practitioner].request 1..1
* entry[practitioner].request.method = #POST (exactly)
* entry[practitioner].request.url = "Practitioner" (exactly)

// ---- Organization (managing org / service provider) ----
* entry[organization].fullUrl 1..1 MS
* entry[organization].resource 1..1
* entry[organization].resource only NgImmOrganization
* entry[organization].request 1..1
* entry[organization].request.method = #POST (exactly)
* entry[organization].request.url = "Organization" (exactly)

// ---- Encounter (the registration/visit) ----
* entry[encounter].fullUrl 0..1 MS
* entry[encounter].resource only NgImmEncounter
* entry[encounter].request 0..1
* entry[encounter].request.method = #POST
* entry[encounter].request.url = "Encounter"

// ---- Registration/Update Observation ----
* entry[observation].fullUrl 0..1 MS
* entry[observation].resource only NgImmRUObservation
* entry[observation].request 0..1
* entry[observation].request.method = #POST
* entry[observation].request.url = "Observation"

// ---- RelatedPerson (sibling) ----
* entry[relatedperson].fullUrl 0..1 MS
* entry[relatedperson].resource only NgImmSiblingRelatedPerson
* entry[relatedperson].request 0..1
* entry[relatedperson].request.method = #POST
* entry[relatedperson].request.url = "RelatedPerson"

// ---- Provenance (required; one or more) ----
* entry[provenance].fullUrl 1..1 MS
* entry[provenance].resource 1..1
* entry[provenance].resource only NgImmProvenance
* entry[provenance].request 1..1
* entry[provenance].request.method = #POST (exactly)
* entry[provenance].request.url = "Provenance" (exactly)

// ---------------- Invariants / Guidance ----------------
// At least one Provenance.agent.who present (already enforced in NgImmProvenance profile).
Invariant: ngimm-crb-provenance-target
Description: "Provenance in the bundle SHOULD reference the Patient and MAY reference Encounter/Observation."
Expression: "entry.resource.ofType(Provenance).target.reference.exists()"
Severity: #warning

// Encourage intra-bundle references via fullUrl
// (e.g., Patient.subject, Encounter.subject, Observation.subject,
//  RelatedPerson.patient, Provenance.target) should use 'urn:uuid:' fullUrls in this bundle.



// Example Bundle

Instance: client-registration-bundle-001
InstanceOf: NgImmClientRegistrationBundle
Title: "Client Registration Transaction (NG-IMM)"
Description: "Registers a new client with context and provenance."
* type = #transaction
* timestamp = "2025-08-17T09:10:00+01:00"

// --- Organization ---
* entry[organization].fullUrl = "urn:uuid:org-001"
* entry[organization].resource = organization-001
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization"

// --- Practitioner ---
* entry[practitioner].fullUrl = "urn:uuid:prac-001"
* entry[practitioner].resource = practitioner-001
* entry[practitioner].request.method = #POST
* entry[practitioner].request.url = "Practitioner"

// --- Patient ---
* entry[patient].fullUrl = "urn:uuid:pat-001"
* entry[patient].resource = patient-001
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"

// --- Encounter (optional but shown) ---
* entry[encounter].fullUrl = "urn:uuid:enc-001"
* entry[encounter].resource = encounter-001
* entry[encounter].request.method = #POST
* entry[encounter].request.url = "Encounter"

// --- Registration/Update Observation (optional but shown) ---
* entry[observation].fullUrl = "urn:uuid:obs-001"
* entry[observation].resource = observation-001
* entry[observation].request.method = #POST
* entry[observation].request.url = "Observation"

// --- RelatedPerson (optional; one example) ---
* entry[relatedperson].fullUrl = "urn:uuid:rp-001"
* entry[relatedperson].resource = relatedperson-001
* entry[relatedperson].request.method = #POST
* entry[relatedperson].request.url = "RelatedPerson"

// --- Provenance (required; references Patient and Encounter) ---
* entry[provenance].fullUrl = "urn:uuid:prov-001"
* entry[provenance].resource = provenance-001
* entry[provenance].request.method = #POST
* entry[provenance].request.url = "Provenance"
