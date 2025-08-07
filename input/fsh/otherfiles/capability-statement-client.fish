Instance: NgImmCapabilityStatementClient
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NG-Imm Client CapabilityStatement"
Description: """
This CapabilityStatement defines the expected behavior of client systems that interact with NG-IMM FHIR servers in Nigeria’s immunization ecosystem.

Clients must support standard RESTful interactions with NG-IMM-compliant FHIR APIs and use appropriate operations to submit, export, and validate structured data. 
They are also expected to initiate transformation of logical models (e.g. RegisterClientModel, AdministerVaccine) into formal FHIR resources using `$transform`.

#### Use of HTTP Methods:
- **POST**: Used by clients to create new Patient, Immunization, or Bundle resources.
- **PUT**: Used to fully replace an existing resource with updated data.
- **PATCH**: Used to update only specific elements of a resource.
"""

* status = #active
* date = "2025-08-03"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* format = #xml

* rest[+]
  * mode = #client
  * documentation = """
Client systems consuming NG-IMM immunization APIs must support reading, creating, updating, and transforming immunization-related resources via REST and custom operations.
"""

  // NgImmPatient
  * resource[+]
    * type = #Patient
    * profile = Canonical(NgImmPatient)
    * documentation = """
Clients use the `NgImmPatient` profile to register new patients or update existing records.

- **POST**: Create new patient.
- **PUT**: Full replacement of a known patient.
- **PATCH**: Partial updates (e.g., birthDate, address).

Clients should also submit `Provenance` to attribute responsibility for updates.
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
Clients use `NgImmImmunization` to record or correct vaccine administration events.

- **POST**: Create new immunization record.
- **PUT**: Replace an existing immunization resource.
- **PATCH**: Targeted update, e.g. status or performer.

Clients may include `Provenance` if updates are made on behalf of health workers.
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
Used by clients for bulk data sync or submission, e.g. client + doses + allergy info.

- **POST**: Create and submit new bundled data.
- **PUT**: Replace an existing bundle submission.
- PATCH is not supported for bundles.
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

  // Logical Transformations
  * operation[+]
    * name = "transformRegisterClientModelToNgImmPatient"
    * definition = "OperationDefinition/transform-ngimm-patient"
  * operation[+]
    * name = "transformAdministerVaccineToImmunization"
    * definition = "OperationDefinition/transform-administervaccine-to-immunization"
  * operation[+]
    * name = "transformAdministerVaccineToAllergy"
    * definition = "OperationDefinition/transform-administervaccine-to-allergyintolerance"

  // CapabilityStatement Endpoint
  * operation[+]
    * name = "getMetadata"
    * definition = "http://hl7.org/fhir/OperationDefinition/CapabilityStatement"
