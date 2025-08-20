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
* entry 3..* MS

// Slice entries by resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    encounter          1..1 MS and
    observation        1..* MS and
    allergyintolerance 1..1 MS

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

// ---------------- Invariants / Guidance ----------------
Invariant: ngimm-aefi-obs-links
Description: "AEFI Observation(s) SHOULD reference the same Patient and the Encounter in this bundle."
Expression: "entry.resource.ofType(Observation).subject.exists() and entry.resource.ofType(Observation).encounter.exists()"
Severity: #warning

Invariant: ngimm-aefi-ai-links
Description: "AllergyIntolerance MUST reference the same Patient; MAY reference the Encounter."
Expression: "entry.resource.ofType(AllergyIntolerance).patient.exists()"
Severity: #error



//EXAMPLE
Instance: manage-report-aefi-bundle-001
InstanceOf: NgImmManageReportAEFIBundle
Title: "AEFI Management/Reporting Transaction"
Description: "Creates Encounter, AEFI Observation, and AllergyIntolerance for an existing patient."
* type = #transaction
* timestamp = "2025-08-17T13:05:00+01:00"

// ---------- Encounter (assessment visit) ----------
* entry[encounter].resource = encounter-003
* entry[encounter].request.method = #POST
* entry[encounter].request.url = "Encounter"

// Ensure Encounter refers to existing Patient
* entry[encounter].resource.subject.reference = "patient-001"

// ---------- Observation (AEFI details) ----------
* entry[observation].resource.resourceType = "Observation"
* entry[observation].resource.status = #final
* entry[observation].resource.category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* entry[observation].resource.category[0].coding[0].code = #procedure
* entry[observation].resource.code.coding[0].system = "http://loinc.org"
* entry[observation].resource.code.coding[0].code = #392521001
* entry[observation].resource.code.text = "Adverse event following immunization"
* entry[observation].resource.subject.reference = "patient-001"
* entry[observation].resource.encounter.reference = "encounter-001"
* entry[observation].resource.effectiveDateTime = "2025-08-16T15:20:00+01:00"
* entry[observation].resource.valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* entry[observation].resource.valueCodeableConcept.coding[0].code = #386661006
* entry[observation].resource.valueCodeableConcept.coding[0].display = "Fever"
* entry[observation].resource.note[0].text = "Fever (38.5°C) and local swelling at injection site within 12 hours."

* entry[observation].request.method = #POST
* entry[observation].request.url = "Observation"

// ---------- AllergyIntolerance (AEFI reaction record) ----------
* entry[allergyintolerance].resource = allergyIntolerance-002
* entry[allergyintolerance].request.method = #POST
* entry[allergyintolerance].request.url = "AllergyIntolerance"

// Wire AllergyIntolerance to same Patient and Encounter
* entry[allergyintolerance].resource.patient.reference = "patient-001"
* entry[allergyintolerance].resource.encounter.reference = "encounter-003"
