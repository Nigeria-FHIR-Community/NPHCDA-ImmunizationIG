Profile: NgImmRUObservation
Parent: Observation
Id: NgImmRUObservation
Title: "NG-Imm ClientRegistUpdate-Observations"
Description: "A composite Observation profile capturing state of health, underlying conditions, HIV status, ages in weeks/months/years during client registration."

* status 1..1
* status = #final

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history

* code 1..1
* code = $loinc#30525-0 "Age"        // Use LOINC Age as the main analyte

* subject 1..1
* subject only Reference(NgImmPatient)

* effective[x] 1..1

// Force age to be expressed via components (not Observation.value[x])
* value[x] 0..0

// Slice components by the component.code
* component 1..* MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #closed
* component contains
    ageInWeeks 0..1 MS and
    ageInMonths 0..1 MS and
    ageInYears 0..1 MS


// Component: Pregnancy Status
* component contains pregnancyStatus 0..1
* component[pregnancyStatus].code = $loinc#82810-3 "Pregnancy status"
* component[pregnancyStatus].valueCodeableConcept 1..1 MS
* component[pregnancyStatus].valueCodeableConcept from NGPregnancyStatusVS (extensible)

// Component: HIV Status
* component contains hivStatus 0..1
* component[hivStatus].code = $sct#278977008 "HIV status"
* component[hivStatus].valueCodeableConcept 1..1 MS
* component[hivStatus].valueCodeableConcept from NGHivStatusVS (extensible)


// Weight at Birth
* component contains birthWeight 0..1
* component[birthWeight].code = $loinc#8339-4 "Birth weight Measured"
* component[birthWeight].valueQuantity 1..1
* component[birthWeight].valueQuantity.unit = "g"
* component[birthWeight].valueQuantity.system = "http://unitsofmeasure.org"
//* component[birthWeight].valueQuantity.code = #g


// ---- ageInWeeks ----
* component[ageInWeeks].code = $ngAgeComp#age-in-weeks "Age in weeks"
* component[ageInWeeks].value[x] only Quantity
* component[ageInWeeks].valueQuantity.system = $ucum
* component[ageInWeeks].valueQuantity.code = #wk
* component[ageInWeeks].valueQuantity.unit = "week"

// ---- ageInMonths ----
* component[ageInMonths].code = $ngAgeComp#age-in-months "Age in months"
* component[ageInMonths].value[x] only Quantity
* component[ageInMonths].valueQuantity.system = $ucum
* component[ageInMonths].valueQuantity.code = #mo
* component[ageInMonths].valueQuantity.unit = "month"

// ---- ageInYears ----
* component[ageInYears].code = $ngAgeComp#age-in-years "Age in years"
* component[ageInYears].value[x] only Quantity
* component[ageInYears].valueQuantity.system = $ucum
* component[ageInYears].valueQuantity.code = #yr
* component[ageInYears].valueQuantity.unit = "year"
