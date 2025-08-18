Instance: provenance-002
InstanceOf: NgImmProvenance
Title: "Example NG-Imm Provenance Update"
Description: "Provenance for updating a Patient and AllergyIntolerance record following an adverse reaction to Measles vaccine at Kano General Hospital."

// ---- Target resources ----
* target[0] = Reference(NgImmPatient/patient-003)
* target[+] = Reference(NgImmAllergyIntolerance/allergyintolerance-002)

// ---- When it happened vs when recorded ----
* occurredDateTime = "2025-08-10T12:20:00+01:00"
* recorded = "2025-08-10T12:35:00+01:00"

// ---- Policies observed ----
* policy[0] = "urn:policy:nphcda:aefi-reporting-guideline:v2"
* policy[+] = "urn:policy:ndpr:2019"

// ---- Location ----
* location = Reference(NgImmLocation/location-003) // Kano General Hospital

// ---- Reason ----
* reason[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* reason[0].coding[0].code = #ADR
* reason[0].coding[0].display = "Adverse Drug Reaction Reporting"
* reason[0].text = "Update due to reporting of measles vaccine adverse event"

// ---- Activity ----
* activity.coding[0].system = "http://hl7.org/fhir/provenance-activity-type"
* activity.coding[0].code = #record-update
* activity.coding[0].display = "Record Update"
* activity.text = "Updating patient and allergy records"

// ---- Agents ----
* agent[0].who = Reference(NgImmPractitionerRole/practitionerrole-002) // AEFI Surveillance Officer
* agent[0].role[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/participation-role-type"


* agent[+].who = Reference(NgImmOrganization/organization-002) // Kano General Hospital
* agent[=].role[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/participation-role-type"


// ---- Supporting entity ----
* entity[0].role = #source
* entity[0].what = Reference(QuestionnaireResponse/aefi-questionnaire-001)

// ---- Digital signature ----
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.5
* signature[0].type[0].display = "Verification Signature"
* signature[0].when = "2025-08-10T12:34:50+01:00"
* signature[0].who = Reference(NgImmPractitioner/practitioner-002)
* signature[0].sigFormat = #application/jose
* signature[0].data = "dmVyaWZpZWQtYWVmLWp3cw==" // example JWS
