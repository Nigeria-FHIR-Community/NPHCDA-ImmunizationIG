/* Extension: NGPrimaryVaccineStatus
Id: primary-vaccine-status
Title: "NG-Imm Primary VaccineStatus"
Description: "Indicates whether the immunization patient has completed the full primary vaccine series"
* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* value[x] only CodeableConcept
* valueCodeableConcept from NGPrimaryVaccineStatusVS (required)
* valueCodeableConcept ^short = "Status of primary series (e.g., completed, not completed)" */


Extension: NGSignature
Id: signature
Title: "NG-Imm Digital Signature"
Description: "A digital or electronic signature capturing who signed, when, type, and signature data."
* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* value[x] only string 
* valueString ^short = "Digital signature of the reporting officer"


Extension: NGSessionType
Id: session-type
Title: "NG-Imm Session Type"
Description: "Type of session for immunization (e.g., fixed-site clinic, outreach session, campaign site)."
* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* value[x] only CodeableConcept
* valueCodeableConcept from NGSessionTypeVS (required)
* valueCodeableConcept ^short = "Type of vaccination session"


Extension: NGContraindicated
Id: contraindicated
Title: "NG-Imm Immunization Contraindicated"
Description: "Indicates whether the immunization was contraindicated"
* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* value[x] only boolean 
* valueBoolean ^short = "Indicates whether the immunization was contraindicated or not" 


Extension: NGContraindications
Id: contraindications
Title: "NG-Imm Vaccine Contraindications"
Description: "Indicates specific situations in which it is not recommended to administer certain vaccines (e.g severe AEFI, History of Anaphylactic reactions, Symptomatic HIV infection)"
* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* value[x] only CodeableConcept
* valueCodeableConcept from NGContraindicationVS (extensible)
* valueCodeableConcept ^short = "Contraindications to immunization"


Extension: NextDoseDate
Id: next-dose-date
Title: "NG-Imm Next Dose Date"
Description: "The recommended due date for the next vaccine dose in the schedule."
* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* value[x] only date 
* valueDate ^short = "Recommended date for the next immunization dose"



