Instance: practitioner-002
InstanceOf: NgImmPractitioner
Title: "Example NG-Imm Practitioner (CHEW, Kano)"
Description: "A Community Health Extension Worker providing RI services in Kano State."
* id = "practitioner-002"

// ---- Identifier ----
* identifier[0].system = "http://nphcda.gov.ng/ig/immunization/CodeSystem/nigeria-mdcn"
* identifier[0].value  = "CHEW-12346"

// ---- Core ----
* active = true
* name.family = "Abdullahi"
* name.given  = "Musa"

// ---- Gender (from NGGenderVS) ----
* gender = #male

// ---- Telecom(s) ----
* telecom[0].system = #phone
* telecom[0].value  = "+234-806-445-7788"
* telecom[+].system = #email
* telecom[=].value  = "musa.abdullahi@kano-phc.gov.ng"

// ---- Birth Date ----
* birthDate = "1990-11-08"

// ---- Qualification ----
* qualification[0].code.text = "CHEW License KNS/2022/01432"
* qualification[0].period.start = "2022-02-01"
* qualification[0].period.end   = "2025-02-01"
* qualification[0].issuer = Reference(organization-003) // NGO-supported outreach post in Kano

// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Practitioner</b>: Mr. John Bello (male), born 1982-12-10</p>
  <p><b>Identifier</b>: MDCN-654321</p>
  <p><b>Contact</b>: +234-809-555-8877</p>
  <p><b>Qualification</b>: Nursing Certificate issued by Kano PHC Board</p>
</div>
"""