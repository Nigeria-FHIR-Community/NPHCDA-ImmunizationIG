Instance: NgImmExampleRegistrationObservation
InstanceOf: NgImmRegistrationObservation
Title: "NGImm Example Registration observation"
Description: "Registration observations captured during the registration of the patient"
Usage: #example

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = $SCT#123456 "NEIR Registration Observations" // Replace with actual code when created
* subject = Reference(Patient/NgImmExamplePatient) // Replace with actual patient reference
* effectiveDateTime = "2025-08-05T10:00:00+03:00"

// Component: State of Health
// * component[stateOfHealth].code = $LOINC#11323-3 "State of Health of Mothers other children"
// * component[stateOfHealth].valueCodeableConcept = $SCT#419099009 "Alive and well"

// Component: Pregnancy Status
* component[pregnancyStatus].code = $LOINC#82810-3 "Pregnancy status"
* component[pregnancyStatus].valueCodeableConcept = $SCT#77386006 "Pregnant"

// Component: HIV Status
* component[hivStatus].code = $LOINC#55284-4 "HIV status"
* component[hivStatus].valueCodeableConcept = $SCT#86406008 "HIV negative"

// Component: Birth Weight
* component[birthWeight].code = $LOINC#8339-4 "Birth weight Measured"
* component[birthWeight].valueQuantity.value = 3200
* component[birthWeight].valueQuantity.unit = "g"
* component[birthWeight].valueQuantity.system = "http://unitsofmeasure.org"
* component[birthWeight].valueQuantity.code = #g