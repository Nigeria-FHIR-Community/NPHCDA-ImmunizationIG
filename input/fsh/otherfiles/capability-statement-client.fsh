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


* rest[0].mode = #client

// ------------------ Patient ------------------
* rest[0].resource[0].type = #Patient
* rest[0].resource[0].profile = Canonical(NgImmPatient)
* rest[0].resource[0].operation[0].name = "submit-ngimm-patient"
* rest[0].resource[0].operation[0].definition = "http://nphcda.gov.ng/ig/immunization/OperationDefinition/submit-ngimm-patient"
* rest[0].resource[0].searchParam[0].name = "identifier"
* rest[0].resource[0].searchParam[0].type = #token
* rest[0].resource[0].searchParam[0].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/patient-identifier"
* rest[0].resource[0].searchParam[1].name = "firstname"
* rest[0].resource[0].searchParam[1].type = #string
* rest[0].resource[0].searchParam[1].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/patient-firstname"
* rest[0].resource[0].searchParam[2].name = "lastname"
* rest[0].resource[0].searchParam[2].type = #string
* rest[0].resource[0].searchParam[2].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/patient-lastname"
* rest[0].resource[0].searchParam[3].name = "birthdate"
* rest[0].resource[0].searchParam[3].type = #date
* rest[0].resource[0].searchParam[3].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/patient-birthdate"
* rest[0].resource[0].searchParam[4].name = "createddate"
* rest[0].resource[0].searchParam[4].type = #date
* rest[0].resource[0].searchParam[4].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/patient-createddate"
* rest[0].resource[0].searchParam[5].name = "email_mobile"
* rest[0].resource[0].searchParam[5].type = #string
* rest[0].resource[0].searchParam[5].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/patient-email-mobile"
* rest[0].resource[0].searchParam[6].name = "gender"
* rest[0].resource[0].searchParam[6].type = #token
* rest[0].resource[0].searchParam[6].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/patient-gender"
* rest[0].resource[0].searchParam[7].name = "pseudo-id"
* rest[0].resource[0].searchParam[7].type = #token
* rest[0].resource[0].searchParam[7].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/patient-pseudo-id"

// ------------------ Immunization ------------------
* rest[0].resource[1].type = #Immunization
* rest[0].resource[1].profile = Canonical(NgImmImmunization)
* rest[0].resource[1].operation[0].name = "submit-ngimm-immunization"
* rest[0].resource[1].operation[0].definition = "http://nphcda.gov.ng/ig/immunization/OperationDefinition/submit-ngimm-immunization"
* rest[0].resource[1].searchParam[0].name = "patient"
* rest[0].resource[1].searchParam[0].type = #reference
* rest[0].resource[1].searchParam[0].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/immunization-patient"
* rest[0].resource[1].searchParam[1].name = "status"
* rest[0].resource[1].searchParam[1].type = #token
* rest[0].resource[1].searchParam[1].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/immunization-status"
* rest[0].resource[1].searchParam[2].name = "vaccine-code"
* rest[0].resource[1].searchParam[2].type = #token
* rest[0].resource[1].searchParam[2].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/immunization-vaccine-code"
* rest[0].resource[1].searchParam[3].name = "date"
* rest[0].resource[1].searchParam[3].type = #date
* rest[0].resource[1].searchParam[3].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/immunization-date"

// ------------------ Bundles (example: ClientRegistration) ------------------
* rest[0].resource[2].type = #Bundle
* rest[0].resource[2].profile[0] = Canonical(NgImmClientRegistrationBundle)
* rest[0].resource[2].operation[0].name = "submit-ngimm-bundle"
* rest[0].resource[2].operation[0].definition = "http://nphcda.gov.ng/ig/immunization/OperationDefinition/submit-ngimm-bundle"
* rest[0].resource[2].searchParam[0].name = "patient.identifier"
* rest[0].resource[2].searchParam[0].type = #token
* rest[0].resource[2].searchParam[0].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/bundle-patient.identifier"
* rest[0].resource[2].searchParam[1].name = "_lastUpdated"
* rest[0].resource[2].searchParam[1].type = #date
* rest[0].resource[2].searchParam[1].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/bundle-_lastUpdated"
* rest[0].resource[2].searchParam[2].name = "vaccine-code"
* rest[0].resource[2].searchParam[2].type = #token
* rest[0].resource[2].searchParam[2].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/bundle-vaccine-code"
* rest[0].resource[2].searchParam[3].name = "organization-identifier"
* rest[0].resource[2].searchParam[3].type = #token
* rest[0].resource[2].searchParam[3].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/bundle-organization-identifier"

// ------------------ Organization ------------------
* rest[0].resource[3].type = #Organization
* rest[0].resource[3].profile = Canonical(NgImmOrganization)
* rest[0].resource[3].operation[0].name = "submit-ngimm-organization"
* rest[0].resource[3].operation[0].definition = "http://nphcda.gov.ng/ig/immunization/OperationDefinition/submit-ngimm-organization"
* rest[0].resource[3].searchParam[0].name = "organization-identifier"
* rest[0].resource[3].searchParam[0].type = #token
* rest[0].resource[3].searchParam[0].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/organization-identifier"

// ------------------ Encounter ------------------
* rest[0].resource[4].type = #Encounter
* rest[0].resource[4].profile = Canonical(NgImmEncounter)
* rest[0].resource[4].operation[0].name = "submit-ngimm-encounter"
* rest[0].resource[4].operation[0].definition = "http://nphcda.gov.ng/ig/immunization/OperationDefinition/submit-ngimm-encounter"
* rest[0].resource[4].searchParam[0].name = "encounter-identifier"
* rest[0].resource[4].searchParam[0].type = #token
* rest[0].resource[4].searchParam[0].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/encounter-identifier"

// ------------------ RelatedPerson ------------------
* rest[0].resource[5].type = #RelatedPerson
* rest[0].resource[5].profile = Canonical(NgImmSiblingRelatedPerson)
* rest[0].resource[5].operation[0].name = "submit-ngimm-relatedperson"
* rest[0].resource[5].operation[0].definition = "http://nphcda.gov.ng/ig/immunization/OperationDefinition/submit-ngimm-relatedperson"
* rest[0].resource[5].searchParam[0].name = "relatedperson-identifier"
* rest[0].resource[5].searchParam[0].type = #token
* rest[0].resource[5].searchParam[0].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/relatedperson-identifier"

// ------------------ Practitioner ------------------
* rest[0].resource[6].type = #Practitioner
* rest[0].resource[6].profile = Canonical(NgImmPractitioner)
* rest[0].resource[6].operation[0].name = "submit-ngimm-practitioner"
* rest[0].resource[6].operation[0].definition = "http://nphcda.gov.ng/ig/immunization/OperationDefinition/submit-ngimm-practitioner"
* rest[0].resource[6].searchParam[0].name = "practitioner-identifier"
* rest[0].resource[6].searchParam[0].type = #token
* rest[0].resource[6].searchParam[0].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/practitioner-identifier"
* rest[0].resource[6].searchParam[1].name = "license"
* rest[0].resource[6].searchParam[1].type = #token
* rest[0].resource[6].searchParam[1].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/practitioner-license"

// ------------------ MeasureReport ------------------
* rest[0].resource[7].type = #MeasureReport
* rest[0].resource[7].profile = Canonical(NgImmMeasureReport)
* rest[0].resource[7].operation[0].name = "submit-ngimm-measurereport"
* rest[0].resource[7].operation[0].definition = "http://nphcda.gov.ng/ig/immunization/OperationDefinition/submit-ngimm-measurereport"
* rest[0].resource[7].searchParam[0].name = "measurereport-identifier"
* rest[0].resource[7].searchParam[0].type = #token
* rest[0].resource[7].searchParam[0].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/measurereport-identifier"

// ------------------ Provenance ------------------
* rest[0].resource[8].type = #Provenance
* rest[0].resource[8].profile = Canonical(NgImmProvenance)
* rest[0].resource[8].searchParam[0].name = "provenance-identifier"
* rest[0].resource[8].searchParam[0].type = #token
* rest[0].resource[8].searchParam[0].definition = "http://nphcda.gov.ng/ig/immunization/SearchParameter/provenance-identifier"

// ------------------ StructureMap ------------------
* rest[0].resource[9].type = #StructureMap
* rest[0].resource[9].profile = "http://hl7.org/fhir/StructureDefinition/StructureMap"
* rest[0].resource[9].operation[0].name = "transform"
* rest[0].resource[9].operation[0].definition = "http://nphcda.gov.ng/ig/immunization/OperationDefinition/StructureMap-transform"
