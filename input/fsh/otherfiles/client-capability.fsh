Instance: NgImmCapabilityStatementClient
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NG-Imm Client CapabilityStatement"
Description: """
This CapabilityStatement describes the expected capabilities of offline-first client systems (e.g., mobile EMRs or health facility apps) that connect to the NG-IMM immunization server.

"""

* status = #active
* date = "2025-08-07"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* format = #xml
* implementation.description = "NG-IMM Client Application for Immunization Data Exchange"
* implementation.url = "https://nphcda.gov.ng/IG"

* rest[+]
  * mode = #client
  * documentation = "Client systems that interact with NG-IMM servers via standard RESTful interactions and custom operations.

Clients are expected to conform to the Nigeria Immunization Implementation Guide and exchange data using FHIR R4 format. Offline-first clients support local data capture, synchronization with the server, and provenance tracking.

#### Offline Mode Expectations:
- Clients MUST support local storage of submitted and retrieved data.
- Sync using `NgImmBundle` with appropriate timestamp and Provenance references.
- Provide human-readable interfaces for patient registration, vaccine recording, and reporting.

#### Supported Data Exchange:
- Synchronization using bundles
- Registration and update of patients and immunizations
- Lookup and display of vaccinations and schedules
"

  * resource[+]
    * type = #Patient
    * supportedProfile = Canonical(NgImmPatient)
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * searchParam[+].name = "identifier"
    * searchParam[=].type = #token

  * resource[+]
    * type = #Immunization
    * supportedProfile = Canonical(NgImmImmunization)
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #patch

  * resource[+]
    * type = #Bundle
    * supportedProfile = Canonical(NgImmBundle)
    * interaction[+].code = #create
    * interaction[+].code = #search-type

  * resource[+]
    * type = #Provenance
    * supportedProfile = Canonical(NgImmProvenance)
    * interaction[+].code = #create

  * resource[+]
    * type = #Organization
    * supportedProfile = Canonical(NgImmOrganization)
    * interaction[+].code = #read
    * interaction[+].code = #search-type

  * resource[+]
    * type = #Encounter
    * supportedProfile = Canonical(NgImmEncounter)
    * interaction[+].code = #read
    * interaction[+].code = #create
    * interaction[+].code = #update

  * resource[+]
    * type = #Practitioner
    * supportedProfile = Canonical(NgImmPractitioner)
    * interaction[+].code = #read
    * interaction[+].code = #search-type

  * resource[+]
    * type = #Measure
    * supportedProfile = Canonical(NgImmMeasure)
    * interaction[+].code = #read
    * interaction[+].code = #search-type

  * operation[+]
    * name = "submit"
    * definition = "OperationDefinition/submit-ngimm-bundle"

  * operation[+]
    * name = "validate"
    * definition = "OperationDefinition/validate-ngimm-bundle"

  * operation[+]
    * name = "export"
    * definition = "OperationDefinition/export-ngimm-bundle"