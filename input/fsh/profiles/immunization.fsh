Profile: NgImmImmunization
Parent: Immunization
Title: "NG-Imm Immunization"
Description: "Nigerian Profile for Immunization resource."

* identifier 1..1
<<<<<<< Updated upstream
* vaccineCode from NGVaccineLibraryVS (required)
* vaccineCode ^short = "The code of the Vaccine Administered"
* statusReason from http://hl7.org/fhir/ValueSet/immunization-status-reason (extensible)
=======
* vaccineCode from NGVaccineLibraryVS 
* vaccineCode ^short = "Vaccine Product Administered"
* statusReason from http://hl7.org/fhir/ValueSet/immunization-status-reason (required)
>>>>>>> Stashed changes
* statusReason ^short = "Reason immunization was not done (or was missed)"
* status MS
* status from http://hl7.org/fhir/ValueSet/immunization-status (required)
* status ^short = "Status of Immunization e.g. completed| entered-in-error | not-done"
* manufacturer only Reference(NgImmOrganization)
* manufacturer ^short = "Manufacturer description and identity"
* patient only Reference(NgImmPatient)
* protocolApplied 0..* MS
* protocolApplied.targetDisease from https://www.hl7.org/fhir/R4/valueset-immunization-target-disease (example)
* protocolApplied.targetDisease ^short = "Vaccine preventable disease being targeted" 
* lotNumber 1..1 MS
* lotNumber ^short = "Vaccine batch number"
* expirationDate 1..1 MS
* expirationDate ^short = "Vaccine expiration date"
* doseQuantity 1..1 MS
* doseQuantity ^short = "Amount of vaccine administered"
* site from http://hl7.org/fhir/ValueSet/immunization-site (preferred)
* site ^short = "Body site vaccine was administered"
* route from http://hl7.org/fhir/ValueSet/immunization-route (preferred)
* route ^short = "How vaccine entered body"
* performer 0..* MS //Who performed event
* performer.function from http://hl7.org/fhir/ValueSet/immunization-function (extensible)
* performer.function ^short = "Designation of reporting officer" //What type of performance was done
* performer.actor only Reference (NgImmPractitioner)
* performer.actor ^short = "Name of reporting officer" //Individual or organization who was performing
* occurrence[x] only dateTime
* reaction.date 0..1 
* reaction.reported 0..1
* reaction.detail only Reference(Observation)



// Immunization Extensions
 
/* * extension contains NGPrimaryVaccineStatus named primaryVaccineStatus 0..1 MS */
* extension contains NGSignature named signature 0..1 MS
* extension contains NGSessionType named sessionType 0..1 MS
* extension contains NGContraindications named contraindications 0..* MS
* extension contains NGContraindicated named contraindicated 0..* MS
* protocolApplied.extension contains NextDoseDate named nextDoseDate 0..1 MS
 