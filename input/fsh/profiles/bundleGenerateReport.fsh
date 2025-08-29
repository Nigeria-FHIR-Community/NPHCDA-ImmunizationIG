// ============================================================
// Profile: Generate Report Bundle (NG-IMM)
// ============================================================
Profile: NgImmGenerateReportBundle
Parent: Bundle
Id: ngimm-generate-report-bundle
Title: "IMMZ.H Bundle GenerateReport"
Description: """
Transaction Bundle for generating and submitting immunization-related reports. 
Carries the Measure definition (indicator), the MeasureReport (calculated results),
and contextual information about the reporting Organization and Practitioner.
"""

// ---------------------- Cardinality & Constraints ----------------------
* type 1..1
* type = #transaction (exactly)
* timestamp 0..1
* entry 0..* MS


// Entry slicing
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    measure        0..1 MS and
    measureReport  0..1 MS and
    organization   0..1 MS and
    practitioner   0..1 MS

// ---- Measure ----
* entry[measure].resource only NgImmMeasure
* entry[measure].request.method = #POST (exactly)
* entry[measure].request.url = "Measure" (exactly)

// ---- MeasureReport ----
* entry[measureReport].resource only NgImmMeasureReport
* entry[measureReport].request.method = #POST (exactly)
* entry[measureReport].request.url = "MeasureReport" (exactly)

// ---- Organization ----
* entry[organization].resource only NgImmOrganization
* entry[organization].request.method = #POST (exactly)
* entry[organization].request.url = "Organization" (exactly)

// ---- Practitioner ----
* entry[practitioner].resource only NgImmPractitioner
* entry[practitioner].request.method = #POST (exactly)
* entry[practitioner].request.url = "Practitioner" (exactly)




