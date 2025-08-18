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
* entry 4..* MS

// Entry slicing
* entry ^slicing.discriminator.type = #pattern
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    measure        0..1 MS and
    measureReport  1..1 MS and
    organization   0..1 MS and
    practitioner   0..1 MS

// ---- Measure ----
* entry[measure].fullUrl 1..1 MS
* entry[measure].resource 1..1
* entry[measure].resource only NgImmMeasure
* entry[measure].request 1..1
* entry[measure].request.method = #POST (exactly)
* entry[measure].request.url = "Measure" (exactly)

// ---- MeasureReport ----
* entry[measureReport].fullUrl 1..1 MS
* entry[measureReport].resource 1..1
* entry[measureReport].resource only NgImmMeasureReport
* entry[measureReport].request 1..1
* entry[measureReport].request.method = #POST (exactly)
* entry[measureReport].request.url = "MeasureReport" (exactly)

// ---- Organization ----
* entry[organization].fullUrl 1..1 MS
* entry[organization].resource 1..1
* entry[organization].resource only NgImmOrganization
* entry[organization].request 1..1
* entry[organization].request.method = #POST (exactly)
* entry[organization].request.url = "Organization" (exactly)

// ---- Practitioner ----
* entry[practitioner].fullUrl 1..1 MS
* entry[practitioner].resource 1..1
* entry[practitioner].resource only NgImmPractitioner
* entry[practitioner].request 1..1
* entry[practitioner].request.method = #POST (exactly)
* entry[practitioner].request.url = "Practitioner" (exactly)


// ---------------------- Invariants / Guidance ----------------------

// The MeasureReport.measure must reference the Measure in this bundle
Invariant: ngimm-report-links-measure
Description: "MeasureReport.measure must reference the Measure defined in this bundle"
Expression: "entry.resource.ofType(MeasureReport).measure.startsWith('urn:uuid:')"
Severity: #error

// The MeasureReport.reporter must reference the Organization or Practitioner in this bundle
Invariant: ngimm-report-links-context
Description: "MeasureReport.reporter should reference an Organization or Practitioner in this bundle"
Expression: "entry.resource.ofType(MeasureReport).reporter.exists()"
Severity: #warning




// ============================================================
// Example: GenerateReport Bundle
// ============================================================
Instance: example-generate-report-bundle
InstanceOf: NgImmGenerateReportBundle
Usage: #example
Title: "Example NG-Imm GenerateReport Bundle"
Description: "An example transaction bundle carrying a Measure, MeasureReport, Organization, and Practitioner."

* type = #transaction
* timestamp = "2025-08-18T10:00:00+01:00"

// ---- Measure ----
* entry[measure].fullUrl = "urn:uuid:measure-dropout"
* entry[measure].resource = example-measure-dropout
* entry[measure].request.method = #POST
* entry[measure].request.url = "Measure"

// ---- MeasureReport ----
* entry[measureReport].fullUrl = "urn:uuid:report-dropout"
* entry[measureReport].resource = example-measurereport-dropout
* entry[measureReport].request.method = #POST
* entry[measureReport].request.url = "MeasureReport"

// ---- Organization ----
* entry[organization].fullUrl = "urn:uuid:org-01"
* entry[organization].resource = organization-005
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization"

// ---- Practitioner ----
* entry[practitioner].fullUrl = "urn:uuid:prac-01"
* entry[practitioner].resource = practitioner-005
* entry[practitioner].request.method = #POST
* entry[practitioner].request.url = "Practitioner"


// ============================================================
// Supporting Instances
// ============================================================

// --- Measure (Dropout Rate) ---
Instance: example-measure-dropout
InstanceOf: NgImmMeasure
Usage: #example
* identifier.value = "dropout-rate"
* status = #active
* name = "DropoutRate"
* title = "Penta1 to Measles Dropout Rate"
* description = "Proportion of children who received Penta1 but did not return for Measles vaccine."
* purpose = "Monitor program performance and follow-up for defaulters."
* topic.text = "Immunization Coverage"
* scoring = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase
* date = "2025-08-10"
* publisher = "NPHCDA"
* group[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group[0].population[0].description = "All children receiving Penta1"
* group[0].population[0].criteria.language = #text/fhirpath
* group[0].population[0].criteria.expression = "Immunization.where(vaccineCode='penta1')"
* group[0].population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group[0].population[1].description = "Children who did not receive Measles vaccine"
* group[0].population[1].criteria.language = #text/fhirpath
* group[0].population[1].criteria.expression = "Immunization.where(vaccineCode='measles').empty()"

// --- MeasureReport ---
Instance: example-measurereport-dropout
InstanceOf: NgImmMeasureReport
Usage: #example
* identifier.value = "report-2025-08"
* status = #complete
* type = #summary
* date = "2025-08-15T09:00:00+01:00"
* reporter = Reference(practitioner-005)
* period.start = "2025-07-01"
* period.end = "2025-07-31"
* measure = Canonical(example-measure-dropout)
* group[0].measureScore.value = 0.15
* group[0].measureScore.unit = "Proportion"

// --- Organization ---
Instance: organization-005
InstanceOf: NgImmOrganization
Usage: #example
* identifier.system = "http://nphcda.gov.ng/facility-code"
* identifier.value = "LAG-12345"
* active = true
* name = "Lagos Island Maternity Hospital"
* type = NGFacilityTypeCS#hospital "Hospital"
* address.line = "Lagos Island Maternity"
* address.city = "Osborn"
* address.district = #VI
* address.state = #LA "Lagos"

// --- Practitioner ---
Instance: practitioner-005
InstanceOf: NgImmPractitioner
Usage: #example
* identifier.system = "http://mdcn.gov.ng/practitioner-reg"
* identifier.value = "MDCN-334455"
* active = true
* name.given = "Chinedu"
* name.family = "Okafor"
* gender = #male
* telecom[0].system = #phone
* telecom[0].value = "08023456789"
* birthDate = "1980-03-22"

