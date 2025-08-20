// ---------- relatedperson-001 (Brother, healthy) ----------
Instance: relatedperson-001
InstanceOf: NgImmSiblingRelatedPerson
Title: "Sibling RelatedPerson Example"
Description: "Example of a RelatedPerson resource representing a sibling (brother) of the immunization client."
* patient = Reference(patient-001)
* name.given[0] = "Chinonso"
* name.family = "Okafor"
* birthDate = "2015-04-12"
* gender = #male
* relationship.text = "brother"
* extension[siblingHealthStatus].valueCodeableConcept = $sct#161901003 "Healthy (finding)"

// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Sibling</b>: Chinonso Okafor (male), born 2015-04-12</p>
  <p><b>Relationship to patient</b>: brother (patient-001)</p>
  <p><b>Sibling health status</b>: Healthy</p>
</div>
"""
