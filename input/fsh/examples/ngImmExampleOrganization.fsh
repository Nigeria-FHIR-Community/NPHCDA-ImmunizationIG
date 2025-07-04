Instance: NgImmExampleOrganization
InstanceOf: NgImmOrganization
Title: "NG-Imm Example Organization"
Description: "Represents a health facility in Kogi State providing immunization services for use in Bundle"
Usage: #example

* identifier[0].system = "https://herfama.kogistate.gov.ng"
* identifier[0].value = "KOHF-00123"

* active = true
* name = "Ankpa General Hospital"

* type[0] = #hospital "General Hospital"

* telecom[0].system = #phone
* telecom[0].value = "+2348031122334"

* address[0].line[0] = "Old Otukpo Road, Opp. Ankpa Market"
* address[0].city = "Ankpa"
* address[0].district = #ko-ankpa "Ankpa"
* address[0].state = #KO "Kogi"

* extension[NGOrganizationOwner].valueCodeableConcept = #public "Kogi State Primary Health Care Board"
