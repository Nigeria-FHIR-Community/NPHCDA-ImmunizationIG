Instance: immunization-001
InstanceOf: NgImmImmunization
Title: "Example NG-Imm Immunization -001"
Description: "An example Immunization resource per the NG-Imm Immunization profile."

// ---- Core identifiers & status ----
* identifier.system = "http://nphcda.gov.ng/ig/identifier/immunization-lot"
* identifier.value = "IMM-ADMIN-0001"

* status = #completed
// statusReason is typically used when status = not-done; omitted here

// ---- Subject & manufacturer ----
* patient = Reference(patient-001)
* manufacturer = Reference(organization-001)

// ---- Vaccine, lot, expiry, occurrence ----
* vaccineCode.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/vaccine-local"
* vaccineCode.coding[0].code = #IMMZ.Z.DE4
* vaccineCode.coding[0].display = "Pentavalent 1"
* vaccineCode.text = "Penta (DTP-HepB-Hib)"

* lotNumber = "PENTA-LOT-24-0098"
* expirationDate = "2026-03-31"
* occurrenceDateTime = "2025-08-10T09:35:00+01:00"

// ---- Dose details ----
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* doseQuantity.system = "http://unitsofmeasure.org"
* doseQuantity.code = #mL

// ---- Site & Route (HL7-defined) ----
* site.coding[0].system = "http://terminology.hl7.org/CodeSystem/immunization-site"
* site.coding[0].code = #LA
* site.coding[0].display = "Left arm"

* route.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration"
* route.coding[0].code = #IM
* route.coding[0].display = "Injection, intramuscular"

// ---- Performer ----
* performer[0].actor = Reference(practitioner-001)
* performer[0].function.text = "Vaccinator"

// ---- Protocol applied (target disease example binding) ----
* protocolApplied[0].series = "RI Infant"
* protocolApplied[0].doseNumberPositiveInt = 1
* protocolApplied[0].targetDisease[0].text = "Diphtheria"
* protocolApplied[0].targetDisease[+] = http://snomed.info/sct#871822003 "Hepatitis B vaccine" // example coding
//* protocolApplied[0].extension[nextDoseDate].valueDate = "2025-09-10"

// ---- Reaction (optional) ----
* reaction[0].date = "2025-08-10T12:00:00+01:00"
* reaction[0].reported = true
* reaction[0].detail = Reference(observation-001)

// ---- NG-Imm Extensions ----
// * extension[contraindications].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-immunization-contraindication"
// * extension[contraindications].valueCodeableConcept.coding[0].code = #immuno
// * extension[contraindications].valueCodeableConcept.coding[0].display = "Immunocompromised"

* extension[contraindicated].valueBoolean = false


// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Immunization</b>: BCG vaccine administered</p>
  <p><b>Date</b>: 2023-06-15</p>
  <p><b>Patient</b>: Baby Musa</p>
  <p><b>Performer</b>: Dr. Nkiru Eze</p>
  <p><b>Location</b>: LUTH, Lagos</p>
</div>
"""