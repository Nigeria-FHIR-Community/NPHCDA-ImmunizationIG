Instance: encounter-002
InstanceOf: NgImmEncounter
Title: "Example NG-Imm Encounter (Outreach)"
Description: "An outreach immunization encounter per the NG-Imm Encounter profile."

// ---- Core Encounter fields ----
* status = #finished

// Encounter.class – bound to NGSessionTypeVS (fixed | outreach | mobile)
* class.system = "http://nphcda.gov.ng/ig/immunization/CodeSystem/nigeria-facility-type"
* class.code = #outreach
* class.display = "Outreach session"

// Subject (patient)
* subject = Reference(patient-003)

// Participants (vaccinator + recorder)
* participant[0].individual = Reference(practitioner-002)
* participant[+].individual = Reference(practitioner-003)

// Location (must-support)
* location.location = Reference(location-002)

// Service Provider (must-support)
* serviceProvider = Reference(organization-002)


// ---- Extensions ----

// NGSessionType extension
* extension[sessionType].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-session-type"
* extension[sessionType].valueCodeableConcept.coding[0].code = #outreach
* extension[sessionType].valueCodeableConcept.coding[0].display = "Outreach session"

// NGSignature extension (valueSignature)
* extension[signature].valueSignature.type[0].system = "urn:iso-astm:E1762-95:2013"
* extension[signature].valueSignature.type[0].code = #1.2.840.10065.1.12.1.1
* extension[signature].valueSignature.type[0].display = "Author's Signature"
* extension[signature].valueSignature.when = "2025-08-16T13:45:00+01:00"
* extension[signature].valueSignature.who = Reference(practitioner-002)
* extension[signature].valueSignature.sigFormat = #image/png
* extension[signature].valueSignature.data = "U2lnbkJ5dGVz" // sample base64
