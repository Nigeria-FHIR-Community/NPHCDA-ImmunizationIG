
// Extension: NGSignature
// Id: signature
// Title: "NG-Imm Digital Signature"
// Description: "A digital or electronic signature capturing who signed, when, type, and signature data."
// * ^context[0].type = #element
// * ^context[0].expression = "Encounter"
// * value[x] only string 
// * valueString ^short = "Digital signature of the reporting officer"


Extension: NGSignature
Id: ng-encounter-signature
Title: "NG-Imm Encounter Signature"
Description: "A digital or electronic signature capturing who signed, when, type, and signature data. Extension to capture the practitioner's digital signature on an Encounter resource."
* ^context[0].type = #element
* ^context[0].expression = "Encounter"   // Extension applies to Encounter resource
* value[x] only Signature
* valueSignature 1..1 MS
* valueSignature.type 1..*
* valueSignature.when 1..1 MS
* valueSignature.who 1..1 MS
* valueSignature.sigFormat 0..1
* valueSignature.data 0..1




// Extension: NGSessionType
// Id: session-type
// Title: "NG-Imm Session Type"
// Description: "Type of session for immunization (e.g., fixed-site clinic, outreach session, campaign site)."
// * ^context[0].type = #element
// * ^context[0].expression = "Encounter"
// * value[x] only CodeableConcept
// * valueCodeableConcept from NGSessionTypeVS (required)
// * valueCodeableConcept ^short = "Type of vaccination session"