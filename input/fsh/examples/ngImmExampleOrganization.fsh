Instance: NgImmExampleOrganization
InstanceOf: NgImmOrganization
Title: "Example NG-Imm Organization"
Description: "Represents a health facility in Kogi State providing immunization services"
Usage: #example

* identifier[0].system = "https://herfama.kogistate.gov.ng"
* identifier[0].value = "KOHF-00123"

* active = true
* name = "Ankpa General Hospital"

* type[0] = $NGFacilityType#hospital "General Hospital"

* telecom[0].system = #phone
* telecom[0].value = "+2348031122334"

* address[0].line[0] = "Old Otukpo Road, Opp. Ankpa Market"
* address[0].city = "Ankpa"
* address[0].district = $NGLGAVS#KO08 "Ankpa"
* address[0].state = $NGStateVS#KO "Kogi"

* extension[NGOrganizationOwner].valueString = "Kogi State Primary Health Care Board"
