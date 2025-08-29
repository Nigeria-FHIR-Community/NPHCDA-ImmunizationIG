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
* entry 0..* MS

// Slice entries by resource type (open for future additions like Location)
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    organization   0..1 MS and
    practitioner   0..1 MS and
    encounter      0..1 MS and
    observation    0..1 MS and
    immunization   0..1 MS

// ---- Organization (service provider / custodian) ----
* entry[organization].resource only NgImmOrganization
* entry[organization].request.url = "Organization"

// ---- Practitioner (actor) ----
* entry[practitioner].resource only NgImmPractitioner
* entry[practitioner].request.url = "Practitioner"

// ---- Encounter (visit for the update) ----
* entry[encounter].resource only NgImmEncounter
* entry[encounter].request.url = "Encounter"

// ---- Observation(s) (registration/update observation) ----
* entry[observation].resource only NgImmRUObservation
* entry[observation].request.url = "Observation"

// ---- Immunization record(s) ----
* entry[immunization].resource only NgImmImmunization
* entry[immunization].request.url = "Immunization"





