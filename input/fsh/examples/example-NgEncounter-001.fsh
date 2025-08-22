Instance: encounter-001
InstanceOf: NgImmEncounter
Title: "Example NG-Imm Encounter"
Description: "An immunization visit encounter per the NG-Imm Encounter profile."

// ---- Core Encounter fields ----
* status = #in-progress

// Encounter.class is a Coding; bound (required) to NGSessionTypeVS (fixed | outreach | mobile)
* class.system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-immunization-session-type"
* class.code = #fixed
* class.display = "Fixed session"

// Subject (patient)
* subject = Reference(patient-001)

// Participant (at least one) – vaccinator
* participant[0].individual = Reference(practitioner-001)

// Location (must-support)
* location.location = Reference(location-001)

// Service Provider (must-support)
* serviceProvider = Reference(organization-001)


// ---- Extensions ----

// NGSessionType extension (typically a CodeableConcept mirroring session type)
* extension[sessionType].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-session-type"
* extension[sessionType].valueCodeableConcept.coding[0].code = #fixed
* extension[sessionType].valueCodeableConcept.coding[0].display = "Fixed session"

// NGSignature extension (valueSignature)
* extension[signature].valueSignature.type[0].system = "urn:iso-astm:E1762-95:2013"
* extension[signature].valueSignature.type[0].code = #1.2.840.10065.1.12.1.1
* extension[signature].valueSignature.type[0].display = "Author's Signature"
* extension[signature].valueSignature.when = "2025-08-16T10:20:00+01:00"
* extension[signature].valueSignature.who = Reference(practitioner-001)
* extension[signature].valueSignature.sigFormat = #image/png
* extension[signature].valueSignature.data = "SGVsbG8="  // sample base64
