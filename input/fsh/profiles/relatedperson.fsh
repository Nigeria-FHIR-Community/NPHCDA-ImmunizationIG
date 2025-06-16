Profile: NgImmSiblingRelatedPerson
Parent: RelatedPerson
Id: mother-other-children 
Description: "Sibling that Represents the mother's other children as RelatedPersons."

* patient 1..1 MS
* patient only Reference(NgImmPatient)
* name 1..* MS
* name.given 1..* 
* name.given ^short = "The first name and other names of Client's related person"
* name.family 0..1
* name.family ^short = "The surname of Client's related person"
* birthDate 0..1 MS
* gender 1..1 MS
* gender from AdministrativeGender (required)
* relationship 1..1 MS

// Hide extra items
* name.use 0..0 
* implicitRules 0..0
* modifierExtension 0..0
* active 0..0



// Extensions
* extension contains SiblingHealthStatus named siblingHealthStatus 0..1 MS
