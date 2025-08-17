
Instance: FullExampleNgAllergyIntolerance
InstanceOf: NgImmAllergyIntolerance
Title: "NG-Imm Example AllergyIntolerance"
Description: "A fictional example of a an allergy resulting from Immunization."
Usage: #example

* clinicalStatus = #active
* verificationStatus = #confirmed
* type = #allergy
* category[0] = #food
* criticality = #high
//* code = http://snomed.info/sct#91936005 "Peanut allergy"
* patient = Reference(NgImmPatient/ExampleNgImmPatient)
* recordedDate = "2025-06-15T09:45:00+01:00"
* onsetDateTime = "2025-06-14T14:30:00+01:00"

//* reaction.substance = http://snomed.info/sct#1160593 "Peanut protein"
//* reaction.manifestation.coding[0].system = http://snomed.info/sct
//* reaction.manifestation.coding[0].code = 247472004
* reaction.manifestation.text[0] = "Anaphylaxis"
* reaction.description = "Facial swelling and difficulty breathing"
* reaction.onset = "2025-06-14T14:35:00+01:00"
* reaction.severity = #severe

* note[0].text = "Avoid all peanuts and peanut-containing foods"


// Extensions
* extension[+].url = "allergyReferenceDoseNumber"
* extension[=].valueInteger = 8

* extension[+].url = "allergyReferenceDoseSeries"
* extension[=].valueInteger = 2
