Instance: NgImmCapabilityStatementClient
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NG-Imm Client CapabilityStatement"
Description: """
This CapabilityStatement describes the expected behavior of an offline-first client (e.g., mobile Immunization POC health facility system), FHIR-capable systems implementing Nigeria's Immunization Implementation Guide.
"""

* status = #active
* date = "2025-08-07"
* publisher = "National Primary Healthcare Development Agency (NPHCDA)"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml
* implementation.description = "NG-IMM Immunization Client system implementation"
* implementation.url = "https://nphcda.gov.ng/IG"

* rest[0].mode = #client
* rest[0].documentation = "
This client system supports the RESTful FHIR interface for immunization data using the NG-IMM profiles. It also supports logical model transformations, data submission, validation, audit traceability, and comprehensive search operations.

#### Use of HTTP Methods:
- **POST**: Used to create a new resource. A client server assigns resource ID.
- **PUT**: Used to fully replace a resource identified by ID.
- **PATCH**: Used for partial updates.

#### Resource ID Management:
The client server auto-generates `id` during POST. Frontened clients must use server-assigned ID for PUT and PATCH operations. Frint end clients must not assign `id` during resource creation.

#### Provenance:
Provenance is required for all operations (POST, PUT, or PATCH) and must contain:
- **target**: Resource reference
- **agent**: Responsible person or system (Practitioner or Organization)
- **recorded**: Timestamp
- **who**: Responsible submitting actor

#### When to Use NgImmBundle:
Use `NgImmBundle` to submit or synchronize batches of Patient, Immunization, and related resources in mobile/offline scenarios or bulk uploads. This is a template for implementers to use for future bundles based on NPHCDA requests.
"
//NgImmPatient profile
* rest[0].resource[0].type = #Patient
* rest[0].resource[0].profile = Canonical(NgImmPatient)
* rest[0].resource[0].documentation = "Full support for NgImmPatient including get and detailed search parameters."
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[1].code = #vread
* rest[0].resource[0].interaction[2].code = #update
* rest[0].resource[0].interaction[3].code = #patch
* rest[0].resource[0].interaction[4].code = #history-instance
* rest[0].resource[0].interaction[5].code = #history-type
* rest[0].resource[0].interaction[6].code = #create
* rest[0].resource[0].interaction[7].code = #search-type
* rest[0].resource[0].operation[0].name = "submit-ngimm-patient"
* rest[0].resource[0].operation[0].definition = "submit-ngimm-patient"
* rest[0].resource[0].operation[0].documentation = "Submits an instance of NgImmPatient profile to the national immunization registry/repository."
* rest[0].resource[0].searchParam[0].name = "identifier"
* rest[0].resource[0].searchParam[0].type = #token
* rest[0].resource[0].searchParam[0].definition = "Patient-identifier"
* rest[0].resource[0].searchParam[0].documentation = "Search by patient’s unique identifier such as NIN or program ID."
* rest[0].resource[0].searchParam[1].name = "firstname"
* rest[0].resource[0].searchParam[1].type = #string
* rest[0].resource[0].searchParam[1].definition = "SearchParameter/Patient-firstname"
* rest[0].resource[0].searchParam[1].documentation = "Search by any of the patient’s given name."
* rest[0].resource[0].searchParam[2].name = "lastname"
* rest[0].resource[0].searchParam[2].type = #string
* rest[0].resource[0].searchParam[2].definition = "SearchParameter/Patient-lasttname"
* rest[0].resource[0].searchParam[2].documentation = "Search by the patient’s last or family name."
* rest[0].resource[0].searchParam[3].name = "birthdate"
* rest[0].resource[0].searchParam[3].type = #date
* rest[0].resource[0].searchParam[3].definition = "SearchParameter/Patient-birthdate"
* rest[0].resource[0].searchParam[3].documentation = "Filter patients by date of birth. Format: YYYY-MM-DD."
* rest[0].resource[0].searchParam[4].name = "createddate"
* rest[0].resource[0].searchParam[4].type = #date
* rest[0].resource[0].searchParam[4].definition = "SearchParameter/Patient-createddate"
* rest[0].resource[0].searchParam[4].documentation = "Filter patients by date of record creation. Format: YYYY-MM-DD."
* rest[0].resource[0].searchParam[5].name = "email_mobile"
* rest[0].resource[0].searchParam[5].type = #string
* rest[0].resource[0].searchParam[5].definition = "SearchParameter/Patient-email-mobile"
* rest[0].resource[0].searchParam[5].documentation = "Search by all telecome options (email or phone)."
* rest[0].resource[0].searchParam[6].name = "gender"
* rest[0].resource[0].searchParam[6].type = #token
* rest[0].resource[0].searchParam[6].definition = "SearchParameter/Patient-gender"
* rest[0].resource[0].searchParam[6].documentation = "Filter patients by sex (Male, Female). Bound to `NGGenderVS`."
* rest[0].resource[0].searchParam[7].name = "pseudo-id"
* rest[0].resource[0].searchParam[7].type = #token
* rest[0].resource[0].searchParam[7].definition = "SearchParameter/Patient-pseudo-id"
* rest[0].resource[0].searchParam[7].documentation = "Search a particular patient using their Pseudonym identifier. Use steps referenced in Standard Organization of Nigeria (SON's) NIS ISO 25237:2019 for detailed steps"
// Supported _revinclude
* rest[0].resource[0].searchRevInclude[0] = "NgImmProvenance:target"


//NgImmImmunization profile

* rest[0].resource[1].type = #Immunization
* rest[0].resource[1].profile = Canonical(NgImmImmunization)
* rest[0].resource[1].documentation = "Full support for NgImmImmunization including detailed search parameters."
* rest[0].resource[1].interaction[0].code = #read
* rest[0].resource[1].interaction[1].code = #vread
* rest[0].resource[1].interaction[2].code = #update
* rest[0].resource[1].interaction[3].code = #patch
* rest[0].resource[1].interaction[4].code = #history-instance
* rest[0].resource[1].interaction[5].code = #history-type
* rest[0].resource[1].interaction[6].code = #create
* rest[0].resource[1].interaction[7].code = #search-type
* rest[0].resource[1].operation[0].name = "submit-ngimm-immunization"
* rest[0].resource[1].operation[0].definition = "submit-ngimm-immunization"
* rest[0].resource[1].operation[0].documentation = "Submits an instance of NgImmImmunization profile to the national immunization registry/repository."
* rest[0].resource[1].searchParam[0].name = "Patient"
* rest[0].resource[1].searchParam[0].type = #reference
* rest[0].resource[1].searchParam[0].definition = "Immunization-patient"
* rest[0].resource[1].searchParam[1].name = "status"
* rest[0].resource[1].searchParam[1].type = #token
* rest[0].resource[1].searchParam[1].definition = "Immunization-status"
* rest[0].resource[1].searchParam[2].name = "vaccine-code"
* rest[0].resource[1].searchParam[2].type = #token
* rest[0].resource[1].searchParam[2].definition = "Immunization-vaccine-code"
* rest[0].resource[1].searchParam[3].name = "date"
* rest[0].resource[1].searchParam[3].type = #date
* rest[0].resource[1].searchParam[3].definition = "Immunization-date"
// Supported _revinclude
* rest[0].resource[1].searchRevInclude[0] = "NgImmProvenance:target"




//NgImmClientRegistrationBundle profile


* rest[0].resource[2].type = #Bundle
* rest[0].resource[2].profile[0] = Canonical(NgImmClientRegistrationBundle)
* rest[0].resource[2].documentation = "Full support for NgImmBundle including detailed search parameters."
* rest[0].resource[2].interaction[0].code = #read
* rest[0].resource[2].interaction[1].code = #vread
* rest[0].resource[2].interaction[2].code = #update
* rest[0].resource[2].interaction[3].code = #patch
* rest[0].resource[2].interaction[4].code = #history-instance
* rest[0].resource[2].interaction[5].code = #history-type
* rest[0].resource[2].interaction[6].code = #create
* rest[0].resource[2].interaction[7].code = #search-type
* rest[0].resource[2].operation[0].name = "submit-ngimm-bundle"
* rest[0].resource[2].operation[0].definition = "submit-ngimm-bundle"
* rest[0].resource[2].operation[0].documentation = "Submits an instance of bundle profile to the national immunization registry/repository."
* rest[0].resource[2].searchParam[0].name = "patient.identifier"
* rest[0].resource[2].searchParam[0].type = #token
* rest[0].resource[2].searchParam[0].definition = "Bundle-patient.identifier"
* rest[0].resource[2].searchParam[1].name = "_lastUpdated"
* rest[0].resource[2].searchParam[1].type = #date
* rest[0].resource[2].searchParam[1].definition = "Bundle-_lastUpdated"
* rest[0].resource[2].searchParam[2].name = "vaccine-code"
* rest[0].resource[2].searchParam[2].type = #token
* rest[0].resource[2].searchParam[2].definition = "Bundle-vaccine-code"
* rest[0].resource[2].searchParam[3].name = "organization-identifier"
* rest[0].resource[2].searchParam[3].type = #token
* rest[0].resource[2].searchParam[3].definition = "Bundle-organization-identifier"
// Supported _revinclude
* rest[0].resource[2].searchRevInclude[0] = "NgImmProvenance:target"


// The Buncle NgImmRegisterFacilityBundle

* rest[0].resource[10].type = #Bundle
* rest[0].resource[10].profile[0] = Canonical(NgImmRegisterFacilityBundle)
* rest[0].resource[10].documentation = "Full support for NgImmBundle including detailed search parameters."
* rest[0].resource[10].interaction[0].code = #read
* rest[0].resource[10].interaction[1].code = #vread
* rest[0].resource[10].interaction[2].code = #update
* rest[0].resource[10].interaction[3].code = #patch
* rest[0].resource[10].interaction[4].code = #history-instance
* rest[0].resource[10].interaction[5].code = #history-type
* rest[0].resource[10].interaction[6].code = #create
* rest[0].resource[10].interaction[7].code = #search-type
* rest[0].resource[10].operation[0].name = "submit-ngimm-bundle"
* rest[0].resource[10].operation[0].definition = "submit-ngimm-bundle"
* rest[0].resource[10].operation[0].documentation = "Submits an instance of bundle profile to the national immunization registry/repository."
* rest[0].resource[10].searchParam[0].name = "patient.identifier"
* rest[0].resource[10].searchParam[0].type = #token
* rest[0].resource[10].searchParam[0].definition = "Bundle-patient.identifier"
* rest[0].resource[10].searchParam[1].name = "_lastUpdated"
* rest[0].resource[10].searchParam[1].type = #date
* rest[0].resource[10].searchParam[1].definition = "Bundle-_lastUpdated"
* rest[0].resource[10].searchParam[2].name = "vaccine-code"
* rest[0].resource[10].searchParam[2].type = #token
* rest[0].resource[10].searchParam[2].definition = "Bundle-vaccine-code"
* rest[0].resource[10].searchParam[3].name = "organization-identifier"
* rest[0].resource[10].searchParam[3].type = #token
* rest[0].resource[10].searchParam[3].definition = "Bundle-organization-identifier"
// Supported _revinclude
* rest[0].resource[10].searchRevInclude[0] = "NgImmProvenance:target"


//NgImmUpdateClientBundle profile
 
* rest[0].resource[11].type = #Bundle
* rest[0].resource[11].profile[0] = Canonical(NgImmUpdateClientBundle)
* rest[0].resource[11].documentation = "Full support for NgImmBundle including detailed search parameters."
* rest[0].resource[11].interaction[0].code = #read
* rest[0].resource[11].interaction[1].code = #vread
* rest[0].resource[11].interaction[2].code = #update
* rest[0].resource[11].interaction[3].code = #patch
* rest[0].resource[11].interaction[4].code = #history-instance
* rest[0].resource[11].interaction[5].code = #history-type
* rest[0].resource[11].interaction[6].code = #create
* rest[0].resource[11].interaction[7].code = #search-type
* rest[0].resource[11].operation[0].name = "submit-ngimm-bundle"
* rest[0].resource[11].operation[0].definition = "submit-ngimm-bundle"
* rest[0].resource[11].operation[0].documentation = "Submits an instance of bundle profile to the national immunization registry/repository."
* rest[0].resource[11].searchParam[0].name = "patient.identifier"
* rest[0].resource[11].searchParam[0].type = #token
* rest[0].resource[11].searchParam[0].definition = "Bundle-patient.identifier"
* rest[0].resource[11].searchParam[1].name = "_lastUpdated"
* rest[0].resource[11].searchParam[1].type = #date
* rest[0].resource[11].searchParam[1].definition = "Bundle-_lastUpdated"
* rest[0].resource[11].searchParam[2].name = "vaccine-code"
* rest[0].resource[11].searchParam[2].type = #token
* rest[0].resource[11].searchParam[2].definition = "Bundle-vaccine-code"
* rest[0].resource[11].searchParam[3].name = "organization-identifier"
* rest[0].resource[11].searchParam[3].type = #token
* rest[0].resource[11].searchParam[3].definition = "Bundle-organization-identifier"
// Supported _revinclude
* rest[0].resource[11].searchRevInclude[0] = "NgImmProvenance:target"

// NgImmManageReportAEFIBundle
* rest[0].resource[12].type = #Bundle
* rest[0].resource[12].profile[0] = Canonical(NgImmManageReportAEFIBundle)
//* rest[0].resource[2].profile[4] = Canonical(NgImmGenerateReportBundle)
* rest[0].resource[12].documentation = "Full support for NgImmBundle including detailed search parameters."
* rest[0].resource[12].interaction[0].code = #read
* rest[0].resource[12].interaction[1].code = #vread
* rest[0].resource[12].interaction[2].code = #update
* rest[0].resource[12].interaction[3].code = #patch
* rest[0].resource[12].interaction[4].code = #history-instance
* rest[0].resource[12].interaction[5].code = #history-type
* rest[0].resource[12].interaction[6].code = #create
* rest[0].resource[12].interaction[7].code = #search-type
* rest[0].resource[12].operation[0].name = "submit-ngimm-bundle"
* rest[0].resource[12].operation[0].definition = "submit-ngimm-bundle"
* rest[0].resource[12].operation[0].documentation = "Submits an instance of bundle profile to the national immunization registry/repository."
* rest[0].resource[12].searchParam[0].name = "patient.identifier"
* rest[0].resource[12].searchParam[0].type = #token
* rest[0].resource[12].searchParam[0].definition = "Bundle-patient.identifier"
* rest[0].resource[12].searchParam[1].name = "_lastUpdated"
* rest[0].resource[12].searchParam[1].type = #date
* rest[0].resource[12].searchParam[1].definition = "Bundle-_lastUpdated"
* rest[0].resource[12].searchParam[2].name = "vaccine-code"
* rest[0].resource[12].searchParam[2].type = #token
* rest[0].resource[12].searchParam[2].definition = "Bundle-vaccine-code"
* rest[0].resource[12].searchParam[3].name = "organization-identifier"
* rest[0].resource[12].searchParam[3].type = #token
* rest[0].resource[12].searchParam[3].definition = "Bundle-organization-identifier"
// Supported _revinclude
* rest[0].resource[12].searchRevInclude[0] = "NgImmProvenance:target"

// NgImmGenerateReportBundle profile
* rest[0].resource[13].type = #Bundle
* rest[0].resource[13].profile[0] = Canonical(NgImmGenerateReportBundle)
* rest[0].resource[13].documentation = "Full support for NgImmBundle including detailed search parameters."
* rest[0].resource[13].interaction[0].code = #read
* rest[0].resource[13].interaction[1].code = #vread
* rest[0].resource[13].interaction[2].code = #update
* rest[0].resource[13].interaction[3].code = #patch
* rest[0].resource[13].interaction[4].code = #history-instance
* rest[0].resource[13].interaction[5].code = #history-type
* rest[0].resource[13].interaction[6].code = #create
* rest[0].resource[13].interaction[7].code = #search-type
* rest[0].resource[13].operation[0].name = "submit-ngimm-bundle"
* rest[0].resource[13].operation[0].definition = "submit-ngimm-bundle"
* rest[0].resource[13].operation[0].documentation = "Submits an instance of bundle profile to the national immunization registry/repository."
* rest[0].resource[13].searchParam[0].name = "patient.identifier"
* rest[0].resource[13].searchParam[0].type = #token
* rest[0].resource[13].searchParam[0].definition = "Bundle-patient.identifier"
* rest[0].resource[13].searchParam[1].name = "_lastUpdated"
* rest[0].resource[13].searchParam[1].type = #date
* rest[0].resource[13].searchParam[1].definition = "Bundle-_lastUpdated"
* rest[0].resource[13].searchParam[2].name = "vaccine-code"
* rest[0].resource[13].searchParam[2].type = #token
* rest[0].resource[13].searchParam[2].definition = "Bundle-vaccine-code"
* rest[0].resource[13].searchParam[3].name = "organization-identifier"
* rest[0].resource[13].searchParam[3].type = #token
* rest[0].resource[13].searchParam[3].definition = "Bundle-organization-identifier"
// Supported _revinclude
* rest[0].resource[13].searchRevInclude[0] = "NgImmProvenance:target"





//NgImmOrganization profile

* rest[0].resource[3].type = #Organization
* rest[0].resource[3].profile = Canonical(NgImmOrganization)
* rest[0].resource[3].documentation = "Full support for NgImmOrganization profile including detailed search parameters."
* rest[0].resource[3].interaction[0].code = #read
* rest[0].resource[3].interaction[1].code = #vread
* rest[0].resource[3].interaction[2].code = #update
* rest[0].resource[3].interaction[3].code = #patch
* rest[0].resource[3].interaction[4].code = #history-instance
* rest[0].resource[3].interaction[5].code = #history-type
* rest[0].resource[3].interaction[6].code = #create
* rest[0].resource[3].interaction[7].code = #search-type
* rest[0].resource[3].operation[0].name = "submit-ngimm-organization"
* rest[0].resource[3].operation[0].documentation = "Submits an instance of NgImmOrganiztion profile to the national immunization registry/repository."
* rest[0].resource[3].operation[0].definition = "submit-ngimm-organization"
* rest[0].resource[3].searchParam[0].name = "organization-identifier"
* rest[0].resource[3].searchParam[0].type = #token
* rest[0].resource[3].searchParam[0].definition = "Organization-identifier"
// Supported _revinclude
* rest[0].resource[3].searchRevInclude[0] = "NgImmProvenance:target"


//NgImmEncounter profile

* rest[0].resource[4].type = #Encounter
* rest[0].resource[4].profile = Canonical(NgImmEncounter)
* rest[0].resource[4].documentation = "Full support for NgImmEncounter profile including detailed search parameters."
* rest[0].resource[4].interaction[0].code = #read
* rest[0].resource[4].interaction[1].code = #vread
* rest[0].resource[4].interaction[2].code = #update
* rest[0].resource[4].interaction[3].code = #patch
* rest[0].resource[4].interaction[4].code = #history-instance
* rest[0].resource[4].interaction[5].code = #history-type
* rest[0].resource[4].interaction[6].code = #create
* rest[0].resource[4].interaction[7].code = #search-type
* rest[0].resource[4].operation[0].name = "submit-ngimm-encounter"
* rest[0].resource[4].operation[0].definition = "submit-ngimm-encounter"
* rest[0].resource[4].operation[0].documentation = "Submits an instance of NgImmEncounter profile to the national immunization registry/repository."
* rest[0].resource[4].searchParam[0].name = "encounter-identifier"
* rest[0].resource[4].searchParam[0].type = #token
* rest[0].resource[4].searchParam[0].definition = "Encounter-identifier"
// Supported _revinclude
* rest[0].resource[4].searchRevInclude[0] = "NgImmProvenance:target"

//NgImmRelatedPerson profile

* rest[0].resource[5].type = #RelatedPerson
* rest[0].resource[5].profile = Canonical(NgImmSiblingRelatedPerson)
* rest[0].resource[5].documentation = "Full support for NgImmSiblingRelatedPerson profile including detailed search parameters."
* rest[0].resource[5].interaction[0].code = #read
* rest[0].resource[5].interaction[1].code = #vread
* rest[0].resource[5].interaction[2].code = #update
* rest[0].resource[5].interaction[3].code = #patch
* rest[0].resource[5].interaction[4].code = #history-instance
* rest[0].resource[5].interaction[5].code = #history-type
* rest[0].resource[5].interaction[6].code = #create
* rest[0].resource[5].interaction[7].code = #search-type
* rest[0].resource[5].operation[0].name = "submit-ngimm-relatedperson"
* rest[0].resource[5].operation[0].definition = "submit-ngimm-relatedperson"
* rest[0].resource[5].operation[0].documentation = "Submits an instance of NgImmRelatedPerson profile to the national immunization registry/repository."
* rest[0].resource[5].searchParam[0].name = "sibling-identifier"
* rest[0].resource[5].searchParam[0].type = #token
* rest[0].resource[5].searchParam[0].definition = "RelatedPerson-identifier"
* rest[0].resource[5].searchParam[1].name = "firstname"
* rest[0].resource[5].searchParam[1].type = #string
* rest[0].resource[5].searchParam[1].definition = "RelatedPerson-firstname"
* rest[0].resource[5].searchParam[2].name = "lastname"
* rest[0].resource[5].searchParam[2].type = #string
* rest[0].resource[5].searchParam[2].definition = "RelatedPerson-lasttname"
// Supported _revinclude
* rest[0].resource[5].searchRevInclude[0] = "NgImmProvenance:target"



//NgImmPractitioner profile

* rest[0].resource[6].type = #Practitioner
* rest[0].resource[6].profile = Canonical(NgImmPractitioner)
* rest[0].resource[6].documentation = "Full support for NgImmPractitioner profile including detailed search parameters."
* rest[0].resource[6].interaction[0].code = #read
* rest[0].resource[6].interaction[1].code = #vread
* rest[0].resource[6].interaction[2].code = #update
* rest[0].resource[6].interaction[3].code = #patch
* rest[0].resource[6].interaction[4].code = #history-instance
* rest[0].resource[6].interaction[5].code = #history-type
* rest[0].resource[6].interaction[6].code = #create
* rest[0].resource[6].interaction[7].code = #search-type
* rest[0].resource[6].operation[0].name = "submit-ngimm-relatedperson"
* rest[0].resource[6].operation[0].definition = "submit-ngimm-relatedperson"
* rest[0].resource[6].operation[0].documentation = "Submits an instance of NgImmPractitioner profile to the national immunization registry/repository."
* rest[0].resource[6].searchParam[0].name = "practitioner-identifier"
* rest[0].resource[6].searchParam[0].type = #token
* rest[0].resource[6].searchParam[0].definition = "Practitioner-identifier"
* rest[0].resource[6].searchParam[1].name = "firstname"
* rest[0].resource[6].searchParam[1].type = #string
* rest[0].resource[6].searchParam[1].definition = "Practitioner-firstname"
* rest[0].resource[6].searchParam[2].name = "lastname"
* rest[0].resource[6].searchParam[2].type = #string
* rest[0].resource[6].searchParam[2].definition = "Practitioner-lasttname"
* rest[0].resource[6].searchParam[3].name = "license"
* rest[0].resource[6].searchParam[3].type = #token
* rest[0].resource[6].searchParam[3].definition = "Practitioner-license"
// Supported _revinclude
* rest[0].resource[6].searchRevInclude[0] = "NgImmProvenance:target"

// NgImmMeasureReport profile

* rest[0].resource[7].type = #Measure
* rest[0].resource[7].profile = Canonical(NgImmMeasureReport)
* rest[0].resource[7].documentation = "Full support for NgImmMeasureReport profile including detailed search parameters."
* rest[0].resource[7].interaction[0].code = #read
* rest[0].resource[7].interaction[1].code = #vread
* rest[0].resource[7].interaction[2].code = #update
* rest[0].resource[7].interaction[3].code = #patch
* rest[0].resource[7].interaction[4].code = #history-instance
* rest[0].resource[7].interaction[5].code = #history-type
* rest[0].resource[7].interaction[6].code = #create
* rest[0].resource[7].interaction[7].code = #search-type
* rest[0].resource[7].operation[0].name = "submit-ngimm-measurereport"
* rest[0].resource[7].operation[0].definition = "submit-ngimm-measurereport"
* rest[0].resource[7].operation[0].documentation = "Submits an instance of NgImmMeasureReport profile to the national immunization registry/repository."
* rest[0].resource[7].searchParam[0].name = "measurereport-identifier"
* rest[0].resource[7].searchParam[0].type = #token
* rest[0].resource[7].searchParam[0].definition = "MeasureReport-identifier"
// Supported _revinclude
* rest[0].resource[7].searchRevInclude[0] = "NgImmProvenance:target"


// NgImmProvenance profile

* rest[0].resource[8].type = #Provenance
* rest[0].resource[8].profile = Canonical(NgImmProvenance)
* rest[0].resource[8].documentation = "Full support for NgImmProvenance profile including detailed search parameters."
* rest[0].resource[8].interaction[0].code = #read
* rest[0].resource[8].interaction[1].code = #vread
* rest[0].resource[8].interaction[2].code = #history-instance
* rest[0].resource[8].interaction[3].code = #history-type
* rest[0].resource[8].interaction[4].code = #create
* rest[0].resource[8].interaction[5].code = #search-type
* rest[0].resource[8].searchParam[0].name = "provenance-identifier"
* rest[0].resource[8].searchParam[0].type = #token
* rest[0].resource[8].searchParam[0].definition = "Provenance-identifier"
// Supported _revinclude
* rest[0].resource[8].searchRevInclude[0] = "NgImmProvenance:target"

// ---- StructureMap ----
* rest[0].resource[9].type = #StructureMap
* rest[0].resource[9].profile = "http://hl7.org/fhir/StructureDefinition/StructureDefinition"
* rest[0].resource[9].operation[0].name = "transform"
* rest[0].resource[9].operation[0].definition = "StructureMap-transform"
* rest[0].resource[9].operation[0].documentation = "The Client locally register a patient logical model structured data and use the transform operation to convert them into an NgImmPatient FHIR profile"
// Supported _revinclude
* rest[0].resource[9].searchRevInclude[0] = "NgImmProvenance:target"