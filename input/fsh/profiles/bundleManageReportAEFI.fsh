Profile: NgImmEncounter
Parent: Encounter
Title: "NG-Imm Encounter"
Id: ng-imm-encounter 
Description: "A profile for encounters in the Nigerian  Immunization guide, used to document immunization visits and related healthcare interactions."
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "National Primary Healthcare Development Agency"
* status ^short = "Status of the immunization encounter"
* class ^short = "Type of encounter (e.g. Facility encounter, Outreach, or Home visit)"
* class from NGSessionTypeVS (required)
* subject 1..1 MS
* subject only Reference(NgImmPatient)
* participant 1..* MS
* participant.individual only Reference(NgImmPractitioner) 
* location 1..1 MS
* location.location only Reference(NgImmLocation)
* serviceProvider 1..1 MS
* serviceProvider only Reference(NgImmOrganization)


// Extensions
* extension contains NGSignature named signature 0..1 MS
* extension contains NGSessionType named sessionType 0..1 MS

// Pregnancy status extension (complex extension reference)
// * extension contains NGPregnancyStatus named pregnancyStatus 0..1 MS
// * extension[pregnancyStatus] ^short = "Client's pregnancy status and assertion period"
// * extension[pregnancyStatus] ^definition = "Captures the pregnancy status of the immunization client 
// and the period during which the status was asserted."
// * extension contains NGHIVStatus named hivStatus 0..1 MS