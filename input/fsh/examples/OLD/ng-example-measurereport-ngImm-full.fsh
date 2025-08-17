Instance: ExampleNgImmMeasureReport
InstanceOf: NgImmMeasureReport
Title: "NG-Imm Example MeasureReport Monthly Immunization Coverage"
Description: "An example of a summary MeasureReport generated for BCG coverage at a facility"
Usage: #example

* identifier.system = "https://nphcda.gov.ng/report-ids"
* identifier.value = "BCG-COVERAGE-JUNE-2025-001"

* status = #complete
* type = #summary
* date = "2025-07-01T09:00:00+01:00"

* reporter.reference = "NgImmPractitioner/nurse-ade"
* reporter.display = "Nurse Adeola Bakare"

* period.start = "2025-06-01"
* period.end = "2025-06-30"
* measure = "https://nphcda.gov.ng/report-ids/4565"
* group[0].measureScore.value = 85
* group[0].measureScore.unit = "%"
