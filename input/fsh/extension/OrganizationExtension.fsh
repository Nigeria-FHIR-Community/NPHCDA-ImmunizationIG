Extension: NGOrganizationOwner
Id: organozation-owner
Title: "NG-Imm owner of health institution"
Description: "An extension to define the owner of the health institution"
* ^context[0].type = #element
* ^context[0].expression = "Organization"
* value[x] only CodeableConcept
* valueCodeableConcept from NGOrganizationOwnerVS (required)
* valueCodeableConcept ^short = "Code system for the owner type of a vaccination location"