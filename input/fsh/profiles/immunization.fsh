Alias: $cvx = http://hl7.org/fhir/sid/cvx
Alias: $vaccines = http://health.gov.tz/CodeSystems/VaccineCodes
Alias: $mms = http://id.who.int/icd11/mms
Alias: $v2-0443 = http://terminology.hl7.org/CodeSystem/v2-0443
Alias: $kenya-healthworker-extension = https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/kenya-health-worker-extension
Alias: $body-weight-extension = https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/body-weight-extension
Alias: $contraindication-to-vaccine =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/contraindication-to-vaccine
Alias: $vaccine-brand =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/vaccine-brand
Alias: $certificate-Issued =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/certificate-Issued
Alias: $certificate-Issue-Date =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/certificate-Issue-Date
Alias: $validity-startdate-certificate =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/validity-startdate-certificate
Alias: $validity-endDate-certificate =  https://chanjoke.intellisoftkenya.com/fhir/StructureDefinition/validity-endDate-certificate



Profile: NEIRImmunization
Parent: Immunization
Description: "Nigerian Registry Profile for Immunization."
//* extension contains 
//    $kenya-healthworker-extension named healthWorker 0..1 and
  //  $body-weight-extension named bodyWeight 0..1 and 
    //$contraindication-to-vaccine named contraindicationToVaccine 0..1 and 
 //   $vaccine-brand named vaccineBrand 0..1 and 
   // $certificate-Issued named certificateIssued 0..1 and 
  //  $certificate-Issue-Date named CertificateIssueDate 0..1 and
  //  $validity-startdate-certificate named certificateValidFrom  0..1 and 
  //  $validity-endDate-certificate named CertificateValidUntil 0..1

* identifier 0..0
* location MS
* location ^short = "Vaccination venue" 
* vaccineCode 1..1 MS
* vaccineCode ^short = "Vaccine Administered"
* statusReason from NEIRImmunizationNotDoneReasonsVS (required)
* status MS
* manufacturer MS
* manufacturer.display 1..1
* manufacturer.display ^short = "Name of the Manufacturer"
* manufacturer.reference 1..1
* manufacturer.reference ^short = "Manufacturer ID"
* protocolApplied 0..* MS
* protocolApplied.targetDisease 1..1 MS
* lotNumber 1..1 MS
* lotNumber ^short = "Vaccine batch number"
* expirationDate 1..1 MS
* doseQuantity MS
* site MS
* performer 0..* MS
* performer.actor.display MS
* performer.actor.display ^short = "Vaccinator Name"
* performer.actor.reference 1..1
* performer.actor.reference ^short = "Vaccinator ID"
* occurrence[x] only dateTime



Invariant:   neir-imm-1
Description: "If the status is not-done, a reason must be provided"
Severity:    #error
Expression:  "status != 'not-done' xor statusReason.exists()"

Instance: NEIRImmunizationExample
InstanceOf: NEIRImmunization
Usage: #example
* status = #completed
* vaccineCode.coding[0] = $cvx#20 "DTaP"
* vaccineCode.coding[+] = $vaccines#V004
* vaccineCode.coding[+] = $mms#XM1PB8
* patient = Reference(Patient/patient-example)
* occurrenceDateTime = "2025-03-11T11:27:00+03:00"
* recorded = "2025-03-11T11:29:00+03:00"
* primarySource = true
* lotNumber = "ret-234235"
* expirationDate = "2027-11-01" 
* performer.actor = Reference(Practitioner/practitioner-example)