Profile: NEIRMotherOtherChildren
Parent: RelatedPerson
Id: mother-other-children 
Description: "Represents the mother's other children as RelatedPersons."

* patient 1..1 MS
* patient only Reference(Patient)
* name 1..*
* name.given 1..*
* birthDate 0..1
* gender 1..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)


Instance: Child1
InstanceOf: NEIRMotherOtherChildren
Title: "Example RelatedPerson - Mother's Other Child"
Description: "An example of a mother's other child as a RelatedPerson resource."

* patient = Reference(Patient/patient-example)
* name.given = "John"
* birthDate = "2015-01-01"
* gender = #male
