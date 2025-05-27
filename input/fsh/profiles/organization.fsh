Profile: NEIROrganization
Parent: Organization
Id: neir-organization 
Description: "An organization profile for the Nigerian Electronic Immunization Registry (NEIR), representing healthcare facilities responsible for immunization services."


* identifier 1..* MS
* identifier.system 1..1
* identifier.value 1..1
* active 1..1 MS
* name 1..1 MS
* type 1..*
* type from http://terminology.hl7.org/ValueSet/organization-type (extensible)
* telecom 0..*
* telecom.system 1..1
* telecom.value 1..1
* telecom.use 0..1
* address 1..* MS
* address.line 1..*
* address.city 1..1
* address.state 1..1
* address.postalCode 0..1
* address.country 1..1



Instance: organization-example
InstanceOf: NEIROrganization
Usage: #example
Title: "NEIR Lagos Clinic"

* identifier.system = "https://neir.gov.ng/facility-ids"
* identifier.value = "LAG-12345"
* active = true
* name = "NEIR Lagos Clinic"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* telecom[0].system = #phone
* telecom[0].value = "+234-802-123-4567"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "contact@neir-lagos.ng"
* telecom[1].use = #work
* address.line = "15 Broad Street"
* address.city = "Lagos"
* address.state = "Lagos State"
* address.postalCode = "101001"
* address.country = "Nigeria"
