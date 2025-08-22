// ---------- relatedperson-002 (Sister with asthma) ----------
Instance: relatedperson-002
InstanceOf: NgImmSiblingRelatedPerson
Title: "Sibling RelatedPerson Example - Sister with Asthma"
Description: "Example of a RelatedPerson resource representing a sibling (sister) of the immunization client with a chronic condition (asthma)."
* patient = Reference(patient-002)
* name.given[0] = "Amarachi"
* name.family = "Okafor"
* birthDate = "2012-09-21"
* gender = #female
* relationship.text = "SISTER"
//* extension[siblingHealthStatus].valueCodeableConcept = $sct#195967001 "Asthma (disorder)"

// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Sibling</b>: Amarachi Okafor (female), born 2012-09-21</p>
  <p><b>Relationship to patient</b>: sister (NgImmPatient/patient-002)</p>
  <p><b>Sibling health status</b>: Asthma</p>
</div>
"""
