Instance: NgImmExampleImmunization
InstanceOf: NgImmImmunization
Title: "NGImm Example Immunization Record"
Description: "Example Immunization record using NG-Imm Immunization profile with 90% data populated"
Usage: #example

* identifier.system = "https://nphcda.gov.ng/vaccine/ids"
* identifier.value = "IMMUN123456"

* status = #completed
* statusReason = #immune "Immunity"

* vaccineCode = #bcg "BCG Vaccine"

* patient.reference = "urn:uuid:patient-001"
* manufacturer.reference = "urn:uuid:org-001"

* lotNumber = "BCG2025A"
* expirationDate = "2025-12-31"
* doseQuantity.value = 0.05
* doseQuantity.unit = "mL"

* site = #LA "Left Arm"
* route = #IM "Intramuscular injection"

* performer[0].function = #administering-provider "Administering Provider"
* performer[0].actor.reference = "urn:uuid:prac-001"
* occurrenceDateTime = "2025-06-20T09:30:00+01:00"

* reaction[0].date = "2025-06-21"
* reaction[0].reported = true
* reaction[0].detail.reference = "urn:uuid:reaction-obs-001"

* protocolApplied[0].series = "Childhood Routine Immunization"
* protocolApplied[0].doseNumberPositiveInt = 1
* protocolApplied[0].targetDisease[0] = #18853004 "Tuberculosis"
//* protocolApplied[0].extension.nextDoseDate = "2025-09-20"

* extension[signature].valueString = "Digitally signed by Nurse Joy (ID: PRAC001)"
* extension[sessionType].valueCodeableConcept = #outreach "Outreach"
* extension[contraindications].valueCodeableConcept = #headache "Previous adverse reaction to similar vaccine"
* extension[contraindicated][0].valueBoolean = false
