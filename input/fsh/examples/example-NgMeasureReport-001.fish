Instance: NgImmMeasureReport-001
InstanceOf: NgImmMeasureReport
Title: "MeasureReport - Penta1 to Measles Dropout Rate"
Description: "An example report of the dropout rate between Penta1 and Measles vaccinations."

* identifier.system = "http://nphcda.gov.ng/measurereports"
* identifier.value = "mr-penta1-measles-dropout-2025Q1"

* status = #complete
* type = #summary
* date = "2025-03-31T23:59:00+01:00"

* reporter = Reference(NgImmPractitioner/practitioner-001)

* period.start = "2025-01-01"
* period.end = "2025-03-31"

* measure = Canonical(NgImmMeasure/NgImmMeasure-001)

* group[0].id = "dropout-rate"
* group[0].measureScore.value = 0.18
* group[0].measureScore.unit = "%"
