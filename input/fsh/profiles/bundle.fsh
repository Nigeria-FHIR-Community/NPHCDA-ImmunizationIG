Alias: $operation = http://hl7.org/fhir/StructureDefinition/operation

Profile: NgImmBundle
Parent: Bundle
Title: "Nigeria Immunization Bundle"
Description: "FHIR Bundle profile for grouping Nigeria Immunization resources including Patient, Immunization, AllergyIntolerance, RelatedPerson, and Organization. Supports request/response/search metadata for interoperability."

* type = #collection

* meta.lastUpdated 0..1 MS
* meta.lastUpdated ^short = "The date and time when the bundle content was last updated."

// Slice the entry
* entry 1..* MS
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open

* entry contains
    patient 1..1 MS and
    immunization 1..* MS and
    allergyIntolerance 0..* MS and
    relatedPerson 0..* MS and
    organization 0..1 MS

// Constrain each entry slice to specific profiles
* entry[patient].resource 1..1
* entry[patient].resource only NgImmPatient
* entry[patient].search.mode 0..1
* entry[patient].request 0..1
* entry[patient].request.method 1..1
* entry[patient].request.url 1..1
* entry[patient].response 0..1
* entry[patient].response.status 1..1

* entry[immunization].resource 1..1
* entry[immunization].resource only NgImmImmunization
* entry[immunization].search.mode 0..1
* entry[immunization].request 0..1
* entry[immunization].request.method 1..1
* entry[immunization].request.url 1..1
* entry[immunization].response 0..1
* entry[immunization].response.status 1..1

* entry[allergyIntolerance].resource 1..1
* entry[allergyIntolerance].resource only NgImmAllergyIntolerance
* entry[allergyIntolerance].search.mode 0..1
* entry[allergyIntolerance].request 0..1
* entry[allergyIntolerance].request.method 1..1
* entry[allergyIntolerance].request.url 1..1
* entry[allergyIntolerance].response 0..1
* entry[allergyIntolerance].response.status 1..1

* entry[relatedPerson] 0..1
* entry[relatedPerson].resource 1..1
* entry[relatedPerson].resource only NgImmSiblingRelatedPerson
* entry[relatedPerson].search.mode 0..1
* entry[relatedPerson].request 0..1
* entry[relatedPerson].request.method 1..1
* entry[relatedPerson].request.url 1..1
* entry[relatedPerson].response 0..1
* entry[relatedPerson].response.status 1..1
* entry[organization] 0..1
* entry[organization].resource 1..1
* entry[organization].resource only NgImmOrganization
* entry[organization].search.mode 0..1
* entry[organization].request 0..1
* entry[organization].request.method 1..1
* entry[organization].request.url 1..1
* entry[organization].response 0..1
* entry[organization].response.status 1..1





// Add supported operations as extensions to this profile
/* * extension contains $operation named validateNgImmBundle 0..1
* extension[validateNgImmBundle].valueCanonical = "OperationDefinition/validate-ngimm-bundle"

* extension contains $operation named submitNgImmBundle 0..1
* extension[submitNgImmBundle].valueCanonical = "OperationDefinition/submit-ngimm-bundle"

* extension contains $operation named exportNgImmBundle 0..1
* extension[exportNgImmBundle].valueCanonical = "OperationDefinition/export-ngimm-bundle"

* extension contains $operation named getPatientHistory 0..1
* extension[getPatientHistory].valueCanonical = "OperationDefinition/get-patient-history"

* extension contains $operation named syncNgImmBundle 0..1
* extension[syncNgImmBundle].valueCanonical = "OperationDefinition/sync-ngimm-bundle"

* extension contains $operation named evaluateCompleteness 0..1
* extension[evaluateCompleteness].valueCanonical = "OperationDefinition/evaluate-completeness"

* extension contains $operation named resolveConflicts 0..1
* extension[resolveConflicts].valueCanonical = "OperationDefinition/resolve-conflicts"

* extension contains $operation named generateSummary 0..1
* extension[generateSummary].valueCanonical = "OperationDefinition/generate-summary"

* extension contains $operation named getNextDoseSchedule 0..1
* extension[getNextDoseSchedule].valueCanonical = "OperationDefinition/get-next-dose-schedule"

* extension contains $operation named removeObsoleteBundles 0..1
* extension[removeObsoleteBundles].valueCanonical = "OperationDefinition/remove-obsolete-bundles"
 */