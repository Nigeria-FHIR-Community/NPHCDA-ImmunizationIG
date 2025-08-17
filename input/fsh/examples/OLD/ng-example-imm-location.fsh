Instance: location-example
InstanceOf: NgImmLocation
Usage: #example
Title: "NGImm Example Location"
Description: "An example immunization service location."
* status = #active
* name = "Kofar Dukayuwa PHC"
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#AMB "Ambulatory"
* address.text = "Kofar Dukayuwa PHC, Kano, Nigeria"
* address.city = "Kano"
* address.country = "NG"
* telecom.system = #phone
* telecom.value = "+2348012345678"
* telecom.use = #work
* address.extension[+].url = "administrativeWard"
* address.extension[=].valueCodeableConcept = #alu