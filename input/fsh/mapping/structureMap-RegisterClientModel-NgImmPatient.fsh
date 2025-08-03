Instance: registerclientmodel-to-ngimmpatient
InstanceOf: StructureMap
Usage: #definition
Title: "StructureMap: RegisterClientModel to NgImmPatient"
Description: "Map logical RegisterClientModel to NgImmPatient profile"
* id = "registerclientmodel-to-ngimmpatient"
* url = "https://nphcda.gov.ng/immunizationIG/StructureMap/registerclientmodel-to-ngimmpatient"
* name = "RegisterClientModelToNgImmPatient"
* status = #active

// Source and target structures
* structure[0].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/register-client-model"
* structure[0].mode = #source
* structure[0].alias = "RCM"

* structure[1].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition-NgImmPatient"
* structure[1].mode = #target
* structure[1].alias = "Patient"

// Main group
* group.name = "RCMToNgImmPatient"
* group.typeMode = #none
* group.input[0].name = "rcm"
* group.input[0].type = "RegisterClientModel"
* group.input[0].mode = #source
* group.input[1].name = "patient"
* group.input[1].type = "Patient"
* group.input[1].mode = #target

// Identifier
* group.rule[0].name = "SetIdentifier"
* group.rule[0].source.context = "rcm"
* group.rule[0].source.element = "identifier"
* group.rule[0].target.context = "patient"
* group.rule[0].target.element = "identifier.value"
* group.rule[0].target.transform = #copy

// Name.given
* group.rule[1].name = "SetGivenName"
* group.rule[1].source.context = "rcm"
* group.rule[1].source.element = "name.given"
* group.rule[1].target.context = "patient"
* group.rule[1].target.element = "name.given"
* group.rule[1].target.transform = #copy

// Name.family
* group.rule[2].name = "SetFamilyName"
* group.rule[2].source.context = "rcm"
* group.rule[2].source.element = "name.family"
* group.rule[2].target.context = "patient"
* group.rule[2].target.element = "name.family"
* group.rule[2].target.transform = #copy

// Gender
* group.rule[3].name = "SetGender"
* group.rule[3].source.context = "rcm"
* group.rule[3].source.element = "sex"
* group.rule[3].target.context = "patient"
* group.rule[3].target.element = "gender"
* group.rule[3].target.transform = #translate
* group.rule[3].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/ConceptMap/RCMSexToAdministrativeGender"
* group.rule[3].target.parameter[1].valueString = "code"

// Date of birth
* group.rule[4].name = "SetBirthDate"
* group.rule[4].source.context = "rcm"
* group.rule[4].source.element = "dateOfBirth"
* group.rule[4].target.context = "patient"
* group.rule[4].target.element = "birthDate"
* group.rule[4].target.transform = #copy

// Address line
* group.rule[5].name = "SetAddressLine"
* group.rule[5].source.context = "rcm"
* group.rule[5].source.element = "address.residentialAddress"
* group.rule[5].target.context = "patient"
* group.rule[5].target.element = "address.line"
* group.rule[5].target.transform = #copy

// Address city
* group.rule[6].name = "SetCity"
* group.rule[6].source.context = "rcm"
* group.rule[6].source.element = "address.town"
* group.rule[6].target.context = "patient"
* group.rule[6].target.element = "address.city"
* group.rule[6].target.transform = #copy

// Address district
* group.rule[7].name = "SetDistrict"
* group.rule[7].source.context = "rcm"
* group.rule[7].source.element = "address.lga"
* group.rule[7].target.context = "patient"
* group.rule[7].target.element = "address.district"
* group.rule[7].target.transform = #copy

// Address state
* group.rule[8].name = "SetState"
* group.rule[8].source.context = "rcm"
* group.rule[8].source.element = "address.state"
* group.rule[8].target.context = "patient"
* group.rule[8].target.element = "address.state"
* group.rule[8].target.transform = #copy

// Caregiver name.given
* group.rule[9].name = "SetCaregiverGiven"
* group.rule[9].source.context = "rcm"
* group.rule[9].source.element = "contact.name.given"
* group.rule[9].target.context = "patient"
* group.rule[9].target.element = "contact.name.given"
* group.rule[9].target.transform = #copy

// Caregiver name.family
* group.rule[10].name = "SetCaregiverFamily"
* group.rule[10].source.context = "rcm"
* group.rule[10].source.element = "contact.name.family"
* group.rule[10].target.context = "patient"
* group.rule[10].target.element = "contact.name.family"
* group.rule[10].target.transform = #copy

// Caregiver telecom
* group.rule[11].name = "SetCaregiverPhone"
* group.rule[11].source.context = "rcm"
* group.rule[11].source.element = "contact.telecom.value"
* group.rule[11].target.context = "patient"
* group.rule[11].target.element = "contact.telecom.value"
* group.rule[11].target.transform = #copy

// Caregiver relationship
* group.rule[12].name = "SetCaregiverRelationship"
* group.rule[12].source.context = "rcm"
* group.rule[12].source.element = "contact.relationship.text"
* group.rule[12].target.context = "patient"
* group.rule[12].target.element = "contact.relationship.text"
* group.rule[12].target.transform = #copy




// Extensions
* group.rule[13].name = "SetPregnancyStatus"
* group.rule[13].source.context = "rcm"
* group.rule[13].source.element = "pregnancyStatus"
* group.rule[13].target.context = "patient"
* group.rule[13].target.element = "extension.valueCodeableConcept"
* group.rule[13].target.transform = #copy
* group.rule[13].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/NGPregnancyStatus"

* group.rule[14].name = "SetAgeInWeeks"
* group.rule[14].source.context = "rcm"
* group.rule[14].source.element = "ageInWeeks"
* group.rule[14].target.context = "patient"
* group.rule[14].target.element = "extension.valueInteger"
* group.rule[14].target.transform = #copy
* group.rule[14].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/NGAgeInWeeks"

* group.rule[15].name = "SetAgeInMonths"
* group.rule[15].source.context = "rcm"
* group.rule[15].source.element = "ageInMonths"
* group.rule[15].target.context = "patient"
* group.rule[15].target.element = "extension.valueInteger"
* group.rule[15].target.transform = #copy
* group.rule[15].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/NGAgeInMonths"

* group.rule[16].name = "SetAgeInYears"
* group.rule[16].source.context = "rcm"
* group.rule[16].source.element = "ageInYears"
* group.rule[16].target.context = "patient"
* group.rule[16].target.element = "extension.valueInteger"
* group.rule[16].target.transform = #copy
* group.rule[16].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/NGAgeInYears"

* group.rule[17].name = "SetWeightAtBirth"
* group.rule[17].source.context = "rcm"
* group.rule[17].source.element = "weightAtBirth"
* group.rule[17].target.context = "patient"
* group.rule[17].target.element = "extension.valueQuantity"
* group.rule[17].target.transform = #copy
* group.rule[17].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/NGBirthWeight"

* group.rule[18].name = "SetHIVStatus"
* group.rule[18].source.context = "rcm"
* group.rule[18].source.element = "hivStatus"
* group.rule[18].target.context = "patient"
* group.rule[18].target.element = "extension.valueCodeableConcept"
* group.rule[18].target.transform = #copy
* group.rule[18].target.parameter[0].valueString = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/NGHIVStatus"

