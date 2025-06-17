* Instance: NgImmImmunizationWithPatientExample
InstanceOf: NgImmImmunization
Usage: #example

// ------------------ Core Immunization Fields ------------------
* identifier = "NGPHC‑2025‑06‑33‑01"
* identifier[0].system = "http://asokoro.hospital.org/mrn"
* identifier[0].value = "NEIR-0001"
* identifier[1].system = "http://nimc.gov.ng/nin"
* identifier[1].value = "NEIR-0003"

* status = #completed

//* statusReason = NEIRImmunizationNotDoneReasonsVS#none
* patient = Reference(Patient/FolakeAdebayo) 

* vaccineCode.coding[0].system = "http://hl7.org/fhir/sid/cvx"
//* vaccineCode.coding[0].code = "33"
* vaccineCode.coding[0].display = "Polio vaccine, oral"
* vaccineCode.text = "Oral polio vaccine"        // human-readable vaccine name

* location = Reference(Location/LagosPHC)
//* location.name = "Lagos Primary Health Centre"

* lotNumber = "OPV‑Batch‑A123"
* expirationDate = "2025-12-31"

* doseQuantity = 2.0 'mL'
* site = #left-arm
* route = #oral

//* performer[0].function = "Vaccinator"

* occurrenceDateTime = "2025-06-15T08:00:00+01:00"

// ------------------ Extensions ------------------
// Primary Vaccine Status
* extension[primaryVaccineStatus].valueCodeableConcept = PrimaryVaccineStatusVS#primarySeriesComplete

// Digital Signature
//* extension[signature].valueSignature.type[0].system = http://terminology.hl7.org/CodeSystem/signature-type
* extension[signature].valueSignature.type[0].code = "author"
* extension[signature].valueSignature.when = "2025-06-15T08:05:00+01:00"
* extension[signature].valueSignature.who = Reference(Practitioner/FullExampleNgImmPatient)
* extension[signature].valueSignature.data = "MIICWwIBAAKBgQDx..."

// Session Type
* extension[sessionType].valueCodeableConcept = ImmunizationSessionTypeVS#fixed-session

// Next Dose Date (nested within protocolApplied)
* protocolApplied[0].doseNumber = 3
* protocolApplied[0].series = "OPV"
* protocolApplied[0].extension[nextDoseDate].valueDate = "2025-07-15"

// Contraindicated Indicator
* extension[contraindicated].valueBoolean = false

// Multiple Contraindications (if needed)
* extension[contraindications].extension[contraindication][0].valueCodeableConcept = ContraindicationReasonVS#severeAllergy
* extension[contraindications].extension[contraindication][0].extension[severity].valueCodeableConcept = SeverityVS#critical
* extension[contraindications].extension[contraindication][0].extension[onset].valueDateTime = "2025-06-14T14:00:00+01:00"

* extension[contraindications].extension[contraindication][1].valueCodeableConcept = ContraindicationReasonVS#immunocompromised
* extension[contraindications].extension[contraindication][1].extension[severity].valueCodeableConcept = SeverityVS#high

// ------------------ Done ------------------
 