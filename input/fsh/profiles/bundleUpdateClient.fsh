// ============================================================
// Profile: Update Client Bundle (NG-IMM)
// ============================================================
Profile: NgImmUpdateClientBundle
Parent: Bundle
Id: ngimm-update-client-bundle
Title: "IMMZ.C6 Bundle Update Client"
Description: """
Transaction Bundle used to submit client update content such as an Encounter,
registration/update Observation, and one or more Immunizations — along with
the acting Practitioner and the managing Organization. The Patient is assumed
to already exist on the server and is referenced directly.
"""

// Bundle type & envelope
* type 1..1
* type = #transaction (exactly)
* timestamp 0..1
* entry 3..* MS

// Slice entries by resource type (open for future additions like Location)
* entry ^slicing.discriminator.type = #pattern
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    organization   1..1 MS and
    practitioner   1..1 MS and
    encounter      1..1 MS and
    observation    0..* MS and
    immunization   0..* MS

// ---- Organization (service provider / custodian) ----
* entry[organization].fullUrl 1..1 MS
* entry[organization].resource 1..1
* entry[organization].resource only NgImmOrganization
* entry[organization].request 1..1
* entry[organization].request.url = "Organization"

// ---- Practitioner (actor) ----
* entry[practitioner].fullUrl 1..1 MS
* entry[practitioner].resource 1..1
* entry[practitioner].resource only NgImmPractitioner
* entry[practitioner].request 1..1
* entry[practitioner].request.url = "Practitioner"

// ---- Encounter (visit for the update) ----
* entry[encounter].fullUrl 1..1 MS
* entry[encounter].resource 1..1
* entry[encounter].resource only NgImmEncounter
* entry[encounter].request 1..1
* entry[encounter].request.url = "Encounter"

// ---- Observation(s) (registration/update observation) ----
* entry[observation].fullUrl 0..1 MS
* entry[observation].resource 1..1
* entry[observation].resource only NgImmRUObservation
* entry[observation].request 1..1
* entry[observation].request.url = "Observation"

// ---- Immunization record(s) ----
* entry[immunization].fullUrl 0..1 MS
* entry[immunization].resource 1..1
* entry[immunization].resource only NgImmImmunization
* entry[immunization].request 1..1
* entry[immunization].request.url = "Immunization"

// ---------------- Invariants / Guidance ----------------
// Encounter must reference an existing Patient on the server.
Invariant: ngimm-uc-enc-subject
Description: "Encounter.subject SHOULD reference an existing Patient (not necessarily in-bundle)."
Expression: "entry.resource.ofType(Encounter).subject.reference.exists()"
Severity: #warning

// Observation & Immunization should reference the Encounter/Patient appropriately.
Invariant: ngimm-uc-obs-links
Description: "Update Observation SHOULD reference the same Patient; MAY reference the Encounter in this bundle."
Expression: "entry.resource.ofType(Observation).subject.reference.exists()"
Severity: #warning

Invariant: ngimm-uc-imm-links
Description: "Immunization SHOULD reference the same Patient; MAY reference the Encounter and Practitioner in this bundle."
Expression: "entry.resource.ofType(Immunization).patient.reference.exists()"
Severity: #warning







//EXAMPLE
Instance: update-client-bundle-001
InstanceOf: NgImmUpdateClientBundle
Title: "Update Client Transaction (Encounter + Obs + Immunization)"
Description: "Submits an encounter, registration/update observation, and a new immunization for an existing patient."
* type = #transaction
* timestamp = "2025-08-17T12:10:00+01:00"

// ---------- Organization (managing facility) ----------
* entry[organization].fullUrl = "urn:uuid:org-001"
* entry[organization].resource = organization-001
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization"

// ---------- Practitioner (actor) ----------
* entry[practitioner].fullUrl = "urn:uuid:prac-001"
* entry[practitioner].resource = practitioner-001
* entry[practitioner].request.method = #POST
* entry[practitioner].request.url = "Practitioner"

// ---------- Encounter (visit for the update) ----------
* entry[encounter].fullUrl = "urn:uuid:enc-001"
* entry[encounter].resource = encounter-002
* entry[encounter].request.method = #POST
* entry[encounter].request.url = "Encounter"

// Ensure Encounter links to existing Patient and in-bundle Organization/Practitioner
* entry[encounter].resource.subject.reference = "Patient/patient-001"
* entry[encounter].resource.participant[0].individual.reference = "urn:uuid:prac-001"
* entry[encounter].resource.serviceProvider.reference = "urn:uuid:org-001"
// If your Encounter requires a Location but you’re not creating it here, point to an existing one:
// * entry[encounter].resource.location[0].location.reference = "Location/location-001"

// ---------- Registration/Update Observation ----------
* entry[observation].fullUrl = "urn:uuid:obs-001"
* entry[observation].resource = observation-002
* entry[observation].request.method = #POST
* entry[observation].request.url = "Observation"

// Wire Observation to the same Patient and the Encounter in this bundle
* entry[observation].resource.subject.reference = "Patient/patient-001"
* entry[observation].resource.encounter.reference = "urn:uuid:enc-001"

// ---------- Immunization (new dose recorded) ----------
* entry[immunization].fullUrl = "urn:uuid:imm-001"
* entry[immunization].resource = immunization-003
* entry[immunization].request.method = #POST
* entry[immunization].request.url = "Immunization"

// Wire Immunization to Patient, Encounter, Performer, Manufacturer
* entry[immunization].resource.patient.reference = "Patient/patient-001"
* entry[immunization].resource.encounter.reference = "urn:uuid:enc-001"
* entry[immunization].resource.performer[0].actor.reference = "urn:uuid:prac-001"
* entry[immunization].resource.manufacturer.reference = "urn:uuid:org-001"
