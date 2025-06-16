Profile: SiblingRelatedPerson
Parent: RelatedPerson
Id: mother-other-children 
Description: "Sibling that Represents the mother's other children as RelatedPersons."

* patient 1..1 MS
* patient only Reference(NgImmPatient)
* name 1..*
* name.given 1..* MS
* birthDate 0..1 MS
* gender 1..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* relationship 1..1 


// Extensions
* extension contains SiblingHealthStatus named siblingHealthStatus 0..1 MS
