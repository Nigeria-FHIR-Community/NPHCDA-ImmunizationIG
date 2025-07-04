Profile: NgImmLocation
Parent: Location
Title: "NG-Imm Location"
Id: nigeria-location 
Description: "A profile for immunization service locations, including health facilities, outreach sites, and mobile vaccination units."
//* ^url = "http://nphcda.gov.ng/ig/fhir/StructureDefinition/ng-location"
* ^version = "1.0.0"
* ^status = #active
* status 1..1
* name 1..1
* type 1..* MS
* type from NGFacilityTypeVS (extensible)
* address 1..1 MS
* address.extension contains NGAdministrativeWard named NGadministrativeWard 0..1 MS
* address.line 0..1 MS
* address.line ^short = "The line address of the vaccination Location"
* address.city 0..1
* address.city ^short = "The city, town or settlement where the vaccination location"
* address.district from NGLGAsVS (required)
* address.district ^short = "The LGA where the vaccination location"
* address.state from NGStatesVS (required)
* address.state ^short = "The State in Nigeria where the vaccination location"
* address.country = "NG" (exactly)
* telecom 0..* MS
* position 0..1
* position.altitude 0..1
* position.longitude 1..1 MS
* position.latitude 1..1 MS
* managingOrganization only Reference(NgImmOrganization)
* managingOrganization ^short = "Organization responsible for provisioning and upkeep of the vaccination location"
* partOf only Reference(NgImmLocation)
* partOf ^short = "Another location this organization is physically part of"



