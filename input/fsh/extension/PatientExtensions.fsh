Extension: PatientExtensions
Id: patient-extensions
Title: "Patient Extensions"
Description: "The Client's details not covered in the base specificatuion, but essential for immunization"
* ^context[+].type = #element
* ^context[=].expression = "Patient"

// Extension has multiple sub-extensions (not using value[x] directly)
* extension contains
    ageInWeeks 0..1 and
    ageInMonths 0..1 and
    ageInYears 0..1 and
    birthWeight 0..1 and
    hivStatus 0..1 and
    pregnancyStatus 0..1 and
    ward 0..1 and
    siblingSurname 0..1 and
    siblingGivenName 0..1 and
    siblingBirthYear 0..1 and
    siblingGender 0..1 and
    siblingHealthStatus 0..1


// Each sub-extension definition
* extension[siblingSurname].value[x] only string
* extension[siblingGivenName].value[x] only string
* extension[siblingGender].value[x] only string
* extension[siblingHealthStatus].value[x] only string
* extension[siblingBirthYear].value[x] only date
* extension[ageInWeeks].value[x] only integer
* extension[ageInMonths].value[x] only integer
* extension[ageInYears].value[x] only integer
* extension[birthWeight].value[x] only decimal
* extension[hivStatus].value[x] only boolean
* extension[pregnancyStatus].value[x] only boolean
* extension[ward].value[x] only string




