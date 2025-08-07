Instance: NgImmCapabilityStatementServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NG-Imm Server CapabilityStatement"
Description: """
This CapabilityStatement describes the expected behavior of FHIR servers implementing Nigeria's Immunization Implementation Guide (NG-IMM).

It includes full RESTful support for key profiles (`NgImmPatient`, `NgImmImmunization`, `NgImmBundle`, `NgImmOrganization`, `NgImmEncounter`, `NgImmRelatedPerson`, `NgImmPractitioner`, `NgImmMeasure`, and `NgImmProvenance`) and logical model transformations. The server also supports data submission, export, and validation via custom operations.

#### Use of HTTP Methods:
- **POST**: Used to create a new resource. The server assigns the resource ID.
- **PUT**: Used to fully replace an existing resource identified by a known ID.
- **PATCH**: Used for partial updates to existing resources.

#### Resource ID Management:
The server automatically generates and assigns `id` for all resources upon `POST` creation. Clients MUST NOT provide `id` in POST operations. `PUT` and `PATCH` operations require the client to reference the server-assigned resource ID.

#### NgImmBundle Usage:
Clients use the `NgImmBundle` profile to submit or sync a batch of interlinked resources (e.g., Patient + Immunization + Provenance + Encounter) in a single transaction, especially in offline-first or mobile-enabled workflows.

#### Provenance Requirements:
Clients MUST include a `NgImmProvenance` resource when performing `PUT` or `PATCH` operations on Patient, Immunization, Bundle, Organization, Encounter, or RelatedPerson resources. The Provenance resource SHALL include:
- `target`: Reference to the updated or created resource
- `recorded`: Timestamp of the activity
- `agent`: Reference to the user (Practitioner/Organization) performing the action, with an appropriate role (e.g., author, verifier)
- `who`: Mandatory reference to the responsible actor or system submitting the data
"""

* status = #active
* date = "2025-08-07"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* format = #xml
* implementation.description = "NG-IMM Immunization Server Implementation"
* implementation.url = "https://nphcda.gov.ng/IG"

* rest[+]
  * mode = #server
  * documentation = "The server supports RESTful create, read, update, and search for immunization-related records using the Nigeria Immunization Implementation Guide (NG-IMM)."

  * resource[+]
    * type = #Patient
    * profile = Canonical(NgImmPatient)
    * documentation = "Support for the NgImmPatient profile."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #delete
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Patient-identifier"
    * searchParam[+].name = "date"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Patient-date"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimmpatient"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimmpatient"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimmpatient"

  * resource[+]
    * type = #Immunization
    * profile = Canonical(NgImmImmunization)
    * documentation = "Support for the NgImmImmunization profile."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #delete
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Immunization-identifier"
    * searchParam[+].name = "date"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Immunization-date"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimmimmunization"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimmimmunization"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimmimmunization"

  * resource[+]
    * type = #Bundle
    * profile = Canonical(NgImmBundle)
    * documentation = "Support for the NgImmBundle profile."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #delete
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Bundle-identifier"
    * searchParam[+].name = "date"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Bundle-date"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimmbundle"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimmbundle"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimmbundle"

  * resource[+]
    * type = #Organization
    * profile = Canonical(NgImmOrganization)
    * documentation = "Support for the NgImmOrganization profile."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #delete
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Organization-identifier"
    * searchParam[+].name = "date"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Organization-date"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimmorganization"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimmorganization"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimmorganization"

  * resource[+]
    * type = #Encounter
    * profile = Canonical(NgImmEncounter)
    * documentation = "Support for the NgImmEncounter profile."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #delete
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Encounter-identifier"
    * searchParam[+].name = "date"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Encounter-date"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimmencounter"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimmencounter"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimmencounter"

  * resource[+]
    * type = #RelatedPerson
    * profile = Canonical(NgImmRelatedPerson)
    * documentation = "Support for the NgImmRelatedPerson profile."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #delete
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/RelatedPerson-identifier"
    * searchParam[+].name = "date"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/RelatedPerson-date"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimmrelatedperson"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimmrelatedperson"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimmrelatedperson"

  * resource[+]
    * type = #Practitioner
    * profile = Canonical(NgImmPractitioner)
    * documentation = "Support for the NgImmPractitioner profile."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #delete
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Practitioner-identifier"
    * searchParam[+].name = "date"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Practitioner-date"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimmpractitioner"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimmpractitioner"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimmpractitioner"

  * resource[+]
    * type = #Measure
    * profile = Canonical(NgImmMeasure)
    * documentation = "Support for the NgImmMeasure profile."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #delete
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Measure-identifier"
    * searchParam[+].name = "date"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Measure-date"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimmmeasure"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimmmeasure"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimmmeasure"

  * resource[+]
    * type = #Provenance
    * profile = Canonical(NgImmProvenance)
    * documentation = "Support for the NgImmProvenance profile."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #delete
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Provenance-identifier"
    * searchParam[+].name = "date"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Provenance-date"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimmprovenance"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimmprovenance"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimmprovenance"
