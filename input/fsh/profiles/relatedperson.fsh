Profile: NgImmSiblingRelatedPerson
Parent: RelatedPerson
Title: "NGImm RelatedPerson"
Id: mother-other-children 
Description: "Sibling that Represents the mother's other children as RelatedPersons."

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
* gender 0..1
* gender ^short = "The Sex of the sibling e.g. male| female"
* relationship.text from NGRelationshipsVS (required)
* relationship.text ^short = "The relationship of the sibling with the Client e.g. brother| sister"

// Hide extra items
* name.use 0..0 
* implicitRules 0..0
* modifierExtension 0..0
* active 0..0



// Extensions
* extension contains SiblingHealthStatus named siblingHealthStatus 0..1 MS
