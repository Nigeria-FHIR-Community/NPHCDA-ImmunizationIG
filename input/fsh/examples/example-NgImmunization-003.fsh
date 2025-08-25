Instance: immunization-003
InstanceOf: NgImmImmunization
Title: "Example NG-Imm Immunization (Simple)"
Description: "A simple immunization record example with minimal fields populated."

// ---- Identifier ----
// * identifier.system = "http://nphcda.gov.ng/ig/identifier/immunization"
// * identifier.value = "IMM-2025-0003"

// ---- Patient & Vaccine ----
* patient = Reference(patient-002)
* vaccineCode = $ngVacCS#IMMZ.Z.DE17 "Inactivated Polio Vaccine (IPV 2)"

// ---- Status ----
* status = #completed

// ---- Occurrence & Dose ----
* occurrenceDateTime = "2025-08-12T09:00:00+01:00"
* lotNumber = "OPV-LOT-2025-045"
* expirationDate = "2027-06-30"

* doseQuantity.value = 2
* doseQuantity.unit = "drops"
* doseQuantity.system = "http://unitsofmeasure.org"
* doseQuantity.code = #{drops}

// ---- Site & Route ----
* site.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActSite"
* site.coding[0].code = #LH
* site.coding[0].display = "left hand"

* route.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration"
* route.coding[0].code = #PO
* route.coding[0].display = "Swallow, oral"

// ---- Performer ----
* performer[0].actor = Reference(practitioner-002)
* performer[0].function.text = "Vaccinator"


// // Narrative
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
//   <p><b>Immunization</b>: OPV (Oral Polio Vaccine)</p>
//   <p><b>Date</b>: 2024-05-20</p>
//   <p><b>Patient</b>: Chinedu Obi</p>
//   <p><b>Performer</b>: Dr. Aisha Mohammed</p>
//   <p><b>Location</b>: Federal Ministry of Health, Abuja</p>
// </div>
// """