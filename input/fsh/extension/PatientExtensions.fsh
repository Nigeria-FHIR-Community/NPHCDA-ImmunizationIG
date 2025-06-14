Extension: PatientExtensions
Id: patient-extensions
Title: "Patient Extensions"
Description: "The Client's details not covered in the base specificatuion, but essential for immunization"
* ^context[+].type = #element
* ^context[=].expression = "Patient"
//Context: Patient

// Extension has multiple sub-extensions (not using value[x] directly)
* extension contains ageInWeeks 0..1
* extension[ageInWeeks] ^short = "The computed age of the Client in Weeks"
* extension contains ageInMonths 0..1
* extension[ageInMonths] ^short = "The computed age of the Client in Months"
* extension contains ageInYears 0..1
* extension[ageInYears] ^short = "The computed age of the Client in Years"
* extension contains birthWeight 0..1
* extension[birthWeight] ^short = "The weight of the Client at birth measured in kilograms"
* extension contains hivStatus 0..1
* extension[hivStatus] ^short = "The HIV aids status of the Client"

* extension contains pregnancyStatus 0..1
* extension contains administrativeWard 0..1
* extension contains siblingSurname 0..1
* extension contains siblingGivenName 0..1
* extension contains siblingBirthYear 0..1
* extension contains siblingGender 0..1
* extension contains siblingHealthStatus 0..1


// Each sub-extension definition
* extension[siblingSurname].value[x] only string
* extension[siblingGivenName].value[x] only string
* extension[siblingGender].value[x] only string
* extension[siblingHealthStatus].value[x] only string
* extension[siblingBirthYear].value[x] only string
* extension[ageInWeeks].value[x] only integer
* extension[ageInMonths].value[x] only integer
* extension[ageInYears].value[x] only integer
* extension[birthWeight].value[x] only decimal
* extension[hivStatus].value[x] only boolean
* extension[pregnancyStatus].value[x] only boolean
* extension[administrativeWard].value[x] only string




