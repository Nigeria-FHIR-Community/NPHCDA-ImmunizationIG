
Profile: NgImmAllergyIntolerance
Parent: AllergyIntolerance
Title: "NG-Imm AllergyIntolerance"
Id: allergy-intolerance-profile
Description: "Nigeria Immunization Allergy Intolerance Profile"

// Required Elements
* clinicalStatus from NGClinicalStatusVS (required)
* clinicalStatus.coding 1..1
* clinicalStatus.coding ^short = "The clinical status of the allergy or intolerance"
* verificationStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-verification (required)
* verificationStatus ^short = "Assertion about certainty associated with a propensity or potential risk of a reaction to the identified substance"
* type from http://hl7.org/fhir/ValueSet/allergy-intolerance-type (required)
* type ^short = "Identification of the underlying physiological mechanism for a Reaction Risk"
* category from http://hl7.org/fhir/ValueSet/allergy-intolerance-category (required)
* category ^short = "Category of an identified substance associated with allergies or intolerances"
* criticality from http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality (required)
* criticality ^short = "Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance"

* code from http://hl7.org/fhir/ValueSet/allergyintolerance-code (extensible)
* patient only Reference(NgImmPatient)
* encounter only Reference(NgImmEncounter)
* onset[x] 0..1
* recordedDate 1..1
* recorder 0..1
* lastOccurrence 0..1

// Reaction Block
* reaction 0..*

//* reaction.substance 0..1
* reaction.manifestation from http://hl7.org/fhir/ValueSet/clinical-findings (extensible)
//* reaction.manifestation.text 1..1 MS
* reaction.manifestation ^short = "Clinical symptoms/signs associated with the Event"
* reaction.description 0..1 MS
* reaction.description ^short = "Description of the event as a whole"
* reaction.onset 0..1 MS
* reaction.onset ^short = "Date/time when manifestations showed"
* reaction.severity from http://hl7.org/fhir/ValueSet/reaction-event-severity (required)
* reaction.severity ^short = "Clinical assessment of the severity of a reaction event as a whole, potentially considering multiple different manifestations"
* reaction.substance from http://hl7.org/fhir/ValueSet/substance-code (preferred)

// General Notes excluded
* reaction.note 0..0

// Extensions  
* extension contains AllergyReferenceDoseNumber named allergyReferenceDoseNumber 0..1 MS
* extension contains AllergyReferenceDoseSeries named allergyReferenceDoseSeries 0..1 MS
