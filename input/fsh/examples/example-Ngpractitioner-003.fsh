Instance: practitioner-003
InstanceOf: NgImmPractitioner
Title: "Example NG-Imm Practitioner (Midwife, Enugu)"
Description: "A licensed midwife responsible for maternal and child health services, including immunization, at a public hospital in Enugu."
* id = "practitioner-003"

// ---- Identifier ----
* identifier[0].system = "http://nmcn.gov.ng/practitioner-id"
* identifier[0].value  = "NMCN-MW-55872"

// ---- Core ----
* active = true
* name.family = "Eze"
* name.given  = "Chinelo"

// ---- Gender (from NGGenderVS) ----
* gender = #female

// ---- Telecom(s) ----
* telecom[0].system = #phone
* telecom[0].value  = "+234-803-221-5670"
* telecom[+].system = #email
* telecom[=].value  = "chinelo.eze@esuth.gov.ng"

// ---- Birth Date ----
* birthDate = "1982-07-24"

// ---- Qualification ----
* qualification[0].code.text = "Midwife License EN/MID/2019/02345"
* qualification[0].period.start = "2019-01-01"
* qualification[0].period.end   = "2024-12-31"
* qualification[0].issuer = Reference(NgImmOrganization/organization-002) 
  // e.g., Enugu State University Teaching Hospital (private/public facility reference)


// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Practitioner</b>: Dr. Aisha Mohammed (female), born 1975-05-05</p>
  <p><b>Identifier</b>: MDCN-778899</p>
  <p><b>Contact</b>: aisha.mohammed@example.org</p>
  <p><b>Qualification</b>: Public Health Certificate issued by FMOH</p>
</div>
"""