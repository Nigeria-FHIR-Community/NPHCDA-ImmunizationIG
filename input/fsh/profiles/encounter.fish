Alias: V3ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode

Profile: NEIREncounter
Parent: Encounter
Id: neir-encounter 
Description: "A profile for encounters in the Nigerian Electronic Immunization Registry (NEIR), used to document immunization visits and related healthcare interactions."
* ^url = "http://nigerian.org/fhir/StructureDefinition/neir-encounter"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "Nigerian Ministry of Health"
* status ^short = "Status of the immunization encounter"
* class ^short = "Type of encounter (e.g., ambulatory, home visit)"
* class from EncounterClassVS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* participant 1..* MS
* participant.individual only Reference(Practitioner) 
* location 1..1 MS
* location.location only Reference(Location)
* serviceProvider 1..1 MS
* serviceProvider only Reference(Organization)

Instance: encounter-example
InstanceOf: NEIREncounter 
Usage: #example
Description: "An example encounter in the Nigerian Electronic Immunization Registry (NEIR) for an outreach immunization visit."
* status = #completed
* class = V3ActCode#HH
* subject.reference = "Patient/patient-example" 
* participant.individual.reference = "Practitioner/practitioner-example"
* location.location.reference = "Location/location-example"
* serviceProvider.reference = "Organization/organization-example"
