Instance: NgImmExampleAllergyIntolerance
InstanceOf: NgImmAllergyIntolerance
Title: "Example Nigeria Immunization AllergyIntolerance"
Description: "Example allergy or intolerance record using NG-Imm AllergyIntolerance profile"
Usage: #example

* clinicalStatus.coding.system = "http://nphcda.gov.ng/ig/CodeSystem/clinical-status"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"

* verificationStatus = #confirmed
* type = #allergy
* category[0] = #medication
* criticality = #high

* code = $sct#91936005 "Allergy to penicillin"

* patient.reference = "urn:uuid:patient-001"
* encounter.reference = "urn:uuid:encounter-001"

* onsetDateTime = "2024-10-05"
* recordedDate = "2024-10-06"
* recorder.display = "Nurse Musa"

* lastOccurrence = "2024-10-07"

* reaction[0].manifestation[0] = $sct#271807003 "Rash"
* reaction[0].description = "Patient developed widespread rash within 12 hours of vaccination"
* reaction[0].onset = "2024-10-05T22:00:00+01:00"
* reaction[0].severity = #moderate
* reaction[0].substance = $sct#372729009 "Penicillin"

* extension[allergyReferenceDoseNumber].valueInteger = 1
* extension[allergyReferenceDoseSeries].valueString = "Childhood Routine Series"
