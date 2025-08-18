Instance: encounter-003
InstanceOf: NgImmEncounter
Title: "Example NG-Imm Encounter (Mobile)"
Description: "A mobile team immunization encounter per the NG-Imm Encounter profile."

// ---- Core Encounter fields ----
* status = #in-progress

// Encounter.class – bound to NGSessionTypeVS (fixed | outreach | mobile)
* class.system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-immunization-session-type"
* class.code = #mobile
* class.display = "Mobile session"

// Subject (patient)
* subject = Reference(NgImmPatient/patient-002)

// Participants (mobile team vaccinator and supervisor)
* participant[0].individual = Reference(NgImmPractitioner/practitioner-002)
* participant[1].individual = Reference(NgImmPractitioner/practitioner-001)

// Location (temporary mobile point)
* location.location = Reference(NgImmLocation/location-003)

// Service Provider (responsible organization)
* serviceProvider = Reference(NgImmOrganization/organization-003)


// ---- Extensions ----

// NGSessionType extension
* extension[sessionType].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-immunization-session-type"
* extension[sessionType].valueCodeableConcept.coding[0].code = #mobile
* extension[sessionType].valueCodeableConcept.coding[0].display = "Mobile session"

// NGSignature extension (signature from mobile team lead)
* extension[signature].valueSignature.type[0].system = "urn:iso-astm:E1762-95:2013"
* extension[signature].valueSignature.type[0].code = #1.2.840.10065.1.12.1.1
* extension[signature].valueSignature.type[0].display = "Author's Signature"
* extension[signature].valueSignature.when = "2025-08-17T08:30:00+01:00"
* extension[signature].valueSignature.who = Reference(NgImmPractitioner/practitioner-004)
* extension[signature].valueSignature.sigFormat = #image/png
* extension[signature].valueSignature.data = "TW9iaWxlU2lnbg==" // sample base64
