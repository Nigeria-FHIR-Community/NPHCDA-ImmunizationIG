Alias: $IMMZD16 = http://example.org/fhir/CodeSystem/IMMZ-D16



Logical: TreatAEFI
Id: treat-aefi
Title: "IMMZ.D16 Treat AEFI"
Description: "A logical model for recording and managing AEFI treatment."
* reactionDate 1..1 date "Reaction Date" "The date when the adverse event or reaction started."
* observationId 1..1 string "Reaction Observation ID" "A reference to the observation that recorded the reaction."
* complaint 0..1 string "Complaint" "The symptom or concern reported by the patient."
* manifestation 0..* CodeableConcept "Reaction Manifestation" "The observed clinical manifestations of the reaction."  
* severity 1..1 CodeableConcept "Reaction Severity" "The severity classification of the adverse event."  
* outcome 1..1 CodeableConcept "Reaction Outcome" "The outcome of the reaction such as death, hospitalization, or recovery." 
* treatmentGiven 0..* string "Treatment Given" "Description of treatments or interventions administered."
* doseNumber 1..1 integer "Dose Number" "The vaccine dose number within the series."
* totalDoses 1..1 integer "Total Doses in Series" "The recommended number of doses for immunity according to national protocol."
* diseaseTargeted 1..1 CodeableConcept "Disease Targeted" "The vaccine-preventable disease being targeted."  
* nextDoseDueDate 0..1 date "Due Date of Next Dose" "The date on which the next vaccination should be administered, if applicable."
* digitalCertificateNeeded 0..1 boolean "Digital Certificate Needed" "Indicates if a digital certificate is required."
* certificateIssuer 0..1 string "Certificate Issuer" "The authority or organization that issued the vaccination certificate."
* healthCertificateId 0..1 string "Health Certificate Identifier (HCID)" "Unique identifier used to associate the immunization event with its digital representation(s)."
* certificateValidFrom 0..1 date "Certificate Valid From" "The date the immunization certificate became valid."
* certificateValidUntil 0..1 date "Certificate Valid Until" "The last date the immunization certificate remains valid."
* certificateSchemeVersion 0..1 string "Certificate Scheme Version" "Version of the core data set and HL7 FHIR Implementation Guide used."


Instance: treat-aefi-example
InstanceOf: TreatAEFI
Usage: #example
* reactionDate = "2025-03-20"
* observationId = "obs12345"
* complaint = "Severe headache and dizziness"
* manifestation[+] = #IMMZ.D16.DE37 "Fever"
* manifestation[+] = #IMMZ.D16.DE38 "Rash"
* severity = #IMMZ.D16.DE10 "Severe"
* outcome = #IMMZ.D16.DE10 "Recovered"
* treatmentGiven[+] = "Administered antihistamines and IV fluids"
* doseNumber = 2
* totalDoses = 3
* diseaseTargeted = #IMMZ.D16.DE27 "Measles"
* nextDoseDueDate = "2025-06-20"
* digitalCertificateNeeded = true
* certificateIssuer = "Ministry of Health"
* healthCertificateId = "HCID-987654321"
* certificateValidFrom = "2025-03-21"
* certificateValidUntil = "2028-03-20"
* certificateSchemeVersion = "1.0"