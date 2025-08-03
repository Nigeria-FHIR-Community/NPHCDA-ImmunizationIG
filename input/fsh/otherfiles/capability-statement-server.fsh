Instance: NgImmCapabilityStatementServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NG-Imm Server CapabilityStatement"
Description: """
This CapabilityStatement describes the expected behavior of FHIR servers implementing Nigeria’s Immunization Implementation Guide (NG-IMM).

It includes full RESTful support for key profiles (`NgImmPatient`, `NgImmImmunization`, and `NgImmBundle`) and logical model transformations. The server also supports data submission, export, and validation via custom operations, as well as tracking updates through `Provenance`.

### Use of HTTP Methods:
- **POST**: Used to create a new resource. The server assigns the resource ID.
- **PUT**: Used to fully replace an existing resource identified by a known ID.
- **PATCH**: Used for partial updates to existing resources.

### Provenance:
Clients MUST include a `Provenance` resource when performing PUT or PATCH on `Patient` to ensure traceability and support audit trails.
"""

* status = #active
* date = "2025-08-03"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* format = #xml
* implementation.description = "NG-IMM Immunization Server Implementation"
* implementation.url = "https://nphcda.gov.ng/IG"

* rest[+]
  * mode = #server
  * documentation = """
The server supports RESTful create, read, update, and search for immunization-related records using the Nigeria Immunization Implementation Guide (NG-IMM).
"""

  // NgImmPatient
  * resource[+]
    * type = #Patient
    * profile = Canonical(NgImmPatient)
    * documentation = """
The `NgImmPatient` profile is used for managing client demographic data.

- **POST**: Creates a new patient record.
- **PUT**: Replaces an existing patient record.
- **PATCH**: Updates specific fields.

Clients MUST include a corresponding `Provenance` resource with updates for audit and traceability.
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Patient-identifier"
    * searchParam[+].name = "firstname"
    * searchParam[=].type = #string
    * searchParam[=].definition = "SearchParameter/Patient-firstname"
    * searchParam[+].name = "lastname"
    * searchParam[=].type = #string
    * searchParam[=].definition = "SearchParameter/Patient-lastname"
    * searchParam[+].name = "birthdate"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Patient-birthdate"
    * searchParam[+].name = "gender"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Patient-gender"
    * searchParam[+].name = "state"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Patient-state"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimm-patient"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimm-patient"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimm-patient"

  // NgImmImmunization
  * resource[+]
    * type = #Immunization
    * profile = Canonical(NgImmImmunization)
    * documentation = """
The `NgImmImmunization` profile is used to record administered vaccine doses.

- **POST**: Submits a new immunization event.
- **PUT**: Replaces an existing record, e.g. to correct a mistake.
- **PATCH**: Updates specific fields such as status or encounter.

Provenance SHOULD be included for automated or third-party updates.
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * searchParam[+].name = "patient"
    * searchParam[=].type = #reference
    * searchParam[=].definition = "SearchParameter/Immunization-patient"
    * searchParam[+].name = "status"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Immunization-status"
    * searchParam[+].name = "vaccine-code"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Immunization-vaccine-code"
    * searchParam[+].name = "date"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Immunization-date"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimm-immunization"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimm-immunization"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimm-immunization"

  // NgImmBundle
  * resource[+]
    * type = #Bundle
    * profile = Canonical(NgImmBundle)
    * documentation = """
The `NgImmBundle` profile is used to group Patient, Immunization, and related resources into a single package.

- **POST**: Submits a new Bundle (e.g. during mobile sync).
- **PUT**: Replaces the entire bundle for corrected batch uploads.

PATCH is not supported on Bundles.
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
    * searchParam[+].name = "type"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Bundle-type"
    * searchParam[+].name = "timestamp"
    * searchParam[=].type = #date
    * searchParam[=].definition = "SearchParameter/Bundle-timestamp"
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token
    * searchParam[=].definition = "SearchParameter/Bundle-identifier"
    * operation[+].name = "submit"
    * operation[=].definition = "OperationDefinition/submit-ngimm-bundle"
    * operation[+].name = "export"
    * operation[=].definition = "OperationDefinition/export-ngimm-bundle"
    * operation[+].name = "validate"
    * operation[=].definition = "OperationDefinition/validate-ngimm-bundle"

  // Logical Model Transformation Operations
  * operation[+]
    * name = "transformRegisterClientModelToNgImmPatient"
    * definition = "OperationDefinition/transform-ngimm-patient"

  * operation[+]
    * name = "transformAdministerVaccineToImmunization"
    * definition = "OperationDefinition/transform-administervaccine-to-immunization"

  * operation[+]
    * name = "transformAdministerVaccineToAllergy"
    * definition = "OperationDefinition/transform-administervaccine-to-allergyintolerance"

  // Provenance
  * resource[+]
    * type = #Provenance
    * documentation = """
Used to track and audit updates made to Patient or Immunization resources. Clients are expected to include this when submitting PUT or PATCH requests for sensitive records.
"""
    * interaction[+].code = #create
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * searchParam[+].name = "target"
    * searchParam[=].type = #reference
    * searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Provenance-target"

  // CapabilityStatement Endpoint
  * operation[+]
    * name = "getMetadata"
    * definition = "http://hl7.org/fhir/OperationDefinition/CapabilityStatement"
