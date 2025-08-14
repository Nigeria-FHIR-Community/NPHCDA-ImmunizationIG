Profile: NgImmRegistrationObservation
Parent: Observation
Id: NEIRRegistrationObservation
Title: "NG-Imm Registration-Observations"
Description: "A composite Observation profile capturing state of health, underlying conditions, and HIV status during NEIR client registration."

* status 1..1
* status = #final

* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history

* code 1..1
//TODO Create registration-observations
// * code = NEIR#registration-observations "NEIR Registration Observations"

* subject 1..1
* subject only Reference(NgImmPatient)

* effective[x] 1..1

// Define the three required components
* component 3..3

// Slice the component field
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// // Component: State of Health
// * component contains stateOfHealth 1..1
// * component[stateOfHealth].code = $LOINC#11323-3 "State of Health of Mothers other children"
// * component[stateOfHealth].valueCodeableConcept 1..1 MS
// * component[stateOfHealth].valueCodeableConcept from IMMZC1StateOfHealthOtherChildrenVS (required)

// Component: Pregnancy Status
* component contains pregnancyStatus 1..1
* component[pregnancyStatus].code = $LOINC#82810-3 "Pregnancy status"
* component[pregnancyStatus].valueCodeableConcept 1..1 MS
* component[pregnancyStatus].valueCodeableConcept from NGPregnancyStatusVS (required)

// Component: HIV Status
* component contains hivStatus 1..1
* component[hivStatus].code = $LOINC#55284-4 "HIV status"
* component[hivStatus].valueCodeableConcept 1..1 MS
* component[hivStatus].valueCodeableConcept from NGHivStatusVS (required)


// Weight at Birth
* component contains birthWeight 1..1
* component[birthWeight].code = $LOINC#8339-4 "Birth weight Measured"
* component[birthWeight].valueQuantity 1..1
* component[birthWeight].valueQuantity.unit = "g"
* component[birthWeight].valueQuantity.system = "http://unitsofmeasure.org"
* component[birthWeight].valueQuantity.code = #g


