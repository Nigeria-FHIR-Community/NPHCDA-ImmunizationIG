Instance: NgImmExampleSiblingRelatedPerson
InstanceOf: NgImmSiblingRelatedPerson
Title: "NGImm Example Sibling used in bundle"
Description: "Represents a sibling (mother's other child) related to the immunization client for use in Bundle"
Usage: #example

* patient.reference = "urn:uuid:patient-001"
* name[0].given[0] = "Suleiman"
* name[0].given[1] = "Ayodele"
* name[0].family = "Abdulraheem"
* birthDate = "2020-03-10"
* gender = #male "Male"
* relationship.text = #brother "Brother"

* extension[siblingHealthStatus].valueCodeableConcept = #healthy "Healthy"
