Instance: defaultertracking-to-immunization
InstanceOf: StructureMap
Usage: #definition
Title: "StructureMap: DefaulterTracking to Immunization and related profiles"
Description: "Map logical DefaulterTracking model to NgImmImmunization, NgImmPatient, NgImmEncounter, and NgImmPractitioner profiles"
* id = "defaultertracking-to-immunization"
* url = "https://nphcda.gov.ng/immunizationIG/StructureMap/defaultertracking-to-immunization"
* name = "DefaulterTrackingToImmunization"
* status = #active

// Structures
* structure[0].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/defaultertracking"
* structure[0].mode = #source
* structure[0].alias = "DT"

* structure[1].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ng-imm-patient"
* structure[1].mode = #target
* structure[1].alias = "PAT"

* structure[2].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ng-imm-immunization"
* structure[2].mode = #target
* structure[2].alias = "IMM"

* structure[3].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ng-imm-encounter"
* structure[3].mode = #target
* structure[3].alias = "ENC"

* structure[4].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ng-imm-practitioner"
* structure[4].mode = #target
* structure[4].alias = "PRAC"

// Group: defaulterTrackingToPatient
* group[+].name = "defaulterTrackingToPatient"
* group[=].typeMode = #none
* group[=].input[0].name = "DT"
* group[=].input[0].mode = #source
* group[=].input[1].name = "PAT"
* group[=].input[1].mode = #target

* group[=].rule[+].name = "clientName"
* group[=].rule[=].source.context = "DT"
* group[=].rule[=].source.element = "clientName"
* group[=].rule[=].target.context = "PAT"
* group[=].rule[=].target.element = "name[0].text"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "clientSex"
* group[=].rule[=].source.context = "DT"
* group[=].rule[=].source.element = "clientSex"
* group[=].rule[=].target.context = "PAT"
* group[=].rule[=].target.element = "gender"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "clientAge"
* group[=].rule[=].source.context = "DT"
* group[=].rule[=].source.element = "clientAge"
* group[=].rule[=].target.context = "PAT"
* group[=].rule[=].target.element = "extension[ageInMonths].valueInteger"
* group[=].rule[=].target.transform = #copy

// Group: defaulterTrackingToImmunization
* group[+].name = "defaulterTrackingToImmunization"
* group[=].typeMode = #none
* group[=].input[0].name = "DT"
* group[=].input[0].mode = #source
* group[=].input[1].name = "IMM"
* group[=].input[1].mode = #target

* group[=].rule[+].name = "missedVaccine"
* group[=].rule[=].source.context = "DT"
* group[=].rule[=].source.element = "missedVaccine"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "vaccineCode"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "missedVaccineDate"
* group[=].rule[=].source.context = "DT"
* group[=].rule[=].source.element = "missedVaccineDate"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "occurrenceDateTime"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "missedReason"
* group[=].rule[=].source.context = "DT"
* group[=].rule[=].source.element = "missedReason"
* group[=].rule[=].target.context = "IMM"
* group[=].rule[=].target.element = "note[0].text"
* group[=].rule[=].target.transform = #copy

// Group: defaulterTrackingToEncounter
* group[+].name = "defaulterTrackingToEncounter"
* group[=].typeMode = #none
* group[=].input[0].name = "DT"
* group[=].input[0].mode = #source
* group[=].input[1].name = "ENC"
* group[=].input[1].mode = #target

* group[=].rule[+].name = "encounterPeriod"
* group[=].rule[=].source.context = "DT"
* group[=].rule[=].source.element = "missedVaccineDate"
* group[=].rule[=].target.context = "ENC"
* group[=].rule[=].target.element = "period.start"
* group[=].rule[=].target.transform = #copy

// Group: defaulterTrackingToPractitioner
* group[+].name = "defaulterTrackingToPractitioner"
* group[=].typeMode = #none
* group[=].input[0].name = "DT"
* group[=].input[0].mode = #source
* group[=].input[1].name = "PRAC"
* group[=].input[1].mode = #target

* group[=].rule[+].name = "caregiverName"
* group[=].rule[=].source.context = "DT"
* group[=].rule[=].source.element = "caregiverName"
* group[=].rule[=].target.context = "PRAC"
* group[=].rule[=].target.element = "name[0].text"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "caregiverPhone"
* group[=].rule[=].source.context = "DT"
* group[=].rule[=].source.element = "caregiverPhone"
* group[=].rule[=].target.context = "PRAC"
* group[=].rule[=].target.element = "telecom[0].value"
* group[=].rule[=].target.transform = #copy
