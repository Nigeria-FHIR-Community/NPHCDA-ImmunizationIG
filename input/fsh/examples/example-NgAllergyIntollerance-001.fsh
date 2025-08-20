Instance: allergyIntolerance-001
InstanceOf: NgImmAllergyIntolerance
Title: "Example NG-Imm Allergy Intolerance -001"
Description: "An example of allergy or intolerance to a vaccine per the NG-Imm AllergyIntolerance profile."

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
* code.coding[0].code = #293104008
* code.coding[0].display = "Adverse reaction to immunization"

// ---- Subject and context ----
* patient = Reference(patient-001)
* encounter = Reference(encounter-001)

// ---- Timeline ----
* onsetDateTime = "2025-08-01T09:30:00+01:00"
* recordedDate = "2025-08-01T10:00:00+01:00"
* recorder = Reference(practitioner-005)
* lastOccurrence = "2025-08-01T12:00:00+01:00"

// ---- Reaction block ----
* reaction[0].manifestation[0].coding.system = "http://snomed.info/sct"
* reaction[0].manifestation[0].coding.code = #271807003
* reaction[0].manifestation[0].coding.display = "Skin rash"

* reaction[0].description = "Patient developed rash and swelling within 30 minutes of immunization."
* reaction[0].onset = "2025-08-01T10:15:00+01:00"
* reaction[0].severity = #moderate

* reaction[0].substance.coding.system = "http://snomed.info/sct"
* reaction[0].substance.coding.code = #333346007
* reaction[0].substance.coding.display = "Product containing precisely silver nitrate 200 milligram/1 milliliter conventional release cutaneous solution (clinical drug)"

// ---- Custom Extensions ----
* extension[allergyReferenceDoseNumber].valueInteger = 165
* extension[allergyReferenceDoseSeries].valueString = "Pentavalent Infant Series"
