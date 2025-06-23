Profile: NgImmImmunization
Parent: Immunization
Description: "Nigerian Profile for Immunization resource."

* identifier 1..1
* vaccineCode 1..1 MS
* vaccineCode.coding 0..*
* vaccineCode.coding ^short = "Vaccine Type"
* vaccineCode.text 0..1
* vaccineCode.text ^short = "Vaccine Administered"
* statusReason from NGImmunizationNotDoneReasonsVS (required)
* statusReason ^short = "Reason not done"
* status MS
* status ^short = "completed| entered-in-error | not-done"
* manufacturer MS
* manufacturer.display 1..1
* manufacturer.display ^short = "Name of the Manufacturer"
* manufacturer.reference 1..1
* manufacturer.reference ^short = "Manufacturer ID"
* patient 1..1 MS
* protocolApplied 0..* MS
* protocolApplied.targetDisease 0..* MS
* protocolApplied.targetDisease ^short = "Vaccine preventable disease being targeted" 
* lotNumber 1..1 MS
* lotNumber ^short = "Vaccine batch number"
* expirationDate 1..1 MS
* expirationDate ^short = "Vaccine expiration date"
* doseQuantity 1..1 MS
* doseQuantity ^short = "Amount of vaccine administered"
* site 1..1 MS
* site ^short = "Body site vaccine was administered"
* route 1..1 MS
* route ^short = "How vaccine entered body"
* performer 0..* MS //Who performed event
* performer.function 0..1
* performer.function ^short = "Designation of reporting officer" //What type of performance was done
* performer.actor only Reference (Practitioner)
* performer.actor ^short = "Name of reporting officer" //Individual or organization who was performing

* occurrence[x] only dateTime



//Invariant:   ng-imm-1
//Description: "If the status is not-done, a reason must be provided"
//Severity:    #error
//Expression:  "status != 'not-done' xor statusReason.exists()"


// Immunization Extensions
 
* extension contains NGPrimaryVaccineStatus named primaryVaccineStatus 0..1 MS
* extension contains NGSignature named signature 0..1 MS
* extension contains NGSessionType named sessionType 0..1 MS
* extension contains NGContraindications named contraindications 0..* MS
* protocolApplied.extension contains NextDoseDate named nextDoseDate 0..1 MS
 