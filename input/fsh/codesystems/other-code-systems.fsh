CodeSystem: NigeriaSiblingHealthStatusCS
Id: nigeria-sibling-health-status
Title: "NG Sibling Health Status"
Description: "This CodeSystem defines list of relationships that a part of this IG"
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-sibling-health-statusCS"
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


CodeSystem: NigeriaHivStatusCS
Id: nigeria-hiv-status
Title: "NG Client HIV status"
Description: "This CodeSystem defines list of options for HIV status of a Client"
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-hiv-statusCS"
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


CodeSystem: NigeriaPregnancyStatusCS
Id: nigeria-pregnancy-status
Title: "NG Client Pregnancy status"
Description: "This CodeSystem defines list of options for Pregnancy status of a Client"
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-pregnancy-statusCS"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Pregnancy Status
* #pregnant	"Pregnant" "The Client's pregnanty status is positive"
* #notpregnant	"Not Pregnany" "The Client's pregnancy status is negative"
* #unknown	"Not known" "The Client does not know their Pregnancy status"


CodeSystem: NigeriaPrimaryVaccineStatusCS
Id: nigeria-primary-vaccine-status
Title: "NG Client's primary vaccine status"
Description: "This CodeSystem defines list of options for Client's primary vaccine status"
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-vaccine-statusCS"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Pregnancy Status
* #complete	"Complete" "Client has completed all primary vaccines"
* #notcomplete	"Not Complete" "The Client has not completed all primary vaccines"


CodeSystem: NigeriaFacilityTypeCS
Id: nigeria-facility-type
Title: "NG Facility Type"
Description: "A standardized classification system used to describe the type or level of health facility within a healthcare delivery system, based on the scope of services provided, staffing, infrastructure, and administrative role."
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-facility-typeCS"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Grouping different Facility types
* #private-clinic	"Private Clinic" "The Health facility is a primary health facility owned by the private sector"
* #private-hospital	"Private Hospital" "The Health facility is a Secondary health facility owned by the private sector"
* #public-health-post	"Public Health Post" "The Health facility is a primary health facility owned by the government"
* #public-chc	"Public CHC" "The Health facility is a comprehensive primary health center owned by the government"
* #public-general	"General Hospitals" "These are General Hospitals owned by the government"
* #faith-clinic	"Faith-based Clinics" "These are PHCs owned by the owned by faith orgnization (eg. mission clinics)"
* #faith-hospital	"Faith-based Hospitals" "These are Secondary facilities owned by faith orgnization (eg. mission Hospitals)"
* #tertiary	"Tertiary facility" "These are Higher level facilities and referal centers)"

