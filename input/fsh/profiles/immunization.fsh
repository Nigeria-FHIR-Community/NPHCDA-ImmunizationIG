Profile: NgImmImmunization
Parent: Immunization
Title: "NG-Imm Immunization"
Description: "Nigerian Profile for Immunization resource."

* identifier 1..1
* vaccineCode 1..1 MS
* vaccineCode.coding from NGVaccineLibraryVS
* vaccineCode.coding ^short = "Vaccine Type"
* vaccineCode.text from NGVaccineLibraryVS
* vaccineCode.text ^short = "Vaccine Administered"
* statusReason from http://hl7.org/fhir/ValueSet/immunization-status-reason (required)
* statusReason ^short = "Reason immunization was not done (or was missed)"
* status MS
* status from http://hl7.org/fhir/ValueSet/immunization-status (required)
* status ^short = "Status of Immunization e.g. completed| entered-in-error | not-done"
* manufacturer only Reference(NgImmOrganization)
* manufacturer ^short = "Manufacturer ID"
* patient only Reference (NgImmPatient)
* protocolApplied 0..* MS
* protocolApplied.targetDisease 0..* MS
* protocolApplied.targetDisease ^short = "Vaccine preventable disease being targeted" 
* lotNumber 1..1 MS
* lotNumber ^short = "Vaccine batch number"
* expirationDate 1..1 MS
* expirationDate ^short = "Vaccine expiration date"
* doseQuantity 1..1 MS
* doseQuantity ^short = "Amount of vaccine administered"
* site from http://hl7.org/fhir/ValueSet/immunization-site (required)
* site ^short = "Body site vaccine was administered"
* route from http://hl7.org/fhir/ValueSet/immunization-route (required)
* route ^short = "How vaccine entered body"
* performer 0..* MS //Who performed event
* performer.function from http://hl7.org/fhir/ValueSet/immunization-function (required)
* performer.function ^short = "Designation of reporting officer" //What type of performance was done
* performer.actor only Reference (NgImmPractitioner)
* performer.actor ^short = "Name of reporting officer" //Individual or organization who was performing
* occurrence[x] only dateTime
* reaction.date 0..1 
* reaction.reported 0..1
* reaction.detail only Reference(Observation)




//Invariant:   ng-imm-1
//Description: "If the status is not-done, a reason must be provided"
//Severity:    #error
//Expression:  "status != 'not-done' xor statusReason.exists()"


// Immunization Extensions
 
/* * extension contains NGPrimaryVaccineStatus named primaryVaccineStatus 0..1 MS */
* extension contains NGSignature named signature 0..1 MS
* extension contains NGSessionType named sessionType 0..1 MS
* extension contains NGContraindications named contraindications 0..* MS
* extension contains NGContraindicated named contraindicated 0..* MS
* protocolApplied.extension contains NextDoseDate named nextDoseDate 0..1 MS
 