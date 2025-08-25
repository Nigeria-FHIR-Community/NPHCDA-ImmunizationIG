Instance: observation-002
InstanceOf: NgImmRUObservation
Title: "Example NG-Imm Registration Update Observation (Subsequent Visit)"
Description: "Observation recorded during a later visit to update client status and age-related details."

// ---- Core Observation fields ----
* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #social-history
* category[0].coding.display = "Social History"

// * code.coding.system = "http://loinc.org"
// * code.coding.code = #8716-3
// * code.coding.display = "Patient registration/update observation"

* subject = Reference(patient-003)
* effectiveDateTime = "2025-10-10T10:00:00+01:00"

// ---- Components (updated at subsequent visit) ----

// Pregnancy Status (unchanged: not pregnant)
* component[pregnancyStatus].code.coding.system = "http://loinc.org"
* component[pregnancyStatus].code.coding.code = #82810-3
* component[pregnancyStatus].code.coding.display = "Pregnancy status"
* component[pregnancyStatus].valueCodeableConcept.coding.system = "http://nphcda.gov.ng/ig/immunization/CodeSystem/nigeria-pregnancy-status"
* component[pregnancyStatus].valueCodeableConcept.coding.code = #notpregnant
* component[pregnancyStatus].valueCodeableConcept.coding.display = "Not Pregnant"

// HIV Status (now recorded as Unknown)
* component[hivStatus].code.coding.system = $sct
* component[hivStatus].code.coding.code = #278977008
* component[hivStatus].code.coding.display = "HIV status"
* component[hivStatus].valueCodeableConcept.coding.system = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-hiv-status"
* component[hivStatus].valueCodeableConcept.coding.code = #DE46
//* component[hivStatus].valueCodeableConcept.coding.display = "Unknown"

// Only the weeks slice populated
* component[ageInWeeks].code = $ngAgeComp#age-in-weeks "Age in weeks"
* component[ageInWeeks].valueQuantity.value = 5
* component[ageInWeeks].valueQuantity.system = $ucum
* component[ageInWeeks].valueQuantity.code = #wk
* component[ageInWeeks].valueQuantity.unit = "week"


// Only the months slice populated
* component[ageInMonths].code = $ngAgeComp#age-in-months "Age in months"
* component[ageInMonths].valueQuantity.value = 2
* component[ageInMonths].valueQuantity.system = $ucum
//* component[ageInMonths].valueQuantity.code = #mo
* component[ageInMonths].valueQuantity.unit = "month"



// Only the years slice populated
* component[ageInYears].code = $ngAgeComp#age-in-years "Age in years"
* component[ageInYears].valueQuantity.value = 0
* component[ageInYears].valueQuantity.system = $ucum
//* component[ageInYears].valueQuantity.code = #yr
* component[ageInYears].valueQuantity.unit = "year"
