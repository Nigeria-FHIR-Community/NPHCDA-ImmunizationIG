CodeSystem: NGSiblingHealthStatusCS
Id: nigeria-sibling-health-status
Title: "NG-Imm Sibling Health Status CS"
Description: "This CodeSystem defines the health of the client's sibling"
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-sibling-health-statusCS"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Sibling Health Status
* #alive	"Alive" "Sibling referenced is still alive"
* #dead	"Dead" "Sibling referenced is dead"
* #well	"well" "Sibling reference is alive and well"
* #diseased "underlying disease" "Referenced Sibling has an underlying disease"


CodeSystem: NGHivStatusCS
Id: nigeria-hiv-status
Title: "NG-Imm Client HIV status CS"
Description: "This CodeSystem defines list of options for HIV status of a Client"
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-hiv-statusCS"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Client's HIV Status
* #positive	"Positive" "The Client is HIV positive"
* #negative	"Negative" "The Client is HIV Negative"
* #unknown	"Unknown" "The Client does not know their HIV status"


CodeSystem: NGPregnancyStatusCS
Id: nigeria-pregnancy-status
Title: "NG-Imm Client Pregnancy status CS"
Description: "This CodeSystem defines list of options for Pregnancy status of a Client"
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-pregnancy-statusCS"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Pregnancy Status
* #pregnant	"Pregnant" "The Client's pregnancy status is positive"
* #notpregnant	"Not Pregnant" "The Client's pregnancy status is negative"
* #unknown	"Not known" "The Client does not know their Pregnancy status"

CodeSystem: NGFacilityTypeCS
Id: nigeria-facility-type
Title: "NG-Imm Facility Type CS"
Description: "A standardized classification system used to describe the type or level of health facility within a healthcare delivery system, based on the scope of services provided, staffing, infrastructure, and administrative role."
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-facility-typeCS"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Grouping different Facility types
* #outreach-post	"Outreach Post" "A temporary or mobile health service site established to deliver essential healthcare to underserved or remote populations."
* #phc-center-l1	"PHC Center Level 1" "A basic primary healthcare facility providing preventive and promotive services, often staffed by community health workers."
* #phc-center-l2    "PHC Center Level 2" "A primary healthcare facility with limited diagnostic and treatment services, typically staffed by nurses, CHEWs, or junior medical personnel."
* #phc-center-l3    "PHC Center Level 3" "An advanced primary healthcare facility offering comprehensive outpatient care, minor/light procedures, and referral support, often with a resident medical officer."
* #hospital	"Secondary Hospital" "A referral facility providing specialized care, inpatient services, and emergency response, staffed by medical officers and specialists."
* #tertiary	"Tertiary Facility" "A highly specialized hospital offering advanced diagnostic, therapeutic, and surgical care, often affiliated with teaching or research institutions."

CodeSystem: NGGenderCS
Id: nigeria-gender
Title: "NG-Imm Gender CS"
Description: "The administrative gender of a person."
//* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-genderCS"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Gender/sex of a client
* #male "male" "Client is of the male gender"
* #female "female" "Client is of the female gender"