Instance: NgImmCapabilityStatementServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NG-Imm Server CapabilityStatement"
Description: "Describes the expected behavior of systems serving immunization data based on the NgImmPatient and NgImmImmunization profiles."
* status = #active
* date = "2025-06-23"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* format = #xml
* rest[+]
  * mode = #server
  * documentation = "Server supporting immunization records with Nigerian-specific constraints on Patient and Immunization profiles."

  // Patient resource
  * resource[+]
    * type = #Patient
    * profile = Canonical(NgImmPatient)
    * documentation = "Patient profile constrained for Nigerian immunization use cases"
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #patch
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
      * name = "gender"
      * type = #token
      * definition = "SearchParameter/Patient-gender"
    * searchParam[+]
      * name = "state"
      * type = #token
      * definition = "SearchParameter/Patient-state"

  // Immunization resource
  * resource[+]
    * type = #Immunization
    * profile = Canonical(NgImmImmunization)
    * documentation = "Nigerian Immunization profile for capturing dose and vaccine details"
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #patch
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
