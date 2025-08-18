Instance: immunization-002
InstanceOf: NgImmImmunization
Title: "Example NG-Imm Immunization (Complete)"
Description: "A complete example of an immunization record per the NgImmImmunization profile."

// ---- Identifier ----
* identifier.system = "http://nphcda.gov.ng/ig/identifier/immunization"
* identifier.value = "IMM-2025-0002"

// ---- Patient & Manufacturer ----
* patient = Reference(NgImmPatient/patient-003)            // Example from Lagos
* manufacturer = Reference(NgImmOrganization/organization-002) // Example org

// ---- Vaccine administered ----
* vaccineCode.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/ng-vaccine-library"
* vaccineCode.coding[0].code = #bcg
* vaccineCode.coding[0].display = "BCG Vaccine"
* vaccineCode.text = "BCG"

// ---- Immunization status ----
* status = #not-done
* statusReason.coding[0].system = "http://hl7.org/fhir/immunization-status-reason"
* statusReason.coding[0].code = #PATOBJ
* statusReason.coding[0].display = "Patient objection"
* statusReason.text = "Immunization missed due to caregiver refusal"

// ---- Lot and expiry ----
* lotNumber = "BCG-LOT-25-0045"
* expirationDate = "2026-12-31"

// ---- Occurrence ----
* occurrenceDateTime = "2025-08-15T10:30:00+01:00"

// ---- Dose details ----
* doseQuantity.value = 0.05
* doseQuantity.unit = "mL"
* doseQuantity.system = "http://unitsofmeasure.org"
* doseQuantity.code = #mL

// ---- Site & Route ----
* site.coding[0].system = "http://terminology.hl7.org/CodeSystem/immunization-site"
* site.coding[0].code = #LA
* site.coding[0].display = "Left Arm"

* route.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration"
* route.coding[0].code = #ID
* route.coding[0].display = "Intradermal"

// ---- Performer(s) ----
* performer[0].function.coding[0].system = "http://terminology.hl7.org/CodeSystem/immunization-function"
* performer[0].function.coding[0].code = #AP
* performer[0].function.coding[0].display = "Administering Provider"
* performer[0].actor = Reference(NgImmPractitioner/practitioner-002)

* performer[1].function.text = "Reporting Officer"
* performer[1].actor = Reference(NgImmPractitioner/practitioner-003)

// ---- Protocol Applied ----
* protocolApplied[0].series = "RI Newborn"
* protocolApplied[0].doseNumberPositiveInt = 1
* protocolApplied[0].seriesDosesPositiveInt = 1
* protocolApplied[0].targetDisease[0].coding[0].system = "http://snomed.info/sct"
* protocolApplied[0].targetDisease[0].coding[0].code = #397428000
* protocolApplied[0].extension[nextDoseDate].valueDate = "2026-08-15"

// ---- Reactions ----
* reaction[0].date = "2025-08-15T12:00:00+01:00"
* reaction[0].reported = true
* reaction[0].detail = Reference(NgImmRUObservation/obs-002)

// ---- Extensions ----
* extension[contraindications].valueCodeableConcept.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/nigeria-immunization-contraindication"
* extension[contraindications].valueCodeableConcept.coding[0].code = #hiv
* extension[contraindications].valueCodeableConcept.coding[0].display = "HIV positive"

* extension[contraindicated].valueBoolean = true

// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Immunization</b>: Measles vaccine administered</p>
  <p><b>Date</b>: 2024-02-10</p>
  <p><b>Patient</b>: Ifeoma Okeke</p>
  <p><b>Performer</b>: Mr. John Bello</p>
  <p><b>Adverse Event</b>: Mild fever reported</p>
  <p><b>Location</b>: Kano State PHC Board</p>
</div>
"""