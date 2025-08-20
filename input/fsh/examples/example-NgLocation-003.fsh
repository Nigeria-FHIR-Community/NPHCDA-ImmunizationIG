Instance: location-003
InstanceOf: NgImmLocation
Title: "Example NG-Imm Location (Mobile Team)"
Description: "A mobile immunization team location operating in Benue State, Nigeria."

// ---- Core fields ----
* status = #active
* name = "Benue State Mobile Immunization Team"

// Facility type – mobile team represented using tertiary or outreach category
* type.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-facility-type"
* type.coding[0].code = #outreach-post
* type.coding[0].display = "Outreach Post (Mobile Team)"

// ---- Address (limited, but still required) ----
* address.line = "Mobile outreach service operating along Gboko Road"
* address.city = "Makurdi"
* address.district = #ben-lga012 "Makurdi LGA"
* address.state = #benue "Benue State"
* address.country = "NG"

// Extension for Administrative Ward
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-wards"
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].code = #ben-ward034
* address.extension[NGadministrativeWard].valueCodeableConcept.coding[0].display = "Wadata Ward"

// ---- Telecom ----
* telecom[0].system = #phone
* telecom[0].value = "+234-8091234567"

// ---- Position (geo-coordinates to track team location) ----
* position.latitude = 7.7322
* position.longitude = 8.5391
* position.altitude = 120

// ---- Managing organization ----
* managingOrganization = Reference(organization-003)

// ---- Part of ----
// Mobile teams may report to an LGA PHC department
* partOf = Reference(location-002)
