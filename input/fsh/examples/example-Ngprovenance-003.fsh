Instance: provenance-003
InstanceOf: NgImmProvenance
Title: "Minimal NG-Imm Provenance Example"
Description: "Minimal provenance capturing creation of an immunization record."

// Required target
* target[0] = Reference(NgImmImmunization/immunization-003)

// When the provenance was recorded
* recorded = "2025-08-17T10:30:00+01:00"

// Activity performed
* activity.coding[0].system = "http://hl7.org/fhir/provenance-activity-type"
* activity.coding[0].code = #record-create
* activity.coding[0].display = "Record Creation"

// Agent (required)
* agent[0].who = Reference(NgImmPractitioner/practitioner-001)
