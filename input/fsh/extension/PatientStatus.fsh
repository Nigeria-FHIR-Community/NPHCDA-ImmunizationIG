Extension: MotherHealthStatus
Id: mother-health-status
Title: "Mother's Health Status"
Description: "Overall physical, mental and emotional well being of the mother"
Context: Patient 
* value[x] only CodeableConcept 


Extension: HivStatus
Id: hiv-status
Title: "Clients's HIV Status"
Description: "HIV status of the client"
Context: Patient 
* value[x] only CodeableConcept 

Extension: PregnancyStatus
Id: pregnancy-status
Title: "Clients's Pregnancy Status"
Description: "Confirms whether the client is pregnant or not"
Context: Patient 
* value[x] only boolean 

Extension: BirthWeigth
Id:  birth-weigth
Title:  "Weight at birth"
Description: "Weight at birth"
Context: Patient 
* value[x] only Quantity

