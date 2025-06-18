//Alias: $cvx = http://hl7.org/fhir/sid/cvx
//Alias: $vaccines = http://health.gov.tz/CodeSystems/VaccineCodes
//Alias: $mms = http://id.who.int/icd11/mms
//Alias: $v2-0443 = http://terminology.hl7.org/CodeSystem/v2-0443
//Alias: $kenya-healthworker-extension = https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/kenya-health-worker-extension
//Alias: $body-weight-extension = https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/body-weight-extension
//Alias: $contraindication-to-vaccine =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/contraindication-to-vaccine
//Alias: $vaccine-brand =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/vaccine-brand
//Alias: $certificate-Issued =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/certificate-Issued
//Alias: $certificate-Issue-Date =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/certificate-Issue-Date
//Alias: $validity-startdate-certificate =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/validity-startdate-certificate
//Alias: $validity-endDate-certificate =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/validity-endDate-certificate



Profile: NgImmImmunization
Parent: Immunization
Description: "Nigerian Profile for Immunization resource."

* identifier 1..1



* vaccineCode 1..1 MS
* vaccineCode.coding 0..*
* vaccineCode.coding ^short = "Vaccine Type"
* vaccineCode.text 0..1
* vaccineCode.text ^short = "Vaccine Administered"

//* statusReason from NEIRImmunizationNotDoneReasonsVS (required)
//* statusReason ^short = "Reason not done"

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

//Invariant:   neir-imm-1
//Description: "If the status is not-done, a reason must be provided"
//Severity:    #error
//Expression:  "status != 'not-done' xor statusReason.exists()"


// Immunization Extensions

/* 
* extension contains PrimaryVaccineStatus named primaryVaccineStatus 0..1 MS
* extension contains Signature named signature 0..1 MS
* extension contains SessionType named sessionType 0..1 MS
* extension contains Contraindicated named contraindicated 0..1 MS
* extension contains Contraindications named contraindications 0..* MS
* protocolApplied.extension contains NextDoseDate named nextDoseDate 0..1 MS
 */