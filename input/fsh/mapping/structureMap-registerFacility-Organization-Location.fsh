Instance: registerfacilitymodel-to-ngimmorganization-ngimmlocation
InstanceOf: StructureMap
Usage: #definition
Title: "StructureMap: RegisterFacilityModel to NgImmOrganization and NgImmLocation"
Description: "Map logical RegisterFacilityModel to NgImmOrganization and NgImmLocation profiles"
* id = "registerfacilitymodel-to-ngimmorganization-location"
* url = "http://nphcda.gov.ng/ig/immunization/StructureMap/registerfacilitymodel-to-ngimmorganization-location"
* name = "RegisterFacilityModelToNgImmOrganizationAndNgImmLocation"
* status = #active

// Source structure
* structure[0].url = "http://nphcda.gov.ng/ig/immunization/StructureDefinition/register-facility-model"
* structure[0].mode = #source
* structure[0].alias = "RFM"

// Target structures
* structure[+].url = "http://nphcda.gov.ng/ig/immunization/StructureDefinition/ng-imm-organization"
* structure[=].mode = #target
* structure[=].alias = "Org"

* structure[+].url = "http://nphcda.gov.ng/ig/immunization/StructureDefinition/nigeria-location"
* structure[=].mode = #target
* structure[=].alias = "Loc"

// Mapping groups

* group[0].name = "registerFacilityToOrganization"
* group[0].typeMode = #none
* group[0].input[0].name = "RFM"
* group[0].input[0].mode = #source
* group[0].input[1].name = "Org"
* group[0].input[1].mode = #target

* group[0].rule[0].name = "facilityIdToIdentifier"
* group[0].rule[0].source.context = "RFM"
* group[0].rule[0].source.element = "facilityId"
* group[0].rule[0].target.context = "Org"
* group[0].rule[0].target.element = "identifier[0].value"
* group[0].rule[0].target.transform = #copy

* group[0].rule[+].name = "regulatorToIdentifierSystem"
* group[0].rule[=].source.context = "RFM"
* group[0].rule[=].source.element = "regulator"
* group[0].rule[=].target.context = "Org"
* group[0].rule[=].target.element = "identifier[0].system"
* group[0].rule[=].target.transform = #copy

* group[0].rule[+].name = "facilityNameToName"
* group[0].rule[=].source.context = "RFM"
* group[0].rule[=].source.element = "facilityName"
* group[0].rule[=].target.context = "Org"
* group[0].rule[=].target.element = "name"
* group[0].rule[=].target.transform = #copy

* group[0].rule[+].name = "facilityTypeToType"
* group[0].rule[=].source.context = "RFM"
* group[0].rule[=].source.element = "facilityType"
* group[0].rule[=].target.context = "Org"
* group[0].rule[=].target.element = "type[0]"
* group[0].rule[=].target.transform = #copy

* group[0].rule[+].name = "activeTrue"
* group[0].rule[=].source.context = "RFM"
* group[0].rule[=].source.element = "facilityStatus"
* group[0].rule[=].target.context = "Org"
* group[0].rule[=].target.element = "active"
* group[0].rule[=].target.transform = #copy
* group[0].rule[=].target.parameter[0].valueBoolean = true

* group[+].name = "registerFacilityToLocation"
* group[=].typeMode = #none
* group[=].input[0].name = "RFM"
* group[=].input[0].mode = #source
* group[=].input[1].name = "Loc"
* group[=].input[1].mode = #target

* group[=].rule[0].name = "facilityNameToLocationName"
* group[=].rule[0].source.context = "RFM"
* group[=].rule[0].source.element = "facilityName"
* group[=].rule[0].target.context = "Loc"
* group[=].rule[0].target.element = "name"
* group[=].rule[0].target.transform = #copy

* group[=].rule[+].name = "facilityTypeToLocationType"
* group[=].rule[=].source.context = "RFM"
* group[=].rule[=].source.element = "facilityType"
* group[=].rule[=].target.context = "Loc"
* group[=].rule[=].target.element = "type[0]"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "addressLineToLine"
* group[=].rule[=].source.context = "RFM"
* group[=].rule[=].source.element = "addressLine"
* group[=].rule[=].target.context = "Loc"
* group[=].rule[=].target.element = "address.line[0]"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "cityToCity"
* group[=].rule[=].source.context = "RFM"
* group[=].rule[=].source.element = "city"
* group[=].rule[=].target.context = "Loc"
* group[=].rule[=].target.element = "address.city"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "lgaToDistrict"
* group[=].rule[=].source.context = "RFM"
* group[=].rule[=].source.element = "lga"
* group[=].rule[=].target.context = "Loc"
* group[=].rule[=].target.element = "address.district"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "stateToState"
* group[=].rule[=].source.context = "RFM"
* group[=].rule[=].source.element = "state"
* group[=].rule[=].target.context = "Loc"
* group[=].rule[=].target.element = "address.state"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "latitudeToLatitude"
* group[=].rule[=].source.context = "RFM"
* group[=].rule[=].source.element = "latitude"
* group[=].rule[=].target.context = "Loc"
* group[=].rule[=].target.element = "position.latitude"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "longitudeToLongitude"
* group[=].rule[=].source.context = "RFM"
* group[=].rule[=].source.element = "longitude"
* group[=].rule[=].target.context = "Loc"
* group[=].rule[=].target.element = "position.longitude"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "countryFixed"
* group[=].rule[=].source.context = "RFM"
* group[=].rule[=].source.element = "country"
* group[=].rule[=].target.context = "Loc"
* group[=].rule[=].target.element = "address.country"
* group[=].rule[=].target.transform = #copy
* group[=].rule[=].target.parameter[0].valueString = "NG"

* group[=].rule[+].name = "locationStatusActive"
* group[=].rule[=].source.context = "RFM"
* group[=].rule[=].source.element = "facilitystatus"
* group[=].rule[=].target.context = "Loc"
* group[=].rule[=].target.element = "status"
* group[=].rule[=].target.transform = #copy
* group[=].rule[=].target.parameter[0].valueString = "active"

* group[=].rule[+].name = "organizationReferenceToManagingOrg"
* group[=].rule[=].source.context = "RFM"
* group[=].rule[=].source.element = "facilityId"
* group[=].rule[=].target.context = "Loc"
* group[=].rule[=].target.element = "managingOrganization.reference"
* group[=].rule[=].target.transform = #append
* group[=].rule[=].target.parameter[0].valueString = "Organization/"
* group[=].rule[=].target.parameter[1].valueId = "facilityId"
