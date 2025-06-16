// These are the extensions used to capture a Patient's demographic information (Not even captured in related person)
// Extension using value[x] directly



Extension: AddressAdministrativeWard
Id: address-administrative-ward
Title: "Administrative Ward in Address (e.g., Ward 3, Ikotun LCDA)"
Description: "Captures the administrative ward within a geographic address"
* ^context[0].type = #element
* ^context[0].expression = "Address"
* value[x] only string



Extension: BirthWeight
Id:  birth-weight
Title:  "Weight at birth"
Description: "Weight  of the Immunization Client at birth"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only decimal


Extension: HIVStatus
Id:  hiv-status
Title:  "Client's HIV status"
Description: "The HIV status (positive or negative) of the Immunization Client"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only boolean
* valueBoolean ^short = "The HIV status (positive or negative) of the Immunization Client"

Extension: PregnancyStatus
Id:  pregnancy-status
Title:  "Client's Pregnancy status"
Description: "The Pregnancy status (pregnant or not-pregnant) of the Immunization Client"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only string
* valueString ^short = "The Pregnancy status (pregnant or not-pregnant) of the Immunization Client"

Extension: AgeInWeeks
Id:  age-in-weeks
Title:  "Client Age in Weeks"
Description: "Age of the Immunization Client recorded in weeks"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "Age of the Immunization Client recorded in weeks"

Extension: AgeInMonths
Id:  age-in-months
Title:  "Client Age in Months"
Description: "Age of the Immunization Client recorded in months"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "Age of the Immunization Client recorded in months"

Extension: AgeInYears
Id:  age-in-years
Title:  "Client Age in Years"
Description: "Age of the Immunization Client recorded in years"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "Age of the Immunization Client recorded in years"

Extension: SiblingHealthStatus
Id: sibling-health-status
Title: "Sibling's health status"
Description: "The health status of the Client's sibling"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "The health status of the Client's sibling"



/* Extension: SiblingSurname
Id: sibling-surname
Title: "Surname of Client's sibling"
Description: "The surname (or family name) of the Client's sibling in HumanName FHIR Structure"
* ^context[0].type = #element
* ^context[0].expression = "HumanName"
* value[x] only string
* valueString ^short = "The surname (or family name) of the Client's sibling in HumanName FHIR Structure"

Extension: SiblingGivenName
Id: sibling-givenname
Title: "Sibling's first name"
Description: "The first name of the Client's sibling in HumanName FHIR Structure"
* ^context[0].type = #element
* ^context[0].expression = "HumanName"
* value[x] only string
* valueString ^short = "The first name of the Client's sibling in HumanName FHIR Structure"

Extension: SiblingBirthYear
Id: sibling-birthyear
Title: "sibling's year of birth"
Description: "The year the Client's sibling in was born"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "The first name of the Client's sibling in HumanName FHIR Structure"

Extension: SiblingGender
Id: sibling-gender
Title: "Sibling's sex"
Description: "The sex the Client's sibling"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only integer
* valueInteger ^short = "The sex (or gender) of the Client's sibling" */
