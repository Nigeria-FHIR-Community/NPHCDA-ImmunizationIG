Instance: NgImmMeasure-001
InstanceOf: NgImmMeasure
Title: "Measure - Penta1 to Measles Dropout Rate"
Description: "Example of an NG-Imm Measure resource representing the dropout rate between Penta1 and Measles vaccinations."

* identifier.system = "http://nphcda.gov.ng/measures"
* identifier.value = "penta1-measles-dropout"

* status = #active
* name = "Penta1MeaslesDropoutRate"
* title = "Penta1 to Measles Dropout Rate"
* description = "This measure tracks the proportion of children who received Penta1 vaccine but did not return for the measles vaccine, indicating program adherence and follow-up effectiveness."
* purpose = "To identify program adherence issues and track follow-up for immunization completion."
* topic.text = "Immunization Coverage"
* scoring = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#decrease
* date = "2025-08-17"
* publisher = "National Primary Health Care Development Agency (NPHCDA)"

* group[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#denominator
* group[0].population[0].description = "Children who received Penta1 vaccine during the reporting period."


* group[0].population[0].component[0].criteria.expression = "Patient.address.district"


* group[0].population[1].code = http://terminology.hl7.org/CodeSystem/measure-population#numerator
* group[0].population[1].description = "Children who received Penta1 but did not receive the measles vaccine by 12 months of age."
* group[0].population[1].criteria.expression = "Patient.address.district"

//* library = Reference(Library/NgImmDropoutLogic)
