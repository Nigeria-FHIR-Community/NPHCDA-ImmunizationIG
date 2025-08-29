Instance: provenance-001
InstanceOf: NgImmProvenance
Title: "Example NG-Imm Provenance"
Description: "Provenance for creation of an Immunization record during an encounter at a Lagos PHC."

// ---- Targets (what this provenance is about) ----
* target[0] = Reference(immunization-001)
* target[1] = Reference(patient-001)

// ---- When it happened vs when recorded ----
* occurredDateTime = "2025-08-16T09:40:00+01:00"
* recorded = "2025-08-16T09:45:30+01:00"

// ---- Policies / guidelines in force ----
* policy[0] = "urn:policy:nphcda:ri-data-governance:v1"
* policy[1] = "urn:policy:nitda:ndpr:2019"
* policy[2] = "urn:policy:who:eul:immunization-data-guidance"

// ---- Location where action took place ----
* location = Reference(location-001) // Surulere PHC, Lagos

// ---- Reason (Purpose of Use) ----
* reason[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* reason[0].coding[0].code = #TREAT
* reason[0].coding[0].display = "Treatment"
* reason[0].text = "Routine immunization service delivery"

// ---- Activity performed ----
* activity.coding[0].system = "http://hl7.org/fhir/w3c-provenance-activity-type"
* activity.coding[0].code = #Usage
* activity.coding[0].display = "used"
* activity.text = "Creation of immunization record"

// ---- Agent(s) involved ----
* agent[0].who = Reference(practitionerrole-001) // Routine Immunization Officer
* agent[0].role[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"


* agent[1].who = Reference(organization-001) // Managing facility
* agent[1].role[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"


// ---- Source entity (e.g., paper tally sheet scanned to DocumentReference) ----
// * entity[0].role = #source
// * entity[0].what = Reference(questionnaire-response-register-client-001)

// ---- Digital signature supporting authenticity ----
* signature[0].type[0].system = "urn:iso-astm:E1762-95:2013"
* signature[0].type[0].code = #1.2.840.10065.1.12.1.1
* signature[0].type[0].display = "Author's Signature"
* signature[0].when = "2025-08-16T09:45:20+01:00"
* signature[0].who = Reference(practitioner-001)
* signature[0].sigFormat = #application/jose
* signature[0].data = "ZXhhbXBsZS1qb3NlLXNpZw=="  // sample base64 JWS


