Instance: NgImmCapabilityStatementServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NG-Imm Server CapabilityStatement"
Description: """ This CapabilityStatement describes the expected behaviour of an Immunization server managed by NPHCDA that other Immunization clients or server connect to or share information for care fulfillment.

"""


* status = #active
* date = "2025-08-07"
* publisher = "National Primary Healthcare Development Agency (NPHCDA)"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml
* implementation.description = "NG-IMM Immunization Server system (Registry) implementation"
* implementation.url = "https://nphcda.gov.ng/IG"

* rest[0].mode = #server
* rest[0].documentation = "The server system (Registry) allow interaction by clients systems via standard RESTful interactions and some custom operations.

#### Use of HTTP Methods:
- **POST**: Used to create a new resource. A client server assigns resource ID before submitting to this server. This server will generate unique resource id based off the client resource id.
- **PUT**: Not supported on this server.
- **PATCH**: Used for partial updates.

#### Resource ID Management:
The client server auto-generates `id` during POST to local client. When syncing to this server, client systems must use server-assigned ID for PATCH operations. 

#### Provenance:
Provenance is required for all operations and must contain:
- **target**: Resource reference
- **agent**: Responsible person or system (Practitioner or Organization)
- **recorded**: Timestamp
- **who**: Responsible submitting actor

#### When to Use NgImmBundle:
Use `NgImmBundle` to submit or synchronize batches of Patient, Immunization, and related resources in mobile/offline scenarios or bulk uploads. The `NgImmBundle` is a template for implementers to use for future bundles based on NPHCDA requests.


#### Supported Data Exchange:
- Synchronization using bundles
- Registration and update of patients and immunizations
- Lookup and display of vaccinations and schedules
"


//NgImmPatient profile
* rest[0].resource[0].type = #Patient
* rest[0].resource[0].profile = Canonical(NgImmPatient)
* rest[0].resource[0].documentation = "Full support for NgImmPatient including get and detailed search parameters referencing DAK and NIS ISO set of standards."
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[1].code = #vread
* rest[0].resource[0].interaction[2].code = #history-type
* rest[0].resource[0].interaction[3].code = #search-type
* rest[0].resource[0].searchParam[0].name = "pseudo-id"
* rest[0].resource[0].searchParam[0].type = #token
* rest[0].resource[0].searchParam[0].definition = "SearchParameter/Patient-pseudo-id"
* rest[0].resource[0].searchParam[0].documentation = "Search a particular patient using their Pseudonym identifier as per NIS ISO 25237:2019"
* rest[0].resource[0].searchParam[1].name = "birthdate"
* rest[0].resource[0].searchParam[1].type = #date
* rest[0].resource[0].searchParam[1].definition = "SearchParameter/Patient-birthdate"
* rest[0].resource[0].searchParam[1].documentation = "Filter patients by date of birth. Format: YYYY-MM-DD."
* rest[0].resource[0].searchParam[2].name = "createddate"
* rest[0].resource[0].searchParam[2].type = #date
* rest[0].resource[0].searchParam[2].definition = "SearchParameter/Patient-createddate"
* rest[0].resource[0].searchParam[2].documentation = "Filter patients by date of record creation. Format: YYYY-MM-DD."
* rest[0].resource[0].searchParam[3].name = "gender"
* rest[0].resource[0].searchParam[3].type = #token
* rest[0].resource[0].searchParam[3].definition = "SearchParameter/Patient-gender"
* rest[0].resource[0].searchParam[3].documentation = "Filter patients by sex (Male, Female). Bound to `NGGenderVS`."
// Supported _revinclude
* rest[0].resource[0].searchRevInclude[0] = "NgImmProvenance:target"



//NgImmImmunization profile

* rest[0].resource[1].type = #Immunization
* rest[0].resource[1].profile = Canonical(NgImmImmunization)
* rest[0].resource[1].documentation = "Full support for NgImmImmunization including detailed search parameters."
* rest[0].resource[1].interaction[0].code = #read
* rest[0].resource[1].interaction[1].code = #vread
* rest[0].resource[1].interaction[2].code = #patch
* rest[0].resource[1].interaction[3].code = #history-type
* rest[0].resource[1].interaction[4].code = #search-type
* rest[0].resource[1].operation[0].name = "submit-ngimm-immunization"
* rest[0].resource[1].operation[0].definition = "OperationDefinition/submit-ngimm-immunization"
* rest[0].resource[1].operation[0].documentation = "Submits an instance of NgImmImmunization profile to the national immunization registry/repository."
* rest[0].resource[1].searchParam[0].name = "patient-pseudo-id"
* rest[0].resource[1].searchParam[0].type = #reference
* rest[0].resource[1].searchParam[0].definition = "SearchParameter/Immunization-patient-pseudo-id"
* rest[0].resource[1].searchParam[1].name = "status"
* rest[0].resource[1].searchParam[1].type = #token
* rest[0].resource[1].searchParam[1].definition = "SearchParameter/Immunization-status"
* rest[0].resource[1].searchParam[2].name = "vaccine-code"
* rest[0].resource[1].searchParam[2].type = #token
* rest[0].resource[1].searchParam[2].definition = "SearchParameter/Immunization-vaccine-code"
* rest[0].resource[1].searchParam[3].name = "date"
* rest[0].resource[1].searchParam[3].type = #date
* rest[0].resource[1].searchParam[3].definition = "SearchParameter/Immunization-date"
// Supported _revinclude
* rest[0].resource[1].searchRevInclude[0] = "NgImmProvenance:target"



//NgImmBundle profile

* rest[0].resource[2].type = #Bundle
* rest[0].resource[2].profile = Canonical(NgImmBundle)
* rest[0].resource[2].documentation = "Full support for NgImmBundle including detailed search parameters."
* rest[0].resource[2].interaction[0].code = #read
* rest[0].resource[2].interaction[1].code = #vread
* rest[0].resource[2].interaction[2].code = #patch
* rest[0].resource[2].interaction[3].code = #history-instance
* rest[0].resource[2].interaction[4].code = #history-type
* rest[0].resource[2].interaction[5].code = #create
* rest[0].resource[2].interaction[6].code = #search-type
* rest[0].resource[2].operation[0].name = "submit-ngimm-bundle"
* rest[0].resource[2].operation[0].definition = "OperationDefinition/submit-ngimm-bundle"
* rest[0].resource[2].operation[0].documentation = "Submits an instance of `NgImmBundle` profile to the national immunization registry/repository."
* rest[0].resource[2].operation[1].name = "export-ngimm-bundle"
* rest[0].resource[2].operation[1].definition = "OperationDefinition/export-ngimm-bundle"
* rest[0].resource[2].operation[1].documentation = "Export an instance of `NgImmBundle` profile by facility, district, or date"
* rest[0].resource[2].operation[2].name = "sync-ngimm-bundle"
* rest[0].resource[2].operation[2].definition = "OperationDefinition/sync-ngimm-bundle"
* rest[0].resource[2].operation[2].documentation = "Returns all `NgImmBundle` profiles updated since a specified timestamp"
* rest[0].resource[2].operation[3].name = "evaluate-completeness"
* rest[0].resource[2].operation[3].definition = "OperationDefinition/eval-ngimm-bundle"
* rest[0].resource[2].operation[3].documentation = "Checks if all Must Support fields are populated in the submitted bundle"
* rest[0].resource[2].operation[4].name = "resolve-conflicts"
* rest[0].resource[2].operation[4].definition = "OperationDefinition/resolve-ngimm-bundle"
* rest[0].resource[2].operation[4].documentation = "Identifies and resolves duplicate/conflicting bundles for the same patient"
* rest[0].resource[2].operation[5].name = "generate-summary"
* rest[0].resource[2].operation[5].definition = "OperationDefinition/summary-ngimm-bundle"
* rest[0].resource[2].operation[5].documentation = "Produces a readable summary (e.g., printable immunization card) from a bundle"
* rest[0].resource[2].operation[6].name = "get-next-dose-schedule"
* rest[0].resource[2].operation[6].definition = "OperationDefinition/next-dose-ngimm-bundle"
* rest[0].resource[2].operation[6].documentation = "Retrieves next scheduled dose date from `protocolApplied.nextDoseDate`"
* rest[0].resource[2].operation[7].name = "remove-obsolete-bundles"
* rest[0].resource[2].operation[7].definition = "OperationDefinition/remove-obsolete-ngimm-bundle"
* rest[0].resource[2].operation[7].documentation = "Deletes bundles of patients older than 24 months and marked inactive"
* rest[0].resource[2].searchParam[0].name = "patient-pseudo-id"
* rest[0].resource[2].searchParam[0].type = #token
* rest[0].resource[2].searchParam[0].definition = "SearchParameter/Bundle-patient.pseudo-id"
* rest[0].resource[2].searchParam[0].documentation = "Search a particular patient bundle using their Pseudonym identifier. Use steps referenced in Standard Organization of Nigeria (SON's) NIS ISO 25237:2019 for detailed steps"
* rest[0].resource[2].searchParam[1].name = "_lastUpdated"
* rest[0].resource[2].searchParam[1].type = #date
* rest[0].resource[2].searchParam[1].definition = "SearchParameter/Bundle-_lastUpdated"
* rest[0].resource[2].searchParam[2].name = "vaccine-code"
* rest[0].resource[2].searchParam[2].type = #token
* rest[0].resource[2].searchParam[2].definition = "SearchParameter/Bundle-vaccine-code"
* rest[0].resource[2].searchParam[3].name = "organization-identifier"
* rest[0].resource[2].searchParam[3].type = #token
* rest[0].resource[2].searchParam[3].definition = "SearchParameter/Bundle-organization-identifier"
// Supported _revinclude
* rest[0].resource[2].searchRevInclude[0] = "NgImmProvenance:target"


//NgImmOrganization profile

* rest[0].resource[3].type = #Organization
* rest[0].resource[3].profile = Canonical(NgImmOrganization)
* rest[0].resource[3].documentation = "Full support for NgImmOrganization profile including detailed search parameters."
* rest[0].resource[3].interaction[0].code = #read
* rest[0].resource[3].interaction[1].code = #vread
* rest[0].resource[3].interaction[2].code = #patch
* rest[0].resource[3].interaction[3].code = #history-instance
* rest[0].resource[3].interaction[4].code = #history-type
* rest[0].resource[3].interaction[5].code = #create
* rest[0].resource[3].interaction[6].code = #search-type
* rest[0].resource[3].operation[0].name = "submit-ngimm-organization"
* rest[0].resource[3].operation[0].documentation = "Submits an instance of NgImmOrganiztion profile to the national immunization registry/repository."
* rest[0].resource[3].operation[0].definition = "OperationDefinition/submit-ngimm-organization"
* rest[0].resource[3].searchParam[0].name = "organization-identifier"
* rest[0].resource[3].searchParam[0].type = #token
* rest[0].resource[3].searchParam[0].definition = "SearchParameter/Organization-identifier"
// Supported _revinclude
* rest[0].resource[3].searchRevInclude[0] = "NgImmProvenance:target"


//NgImmEncounter profile

* rest[0].resource[4].type = #Encounter
* rest[0].resource[4].profile = Canonical(NgImmEncounter)
* rest[0].resource[4].documentation = "Full support for NgImmEncounter profile including detailed search parameters."
* rest[0].resource[4].interaction[0].code = #read
* rest[0].resource[4].interaction[1].code = #vread
* rest[0].resource[4].interaction[2].code = #patch
* rest[0].resource[4].interaction[3].code = #history-instance
* rest[0].resource[4].interaction[4].code = #history-type
* rest[0].resource[4].interaction[5].code = #create
* rest[0].resource[4].interaction[6].code = #search-type
* rest[0].resource[4].operation[0].name = "submit-ngimm-encounter"
* rest[0].resource[4].operation[0].definition = "OperationDefinition/submit-ngimm-encounter"
* rest[0].resource[4].operation[0].documentation = "Submits an instance of NgImmEncounter profile to the national immunization registry/repository."
* rest[0].resource[4].searchParam[0].name = "encounter-identifier"
* rest[0].resource[4].searchParam[0].type = #token
* rest[0].resource[4].searchParam[0].definition = "SearchParameter/Encounter-identifier"
// Supported _revinclude
* rest[0].resource[4].searchRevInclude[0] = "NgImmProvenance:target"

//NgImmRelatedPerson profile

* rest[0].resource[5].type = #RelatedPerson
* rest[0].resource[5].profile = Canonical(NgImmSiblingRelatedPerson)
* rest[0].resource[5].documentation = "Full support for NgImmSiblingRelatedPerson profile including detailed search parameters."
* rest[0].resource[5].interaction[0].code = #read
* rest[0].resource[5].interaction[1].code = #vread
* rest[0].resource[5].interaction[2].code = #patch
* rest[0].resource[5].interaction[3].code = #history-instance
* rest[0].resource[5].interaction[4].code = #history-type
* rest[0].resource[5].interaction[5].code = #create
* rest[0].resource[5].interaction[6].code = #search-type
* rest[0].resource[5].operation[0].name = "submit-ngimm-relatedperson"
* rest[0].resource[5].operation[0].definition = "OperationDefinition/submit-ngimm-relatedperson"
* rest[0].resource[5].operation[0].documentation = "Submits an instance of NgImmRelatedPerson profile to the national immunization registry/repository."
* rest[0].resource[5].searchParam[0].name = "sibling-pseudo-id"
* rest[0].resource[5].searchParam[0].type = #token
* rest[0].resource[5].searchParam[0].definition = "SearchParameter/RelatedPerson-pseudo-id"
* rest[0].resource[5].searchParam[0].documentation = "Search a particular related person. Use steps referenced in Standard Organization of Nigeria (SON's) NIS ISO 25237:2019 for detailed steps"
// Supported _revinclude
* rest[0].resource[5].searchRevInclude[0] = "NgImmProvenance:target"






//NgImmPractitioner profile

* rest[0].resource[6].type = #Practitioner
* rest[0].resource[6].profile = Canonical(NgImmPractitioner)
* rest[0].resource[6].documentation = "Full support for NgImmPractitioner profile including detailed search parameters."
* rest[0].resource[6].interaction[0].code = #read
* rest[0].resource[6].interaction[1].code = #vread
* rest[0].resource[6].interaction[2].code = #patch
* rest[0].resource[6].interaction[3].code = #history-instance
* rest[0].resource[6].interaction[4].code = #history-type
* rest[0].resource[6].interaction[5].code = #create
* rest[0].resource[6].interaction[6].code = #search-type
* rest[0].resource[6].operation[0].name = "submit-ngimm-practitioner"
* rest[0].resource[6].operation[0].definition = "OperationDefinition/submit-ngimm-pr"
* rest[0].resource[6].operation[0].documentation = "Submits an instance of NgImmPractiioner profile to the national immunization registry/repository."
* rest[0].resource[6].searchParam[0].name = "practitioner-pseudo-id"
* rest[0].resource[6].searchParam[0].type = #token
* rest[0].resource[6].searchParam[0].definition = "SearchParameter/Practitioner-pseudo-id"
* rest[0].resource[6].searchParam[0].documentation = "Search a particular Practitioner. Use steps referenced in Standard Organization of Nigeria (SON's) NIS ISO 25237:2019 for detailed steps"
* rest[0].resource[6].searchParam[1].name = "license"
* rest[0].resource[6].searchParam[1].type = #token
* rest[0].resource[6].searchParam[1].definition = "SearchParameter/Practitioner-license"
* rest[0].resource[6].searchParam[1].documentation = "Search a practtioner by ther public facing MDCN, Pharmacy, or related licenses"
// Supported _revinclude
* rest[0].resource[6].searchRevInclude[0] = "NgImmProvenance:target"

// NgImmMeasureReport profile

* rest[0].resource[7].type = #MeasureReport
* rest[0].resource[7].profile = Canonical(NgImmMeasureReport)
* rest[0].resource[7].documentation = "Full support for NgImmMeasureReport profile including detailed search parameters."
* rest[0].resource[7].interaction[0].code = #read
* rest[0].resource[7].interaction[1].code = #vread
* rest[0].resource[7].interaction[2].code = #patch
* rest[0].resource[7].interaction[3].code = #history-instance
* rest[0].resource[7].interaction[4].code = #history-type
* rest[0].resource[7].interaction[5].code = #create
* rest[0].resource[7].interaction[6].code = #search-type
* rest[0].resource[7].operation[0].name = "submit-ngimm-measurereport"
* rest[0].resource[7].operation[0].definition = "OperationDefinition/submit-ngimm-measurereport"
* rest[0].resource[7].operation[0].documentation = "Submits an instance of NgImmMeasureReport profile to the national immunization registry/repository."
* rest[0].resource[7].searchParam[0].name = "measurereport-identifier"
* rest[0].resource[7].searchParam[0].type = #token
* rest[0].resource[7].searchParam[0].definition = "SearchParameter/MeasureReport-identifier"
// Supported _revinclude
* rest[0].resource[7].searchRevInclude[0] = "NgImmProvenance:target"


// ---- NgImmProvenance profile ----

* rest[0].resource[8].type = #Provenance
* rest[0].resource[8].profile = Canonical(NgImmProvenance)
* rest[0].resource[8].documentation = "Full support for NgImmProvenance profile including detailed search parameters."
* rest[0].resource[8].interaction[0].code = #read
* rest[0].resource[8].interaction[1].code = #vread
* rest[0].resource[8].interaction[2].code = #patch
* rest[0].resource[8].interaction[3].code = #history-instance
* rest[0].resource[8].interaction[4].code = #history-type
* rest[0].resource[8].interaction[5].code = #create
* rest[0].resource[8].interaction[6].code = #search-type
* rest[0].resource[8].searchParam[0].name = "provenance-identifier"
* rest[0].resource[8].searchParam[0].type = #token
* rest[0].resource[8].searchParam[0].definition = "SearchParameter/Provenance-identifier"
// Supported _revinclude
* rest[0].resource[8].searchRevInclude[0] = "NgImmProvenance:target"

// ---- StructureMap ----
* rest[0].resource[9].type = #StructureMap
* rest[0].resource[9].profile = "http://hl7.org/fhir/StructureDefinition/StructureDefinition"
* rest[0].resource[9].operation[0].name = "transform"
* rest[0].resource[9].operation[0].definition = "OperationDefinition/StructureMap-transform"
* rest[0].resource[9].operation[0].documentation = "The Server can recieve the register patient logical model structured data and transform them into an insance of NgImmPatient FHIR profile"
// Supported _revinclude
* rest[0].resource[9].searchRevInclude[0] = "NgImmProvenance:target"