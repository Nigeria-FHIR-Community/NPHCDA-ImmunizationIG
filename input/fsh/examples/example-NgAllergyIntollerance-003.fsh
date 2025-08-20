Instance: exampleAllergyIntolerance-003
InstanceOf: NgImmAllergyIntolerance
Title: "Example NG-Imm Allergy Intolerance (Yellow Fever Vaccine, Severe)"
Description: "An example of a severe allergic reaction (anaphylaxis) following Yellow Fever vaccination."

// ---- Core status elements ----
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding.code = #confirmed
* verificationStatus.coding.display = "Confirmed"

* type = #allergy
* category[0] = #medication
* category[+] = #biologic
* criticality = #high

// ---- Allergy code (what the allergy is to) ----
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #871717007
* code.coding[0].display = "Yellow fever vaccine"

// ---- Subject and context ----
* patient = Reference(patient-002)         // partial patient example
* encounter = Reference(encounter-003)

// ---- Timeline ----
* onsetDateTime = "2025-06-05T09:15:00+01:00"
* recordedDate = "2025-06-05T09:45:00+01:00"
* recorder = Reference(practitioner-003)
* lastOccurrence = "2025-06-05T10:30:00+01:00"

// ---- Reaction block ----
* reaction[0].manifestation[0].coding.system = "http://snomed.info/sct"
* reaction[0].manifestation[0].coding.code = #39579001
* reaction[0].manifestation[0].coding.display = "Anaphylaxis"

* reaction[0].description = "Patient collapsed with generalized urticaria, hypotension, and difficulty breathing within 15 minutes of vaccination."
* reaction[0].onset = "2025-06-05T09:20:00+01:00"
* reaction[0].severity = #severe

* reaction[0].substance.coding.system = "http://snomed.info/sct"
* reaction[0].substance.coding.code = #871717007
* reaction[0].substance.coding.display = "Yellow fever vaccine"

// ---- Custom Extensions ----
* extension[allergyReferenceDoseNumber].valueInteger = 777
* extension[allergyReferenceDoseSeries].valueString = "Yellow Fever Routine Infant Dose"
