Profile: NEIRLocation
Parent: Location
Id: neir-location 
Description: "A profile for immunization service locations in the Nigerian Electronic Immunization Registry (NEIR), including health facilities, outreach sites, and mobile vaccination units."
* ^url = "http://nigerian.org/fhir/StructureDefinition/neir-location"
* ^version = "1.0.0"
* ^status = #active
* status 1..1
* name 1..1
* type 1..* MS
* type from http://terminology.hl7.org/CodeSystem/v3-RoleCode (extensible)
* address 1..1 MS
* address.country = "NG" (exactly)
* telecom 0..* MS


Instance: location-example
InstanceOf: NEIRLocation
Usage: #example
Description: "An example immunization service location in the Nigerian Electronic Immunization Registry (NEIR)."
* status = #active
* name = "Kofar Dukayuwa PHC"
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#AMB "Ambulatory"
* address.text = "Kofar Dukayuwa PHC, Kano, Nigeria"
* address.city = "Kano"
* address.country = "NG"
* telecom.system = #phone
* telecom.value = "+2348012345678"
* telecom.use = #work
