
Extension: AllergyReferenceDoseNumber
Id: allergy-reference-dose-number
Title: "NG-Imm Allergy Dose Number"
Description: "Reference immunization dose number for this AllergyIntolerance."
* ^context[0].type = #element
* ^context[0].expression = "AllergyIntolerance"
* valueString 0..1 MS
* valueString ^short = "Lot number or dose number from the referenced immunization"

Extension: AllergyReferenceDoseSeries
Id: allergy-reference-dose-series
Title: "NG-Imm Dose Series"
Description: "Dose series number from the referenced Immunization.protocolApplied.doseNumber."
* ^context[0].type = #element
* ^context[0].expression = "AllergyIntolerance"
* valueString 0..1 MS
* valueString ^short = "Series dose number (e.g., 1, 2) from the referenced immunization"
