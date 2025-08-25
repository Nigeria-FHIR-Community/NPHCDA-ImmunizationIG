Instance: observation-001
InstanceOf: NgImmRUObservation
Title: "Example NG-Imm Registration Observation"
Description: "An example observation recorded when a client is registered, capturing health and status data."

// ---- Core Observation fields ----
* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #social-history
* category[0].coding.display = "Social History"

//* code.coding.system = $loinc
//* code.coding.code = #8716-3
//* code.coding.display = "Patient registration observation"

* subject = Reference(patient-001)

* effectiveDateTime = "2025-08-15T09:30:00+01:00"

// ---- Components ----

// Pregnancy Status
* component[pregnancyStatus].code.coding = $loinc#82810-3
//* "Pregnancy status"
* component[pregnancyStatus].valueCodeableConcept.coding = http://nphcda.gov.ng/ig/immunization/CodeSystem/nigeria-pregnancy-status#notpregnant

// HIV Status
* component[hivStatus].code.coding.system = $sct
* component[hivStatus].code.coding.code = #278977008
* component[hivStatus].code.coding.display = "HIV status"
* component[hivStatus].valueCodeableConcept.coding.system = $ngAgeComp
* component[hivStatus].valueCodeableConcept.coding.code = #negative
* component[hivStatus].valueCodeableConcept.coding.display = "Negative"

// Birth Weight
* component[birthWeight].code.coding.system = $loinc
* component[birthWeight].code.coding.code = #8339-4
//* component[birthWeight].code.coding.display = "Birth weight Measured"
* component[birthWeight].valueQuantity.value = 3200
//* component[birthWeight].valueQuantity.unit = "g"
* component[birthWeight].valueQuantity.system = $ucum
//* component[birthWeight].valueQuantity.code = #g




// Only the weeks slice populated
* component[ageInWeeks].code = $ngAgeComp#age-in-weeks "Age in weeks"
* component[ageInWeeks].valueQuantity.value = 5
* component[ageInWeeks].valueQuantity.system = $ucum
//* component[ageInWeeks].valueQuantity.code = #wk
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
