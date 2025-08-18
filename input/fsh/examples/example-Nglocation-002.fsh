Instance: location-002
InstanceOf: NgImmLocation
Title: "Example NG-Imm Location (Outreach Site)"
Description: "An outreach immunization service location (temporary site in a school) in Kano, Nigeria."

// ---- Core fields ----
* status = #active
* name = "Sabon Gari Primary School Outreach Post"

// Facility type – outreach-post from NGFacilityTypeVS
* type.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-facility-type"
* type.coding[0].code = #outreach-post
* type.coding[0].display = "Outreach Post"

// ---- Address ----
* address.line = "Sabon Gari Primary School"
* address.city = "Kano"
* address.district = #kan-lga007 "Fagge LGA"
* address.state = #kano "Kano State"
* address.country = "NG"

// Extension for Administrative Ward
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-wards"
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].code = #kan-ward023
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].display = "Sabon Gari Ward"

// ---- Telecom ----
* telecom[0].system = #phone
* telecom[0].value = "+234-8069876543"

// ---- Position (geo-coordinates) ----
* position.latitude = 12.0023
* position.longitude = 8.5325
* position.altitude = 450

// ---- Managing organization ----
* managingOrganization = Reference(NgImmOrganization/ngimmorg-002)

// ---- Part of another location ----
* partOf = Reference(NgImmLocation/location-001) // e.g. linked to Surulere PHC or LGA base facility
