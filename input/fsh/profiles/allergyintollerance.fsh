Alias: SCT = http://snomed.info/sct


Profile: NEIRAllergyIntolerance
Parent: AllergyIntolerance
Id: allergy-intolerance-profile 
Description: "Defines constraints on the AllergyIntolerance resource for use in the FHIR Implementation Guide."

* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* type 1..1 MS
* category 1..* MS
* criticality 1..1 MS
* code 1..1 MS
* patient 1..1 MS
* encounter 0..1
* onset[x] 0..1
* recordedDate 1..1 MS
* recorder 0..1 
* lastOccurrence 0..1
* reaction 0..*
* reaction.substance 0..1
* reaction.manifestation 1..*
* reaction.description 0..1
* reaction.onset 0..1
* reaction.severity 0..1
* reaction.exposureRoute 0..1
* reaction.note 0..*
* note 0..*

Instance: allergy-intolerance-example
InstanceOf: NEIRAllergyIntolerance
Usage: #example
* clinicalStatus = NEIRClinicalStatusCS#active
* verificationStatus = NEIRVerificationStatusCS#confirmed
* type = #allergy
* category[0] = #food
* criticality = #high
* code = SCT#91936005 "Peanut allergy"
* patient = Reference(Patient/patient-example)
* encounter = Reference(Encounter/encounter-example)
* onsetDateTime = "2023-05-01T00:00:00Z"
* recordedDate = "2023-05-05T00:00:00Z"
* recorder = Reference(Practitioner/practitioner-example)
* lastOccurrence = "2025-03-11T00:00:00Z"
* reaction.substance = SCT#1160593 "Peanut protein"
* reaction.manifestation[0] = SCT#247472004 "Anaphylaxis"
* reaction.description = "Severe anaphylactic reaction requiring epinephrine."
* reaction.onset = "2025-03-11T01:00:00Z"
* reaction.severity = #severe
* reaction.exposureRoute = SCT#47625008 "Ingestion"
* reaction.note.text = "Patient carries an epinephrine auto-injector."
* note.text = "Avoid all peanut-containing foods."
