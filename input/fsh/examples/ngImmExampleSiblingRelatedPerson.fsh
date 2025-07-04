Instance: NgImmExampleSiblingRelatedPerson
InstanceOf: NgImmSiblingRelatedPerson
Title: "Example Sibling as RelatedPerson"
Description: "Represents a sibling (mother's other child) related to the immunization client"
Usage: #example

* patient.reference = "urn:uuid:patient-001"
* name[0].given[0] = "Suleiman"
* name[0].given[1] = "Ayodele"
* name[0].family = "Abdulraheem"
* birthDate = "2020-03-10"
* gender = $NGGenderVS#male "Male"
* relationship.text = $ngrelationships#brother "Brother"

* extension[siblingHealthStatus].valueCodeableConcept = $sibling-health-status#healthy "Healthy"
