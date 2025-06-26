Extension: SiblingHealthStatus
Id: sibling-health-status
Title: "NG-Imm Sibling's health status"
Description: "The health status of the Client's sibling"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept from NGSiblingHealthStatusVS (required)
* valueCodeableConcept ^short = "The health status of the Client's sibling"



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
