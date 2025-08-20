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
* relationship.text = "brother"
* extension[siblingHealthStatus].valueCodeableConcept = $sct#2492009 "Malnutrition (disorder)"

// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Sibling</b>: Chinedu Okoro (male), born 2024-01-15</p>
  <p><b>Relationship to patient</b>: brother (NgImmPatient/patient-003)</p>
  <p><b>Sibling health status</b>: Malnutrition</p>
</div>
"""
