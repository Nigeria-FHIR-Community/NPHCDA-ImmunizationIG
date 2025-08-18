Instance: observation-002
InstanceOf: NgImmRUObservation
Title: "Example NG-Imm Registration Update Observation (Subsequent Visit)"
Description: "Observation recorded during a later visit to update client status and age-related details."

// ---- Core Observation fields ----
* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #social-history
* category[0].coding.display = "Social History"

* code.coding.system = "http://loinc.org"
* code.coding.code = #8716-3
* code.coding.display = "Patient registration/update observation"

* subject = Reference(NgImmPatient/patient-003)
* effectiveDateTime = "2025-10-10T10:00:00+01:00"

// ---- Components (updated at subsequent visit) ----

// Pregnancy Status (unchanged: not pregnant)
* component[pregnancyStatus].code.coding.system = "http://loinc.org"
* component[pregnancyStatus].code.coding.code = #82810-3
* component[pregnancyStatus].code.coding.display = "Pregnancy status"
* component[pregnancyStatus].valueCodeableConcept.coding.system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-pregnancy-status"
* component[pregnancyStatus].valueCodeableConcept.coding.code = #notpregnant
* component[pregnancyStatus].valueCodeableConcept.coding.display = "Not Pregnant"

// HIV Status (now recorded as Unknown)
* component[hivStatus].code.coding.system = "http://loinc.org"
* component[hivStatus].code.coding.code = #55284-4
* component[hivStatus].code.coding.display = "HIV status"
* component[hivStatus].valueCodeableConcept.coding.system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-hiv-status"
* component[hivStatus].valueCodeableConcept.coding.code = #DE46
* component[hivStatus].valueCodeableConcept.coding.display = "Unknown"

// Age in Weeks
* component[ageInWeeks].code.coding.system = "http://loinc.org"
* component[ageInWeeks].code.coding.code = #30525-0
* component[ageInWeeks].code.coding.display = "Age in weeks"
* component[ageInWeeks].valueQuantity.value = 12
* component[ageInWeeks].valueQuantity.unit = "wk"
* component[ageInWeeks].valueQuantity.system = "http://unitsofmeasure.org"
* component[ageInWeeks].valueQuantity.code = #wk

// Age in Months
* component[ageInMonths].code.coding.system = "http://loinc.org"
* component[ageInMonths].code.coding.code = #30525-0
* component[ageInMonths].code.coding.display = "Age in months"
* component[ageInMonths].valueQuantity.value = 3
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
