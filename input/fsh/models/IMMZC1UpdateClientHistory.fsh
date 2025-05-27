Logical: UpdateClientHistory
Title: "IMMZ.C1 Update Client History"
Description: "A logical model for tracking client immunization history updates."

* clientCompletedPrimarySeries 1..1 boolean "Client has completed vaccine primary series" "Indicates if the client has completed the primary vaccination series of a product/antigen. If the client has not yet completed their primary series, it means they may be expected to receive more doses to complete their vaccination regimen for the respective product/antigen."
  * ^code[+] = #IMMZ.C1.DE1
* hivStatus 1..1 CodeableConcept "HIV Status" "The current HIV status of the client."
  * ^code[+] = #IMMZ.C1.DE2
  * ^binding.strength = #required 

// Vaccine Administration Dates
* bcgDoseDate 0..1 date "Date BCG dose was administered" "The date the BCG vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE6
* hepB0DoseDate 0..1 date "Date HepB 0 dose was administered" "The date the HepB 0 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE7
* polioBopv0DoseDate 0..1 date "Date Polio (bOPV0) dose was administered" "The date the Polio (bOPV0) vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE8
* pentavalent1DoseDate 0..1 date "Date Pentavalent 1 dose was administered" "The date the Pentavalent 1 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE9
* opv1DoseDate 0..1 date "Date OPV 1 dose was administered" "The date the OPV 1 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE10
// Additional Vaccine Administration Dates
* pcv1DoseDate 0..1 date "Date PCV 1 dose was administered" "The date the PCV 1 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE11
* rotavirus1DoseDate 0..1 date "Date Rotavirus 1 dose was administered" "The date the Rotavirus 1 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE12
* ipv1DoseDate 0..1 date "Date IPV 1 dose was administered" "The date the IPV 1 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE13
* opv2DoseDate 0..1 date "Date OPV 2 dose was administered" "The date the OPV 2 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE14
* pcv2DoseDate 0..1 date "Date PCV 2 dose was administered" "The date the PCV 2 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE15
* pentavalent2DoseDate 0..1 date "Date Pentavalent 2 dose was administered" "The date the Pentavalent 2 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE16
* rotavirus2DoseDate 0..1 date "Date Rotavirus 2 dose was administered" "The date the Rotavirus 2 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE17
* opv3DoseDate 0..1 date "Date OPV 3 dose was administered" "The date the OPV 3 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE18
* pentavalent3DoseDate 0..1 date "Date Pentavalent 3 dose was administered" "The date the Pentavalent 3 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE19
* pcv3DoseDate 0..1 date "Date PCV 3 dose was administered" "The date the PCV 3 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE20
* rotavirus3DoseDate 0..1 date "Date Rotavirus 3 was administered" "The date the Rotavirus 3 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE21
* ipv2DoseDate 0..1 date "Date IPV 2 was administered" "The date the IPV 2 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE22
* malaria1DoseDate 0..1 date "Date Malaria 1 was administered" "The date the Malaria 1 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE23
* vitaminA1DoseDate 0..1 date "Date Vitamin A 1 was administered" "The date the Vitamin A 1 supplement was given."
  * ^code[+] = #IMMZ.C1.DE24
* malaria2DoseDate 0..1 date "Date Malaria 2 was administered" "The date the Malaria 2 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE25
* malaria3DoseDate 0..1 date "Date Malaria 3 was administered" "The date the Malaria 3 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE26
* mr1DoseDate 0..1 date "Date MR 1 was administered" "The date the MR 1 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE27
* yellowFeverDoseDate 0..1 date "Date Yellow Fever was administered" "The date the Yellow Fever vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE28
* menADoseDate 0..1 date "Date Men A was administered" "The date the Men A vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE29
* vitaminA2DoseDate 0..1 date "Date Vitamin A 2 was administered" "The date the Vitamin A 2 supplement was given."
  * ^code[+] = #IMMZ.C1.DE30
* mr2DoseDate 0..1 date "Date MR 2 was administered" "The date the MR 2 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE31
* malaria4DoseDate 0..1 date "Date Malaria 4 was administered" "The date the Malaria 4 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE32
* td1DoseDate 0..1 date "Date Td 1 vaccine was administered" "The date the Td 1 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE33
* td2DoseDate 0..1 date "Date Td 2 vaccine was administered" "The date the Td 2 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE34
* td3DoseDate 0..1 date "Date Td 3 vaccine was administered" "The date the Td 3 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE35
* td4DoseDate 0..1 date "Date Td 4 vaccine was administered" "The date the Td 4 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE36
* td5DoseDate 0..1 date "Date Td 5 vaccine was administered" "The date the Td 5 vaccine dose was given to the client"
  * ^code[+] = #IMMZ.C1.DE37
* llinGivenDate 0..1 date "Date LLIN was given" "The date the Long-Lasting Insecticidal Net (LLIN) was given."
  * ^code[+] = #IMMZ.C1.DE38
* state 0..1 string "State" "The state or condition of the client at the time of reporting."
  * ^code[+] = #IMMZ.C1.DE39
* comments 0..1 string "Comments" "Additional comments related to the client's immunization history."
  * ^code[+] = #IMMZ.C1.DE40
* reportingOfficerName 0..1 string "Name of Reporting Officer" "The full name of the reporting officer."
  * ^code[+] = #IMMZ.C1.DE41
* designation 0..1 string "Designation" "The designation or title of the reporting officer."
  * ^code[+] = #IMMZ.C1.DE42
* signature 0..1 string "Signature" "The signature of the reporting officer."
  * ^code[+] = #IMMZ.C1.DE43




Instance: update-client-history-example
InstanceOf: UpdateClientHistory
Usage: #example
* clientCompletedPrimarySeries = true
* hivStatus = #IMMZ.C1.DE2 "Positive"

// Vaccine Administration Dates
* bcgDoseDate = "2024-01-15"
* hepB0DoseDate = "2024-01-20"
* polioBopv0DoseDate = "2024-01-25"
* pentavalent1DoseDate = "2024-02-05"
* opv1DoseDate = "2024-02-10"
* pcv1DoseDate = "2024-02-15"
* rotavirus1DoseDate = "2024-02-20"
* ipv1DoseDate = "2024-02-25"
* opv2DoseDate = "2024-03-01"
* pcv2DoseDate = "2024-03-05"

// Additional Details
* state = "Completed"
* comments = "All vaccines administered as per schedule."
* reportingOfficerName = "Dr. Jane Doe"
* designation = "Immunization Officer"
* signature = "JDoe"
