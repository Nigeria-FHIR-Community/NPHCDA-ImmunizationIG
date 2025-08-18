Instance: organization-001
InstanceOf: NgImmOrganization
Title: "Example NG-Imm Organization (Lagos PHC)"
Description: "A healthcare facility providing routine immunization services in Lagos State."
* id = "organization-001"

// ---- Identifiers (1..*) ----
* identifier[0].system = "http://herfama.lagos.gov.ng/facility-id"
* identifier[0].value = "LAG-PHC-000123"

// ---- Core flags & naming ----
* active = true
* name = "Surulere Primary Health Centre"

// ---- Type (from NGFacilityTypeVS) ----
* type[0].coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-facility-type"
* type[0].coding[0].code = #phc-center-l2
* type[0].coding[0].display = "PHC Center Level 2"

// ---- Telecom(s) ----
* telecom[0].system = #phone
* telecom[0].value = "+234-803-123-4567"
* telecom[+].system = #email
* telecom[=].value = "surulerephc@nphcda.gov.ng"

// ---- Address (1..*) ----
* address[0].line[0] = "45 Bode Thomas Street"
* address[0].city = "Surulere"
* address[0].district = #lag-lga002 "Surulere LGA"
* address[0].state = #lagos "Lagos State"

// ---- Ownership extension ----
* extension[NGOrganizationOwner].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-location-owner-cs"
* extension[NGOrganizationOwner].valueCodeableConcept.coding[0].code = #public
* extension[NGOrganizationOwner].valueCodeableConcept.coding[0].display = "Public Health Institution Location"

// ---- Hierarchy (optional) ----
* partOf = Reference(NgImmOrganization/org-parent-001) // e.g., Lagos State Primary Health Care Board

// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Organization</b>: Lagos University Teaching Hospital (LUTH)</p>
  <p><b>Identifier</b>: HERFAMA-001</p>
  <p><b>Type</b>: Tertiary Hospital</p>
  <p><b>Address</b>: Idi-Araba, Surulere, Lagos State</p>
</div>
"""