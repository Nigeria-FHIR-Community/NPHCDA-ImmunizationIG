Instance: allergyIntolerance-002
InstanceOf: NgImmAllergyIntolerance
Title: "Example NG-Imm Allergy Intolerance 001"
Description: "An example of allergy/adverse reaction following measles vaccine administration."

// ---- Core status elements ----
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #resolved
* clinicalStatus.coding.display = "Resolved"

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding.code = #confirmed
* verificationStatus.coding.display = "Confirmed"

* type = #allergy
* category[0] = #medication
* category[+] = #biologic
* criticality = #low

// ---- Allergy code (what the allergy is to) ----
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #871817003
* code.coding[0].display = "Measles morbillivirus and Rubella virus antigens only vaccine product"

// ---- Subject and context ----
* patient = Reference(patient-003)           // Lagos patient example
* encounter = Reference(encounter-002)

// ---- Timeline ----
* onsetDateTime = "2025-07-20T10:45:00+01:00"
* recordedDate = "2025-07-20T11:30:00+01:00"
* recorder = Reference(practitioner-005)
* lastOccurrence = "2025-07-21T08:00:00+01:00"

// ---- Reaction block ----
* reaction[0].manifestation[0].coding.system = "http://snomed.info/sct"
* reaction[0].manifestation[0].coding.code = #386661006
* reaction[0].manifestation[0].coding.display = "Fever"

* reaction[0].manifestation[+].coding.system = "http://snomed.info/sct"
* reaction[0].manifestation[=].coding.code = #247471006
* reaction[0].manifestation[=].coding.display = "Maculopapular rash"

* reaction[0].description = "Fever (38.5 °C) and rash developed within 24 hours after measles vaccine."
* reaction[0].onset = "2025-07-20T18:00:00+01:00"
* reaction[0].severity = #mild

* reaction[0].substance.coding.system = "http://snomed.info/sct"
* reaction[0].substance.coding.code = #871765008
* reaction[0].substance.coding.display = "Measles vaccine"

// ---- Custom Extensions ----
* extension[allergyReferenceDoseNumber].valueInteger = 457
* extension[allergyReferenceDoseSeries].valueString = "Measles Infant Series"
