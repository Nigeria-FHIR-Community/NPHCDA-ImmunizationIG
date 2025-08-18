Instance: organization-002
InstanceOf: NgImmOrganization
Title: "Example NG-Imm Organization (Private Hospital)"
Description: "A private hospital in Abuja offering immunization services."
* id = "organization-002"

// ---- Identifiers ----
* identifier[0].system = "http://fcta.gov.ng/facility-id"
* identifier[0].value = "ABJ-HOSP-0456"

// ---- Core ----
* active = true
* name = "Garki Specialist Hospital"

// ---- Type (from NGFacilityTypeVS) ----
* type[0].coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-facility-type"
* type[0].coding[0].code = #tertiary-hospital
* type[0].coding[0].display = "Tertiary Hospital"

// ---- Telecom(s) ----
* telecom[0].system = #phone
* telecom[0].value = "+234-701-234-5678"
* telecom[+].system = #email
* telecom[=].value = "info@garkihospital.org"

// ---- Address ----
* address[0].line[0] = "Plot 132, Area 3, Garki"
* address[0].city = "Abuja"
* address[0].district = #abj-lga001 "Abuja Municipal Area Council"
* address[0].state = #fct "Federal Capital Territory"

// ---- Ownership extension ----
* extension[NGOrganizationOwner].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-location-owner-cs"
* extension[NGOrganizationOwner].valueCodeableConcept.coding[0].code = #private
* extension[NGOrganizationOwner].valueCodeableConcept.coding[0].display = "Private Health Institution Location"

// ---- Hierarchy (optional) ----
* partOf = Reference(NgImmOrganization/org-parent-002) // e.g., FCT Health Services Department


// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Organization</b>: Kano State Primary Health Care Board</p>
  <p><b>Identifier</b>: KNSPHCB-01</p>
  <p><b>Type</b>: State Primary Healthcare Board</p>
  <p><b>Address</b>: Kano Municipal, Kano State</p>
</div>
"""