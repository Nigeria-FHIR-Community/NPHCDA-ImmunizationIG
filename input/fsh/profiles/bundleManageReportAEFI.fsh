// ============================================================
// Profile: Manage Report AEFI Bundle (NG-IMM)
// ============================================================
Profile: NgImmManageReportAEFIBundle
Parent: Bundle
Id: ngimm-manage-report-aefi-bundle
Title: "IMMZ.E Bundle ManageReportAEFI"
Description: """
Transaction Bundle for reporting and managing an Adverse Event Following Immunization (AEFI).
Includes the encounter where the event was assessed, the clinical observation(s) describing
the event, and an AllergyIntolerance record capturing the reaction and severity.
"""

// Envelope
* type 1..1
* type = #transaction
* timestamp 0..1
* entry 0..* MS


// Slice entries by resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    encounter          0..1 MS and
    observation        0..1 MS and
    allergyintolerance 0..1 MS

// ---- Encounter ----
* entry[encounter].resource only NgImmEncounter
* entry[encounter].request.method = #POST
* entry[encounter].request.url = "Encounter" (exactly)

// ---- Observation (AEFI clinical findings/assessment) ----
* entry[observation].resource only Observation
* entry[observation].request.method = #POST
* entry[observation].request.url = "Observation" (exactly)

// ---- AllergyIntolerance (reaction record) ----
* entry[allergyintolerance].resource only NgImmAllergyIntolerance
* entry[allergyintolerance].request.method = #POST
* entry[allergyintolerance].request.url = "AllergyIntolerance" (exactly)









