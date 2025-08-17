Extension: SiblingHealthStatus
Id: sibling-health-status
Title: "NG-Imm Sibling's health status"
Description: "The health status of the Client's sibling"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept from NGSiblingHealthStatusVS (required)
* valueCodeableConcept ^short = "The health status of the Client's sibling"

