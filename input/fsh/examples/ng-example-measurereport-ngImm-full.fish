Instance: FullExampleNgImmMeasureReport
InstanceOf: NgImmMeasureReport
Usage: #example

// identifier (required)
* identifier.value = "LAGPHC-2025‑06‑DPT3‑01"

// status (required)
* status = #complete

// type (required)
* type = #summary

// measure (required)
//* measure = Canonical(Measure/DPT3-Coverage-Rate)

// date (required)
* date = "2025-06-30T17:00:00+01:00"

// reporter (optional but must support)
* reporter = Reference(Organization/LagosPHC)

// period (required)
* period.start = "2025-06-01"
* period.end = "2025-06-30"

// measureScore.value (optional but must support)
* group.measureScore.value = 0.78
* group.measureScore.unit = "%"
 */