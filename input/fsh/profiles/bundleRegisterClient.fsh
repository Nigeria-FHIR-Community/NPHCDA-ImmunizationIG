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
* type = #transaction
* timestamp 0..1
* entry 2..7 MS

// ---------------- Slicing ----------------
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    patient 0..1 MS and
    practitioner 0..1 MS and
    organization 0..1 MS and
    encounter 0..1 MS and
    observation 0..1 MS and
    relatedperson 0..1 MS and
    provenance 0..1 MS

// ---- Patient ----
//* entry[patient].fullUrl = "urn:uuid:pat-001"
* entry[patient].resource only NgImmPatient
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"

// ---- Practitioner ----

* entry[practitioner].resource only NgImmPractitioner
* entry[practitioner].request.method = #POST
* entry[practitioner].request.url = "Practitioner" (exactly)

// ---- Organization ----
* entry[organization].resource only NgImmOrganization
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization" (exactly)

// ---- Encounter (optional slice, but required fields when present) ----
* entry[encounter].resource only NgImmEncounter
* entry[encounter].request.method = #POST
* entry[encounter].request.url = "Encounter" (exactly)

// ---- RU Observation (optional slice, but required fields when present) ----
* entry[observation].resource only NgImmRUObservation
* entry[observation].request.method = #POST
* entry[observation].request.url = "Observation" (exactly)

// ---- RelatedPerson (repeatable slice; each occurrence must be complete) ----
* entry[relatedperson].resource only NgImmSiblingRelatedPerson
* entry[relatedperson].request.method = #POST
* entry[relatedperson].request.url = "RelatedPerson" (exactly)

// ---- Provenance (one or more) ----
* entry[provenance].resource only NgImmProvenance
* entry[provenance].request.method = #POST
* entry[provenance].request.url = "Provenance" (exactly)

// ---------------- Invariant ----------------
Invariant: ngimm-crb-provenance-target
Description: "Provenance in the bundle SHOULD reference the Patient and MAY reference Encounter/Observation."
Expression: "entry.resource.ofType(Provenance).target.exists()"
Severity: #warning






// Example Bundle
// ============================================================
// Instance 1: Full Client Registration Transaction
// ============================================================
Instance: client-registration-bundle-001
InstanceOf: NgImmClientRegistrationBundle
Usage: #example
Title: "Client Registration Transaction (Full)"
Description: "Registers a new client with practitioner, org, encounter, registration observation, one sibling related person, and provenance."
* type = #transaction
* timestamp = "2025-08-17T09:10:00+01:00"

// --- Organization ---
* entry[organization].resource = organization-001
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization"

// --- Practitioner ---
* entry[practitioner].resource = practitioner-001
* entry[practitioner].request.method = #POST
* entry[practitioner].request.url = "Practitioner"

// --- Patient ---
* entry[patient].resource = patient-001
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"

// --- Encounter (optional but shown) ---
* entry[encounter].resource = encounter-001
* entry[encounter].request.method = #POST
* entry[encounter].request.url = "Encounter"

// --- Registration / Update Observation (optional but shown) ---
* entry[observation].resource = observation-001
* entry[observation].request.method = #POST
* entry[observation].request.url = "Observation"

// --- RelatedPerson (optional; one example) ---
* entry[relatedperson].resource = relatedperson-001
* entry[relatedperson].request.method = #POST
* entry[relatedperson].request.url = "RelatedPerson"

// --- Provenance (required) ---
* entry[provenance].resource = provenance-001
* entry[provenance].request.method = #POST
* entry[provenance].request.url = "Provenance"
