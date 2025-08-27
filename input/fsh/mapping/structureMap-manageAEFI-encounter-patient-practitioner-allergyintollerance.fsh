Instance: manageaefi-to-ngimm-aefi-profiles
InstanceOf: StructureMap
Usage: #definition
Title: "StructureMap: ManageAEFI to AllergyIntolerance, Encounter, Practitioner, and Patient"
Description: "Maps ManageAEFI logical model to NgImmAllergyIntolerance, NgImmEncounter, NgImmPractitioner, and NgImmPatient profiles"
* id = "manageaefi-to-ngimm-aefi-profiles"
* url = "http://nphcda.gov.ng/ig/immunization/StructureMap/manageaefi-to-ngimm-aefi-profiles"
* name = "ManageAEFIToNgImmAEFIProfiles"
* status = #active

// Source structure
* structure[0].url = "http://nphcda.gov.ng/ig/immunization/StructureDefinition/manage-aefi"
* structure[0].mode = #source
* structure[0].alias = "AEFI"

// Target structures
* structure[+].url = "http://nphcda.gov.ng/ig/immunization/StructureDefinition/allergy-intolerance-profile"
* structure[=].mode = #target
* structure[=].alias = "Allergy"

* structure[+].url = "http://nphcda.gov.ng/ig/immunization/StructureDefinition/ng-imm-encounter"
* structure[=].mode = #target
* structure[=].alias = "Encounter"

* structure[+].url = "http://nphcda.gov.ng/ig/immunization/StructureDefinition/ng-imm-practitioner"
* structure[=].mode = #target
* structure[=].alias = "Practitioner"

* structure[+].url = "http://nphcda.gov.ng/ig/immunization/StructureDefinition/ng-imm-patient"
* structure[=].mode = #target
* structure[=].alias = "Patient"

// Map AEFI logical model to NgImmAllergyIntolerance
* group[0].name = "manageAefiToAllergyIntolerance"
* group[0].typeMode = #none
* group[0].input[0].name = "AEFI"
* group[0].input[0].mode = #source
* group[0].input[1].name = "Allergy"
* group[0].input[1].mode = #target

* group[0].rule[0].name = "reactionDateToOnset"
* group[0].rule[0].source.context = "AEFI"
* group[0].rule[0].source.element = "reactionDate"
* group[0].rule[0].target.context = "Allergy"
* group[0].rule[0].target.element = "onsetDateTime"
* group[0].rule[0].target.transform = #copy

* group[0].rule[+].name = "observationIdToIdentifier"
* group[0].rule[=].source.context = "AEFI"
* group[0].rule[=].source.element = "observationId"
* group[0].rule[=].target.context = "Allergy"
* group[=].rule[0].target.element = "identifier[0].value"
* group[=].rule[0].target.transform = #copy

* group[0].rule[+].name = "complaintToNote"
* group[0].rule[=].source.context = "AEFI"
* group[0].rule[=].source.element = "complaint"
* group[0].rule[=].target.context = "Allergy"
* group[=].rule[0].target.element = "note[0].text"
* group[=].rule[0].target.transform = #copy


* group[0].rule[+].name = "manifestationToReaction"
* group[0].rule[=].source.context = "AEFI"
* group[0].rule[=].source.element = "manifestation"
* group[0].rule[=].target.context = "Allergy"
* group[=].rule[0].target.element = "reaction[0].manifestation[0]"
* group[=].rule[0].target.transform = #copy

* group[0].rule[+].name = "severityToReactionSeverity"
* group[0].rule[=].source.context = "AEFI"
* group[0].rule[=].source.element = "severity"
* group[0].rule[=].target.context = "Allergy"
* group[=].rule[0].target.element = "reaction[0].severity"
* group[=].rule[0].target.transform = #copy

* group[0].rule[+].name = "outcomeToClinicalStatus"
* group[0].rule[=].source.context = "AEFI"
* group[0].rule[=].source.element = "outcome"
* group[0].rule[=].target.context = "Allergy"
* group[=].rule[0].target.element = "clinicalStatus"
* group[=].rule[0].target.transform = #copy

// DoseNumber and TotalDoses as Extensions
* group[0].rule[+].name = "doseNumberToExtension"
* group[0].rule[=].source.context = "AEFI"
* group[0].rule[=].source.element = "doseNumber"
* group[0].rule[=].target.context = "Allergy"
* group[=].rule[0].target.element = "extension[0].url"
* group[=].rule[0].target.transform = #copy
//* group[=].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/AllergyReferenceDoseNumber"
* group[=].rule[0].target.element = "extension[0].valueInteger"
* group[=].rule[0].target.transform = #copy

* group[0].rule[+].name = "totalDosesToExtension"
* group[0].rule[=].source.context = "AEFI"
* group[0].rule[=].source.element = "totalDoses"
* group[0].rule[=].target.context = "Allergy"
* group[=].rule[0].target.element = "extension[1].url"
* group[=].rule[0].target.transform = #copy

//* group[=].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/AllergyReferenceDoseSeries"
* group[=].rule[0].target.element = "extension[1].valueInteger"
* group[=].rule[0].target.transform = #copy



// Group: manageAefiToEncounter
* group[+].name = "manageAefiToEncounter"
* group[=].typeMode = #none
* group[=].input[0].name = "AEFI"
* group[=].input[0].mode = #source
* group[=].input[1].name = "Encounter"
* group[=].input[1].mode = #target

* group[=].rule[0].name = "aefiIdToEncounterId"
* group[=].rule[0].source.context = "AEFI"
* group[=].rule[0].source.element = "observationId"
* group[=].rule[0].target.context = "Encounter"
* group[=].rule[0].target.element = "identifier[0].value"
* group[=].rule[0].target.transform = #copy

* group[=].rule[+].name = "visitTypeToClass"
* group[=].rule[=].source.context = "AEFI"
* group[=].rule[=].source.element = "visitType"
* group[=].rule[=].target.context = "Encounter"
* group[=].rule[=].target.element = "class"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "practitionerToParticipant"
* group[=].rule[=].source.context = "AEFI"
* group[=].rule[=].source.element = "officerId"
* group[=].rule[=].target.context = "Encounter"
* group[=].rule[=].target.element = "participant[0].individual.reference"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "locationToEncounterLocation"
* group[=].rule[=].source.context = "AEFI"
* group[=].rule[=].source.element = "facilityId"
* group[=].rule[=].target.context = "Encounter"
* group[=].rule[=].target.element = "location[0].location.reference"
* group[=].rule[=].target.transform = #copy

// Group: manageAefiToPractitioner
* group[+].name = "manageAefiToPractitioner"
* group[=].typeMode = #none
* group[=].input[0].name = "AEFI"
* group[=].input[0].mode = #source
* group[=].input[1].name = "Practitioner"
* group[=].input[1].mode = #target

* group[=].rule[0].name = "officerIdToIdentifier"
* group[=].rule[0].source.context = "AEFI"
* group[=].rule[0].source.element = "officerId"
* group[=].rule[0].target.context = "Practitioner"
* group[=].rule[0].target.element = "identifier[0].value"
* group[=].rule[0].target.transform = #copy

* group[=].rule[+].name = "officerNameToName"
* group[=].rule[=].source.context = "AEFI"
* group[=].rule[=].source.element = "officerName"
* group[=].rule[=].target.context = "Practitioner"
* group[=].rule[=].target.element = "name[0].text"
* group[=].rule[=].target.transform = #copy

// Group: manageAefiToPatient
* group[+].name = "manageAefiToPatient"
* group[=].typeMode = #none
* group[=].input[0].name = "AEFI"
* group[=].input[0].mode = #source
* group[=].input[1].name = "Patient"
* group[=].input[1].mode = #target

* group[=].rule[0].name = "patientIdToIdentifier"
* group[=].rule[0].source.context = "AEFI"
* group[=].rule[0].source.element = "clientId"
* group[=].rule[0].target.context = "Patient"
* group[=].rule[0].target.element = "identifier[0].value"
* group[=].rule[0].target.transform = #copy

* group[=].rule[+].name = "patientNameToName"
* group[=].rule[=].source.context = "AEFI"
* group[=].rule[=].source.element = "clientName"
* group[=].rule[=].target.context = "Patient"
* group[=].rule[=].target.element = "name[0].text"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "patientSexToGender"
* group[=].rule[=].source.context = "AEFI"
* group[=].rule[=].source.element = "sex"
* group[=].rule[=].target.context = "Patient"
* group[=].rule[=].target.element = "gender"
* group[=].rule[=].target.transform = #copy
