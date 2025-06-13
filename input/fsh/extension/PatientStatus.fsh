Extension: siblingsGivenName
Id: siblings-given-name
Title: "Sibling's Given Name"
Description: "The Client's siblings First and other names"
Context: Patient 
* value[x] only HumanName 

Extension: siblingsSurName
Id: siblings-sur-name
Title: "Sibling's Family Name"
Description: "The Client's siblings Last or Surname or Family names"
Context: Patient 
* value[x] only HumanName 

Extension: siblingsHealthStatus
Id: siblings-health-status
Title: "Sibling's Health Status"
Description: "Overall physical, mental and emotional well being of the Client's siblings"
Context: Patient 
* value[x] only CodeableConcept 

Extension: siblingsGender
Id: siblings-gender
Title: "Sibling's Gender"
Description: "The Sex of the Client's siblings"
Context: Patient 
* value[x] only CodeableConcept 

Extension: siblingsBirthYear
Id: siblings-birth-year
Title: "Sibling's Birth Year"
Description: "The year a Client's sibling was born"
Context: Patient 

Extension: hivStatus
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

Extension: birthWeight
Id:  birth-weigth
Title:  "Weight at birth"
Description: "Weight at birth"
Context: Patient 
* value[x] only Quantity


Extension: ward
Id:  address-ward
Title:  "Ward extension"
Description: "Ward extension"
Context: Patient 



Extension: ageInWeeks
Id:  age-in-weeks
Title:  "Age in Weeks"
Description: "Age of the client in weeks"
Context: Patient 

Extension: ageInMonths
Id:  age-in-months
Title:  "Age in Month"
Description: "Age of the client in Months"
Context: Patient 

Extension: ageInYears
Id:  age-in-years
Title:  "Age in Years"
Description: "Age of the client in years"
Context: Patient 
