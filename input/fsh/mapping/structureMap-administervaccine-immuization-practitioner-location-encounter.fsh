Instance: adminvaccine-to-immunization
InstanceOf: StructureMap
Usage: #definition
Title: "StructureMap: AdministerVaccine to FHIR Resources"
Description: "Map logical AdministerVaccine to NgImmImmunization, NgImmLocation, NgImmPractitioner, and NgImmEncounter profiles"
* id = "adminvaccine-to-immunization"
* url = "https://nphcda.gov.ng/immunizationIG/StructureMap/adminvaccine-to-immunization"
* name = "AdministerVaccineToFHIRResources"
* status = #active

* structure[0].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/administervaccine"
* structure[0].mode = #source
* structure[0].alias = "AV"

* structure[1].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ng-imm-immunization"
* structure[1].mode = #target
* structure[1].alias = "IMM"

* structure[2].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ng-imm-location"
* structure[2].mode = #target
* structure[2].alias = "LOC"

* structure[3].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ng-imm-practitioner"
* structure[3].mode = #target
* structure[3].alias = "PRAC"

* structure[4].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ng-imm-encounter"
* structure[4].mode = #target
* structure[4].alias = "ENC"

* structure[5].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/register-client-model"
* structure[5].mode = #source
* structure[5].alias = "RCM"


//Group: RegisterClientToEncounter
* group[0].name = "RegisterClientToEncounter"
* group[0].typeMode = #none
* group[0].input[0].name = "RCM"
* group[0].input[0].mode = #source
* group[0].input[0].name = "ENC"
* group[0].input[0].mode = #target
* group[0].rule[0].name = "SetPregnancyStatus"
* group[0].rule[0].source.context = "RCM"
* group[0].rule[0].source.element = "pregnancyStatus"
* group[0].rule[0].target.context = "ENC"
* group[0].rule[0].target.element = "extension.valueCodeableConcept"
* group[0].rule[0].target.transform = #copy
* group[0].rule[0].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/NGPregnancyStatus"

* group[0].rule[1].name = "SetHIVStatus"
* group[0].rule[1].source.context = "RCM"
* group[0].rule[1].source.element = "hivStatus"
* group[0].rule[1].target.context = "ENC"
* group[0].rule[1].target.element = "extension.valueCodeableConcept"
* group[0].rule[1].target.transform = #copy
* group[0].rule[1].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/NGHIVStatus"



// Group: administerVaccineToImmunization
* group[1].name = "administerVaccineToImmunization"
* group[1].typeMode = #none
* group[1].input[0].name = "AV"
* group[1].input[0].mode = #source
* group[1].input[1].name = "IMM"
* group[1].input[1].mode = #target
* group[1].rule[0].name = "vaccineCode"
* group[1].rule[0].source.context = "AV"
* group[1].rule[0].source.element = "vaccineType"
* group[1].rule[0].target.context = "IMM"
* group[1].rule[0].target.element = "vaccineCode"
* group[1].rule[0].target.transform = #copy

* group[1].rule[1].name = "contraindicated"
* group[1].rule[1].source.context = "AV"
* group[1].rule[1].source.element = "contraindicated"
* group[1].rule[1].target.context = "IMM"
* group[1].rule[1].target.element = "doNotPerform"
* group[1].rule[1].target.transform = #copy

* group[1].rule[2].name = "contraindications"
* group[1].rule[2].source.context = "AV"
* group[1].rule[2].source.element = "contraindications"
* group[1].rule[2].target.context = "IMM"
* group[1].rule[2].target.element = "reasonCode"
* group[1].rule[2].target.transform = #copy

* group[1].rule[3].name = "occurrenceDateTime"
* group[1].rule[3].source.context = "AV"
* group[1].rule[3].source.element = "vaccinationDateTime"
* group[1].rule[3].target.context = "IMM"
* group[1].rule[3].target.element = "occurrenceDateTime"
* group[1].rule[3].target.transform = #copy

* group[1].rule[4].name = "lotNumber"
* group[1].rule[4].source.context = "AV"
* group[1].rule[4].source.element = "vaccineBatchNumber"
* group[1].rule[4].target.context = "IMM"
* group[1].rule[4].target.element = "lotNumber"
* group[1].rule[4].target.transform = #copy

* group[1].rule[5].name = "expirationDate"
* group[1].rule[5].source.context = "AV"
* group[1].rule[5].source.element = "expirationDate"
* group[1].rule[5].target.context = "IMM"
* group[1].rule[5].target.element = "expirationDate"
* group[1].rule[5].target.transform = #copy

* group[1].rule[6].name = "site"
* group[1].rule[6].source.context = "AV"
* group[1].rule[6].source.element = "siteAdministered"
* group[1].rule[6].target.context = "IMM"
* group[1].rule[6].target.element = "site"
* group[1].rule[6].target.transform = #copy

* group[1].rule[7].name = "route"
* group[1].rule[7].source.context = "AV"
* group[1].rule[7].source.element = "routeOfAdministration"
* group[1].rule[7].target.context = "IMM"
* group[1].rule[7].target.element = "route"
* group[1].rule[7].target.transform = #copy

* group[1].rule[8].name = "doseQuantity"
* group[1].rule[8].source.context = "AV"
* group[1].rule[8].source.element = "doseQuantity"
* group[1].rule[8].target.context = "IMM"
* group[1].rule[8].target.element = "doseQuantity"
* group[1].rule[8].target.transform = #copy

// Group: administerVaccineToLocation
* group[2].name = "administerVaccineToLocation"
* group[2].typeMode = #none
* group[2].input[0].name = "AV"
* group[2].input[0].mode = #source
* group[2].input[1].name = "LOC"
* group[2].input[1].mode = #target

* group[2].rule[0].name = "locationName"
* group[2].rule[0].source.context = "AV"
* group[2].rule[0].source.element = "nameOfHealthFacility"
* group[2].rule[0].target.context = "LOC"
* group[2].rule[0].target.element = "name"
* group[2].rule[0].target.transform = #copy

* group[2].rule[1].name = "facilityType"
* group[2].rule[1].source.context = "AV"
* group[2].rule[1].source.element = "facilityType"
* group[2].rule[1].target.context = "LOC"
* group[2].rule[1].target.element = "type"
* group[2].rule[1].target.transform = #copy

// Group: administerVaccineToPractitioner
* group[3].name = "administerVaccineToPractitioner"
* group[3].typeMode = #none
* group[3].input[0].name = "AV"
* group[3].input[0].mode = #source
* group[3].input[1].name = "PRAC"
* group[3].input[1].mode = #target

* group[3].rule[0].name = "identifier"
* group[3].rule[0].source.context = "AV"
* group[3].rule[0].source.element = "healthWorkerIdentifier"
* group[3].rule[0].target.context = "PRAC"
* group[3].rule[0].target.element = "identifier.value"
* group[3].rule[0].target.transform = #copy

// Group: administerVaccineToEncounter
* group[4].name = "administerVaccineToEncounter"
* group[4].typeMode = #none
* group[4].input[0].name = "AV"
* group[4].input[0].mode = #source
* group[4].input[1].name = "ENC"
* group[4].input[1].mode = #target

* group[4].rule[0].name = "sessionType"
* group[4].rule[0].source.context = "AV"
* group[4].rule[0].source.element = "sessionType"
* group[4].rule[0].target.context = "ENC"
* group[4].rule[0].target.element = "class"
* group[4].rule[0].target.transform = #copy

* group[4].rule[1].name = "periodStartEnd"
* group[4].rule[1].source.context = "AV"
* group[4].rule[1].source.element = "vaccinationDateTime"
* group[4].rule[1].target.context = "ENC"
* group[4].rule[1].target.element = "period.start"
* group[4].rule[1].target.transform = #copy

* group[4].rule[2].name = "periodEnd"
* group[4].rule[2].source.context = "AV"
* group[4].rule[2].source.element = "vaccinationDateTime"
* group[4].rule[2].target.context = "ENC"
* group[4].rule[2].target.element = "period.end"
* group[4].rule[2].target.transform = #copy

* group[4].rule[3].name = "status"
* group[4].rule[3].source.context = "AV"
* group[4].rule[3].source.element = ""
* group[4].rule[3].target.context = "ENC"
* group[4].rule[3].target.element = "status"
* group[4].rule[3].target.transform = #copy
* group[4].rule[3].target.parameter.valueString = "finished"

