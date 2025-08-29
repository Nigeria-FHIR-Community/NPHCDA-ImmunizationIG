// ============================================================
// Profile: Client Registration Bundle (NG-IMM) — fixed
// ============================================================
Profile: NgImmClientRegistrationBundle
Parent: Bundle
Id: ngimm-client-registration-bundle
Title: "IMMZ.C.5 Bundle Client Registration"
Description: """
Transaction Bundle to register an immunization client and related context.
"""

//* type 1..1
* type = #transaction
* timestamp 0..1
* entry 0..7 MS

// --- Explicit slicing on entry.resource (the key fix) ---
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    patient 0..1 MS and
    practitioner 0..1 MS and
    organization 0..1 MS and
    encounter 0..1 MS and
    observation 0..1 MS and
    relatedperson 0..1 MS and
    provenance 0..1 MS

// ---- Patient ----
* entry[patient].resource only NgImmPatient
* entry[patient].request.method = #POST
* entry[patient].request.url = "Patient"

// ---- Practitioner ----
* entry[practitioner].resource only NgImmPractitioner
* entry[practitioner].request.method = #POST
* entry[practitioner].request.url = "Practitioner"

// ---- Organization ----
* entry[organization].resource only NgImmOrganization
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization"

// ---- Encounter (optional) ----
* entry[encounter].resource only NgImmEncounter
* entry[encounter].request.method = #POST
* entry[encounter].request.url = "Encounter"

// ---- Registration/Update Observation (optional) ----
// If NgImmRUObservation is not yet defined, keep it base Observation to avoid errors:
* entry[observation].resource only Observation
// (Later, switch to: * entry[observation].resource only NgImmRUObservation)
* entry[observation].request.method = #POST
* entry[observation].request.url = "Observation"

// ---- RelatedPerson (optional) ----
* entry[relatedperson].resource only NgImmSiblingRelatedPerson
* entry[relatedperson].request.method = #POST
* entry[relatedperson].request.url = "RelatedPerson"

// ---- Provenance (optional here) ----
* entry[provenance].resource only NgImmProvenance
* entry[provenance].request.method = #POST
* entry[provenance].request.url = "Provenance"






