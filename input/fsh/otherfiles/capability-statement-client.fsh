Instance: NgImmCapabilityStatementClient
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NG-Imm Client CapabilityStatement"
Description: "Describes expected behavior of clients consuming immunization services using the Nigerian profiles."
* status = #active
* date = "2025-06-22"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* format = #xml
* rest[+]
  * mode = #client
  * documentation = "Client that searches, retrieves and submits immunization records using Nigerian profiles."

  * resource[+]
    * type = #Patient
    * profile = Canonical(NgImmPatient)
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #patch

  * resource[+]
    * type = #Immunization
    * profile = Canonical(NgImmImmunization)
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #patch
