
Extension: NGSignature
Id: signature
Title: "NG-Imm Digital Signature"
Description: "A digital or electronic signature capturing who signed, when, type, and signature data."
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* value[x] only string 
* valueString ^short = "Digital signature of the reporting officer"


Extension: NGSessionType
Id: session-type
Title: "NG-Imm Session Type"
Description: "Type of session for immunization (e.g., fixed-site clinic, outreach session, campaign site)."
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* value[x] only CodeableConcept
* valueCodeableConcept from NGSessionTypeVS (required)
* valueCodeableConcept ^short = "Type of vaccination session"