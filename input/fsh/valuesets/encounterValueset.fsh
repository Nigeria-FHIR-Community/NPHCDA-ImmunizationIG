Alias: V3ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode


ValueSet: EncounterClassVS
Id: immunization-encounter-class-vs
Title: "Immunization Encounter Class ValueSet"
Description: "A ValueSet defining encounter types for immunization services in the Nigerian Electronic Immunization Registry (NEIR)."
* ^url = "http://nigerian.org/fhir/ValueSet/immunization-encounter-class-vs"
* ^version = "1.0.0"
* ^status = #active
* include V3ActCode#AMB "Ambulatory"
* include V3ActCode#HH "Home Health"
* include V3ActCode#FLD "Field"
* include V3ActCode#VR "Virtual"
