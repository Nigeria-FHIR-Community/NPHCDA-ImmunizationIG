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



Extension: NGBirthWeight
Id:  birth-weight
Title:  "NG-Imm Weight at birth"
Description: "Weight  of the Immunization Client at birth"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only decimal


Extension: NGHIVStatus
Id:  hiv-status
Title:  "NG-Imm Client's HIV status"
Description: "The HIV status (positive, negative, or unknown) of the Immunization Client"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept from NGHivStatusVS (required)

Extension: NGPregnancyStatus
Id:  pregnancy-status
Title:  "NG-Imm Client's Pregnancy status"
Description: "The Pregnancy status (pregnant or not-pregnant) of the Immunization Client"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept from NGPregnancyStatusVS (required)

Extension: NGAgeInWeeks
Id:  age-in-weeks
Title:  "NG-Imm Client Age in Weeks"
Description: "Age of the Immunization Client recorded in weeks"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "Age of the Immunization Client recorded in weeks"

Extension: NGAgeInMonths
Id:  age-in-months
Title:  "NG-Imm Client Age in Months"
Description: "Age of the Immunization Client recorded in months"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "Age of the Immunization Client recorded in months"

Extension: NGAgeInYears
Id:  age-in-years
Title:  "NG-Imm Client Age in Years"
Description: "Age of the Immunization Client recorded in years"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "Age of the Immunization Client recorded in years"


/* Extension: NGCreatedDate
Id:  date-client-created
Title:  "NG-Imm Date client record was created"
Description: "Date the client record was first created"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only dateTime
* valueDateTime ^short = "Date the client record was first created" */