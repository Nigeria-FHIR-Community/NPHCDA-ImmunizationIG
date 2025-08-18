Instance: practitioner-001
InstanceOf: NgImmPractitioner
Title: "Example NG-Imm Practitioner"
Description: "A Nigerian healthcare practitioner serving as a Routine Immunization Officer."
* id = "practitioner-001"

// ---- Identifier ----
* identifier[0].system = "http://mdcn.gov.ng/practitioner-id"
* identifier[0].value = "MDCN-45231"

// ---- Core ----
* active = true
* name.family = "Okafor"
* name.given = "Nkiru"

// ---- Gender (from NGGenderVS) ----
* gender = #female

// ---- Telecom(s) ----
* telecom[0].system = #phone
* telecom[0].value = "+234-809-112-3344"
* telecom[+].system = #email
* telecom[=].value = "n.okafor@phcboard.gov.ng"

// ---- Birth Date ----
* birthDate = "1985-03-12"

// ---- Qualification ----
* qualification[0].code.text = "RN-IMM-2021-00456"
* qualification[0].period.start = "2021-01-01"
* qualification[0].period.end = "2026-01-01"
* qualification[0].issuer = Reference(NgImmOrganization/organization-001) 
  // e.g., Surulere Primary Health Centre / or regulatory body

// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Practitioner</b>: Dr. Nkiru Eze (female), born 1979-03-22</p>
  <p><b>Identifier</b>: MDCN-123456</p>
  <p><b>Contact</b>: +234-801-222-3344</p>
  <p><b>Qualification</b>: MBBS issued by LUTH</p>
</div>
"""