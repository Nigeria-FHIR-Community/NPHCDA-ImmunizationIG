Instance: NgImmExampleBundle
InstanceOf: NgImmBundle
Title: "Nigeria Immunization Example Bundle"
Description: "Example bundle containing Patient, Immunization, AllergyIntolerance, RelatedPerson, and Organization with request, response, and search metadata."
Usage: #example

* type = #collection
* meta.lastUpdated = "2025-07-04T08:30:00+01:00"

* entry[0].fullUrl = "urn:uuid:patient-001"
* entry[0].resource = NgImmExamplePatient
* entry[0].search.mode = #match
* entry[0].request.method = #POST
* entry[0].request.url = "Patient"
* entry[0].response.status = "201 Created"

* entry[1].fullUrl = "urn:uuid:imm-001"
* entry[1].resource = NgImmExampleImmunization
* entry[1].search.mode = #include
* entry[1].request.method = #POST
* entry[1].request.url = "Immunization"
* entry[1].response.status = "201 Created"

* entry[2].fullUrl = "urn:uuid:allergy-001"
* entry[2].resource = NgImmExampleAllergyIntolerance
* entry[2].search.mode = #include
* entry[2].request.method = #POST
* entry[2].request.url = "AllergyIntolerance"
* entry[2].response.status = "201 Created"

* entry[3].fullUrl = "urn:uuid:sibling-001"
* entry[3].resource = NgImmExampleSibling
* entry[3].search.mode = #include
* entry[3].request.method = #POST
* entry[3].request.url = "RelatedPerson"
* entry[3].response.status = "201 Created"

* entry[4].fullUrl = "urn:uuid:org-001"
* entry[4].resource = NgImmExampleOrganization
* entry[4].search.mode = #include
* entry[4].request.method = #POST
* entry[4].request.url = "Organization"
* entry[4].response.status = "201 Created"




