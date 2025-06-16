
Profile: NgImmAllergyIntolerance
Parent: AllergyIntolerance
Id: allergy-intolerance-profile
Description: "Nigeria Immunization Allergy Intolerance Profile"

// Required Elements
* clinicalStatus 1..1 MS
* clinicalStatus.coding 1..1
* clinicalStatus.coding ^short = "The clinical status of the allergy or intolerance"

* verificationStatus 1..1
* verificationStatus ^short = "Assertion about certainty associated with a propensity or potential risk of a reaction to the identified substance"

* type 1..1 MS
* type ^short = "Identification of the underlying physiological mechanism for a Reaction Risk"

* category 1..* MS
* category ^short = "Category of an identified substance associated with allergies or intolerances"

* criticality 0..1
//* code 1..1
* patient 1..1 MS
* encounter 0..1
* onset[x] 0..1
* recordedDate 1..1
* recorder 0..1
* lastOccurrence 0..1

// Reaction Block
* reaction 0..*
//* reaction.substance 0..1

* reaction.manifestation 1..*
//* reaction.manifestation.coding 1..1 MS
//* reaction.manifestation.coding ^short = "Clinical symptoms/signs associated with the Event"
* reaction.manifestation.text 1..1 MS
* reaction.manifestation.text ^short = "Clinical symptoms/signs associated with the Event"

* reaction.description 0..1 MS
* reaction.description ^short = "Description of the event as a whole"
* reaction.onset 0..1 MS
* reaction.onset ^short = "Date/time when manifestations showed"
* reaction.severity 0..1 MS
* reaction.severity ^short = "Clinical assessment of the severity of a reaction event as a whole, potentially considering multiple different manifestations"
//* reaction.exposureRoute 0..1
* reaction.note 0..*

// General Notes
* note 0..*


// Extensions

* extension contains AllergyReferenceDoseNumber named allergyReferenceDoseNumber 0..1 MS
* extension contains AllergyReferenceDoseSeries named allergyReferenceDoseSeries 0..1 MS
