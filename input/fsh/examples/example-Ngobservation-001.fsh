Instance: observation-001
InstanceOf: NgImmRUObservation
Title: "Example NG-Imm Registration Observation"
Description: "An example observation recorded when a client is registered, capturing health and status data."

// ---- Core Observation fields ----
* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #social-history
//* category[0].coding.display = "Social History"

* code.coding.system = "http://loinc.org"
* code.coding.code = #8716-3
//* code.coding.display = "Patient registration observation"

* subject = Reference(patient-001)

* effectiveDateTime = "2025-08-15T09:30:00+01:00"

// ---- Components ----

// Pregnancy Status
* component[pregnancyStatus].code.coding.system = "http://loinc.org"
* component[pregnancyStatus].code.coding.code = #82810-3
* component[pregnancyStatus].code.coding.display = "Pregnancy status"
* component[pregnancyStatus].valueCodeableConcept.coding.system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-pregnancy-status"
* component[pregnancyStatus].valueCodeableConcept.coding.code = #notpregnant
* component[pregnancyStatus].valueCodeableConcept.coding.display = "Not Pregnant"

// HIV Status
* component[hivStatus].code.coding.system = "http://loinc.org"
* component[hivStatus].code.coding.code = #55284-4
//* component[hivStatus].code.coding.display = "HIV status"
* component[hivStatus].valueCodeableConcept.coding.system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-hiv-status"
* component[hivStatus].valueCodeableConcept.coding.code = #DE45
* component[hivStatus].valueCodeableConcept.coding.display = "Negative"

// Birth Weight
* component[birthWeight].code.coding.system = "http://loinc.org"
* component[birthWeight].code.coding.code = #8339-4
//* component[birthWeight].code.coding.display = "Birth weight Measured"
* component[birthWeight].valueQuantity.value = 3200
* component[birthWeight].valueQuantity.unit = "g"
* component[birthWeight].valueQuantity.system = "http://unitsofmeasure.org"
* component[birthWeight].valueQuantity.code = #g

// Age in Weeks
* component[ageInWeeks].code.coding.system = "http://loinc.org"
* component[ageInWeeks].code.coding.code = #30525-0
//* component[ageInWeeks].code.coding.display = "Age in weeks"
* component[ageInWeeks].valueQuantity.value = 8
* component[ageInWeeks].valueQuantity.unit = "wk"
* component[ageInWeeks].valueQuantity.system = "http://unitsofmeasure.org"
* component[ageInWeeks].valueQuantity.code = #wk

// Age in Months
* component[ageInMonths].code.coding.system = "http://loinc.org"
* component[ageInMonths].code.coding.code = #30525-0
//* component[ageInMonths].code.coding.display = "Age in months"
* component[ageInMonths].valueQuantity.value = 2
* component[ageInMonths].valueQuantity.unit = "mo"
* component[ageInMonths].valueQuantity.system = "http://unitsofmeasure.org"
* component[ageInMonths].valueQuantity.code = #mo

// Age in Years
* component[ageInYears].code.coding.system = "http://loinc.org"
* component[ageInYears].code.coding.code = #30525-0
* component[ageInYears].code.coding.display = "Age in years"
* component[ageInYears].valueQuantity.value = 0
* component[ageInYears].valueQuantity.unit = "yr"
* component[ageInYears].valueQuantity.system = "http://unitsofmeasure.org"
* component[ageInYears].valueQuantity.code = #yr
