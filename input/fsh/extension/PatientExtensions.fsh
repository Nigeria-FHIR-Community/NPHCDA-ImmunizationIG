// These are the extensions used to capture a Patient's demographic information (Not even captured in related person)
// Extension using value[x] directly



Extension: NGAdministrativeWard
Id: nigeria-administrative-ward
Title: "NG-Imm Administrative Wards "
Description: "Captures the administrative ward within a geographic address "
* ^context[0].type = #element
* ^context[0].expression = "Address"
* ^status = #active
* ^publisher = "NPHCDA"
* value[x] only CodeableConcept
* valueCodeableConcept from NGWardsVS (example)



// Extension: NGBirthWeight
// Id:  birth-weight
// Title:  "NG-Imm Weight at birth"
// Description: "Weight  of the Immunization Client at birth"
// * ^context[0].type = #element
// * ^context[0].expression = "Patient"
// * value[x] only decimal


Extension: NGHIVStatus
Id:  hiv-status
Title:  "NG-Imm Client's HIV status"
Description: "The HIV status (positive, negative, or unknown) of the Immunization Client"
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* value[x] only CodeableConcept
* valueCodeableConcept from NGHivStatusVS (required)

Extension: NGPregnancyStatus
Id:  pregnancy-status
Title:  "NG-Imm Client's Pregnancy status"
Description: "The Pregnancy status (pregnant or not-pregnant) of the Immunization Client, 
including the period during which the status was asserted."
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* extension contains
    status 1..1 and
    assertionPeriod 0..1

* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from NGPregnancyStatusVS (required)
* extension[status].valueCodeableConcept ^short = "Pregnancy status"
* extension[status].valueCodeableConcept ^definition = "Pregnant or not pregnant, using NGPregnancyStatusVS."

// Sub-extension: period when status was asserted
* extension[assertionPeriod].value[x] only Period
* extension[assertionPeriod].valuePeriod ^short = "Period when the pregnancy status was asserted"
* extension[assertionPeriod].valuePeriod ^definition = "The date range during which the pregnancy status was confirmed or applicable."

// Extension: NGAgeInWeeks
// Id:  age-in-weeks
// Title:  "NG-Imm Client Age in Weeks"
// Description: "Age of the Immunization Client recorded in weeks"
// * ^context[0].type = #element
// * ^context[0].expression = "Patient"
// // Complex extension with two sub-extensions
// * extension contains
//     ageValue 1..1 and
//     assertionDateTime 0..1
// // Sub-extension: age in weeks (integer or Quantity)
// * extension[ageValue].value[x] only Quantity
// * extension[ageValue].valueQuantity ^short = "Age in completed weeks"
// * extension[ageValue].valueQuantity ^definition = "The age of the client in whole weeks, as of the assertion date."

// // Sub-extension: date/time when the age was asserted
// * extension[assertionDateTime].value[x] only dateTime
// * extension[assertionDateTime].valueDateTime ^short = "When the age was recorded"
// * extension[assertionDateTime].valueDateTime ^definition = "The date and time when the age in weeks was determined or recorded."


// Extension: NGAgeInMonths
// Id:  age-in-months
// Title:  "NG-Imm Client Age in Months"
// Description: "Age of the Immunization Client recorded in months"
// * ^context[0].type = #element
// * ^context[0].expression = "Patient"
// // Complex extension with two sub-extensions
// * extension contains
//     ageValue 1..1 and
//     assertionDateTime 0..1
// // Sub-extension: age in weeks (integer or Quantity)
// * extension[ageValue].value[x] only Quantity
// * extension[ageValue].valueQuantity ^short = "Age in completed weeks"
// * extension[ageValue].valueQuantity ^definition = "The age of the client in whole months, as of the assertion date."

// // Sub-extension: date/time when the age was asserted
// * extension[assertionDateTime].value[x] only dateTime
// * extension[assertionDateTime].valueDateTime ^short = "When the age was recorded"
// * extension[assertionDateTime].valueDateTime ^definition = "The date and time when the age in months was determined or recorded."




// Extension: NGAgeInYears
// Id:  age-in-years
// Title:  "NG-Imm Client Age in Years"
// Description: "Age of the Immunization Client recorded in years"
// * ^context[0].type = #element
// * ^context[0].expression = "Patient"
// // Complex extension with two sub-extensions
// * extension contains
//     ageValue 1..1 and
//     assertionDateTime 0..1
// // Sub-extension: age in years (integer or Quantity)
// * extension[ageValue].value[x] only Quantity
// * extension[ageValue].valueQuantity ^short = "Age in completed years"
// * extension[ageValue].valueQuantity ^definition = "The age of the client in whole years, as of the assertion date."

// // Sub-extension: date/time when the age was asserted
// * extension[assertionDateTime].value[x] only dateTime
// * extension[assertionDateTime].valueDateTime ^short = "When the age was recorded"
// * extension[assertionDateTime].valueDateTime ^definition = "The date and time when the age in years was determined or recorded."



