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

// Group: administerVaccineToImmunization
* group[+].name = "administerVaccineToImmunization"
* group[=].typeMode = #none
* group[=].input[0].name = "AV"
* group[=].input[0].mode = #source
* group[=].input[1].name = "IMM"
* group[=].input[1].mode = #target
* group[=].rule[+].name = "vaccineCode"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "vaccineType"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "vaccineCode"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "contraindicated"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "contraindicated"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "doNotPerform"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "contraindications"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "contraindications"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "reasonCode"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "occurrenceDateTime"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "vaccinationDateTime"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "occurrenceDateTime"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "lotNumber"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "vaccineBatchNumber"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "lotNumber"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "expirationDate"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "expirationDate"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "expirationDate"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "site"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "siteAdministered"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "site"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "route"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "routeOfAdministration"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "route"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "doseQuantity"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "doseQuantity"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "doseQuantity"
* group[=].rule[=].target.transform = #copy

// Group: administerVaccineToLocation
* group[+].name = "administerVaccineToLocation"
* group[=].typeMode = #none
* group[=].input[0].name = "AV"
* group[=].input[0].mode = #source
* group[=].input[1].name = "LOC"
* group[=].input[1].mode = #target

* group[=].rule[+].name = "locationName"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "nameOfHealthFacility"
* group[=].rule[=].target.context = "LOC"
* group[=].rule[=].target.element = "name"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "facilityType"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "facilityType"
* group[=].rule[=].target.context = "LOC"
* group[=].rule[=].target.element = "type"
* group[=].rule[=].target.transform = #copy

// Group: administerVaccineToPractitioner
* group[+].name = "administerVaccineToPractitioner"
* group[=].typeMode = #none
* group[=].input[0].name = "AV"
* group[=].input[0].mode = #source
* group[=].input[1].name = "PRAC"
* group[=].input[1].mode = #target

* group[=].rule[+].name = "identifier"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "healthWorkerIdentifier"
* group[=].rule[=].target.context = "PRAC"
* group[=].rule[=].target.element = "identifier.value"
* group[=].rule[=].target.transform = #copy

// Group: administerVaccineToEncounter
* group[+].name = "administerVaccineToEncounter"
* group[=].typeMode = #none
* group[=].input[0].name = "AV"
* group[=].input[0].mode = #source
* group[=].input[1].name = "ENC"
* group[=].input[1].mode = #target

* group[=].rule[+].name = "sessionType"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "sessionType"
* group[=].rule[=].target.context = "ENC"
* group[=].rule[=].target.element = "class"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "periodStartEnd"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "vaccinationDateTime"
* group[=].rule[=].target.context = "ENC"
* group[=].rule[=].target.element = "period.start"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "periodEnd"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = "vaccinationDateTime"
* group[=].rule[=].target.context = "ENC"
* group[=].rule[=].target.element = "period.end"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "status"
* group[=].rule[=].source.context = "AV"
* group[=].rule[=].source.element = ""
* group[=].rule[=].target.context = "ENC"
* group[=].rule[=].target.element = "status"
* group[=].rule[=].target.transform = #copy
* group[=].rule[=].target.parameter.valueString = "finished"
