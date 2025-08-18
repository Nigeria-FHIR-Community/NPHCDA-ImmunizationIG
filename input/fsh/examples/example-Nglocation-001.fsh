Instance: location-001
InstanceOf: NgImmLocation
Title: "Example NG-Imm Location"
Description: "An immunization service location (Primary Health Centre) in Lagos, Nigeria."

// ---- Core fields ----
* status = #active
* name = "Surulere Primary Health Centre"

// Type of facility (from NGFacilityTypeVS)
* type.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-facility-type"
* type.coding[0].code = #phc-center-l2
* type.coding[0].display = "PHC Center Level 2"

// ---- Address ----
* address.line = "45 Bode Thomas Street"
* address.city = "Surulere"
* address.district = #lag-lga002 "Surulere LGA"
* address.state = #lagos "Lagos State"
* address.country = "NG"

// Extension for Administrative Ward
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-wards"
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].code = #lag-ward010
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].display = "Shitta/Ogunlana Ward"

// ---- Telecom ----
* telecom[0].system = #phone
* telecom[0].value = "+234-8031234567"
* telecom[+].system = #email
* telecom[=].value = "surulerephc@nphcda.gov.ng"

// ---- Position (geo-coordinates) ----
* position.latitude = 6.5000
* position.longitude = 3.3667
* position.altitude = 50

// ---- Managing organization ----
* managingOrganization = Reference(NgImmOrganization/organization-001)

// ---- Part of another location ----
* partOf = Reference(NgImmLocation/location-000) // e.g. parent "Lagos State PHC Board HQ"
