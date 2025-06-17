Extension: PrimaryVaccineStatus
Id: primary-vaccine-status
Title: "Primary Vaccine Status"
Description: "Indicates whether the immunization patient has completed the full primary vaccine series"
* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* valueString 0..1 MS
* valueString ^short = "Status of primary series (e.g., completed, not completed)"


Extension: Signature
Id: signature
Title: "Digital Signature"
Description: "A digital or electronic signature capturing who signed, when, type, and signature data."

* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* valueSignature 0..1 MS
* valueSignature ^short = "Digital signature of the reporting officer"


Extension: SessionType
Id: session-type
Title: "Session Type"
Description: "Type of session for immunization (e.g., fixed-site clinic, outreach session, campaign site)."

* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* valueCodeableConcept 0..1 MS
* valueCodeableConcept ^short = "Type of vaccination session"
//* valueCodeableConcept from ImmunizationSessionTypeVS (required)


Extension: Contraindicated
Id: contraindicated
Title: "Immunization Contraindicated"
Description: "Indicates whether the immunization was contraindicated"

* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* valueBoolean 0..1 MS
* valueBoolean ^short = "Indicates whether the immunization was contraindicated or not"

Extension: Contraindications
Id: contraindications
Title: "Contraindications"
Description: "Indicates specific situations in which it is not recommended to administer certain vaccines (e.g Immunocompromised, severe AEFI, History of Anaphylactic reactions, Symptomatic HIV infection)"

* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Contraindications to immunization"


Extension: NextDoseDate
Id: next-dose-date
Title: "Next Dose Date"
Description: "The recommended due date for the next vaccine dose in the schedule."

* ^context[0].type = #element
* ^context[0].expression = "Immunization"
* valueDate 0..1 MS
* valueDate ^short = "Recommended date for the next immunization dose"



