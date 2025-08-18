Profile: NgImmProvenance
Parent: Provenance
Id: ng-imm-provenance
Title: "NG-Imm Provenance"
Description: " A Provenance profile tailored for Nigeria’s Immunization workflows (using FHIR R4.0.1). Captures the origin, responsible party, and 
context for the creation, modification, or exchange of immunization-related records, including Immunization, AEFI, Defaulter Tracing, and related 
patient data."

* target 1..* MS
* target only Reference(NgImmImmunization or NgImmAllergyIntolerance or NgImmClientRegistrationBundle or NgImmPatient or NgImmRegisterFacilityBundle or NgImmUpdateClientBundle or NgImmManageReportAEFIBundle or NgImmGenerateReportBundle)
* target ^short = "The record(s) this provenance statement is about"
* target ^definition = "Points to the Immunization, Patient, Bundle, or related record to which this provenance applies."

* occurred[x] 0..1
* occurred[x] ^short = "When the activity occurred"
* occurred[x] ^definition = "When the action happened — may be a dateTime or a Period."

* recorded 1..1 MS
* recorded ^short = "Date/time the event was recorded"
* recorded ^definition = "When this provenance record itself was captured."

* policy 0..* MS
* policy ^short = "Policies governing the activity"
* policy ^definition = "Policies, regulations, or guidelines (e.g., NDPC privacy law, NITDA guidelines,  WHO guidelines) under which the activity was performed."

* location 0..1 MS
* location only Reference(NgImmLocation)
* location ^short = "Where the activity occurred"
* location ^definition = "The location (facility, outreach site, etc.) where the activity took place."

* reason 0..*
* reason from http://terminology.hl7.org/ValueSet/v3-PurposeOfUse (extensible)
* reason ^short = "Reason for the action"
* reason ^definition = "Justification or explanation for the activity — especially important for updates, corrections, and special case entries."

* activity 1..1 MS
* activity from http://hl7.org/fhir/ValueSet/provenance-activity-type (extensible)
* activity ^short = "Activity that generated or changed the record"
* activity ^definition = "Specifies the action performed, such as creation, update, transmission, or amendment."

* agent 1..* MS
* agent ^short = "Who was involved"
* agent ^definition = "Individual, organization, or device responsible for the activity."
* agent.who 1..1
* agent.who only Reference(NgImmPractitioner or NgImmPractitionerRole or NgImmOrganization)
* agent.who ^short = "practitioner, practitionerRole, or organization responsible"
* agent.role 0..*
* agent.role from http://hl7.org/fhir/ValueSet/participation-role-type (extensible)
* agent.role ^short = "Role of the agent"
* agent.role ^definition = "The role played by the agent in the activity (e.g., author, verifier, transmitter)."

* entity 0..* MS
* entity.role 1..1
* entity.role from http://hl7.org/fhir/ValueSet/provenance-entity-role (required)
* entity.role ^short = "How the entity was used"
* entity.role ^definition = "How the entity was used in the activity (e.g., source, derived)."
* entity.what only Reference(DocumentReference or Media or QuestionnaireResponse or Binary)
* entity.what ^short = "Source material"
* entity.what ^definition = "Original materials or evidence from which the target record was derived."

* signature 0..* MS
* signature ^short = "Digital signature"
* signature ^definition = "Digital signatures supporting authenticity of the action."

Invariant: ngimm-provenance-agent
Description: "At least one agent.who must be specified"
Expression: "agent.where(who.exists()).exists()"
Severity: #error
