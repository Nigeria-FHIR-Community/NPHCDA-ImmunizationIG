Instance: ExampleNgImmImmunizationCompleted
InstanceOf: NgImmImmunization
Title: "NG-Imm Example Immunization-Completed BCG Vaccination"
Description: "An example of a completed BCG immunization event"
Usage: #example

* identifier.system = "https://nphcda.gov.ng/imm-registry"
* identifier.value = "IMM-2025-0001"
* status = #completed
* vaccineCode.text = "BCG Vaccine"
* vaccineCode.coding[0].system = "http://hl7.org/fhir/sid/cvx"
* vaccineCode.coding[0].code = #19
* vaccineCode.coding[0].display = "BCG"
* patient.reference = "Patient/NgImmPatient-001"
* lotNumber = "BCG-2025-LOT23"
* expirationDate = "2026-12-31"
* doseQuantity.value = 0.05
* doseQuantity.unit = "mL"
* occurrenceDateTime = "2025-06-15T10:00:00+01:00"
* site = #LA
* route = #intradermal
* manufacturer.display = "BIOVAX Nigeria Ltd"
* manufacturer.reference = "Organization/biovax-ng"
* performer[0].actor.reference = "Practitioner/nurse-aisha"
* performer[0].actor.display = "Nurse Aisha Bello"
* performer[0].function.text = "Vaccinator"
/* * extension[NGPrimaryVaccineStatus].valueCodeableConcept = http://hl7.org/fhir/ValueSet/immunization-status#primary-series */
* extension[NGSignature].valueString = "signed-by-nurse-aisha"
* extension[NGSessionType].valueCodeableConcept = http://nphcda.gov.ng/fhir/CodeSystem/ng-session-type#fixed





Instance: ExampleNgImmImmunizationNotDone
InstanceOf: NgImmImmunization
Title: "NG-Imm Scheduled Pentavalent Immunization Not Done Due to Fever"
Description: "An example where immunization was not done due to contraindication (fever)"
Usage: #example

* identifier.system = "https://nphcda.gov.ng/imm-registry"
* identifier.value = "IMM-2025-0010"
* status = #not-done
* statusReason = http://nphcda.gov.ng/fhir/ValueSet/ng-immunization-notdone-reasons#fever
* vaccineCode.text = "Pentavalent Vaccine"
* vaccineCode.coding[0].system = "http://hl7.org/fhir/sid/cvx"
* vaccineCode.coding[0].code = #130
* vaccineCode.coding[0].display = "Pentavalent"
* patient.reference = "Patient/NgImmPatient-004"
* lotNumber = "PENTA-2025-BATCH99"
* expirationDate = "2025-11-30"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* occurrenceDateTime = "2025-06-20T09:30:00+01:00"
* site = #RA
* route = #intramuscular
* manufacturer.display = "GAVI Partner Vax Ltd"
* manufacturer.reference = "Organization/gavi-vax-001"
* performer[0].actor.reference = "Practitioner/nurse-chinedu"
* performer[0].actor.display = "Nurse Chinedu Umeh"
* performer[0].function.text = "Adminstering Provider" //Vaccination Supervisor
/* * extension[NGPrimaryVaccineStatus].valueCodeableConcept = http://nphcda.gov.ng/fhir/CodeSystem/ng-vaccine-status#not-given */
* extension[NGSignature].valueString = "signed-by-nurse-chinedu"
* extension[NGSessionType].valueCodeableConcept = http://nphcda.gov.ng/fhir/CodeSystem/ng-session-type#outreach
* extension[NGContraindications][0].valueCodeableConcept = http://snomed.info/sct#386661006 "Fever"
