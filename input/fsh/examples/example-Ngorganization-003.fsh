Instance: organization-003
InstanceOf: NgImmOrganization
Title: "Example NG-Imm Organization (NGO Outreach Post)"
Description: "A temporary outreach post supported by an international NGO providing immunization services."
* id = "organization-003"

// ---- Identifiers ----
* identifier[0].system = "http://nphcda.gov.ng/facility-id"
* identifier[0].value = "NGO-OUT-0789"

// ---- Core ----
* active = true
* name = "UNICEF Supported Outreach Immunization Post"

// ---- Type (from NGFacilityTypeVS) ----
* type[0].coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-facility-type"
* type[0].coding[0].code = #outreach-post
* type[0].coding[0].display = "Outreach Post"

// ---- Telecom(s) ----
* telecom[0].system = #phone
* telecom[0].value = "+234-809-876-5432"
* telecom[+].system = #email
* telecom[=].value = "outreach.kano@unicef.org"

// ---- Address ----
* address[0].line[0] = "Community Square, Kumbotso"
* address[0].city = "Kano"
* address[0].district = #kn-lga005 "Kumbotso LGA"
* address[0].state = #kano "Kano State"

// ---- Ownership extension ----
* extension[NGOrganizationOwner].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-location-owner-cs"
* extension[NGOrganizationOwner].valueCodeableConcept.coding[0].code = #ngo
* extension[NGOrganizationOwner].valueCodeableConcept.coding[0].display = "NGO Supported Location"

// ---- Hierarchy (optional) ----
* partOf = Reference(NgImmOrganization/org-parent-003) // e.g., Kano State Primary Health Care Management Board



// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Organization</b>: Federal Ministry of Health - Immunization Department</p>
  <p><b>Identifier</b>: FMOH-IMM-01</p>
  <p><b>Type</b>: Federal Health Agency</p>
  <p><b>Address</b>: Abuja FCT</p>
</div>
"""