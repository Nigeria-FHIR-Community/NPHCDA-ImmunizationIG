Profile: NgImmSiblingRelatedPerson
Parent: RelatedPerson
Title: "NG-Imm RelatedPerson"
Id: mother-other-children 
Description: "Sibling that represents the mother's other children as RelatedPersons."

* patient 1..1 MS
* patient only Reference(NgImmPatient)
* patient ^short = "The client this person is related to"
* name 1..* MS
* name.given 1..* 
* name.given ^short = "The first name and other names of Client's sibling"
* name.family 0..1
* name.family ^short = "The surname of Client's sibling"
* birthDate 0..1 MS
* birthDate ^short = "The date the sibling was born"
//* gender from NGGenderVS (required)
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* gender ^short = "The sex of the Immunization client"
* relationship.text from NGRelationshipsVS (extensible)
* relationship.text ^short = "The relationship of the sibling with the Client e.g. brother| sister"

// Hide extra items
* name.use 0..0 
* implicitRules 0..0
* modifierExtension 0..0
* active 0..0



// Extensions
* extension contains SiblingHealthStatus named siblingHealthStatus 0..1 MS
