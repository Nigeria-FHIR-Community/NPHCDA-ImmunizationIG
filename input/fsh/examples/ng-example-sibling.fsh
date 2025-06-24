
Instance: Child1
InstanceOf: NgImmSiblingRelatedPerson
Title: "Example Sibling - Mother's Other Child"
Description: "An example of a mother's other child as a RelatedPerson resource."

* patient = Reference(NgImmPatient/ExampleNgImmPatient)
* name.given = "Segun"
* birthDate = "2015-01-01"
* gender = #male
* relationship.text = "brother"


Instance: Sister2
InstanceOf: NgImmSiblingRelatedPerson
Title: "NGImm Example Sibling"
Description: "An example of a mother's other child as a RelatedPerson resource."

* patient = Reference(NgImmPatient/ExampleNgImmPatient)
* name.given = "Nneka"
* birthDate = "2017-01-01"
* gender = #female
* relationship.text = "sister"