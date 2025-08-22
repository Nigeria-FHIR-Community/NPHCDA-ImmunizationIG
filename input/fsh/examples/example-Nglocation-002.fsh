Instance: location-002
InstanceOf: NgImmLocation
Title: "Example NG-Imm Location (Outreach Site)"
Description: "An outreach immunization service location (temporary site in a school) in Kano, Nigeria."

// ---- Core fields ----
* status = #active
* name = "Sabon Gari Primary School Outreach Post"

// Facility type – outreach-post from NGFacilityTypeVS
* type.coding[0].system = "http://nphcda.gov.ng/ig/immunization/CodeSystem/nigeria-facility-type"
* type.coding[0].code = #outreach
* type.coding[0].display = "Outreach Post"

// ---- Address ----
* address.line = "Sabon Gari Primary School"
* address.city = "Kano"
* address.district = #kn-gezawa "Gezawa LGA"
* address.state = #KN "Kano"
* address.country = "NG"

// Extension for Administrative Ward
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/immunization/CodeSystem/nigeria-wards"
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].code = #fc-amac-gawu 
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].display = "Gawu"

// ---- Telecom ----
* telecom[0].system = #phone
* telecom[0].value = "+234-8069876543"

// ---- Position (geo-coordinates) ----
* position.latitude = 12.0023
* position.longitude = 8.5325
* position.altitude = 450

// ---- Managing organization ----
* managingOrganization = Reference(organization-002)

// ---- Part of another location ----
* partOf = Reference(location-001) // e.g. linked to Surulere PHC or LGA base facility
