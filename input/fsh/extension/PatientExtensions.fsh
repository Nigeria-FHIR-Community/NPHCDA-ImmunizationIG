// These are the extensions used to capture a Patient's demographic information (Not even captured in related person)
// Extension using value[x] directly



Extension: NGAdministrativeWard
Id: nigeria-administrative-ward
Title: "Nigeria Administrative Wards "
Description: "Captures the administrative ward within a geographic address "
* ^context[0].type = #element
* ^context[0].expression = "Address"
* ^status = #active
* ^publisher = "NPHCDA"
* value[x] only CodeableConcept
* valueCodeableConcept from NGWardsVS (required)



Extension: NGBirthWeight
Id:  birth-weight
Title:  "Weight at birth"
Description: "Weight  of the Immunization Client at birth"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only decimal


Extension: NGHIVStatus
Id:  hiv-status
Title:  "Client's HIV status"
Description: "The HIV status (positive, negative, or unknown) of the Immunization Client"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept from NGHivStatusVS (required)

Extension: NGPregnancyStatus
Id:  pregnancy-status
Title:  "Client's Pregnancy status"
Description: "The Pregnancy status (pregnant or not-pregnant) of the Immunization Client"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept from NGPregnancyStatusVS (required)

Extension: NGAgeInWeeks
Id:  age-in-weeks
Title:  "Client Age in Weeks"
Description: "Age of the Immunization Client recorded in weeks"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "Age of the Immunization Client recorded in weeks"

Extension: NGAgeInMonths
Id:  age-in-months
Title:  "Client Age in Months"
Description: "Age of the Immunization Client recorded in months"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "Age of the Immunization Client recorded in months"

Extension: NGAgeInYears
Id:  age-in-years
Title:  "Client Age in Years"
Description: "Age of the Immunization Client recorded in years"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "Age of the Immunization Client recorded in years"


Extension: NGCreatedDate
Id:  date-client-created
Title:  "Date client record was created"
Description: "Date the client record was first created"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only date
* valueDate ^short = "Date the client record was first created"