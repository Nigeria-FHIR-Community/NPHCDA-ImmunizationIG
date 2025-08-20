Instance: provenance-002
InstanceOf: NgImmProvenance
Title: "Example NG-Imm Provenance Update"
Description: "Provenance for updating a Patient and AllergyIntolerance record following an adverse reaction to Measles vaccine at Kano General Hospital."

// ---- Target resources ----
* target[0] = Reference(patient-003)
* target[+] = Reference(allergyIntolerance-002)

// ---- When it happened vs when recorded ----
* occurredDateTime = "2025-08-10T12:20:00+01:00"
* recorded = "2025-08-10T12:35:00+01:00"

// ---- Policies observed ----
* policy[0] = "urn:policy:nphcda:aefi-reporting-guideline:v2"
* policy[+] = "urn:policy:ndpr:2019"

// ---- Location ----
* location = Reference(location-003) // Kano General Hospital

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
* agent[0].who = Reference(practitionerrole-002) // AEFI Surveillance Officer
* agent[0].role[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/participation-role-type"


* agent[+].who = Reference(organization-002) // Kano General Hospital
* agent[=].role[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/participation-role-type"


// ---- Supporting entity ----
* entity[0].role = #source
* entity[0].what = Reference(doc-immunization-consent-001)

// ---- Digital signature ----
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.5
* signature[0].type[0].display = "Verification Signature"
* signature[0].when = "2025-08-10T12:34:50+01:00"
* signature[0].who = Reference(practitioner-002)
* signature[0].sigFormat = #application/jose
* signature[0].data = "dmVyaWZpZWQtYWVmLWp3cw==" // example JWS






// Example: Immunization Consent Document
Instance: doc-immunization-consent-001
InstanceOf: DocumentReference
Title: "Immunization Consent Document"
Description: "A scanned consent form signed by the caregiver for child immunization."
Usage: #example

* status = #current
* type.coding[0].system = "http://loinc.org"
* type.coding[0].code = #57016-8
* type.coding[0].display = "Consent form"
* type.text = "Immunization Consent Form"
* subject = Reference(patient-001)
* date = "2025-08-16T09:30:00+01:00"
* author[0] = Reference(practitioner-001)
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "https://nphcda.gov.ng/docs/consent-form-001.pdf"
* content[0].attachment.title = "Scanned Consent Form"
* content[0].attachment.creation = "2025-08-15T14:00:00+01:00"
