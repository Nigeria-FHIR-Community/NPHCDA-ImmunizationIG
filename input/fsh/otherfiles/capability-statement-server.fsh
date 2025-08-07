Instance: NgImmCapabilityStatementServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NG-Imm Server CapabilityStatement"
Description: """
This CapabilityStatement describes the expected behavior of FHIR servers implementing Nigeria's Immunization Implementation Guide (NG-IMM).

It includes full RESTful support for the following profiles:
- NgImmPatient
- NgImmImmunization
- NgImmBundle
- NgImmOrganization
- NgImmEncounter
- NgImmRelatedPerson
- NgImmPractitioner
- NgImmMeasure
- NgImmProvenance
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
  * documentation = "This server supports the RESTful FHIR interface for immunization data using the NG-IMM profiles.

It also supports logical model transformations, data submission, validation, audit traceability, and comprehensive search operations.

#### Use of HTTP Methods:
- **POST**: Used to create a new resource. Server assigns resource ID.
- **PUT**: Used to fully replace a resource identified by ID.
- **PATCH**: Used for partial updates.

#### Resource ID Management:
The server auto-generates `id` during POST. Clients must use server-assigned ID for PUT and PATCH operations. Clients must not assign `id` during resource creation.

#### Provenance:
Provenance is required for all update operations (PUT or PATCH) and must contain:
- `target`: Resource reference
- `agent`: Responsible person or system (Practitioner or Organization)
- `recorded`: Timestamp
- `who`: Responsible submitting actor

#### When to Use NgImmBundle:
Use `NgImmBundle` to submit or synchronize batches of Patient, Immunization, and related resources in mobile/offline scenarios or bulk uploads.
"

  * resource[+]
    * type = #Patient
    * profile = Canonical(NgImmPatient)
    * documentation = "Full support for NgImmPatient including detailed search parameters."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * definition = "SearchParameter/Patient-identifier"
    * searchParam[+]
      * name = "firstname"
      * type = #string
      * definition = "SearchParameter/Patient-firstname"
    * searchParam[+]
      * name = "lastname"
      * type = #string
      * definition = "SearchParameter/Patient-lastname"
    * searchParam[+]
      * name = "birthdate"
      * type = #date
      * definition = "SearchParameter/Patient-birthdate"
    * searchParam[+]
      * name = "createddate"
      * type = #date
      * definition = "SearchParameter/Patient-createddate"
    * searchParam[+]
      * name = "email"
      * type = #string
      * definition = "SearchParameter/Patient-email"
    * searchParam[+]
      * name = "gender"
      * type = #token
      * definition = "SearchParameter/Patient-gender"
    * searchParam[+]
      * name = "address-state"
      * type = #string
      * definition = "SearchParameter/Patient-address-state"
    * searchParam[+]
      * name = "address-lgas"
      * type = #string
      * definition = "SearchParameter/Patient-address-lgas"

  * resource[+]
    * type = #Immunization
    * profile = Canonical(NgImmImmunization)
    * documentation = "Full support for NgImmImmunization including detailed search parameters."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "patient"
      * type = #reference
      * definition = "SearchParameter/Immunization-patient"
    * searchParam[+]
      * name = "status"
      * type = #token
      * definition = "SearchParameter/Immunization-status"
    * searchParam[+]
      * name = "vaccine-code"
      * type = #token
      * definition = "SearchParameter/Immunization-vaccine-code"
    * searchParam[+]
      * name = "date"
      * type = #date
      * definition = "SearchParameter/Immunization-date"

  * resource[+]
    * type = #Bundle
    * profile = Canonical(NgImmBundle)
    * documentation = "Full support for NgImmBundle including detailed search parameters."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "patient.identifier"
      * type = #token
      * definition = "SearchParameter/Bundle-patient.identifier"
    * searchParam[+]
      * name = "vaccine-code"
      * type = #token
      * definition = "SearchParameter/Bundle-vaccine-code"
    * searchParam[+]
      * name = "patient-address-state"
      * type = #token
      * definition = "SearchParameter/Bundle-patient-address-state"
    * searchParam[+]
      * name = "organization-identifier"
      * type = #token
      * definition = "SearchParameter/Bundle-organization-identifier"
    * searchParam[+]
      * name = "patient-birthdate"
      * type = #date
      * definition = "SearchParameter/Bundle-patient-birthdate"
    * searchParam[+]
      * name = "_lastUpdated"
      * type = #date
      * definition = "SearchParameter/Bundle-_lastUpdated"

  * resource[+]
    * type = #Organization
    * profile = Canonical(NgImmOrganization)
    * documentation = "Support for NgImmOrganization."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * definition = "SearchParameter/Organization-identifier"

  * resource[+]
    * type = #Encounter
    * profile = Canonical(NgImmEncounter)
    * documentation = "Support for NgImmEncounter."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * definition = "SearchParameter/Encounter-identifier"

  * resource[+]
    * type = #RelatedPerson
    * profile = Canonical(NgImmSiblingRelatedPerson)
    * documentation = "Support for NgImmRelatedPerson."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * definition = "SearchParameter/RelatedPerson-identifier"

  * resource[+]
    * type = #Practitioner
    * profile = Canonical(NgImmPractitioner)
    * documentation = "Support for NgImmPractitioner."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * definition = "SearchParameter/Practitioner-identifier"

  * resource[+]
    * type = #Measure
    * profile = Canonical(NgImmMeasure)
    * documentation = "Support for NgImmMeasure."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * definition = "SearchParameter/Measure-identifier"

  * resource[+]
    * type = #Provenance
    * profile = Canonical(NgImmProvenance)
    * documentation = "Support for NgImmProvenance."
    * interaction[+].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #update
    * interaction[+].code = #patch
    * interaction[+].code = #history-instance
    * interaction[+].code = #history-type
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * definition = "SearchParameter/Provenance-identifier"
