// ---------- relatedperson-003 (Infant brother with malnutrition) ----------
Instance: relatedperson-003
InstanceOf: NgImmSiblingRelatedPerson
Title: "Sibling RelatedPerson Example - Infant Brother with Malnutrition"
Description: "Example of a RelatedPerson resource representing a younger infant sibling (brother) of the immunization client, showing malnutrition status."
* patient = Reference(patient-003)
* name.given[0] = "Chinedu"
* name.family = "Okoro"
* birthDate = "2024-01-15"
* gender = #male
* relationship.text = "BROTHER"
//* extension[siblingHealthStatus].valueCodeableConcept = $sct#2492009 "Malnutrition (disorder)"

