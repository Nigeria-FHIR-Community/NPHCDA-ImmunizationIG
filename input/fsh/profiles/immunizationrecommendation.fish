Profile: NEIRImmunizationRecommendation
Parent: ImmunizationRecommendation
Description: "A patient's point-in-time set of recommendations (i.e. forecasting) according to a published schedule with optional supporting justification."

* identifier 1..1 MS
* patient
* date 1..1 MS
* authority 0..1 MS
* recommendation 1..* 
* recommendation.vaccineCode 1..1
* recommendation.targetDisease 1..1
* recommendation.contraindicatedVaccineCode 1..1 
* recommendation.forecastStatus 1..1
* recommendation.forecastReason 1..1
* recommendation.dateCriterion 1..1
* recommendation.dateCriterion.code 1..1
* recommendation.dateCriterion.value 1..1
* recommendation.description 1..1
* recommendation.series 1..1
* recommendation.doseNumberString 1..1
* recommendation.seriesDosesString 1..1


Instance: immunizationRecommendation-example
InstanceOf: NEIRImmunizationRecommendation
Usage: #example
Title: "NEIRImmunizationRecommendationExample"
Description: "An example of a Nigerian Immunization Recommendation"
* identifier.use = #official
* identifier.system = ""
* identifier.value = "1234567890"
* patient = Reference(Patient/patient-example)
* date = "2020-02-02"
* authority = Reference(Organization/organization-example)

* recommendation.vaccineCode.coding.system = "http://hl7.org/fhir/sid/cvx"
* recommendation.vaccineCode.coding.code = #143
* recommendation.vaccineCode.coding.display = "Adenovirus types 4 and 7"
* recommendation.vaccineCode.text = "Adenovirus types 4 and 7"

* recommendation.targetDisease.coding.system = "http://snomed.info/sct"
* recommendation.targetDisease.coding.code = #1857005
* recommendation.targetDisease.coding.display = "Gestational rubella syndrome"
* recommendation.targetDisease.text = "Gestational rubella syndrome"

* recommendation.contraindicatedVaccineCode.coding.system = "http://hl7.org/fhir/sid/cvx"
* recommendation.contraindicatedVaccineCode.coding.code = #143
* recommendation.contraindicatedVaccineCode.coding.display = "Adenovirus types 4 and 7"
* recommendation.contraindicatedVaccineCode.text = "Adenovirus types 4 and 7"

* recommendation.forecastStatus.coding.system = "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status"
* recommendation.forecastStatus.coding.code = #due
* recommendation.forecastStatus.coding.display = "Due"
* recommendation.forecastStatus.text = "Due"

* recommendation.forecastReason.coding.system = "http://snomed.info/sct"
* recommendation.forecastReason.coding.code = #77176002
* recommendation.forecastReason.coding.display = "Smoker"

* recommendation.dateCriterion.code.coding.system = "http://loinc.org"
* recommendation.dateCriterion.code.coding.code = #30981-5
* recommendation.dateCriterion.code.coding.display = "Earliest date to give"
* recommendation.dateCriterion.value = "2025-03-03"

* recommendation.description = "Adenovirus types 4 and 7"
* recommendation.series = "1"

* recommendation.doseNumberString = "1"
* recommendation.seriesDosesString = "1"

 