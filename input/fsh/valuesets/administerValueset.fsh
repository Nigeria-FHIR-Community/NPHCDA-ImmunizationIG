Alias: $cvx = http://hl7.org/fhir/sid/cvx
Alias: $atc = http://www.whocc.no/atc
Alias: $ind = http://nigerian.org


ValueSet: NEIRImmunizationNotDoneReasonsVS
Id: NEIRImmunizationNotDoneReasonsVS
Title: "Reason Vaccine not administered"
Description: "Reasons a Vaccine was not administered"
* include codes from system $ind


ValueSet: NEIRFacilityTypeVS
Id: neir-facility-types-vs 
Description: "A ValueSet containing custom facility types"
* ^url = "http://nigerian.org/fhir/ValueSet/neir-facility-types-vs"
* ^status = #active
* include codes from system NEIRFacilityTypeCS

ValueSet: NEIRSessionTypeVS
Id: neir-session-types-vs 
Description: "A ValueSet containing custom session types"
* ^url = "http://nigerian.org/fhir/ValueSet/neir-session-types-vs"
* ^status = #active
* include codes from system NEIRSessionTypeCS