Instance: provenance-001
InstanceOf: NgImmProvenance
Title: "Example NG-Imm Provenance"
Description: "Provenance for creation of an Immunization record during an encounter at a Lagos PHC."

// ---- Targets (what this provenance is about) ----
* target[0] = Reference(immunization-001)
* target[+] = Reference(patient-001)

// ---- When it happened vs when recorded ----
* occurredDateTime = "2025-08-16T09:40:00+01:00"
* recorded = "2025-08-16T09:45:30+01:00"

// ---- Policies / guidelines in force ----
* policy[0] = "urn:policy:nphcda:ri-data-governance:v1"
* policy[+] = "urn:policy:nitda:ndpr:2019"
* policy[+] = "urn:policy:who:eul:immunization-data-guidance"

// ---- Location where action took place ----
* location = Reference(location-001) // Surulere PHC, Lagos

// ---- Reason (Purpose of Use) ----
* reason[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* reason[0].coding[0].code = #TREAT
* reason[0].coding[0].display = "Treatment"
* reason[0].text = "Routine immunization service delivery"

// ---- Activity performed ----
* activity.coding[0].system = "http://hl7.org/fhir/provenance-activity-type"
* activity.coding[0].code = #record-creation
* activity.coding[0].display = "Record Creation"
* activity.text = "Creation of immunization record"

// ---- Agent(s) involved ----
* agent[0].who = Reference(practitionerrole-001) // Routine Immunization Officer
* agent[0].role[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/participation-role-type"


* agent[+].who = Reference(organization-001) // Managing facility
* agent[=].role[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/participation-role-type"


// ---- Source entity (e.g., paper tally sheet scanned to DocumentReference) ----
* entity[0].role = #source
* entity[0].what = Reference(questionnaire-response-register-client-001)

// ---- Digital signature supporting authenticity ----
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.1
* signature[0].type[0].display = "Author's Signature"
* signature[0].when = "2025-08-16T09:45:20+01:00"
* signature[0].who = Reference(practitioner-001)
* signature[0].sigFormat = #application/jose
* signature[0].data = "ZXhhbXBsZS1qb3NlLXNpZw=="  // sample base64 JWS




// Example: Register Client Questionnaire
Instance: questionnaire-register-client-001
InstanceOf: Questionnaire
Title: "Register Client Questionnaire"
Description: "Questionnaire for capturing client details during immunization registration."
Usage: #example

* status = #active
* date = "2025-08-18T09:00:00+01:00"
* publisher = "National Primary Health Care Development Agency (NPHCDA)"
* name = "RegisterClientForm"
* title = "Register Client Form"
* description = "Standard form for registering clients for routine immunization services."

// Link to the RegisterClient logical model
* subjectType[0] = #Patient

// ---------------- Items ----------------
* item[0].linkId = "client-identifier"
* item[0].text = "Unique Client Identifier (NIN, MRN, or Immunization ID)"
* item[0].type = #string

* item[1].linkId = "client-name"
* item[1].text = "Full Name of Client"
* item[1].type = #string

* item[2].linkId = "client-sex"
* item[2].text = "Sex"
* item[2].type = #choice
* item[2].answerOption[0].valueCoding.code = #M
* item[2].answerOption[0].valueCoding.display = "Male"
* item[2].answerOption[1].valueCoding.code = #F
* item[2].answerOption[1].valueCoding.display = "Female"

* item[3].linkId = "date-of-birth"
* item[3].text = "Date of Birth"
* item[3].type = #date

* item[4].linkId = "caregiver-name"
* item[4].text = "Name of Caregiver (if applicable)"
* item[4].type = #string

* item[5].linkId = "phone-number"
* item[5].text = "Caregiver Phone Number"
* item[5].type = #string

* item[6].linkId = "address"
* item[6].text = "Residential Address"
* item[6].type = #text

* item[7].linkId = "facility"
* item[7].text = "Health Facility of Registration"
* item[7].type = #reference
* item[7].answerValueSet = "http://nphcda.gov.ng/ValueSet/facility-list"





// Example: Register Client QuestionnaireResponse
Instance: questionnaire-response-register-client-001
InstanceOf: QuestionnaireResponse
Title: "Register Client Questionnaire Response"
Description: "A completed Register Client form submitted for a new immunization client."
Usage: #example

* status = #completed
* authored = "2025-08-18T09:30:00+01:00"
* questionnaire = "Questionnaire/questionnaire-register-client-001"

// Link to subject (the client being registered)
* subject = Reference(patient-001)

// Author (the health worker completing the form)
* author = Reference(practitioner-001)

// ---------------- Answers ----------------
* item[0].linkId = "client-identifier"
* item[0].text = "Unique Client Identifier (NIN, MRN, or Immunization ID)"
* item[0].answer[0].valueString = "NIN-12345678901"

* item[1].linkId = "client-name"
* item[1].text = "Full Name of Client"
* item[1].answer[0].valueString = "Chukwuemeka Obi"

* item[2].linkId = "client-sex"
* item[2].text = "Sex"
* item[2].answer[0].valueCoding.code = #M
* item[2].answer[0].valueCoding.display = "Male"

* item[3].linkId = "date-of-birth"
* item[3].text = "Date of Birth"
* item[3].answer[0].valueDate = "2020-02-15"

* item[4].linkId = "caregiver-name"
* item[4].text = "Name of Caregiver (if applicable)"
* item[4].answer[0].valueString = "Ngozi Obi"

* item[5].linkId = "phone-number"
* item[5].text = "Caregiver Phone Number"
* item[5].answer[0].valueString = "+2348012345678"

* item[6].linkId = "address"
* item[6].text = "Residential Address"
* item[6].answer[0].valueString = "12 Ahmadu Bello Way, Ikeja, Lagos"

* item[7].linkId = "facility"
* item[7].text = "Health Facility of Registration"
* item[7].answer[0].valueReference = Reference(organization-001)
