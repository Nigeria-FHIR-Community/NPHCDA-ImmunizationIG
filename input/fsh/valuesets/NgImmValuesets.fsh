//Patient Valuesets
/* ValueSet: NGGenderVS
Id: nigeria-gender
Title: "NG-Imm Gender or Sex VS"
//Description: "The administrative gender of a person."
Description: "Subset of HL7 administrative-gender limited to 'male' and 'female'."
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-gender"
* include codes from system NGGenderCS  */


ValueSet: NGGenderVS
Id: ng-gender-vs
Title: "NG Gender or Sex VS"
Description: "A subset of the administrative gender codes including only 'male' and 'female'"
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/ng-gender-vs"
* ^experimental = true
* include codes from system http://hl7.org/fhir/administrative-gender where code = "male"
* include codes from system http://hl7.org/fhir/administrative-gender where code = "female"




ValueSet: NGWardsVS
Id: nigeria-wards
Title: "NG-Imm Wards VS"
Description: "The administrative Ward (within an LGA) where a person or a facility is."
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-wards"
* ^experimental = false
* include codes from system NGWardsCS

ValueSet: NGLGAsVS
Id: nigeria-lgas
Title: "NG-Imm LGAs VS"
Description: "The administrative Local Government Areas where a person or a facility is."
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-lgas"
* ^experimental = false
* include codes from system NGLGAsCS

ValueSet: NGStatesVS
Id: nigeria-states
Title: "NG-Imm States VS"
Description: "The state where a person or a facility is."
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-states"
* ^experimental = false
* include codes from system NGStatesCS

// ValueSet: NGLanguagesVS
// Id: nigeria-languages
// Title: "NG-Imm Languages VS"
// Description: "The Patient's preferred language for communication."
// * ^status = #active
// //* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-languages"
// * include codes from system NGLanguagesCS


ValueSet: NGRelationshipsVS
Id: nigeria-relationship
Title: "NG-Imm Relationships VS"
Description: "list of persons related to a patient, but who is not a direct target of care."
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-relationship"
* ^experimental = false
* include codes from system NGRelationshipsCS


ValueSet: NGSiblingRelationshipsVS
Id: nigeria-sibling-relationship
Title: "NG-Imm Sibling Relationships VS"
Description: "A sub list from relationship list with only two options brother and sister."
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-sibling-relationship"
* ^experimental = false
* include codes from system NGRelationshipsCS where code = "BROTHER"
* include codes from system NGRelationshipsCS where code = "SISTER"



ValueSet: NGHivStatusVS
Id: nigeria-hiv-status
Title: "NG-Imm Client HIV Status VS"
Description: "Client HIV Status"
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-hiv-status"
* include codes from system NGHivStatusCS

ValueSet: NGPregnancyStatusVS
Id: nigeria-pregnancy-status
Title: "NG-Imm Client Preganancy Status VS"
Description: "Client Pregnancy Status"
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-pregnancy-status"
* ^experimental = false
* include codes from system NGPregnancyStatusCS

//Related Person Valueset
ValueSet: NGSiblingHealthStatusVS
Id: nigeria-sibling-health-status
Title: "NG-Imm Sibling Health Status VS"
Description: "This CodeSystem defines the health of the client's sibling"
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-sibling-health-status"
* ^experimental = false
* include codes from system NGSiblingHealthStatusCS



//Identifier VS

ValueSet: NGIdentifierVS
Id: patient-identifier-vs
Title: "NG-Imm MMZ.C.DE1 Client Identifier VS"
Description: "This ValueSet defines list of options for uniquely Identifting a Client"
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/patient-identifier-cs"
* ^experimental = false
* include codes from system NGIdentifierCS


//Immunization Valuesets
ValueSet: NGSessionTypeVS
Id: nigeria-session-type 
Title: "NG-Imm Session Type VS"
Description: "Type of session for immunization. Could be in a fixed facility, outreach or mobile."
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-session-type"
* ^experimental = false
* include codes from system NGImmunizationSessionTypeCS

ValueSet: NGContraindicationVS
Id: nigeria-vaccine-contraindication
Title: "NG-Imm Vaccine Contraindication VS"
Description: "A set of standardized codes used to represent clinical conditions, diagnoses, or circumstances that serve as contraindications to the administration of one or more vaccines."
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-vaccine-contraindication"
* ^experimental = false
* include codes from system NGImmunizationContraindicationCS

// ValueSet: NGVaccineLibraryVS
// Id: nigeria-vaccine-library
// Title: "NG-Imm VaccineLibrary VS"
// Description: "A curated list of vaccines recognized under Nigeria's national immunization program"
// * ^status = #active
// //* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-vaccine-library"
// * include codes from system NGVaccineLibraryCS


//Location & Organisation VS

ValueSet: NGFacilityTypeVS
Id: nigeria-facility-types
Title: "NG-Imm HealthFacility Type VS"
Description: "Classification of Nigerian health facilities"
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-facility-types"
* ^experimental = false
* include codes from system NGFacilityTypeCS

ValueSet: NGOrganizationOwnerVS
Id: nigeria-location-owner
Title: "NG-Imm Location Owner"
Description: "The owner of an Immunization location"
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-location-owner"
* ^experimental = false
* include codes from system NGOrganizationOwnerCS

//Allergy Intolerance Valuesets
ValueSet: NGClinicalStatusVS
Id: nigeria-clinical-status
Title: "NG-Imm Clinical Status VS"
Description: "The outcome of the reaction"
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/nigeria-hiv-status"
* ^experimental = false
* include codes from system NGClinicalStatusCS



//Facility Registry
ValueSet: NGFacilityIdentifierVS
Id: ng-facility-identifier-cs
Title: "NG-Imm Clinical Status VS"
Description: "The outcome of the reaction"
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/immunization/ValueSet/ng-facility-identifier-cs"
* ^experimental = false
* include codes from system NGFacilityIdentifierCS



/* ValueSet: NGImmunizationSiteVS
Id: nigeria-vaccine-site
Title: "NG-Imm Vaccine Site VS"
Description: "Vaccine Site"
* ^status = #active
* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-vaccine-site"
//* include codes from system NGImmunizationSiteCS
* include codes from system http://hl7.org/fhir/ValueSet/immunization-site */

/* ValueSet: NGImmunizationRouteVS
Id: nigeria-vaccine-route
Title: "NG-Imm Vaccine Route VS"
Description: "Vaccine Route"
* ^status = #active
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-vaccine-route"
* ^url = "http://hl7.org/fhir/ValueSet/immunization-route"
* include codes from system http://hl7.org/fhir/ValueSet/immunization-route */

/* ValueSet: NGPrimaryVaccineStatusVS
Id: nigeria-primary-vaccine-status
Title: "NG-Imm Primary vaccine Status VS"
Description: "Primary Vaccine Status"
* ^status = #active
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-primary-vaccine-status"
* ^url = "http://hl7.org/fhir/ValueSet/immunization-status"
* include codes from system http://hl7.org/fhir/ValueSet/immunization-status */

/* ValueSet: NGImmunizationNotDoneReasonsVS
Id: nigeria-Immunization-status-reason
Title: "NG-Imm Reason for missed Vaccination VS"
Description: "Reason for a Client missing the last or other vaccinations"
* ^status = #active
* ^url = "http://hl7.org/fhir/ValueSet/immunization-status-reason"
* include codes from system http://hl7.org/fhir/ValueSet/immunization-status-reason */

/* ValueSet: NGPerformerFunctionVS
Id: nigeria-performer-function
Title: "NG-Imm Performer Function VS"
Description: "Designation of reporting officer"
* ^status = #active
* ^url = "http://hl7.org/fhir/ValueSet/immunization-function"
* include codes from system http://hl7.org/fhir/ValueSet/immunization-function */




/* ValueSet: NGVerificationStatusVS
Id: nigeria-verifiction-status
Title: "NG-Imm AEFI Verification Status VS"
Description: "AEFI Verification Status"
* ^status = #active
//* ^url = "http://nphcda.gov.ng/ig/fhir/ValueSet/ng-verification-status"
* ^url = "http://hl7.org/fhir/ValueSet/allergyintolerance-verification"
* include codes from system http://hl7.org/fhir/ValueSet/allergyintolerance-verification */

/* ValueSet: NGAllergyIntoleranceTypeVS
Id: nigeria-Allergy-Intolerance-Type
Title: "NG-Imm Allergy Intolerance Type VS"
Description: "Identification of the underlying physiological mechanism for a Reaction Risk"
* ^status = #active
* ^url = "http://hl7.org/fhir/ValueSet/allergy-intolerance-type"
* include codes from system http://hl7.org/fhir/ValueSet/allergy-intolerance-type */

/* ValueSet: NGAllergyIntoleranceCategoryVS
Id: nigeria-Allergy-Intolerance-Category
Title: "NG-Imm Allergy Intolerance Category VS"
Description: "Category of an identified substance associated with allergies or intolerances"
* ^status = #active
* ^url = "http://hl7.org/fhir/ValueSet/allergy-intolerance-category"
* include codes from system http://hl7.org/fhir/ValueSet/allergy-intolerance-category */

/* ValueSet: NGAllergyIntoleranceCriticalityVS
Id: nigeria-Allergy-Intolerance-Criticality
Title: "NG-Imm Allergy Intolerance Criticality VS"
Description: "Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance"
* ^status = #active
* ^url = "http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality"
* include codes from system http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality */

/* ValueSet: NGAllergyIntoleranceCodeVS
Id: nigeria-Allergy-Intolerance-Code
Title: "NG-Imm Allergy Intolerance Code VS"
Description: "Code that identifies the allergy or intolerance"
* ^status = #active
* ^url = "http://hl7.org/fhir/ValueSet/allergyintolerance-code"
* include codes from system http://hl7.org/fhir/ValueSet/allergyintolerance-code */

/* ValueSet: NGReactionSubstanceVS
Id: nigeria-Reaction-Substance
Title: "NG-Imm Reaction Substance VS"
Description: "Specific substance or pharmaceutical product considered to be responsible for event"
* ^status = #active
* ^url = "http://hl7.org/fhir/ValueSet/substance-code"
* include codes from system http://hl7.org/fhir/ValueSet/substance-code */

/* ValueSet: NGReactionManifestationVS
Id: nigeria-Reaction-Manifestation
Title: "NG-Imm Reaction Manifestation VS"
Description: "Clinical symptoms/signs associated with the Event"
* ^status = #active
* ^url = "http://hl7.org/fhir/ValueSet/clinical-findings"
* include codes from system http://hl7.org/fhir/ValueSet/clinical-findings */

/* ValueSet: NGAllergySeverityVS
Id: nigeria-allergy-severity
Title: "NG-Imm Allergy Severity VS"
Description: "Vaccine reaction Severity"
* ^status = #active
* ^url = "http://hl7.org/fhir/ValueSet/reaction-event-severity"
* include codes from system http://hl7.org/fhir/ValueSet/reaction-event-severity */