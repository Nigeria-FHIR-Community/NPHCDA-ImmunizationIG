
Profile: NEIRPatient
Parent: Patient
Description: "NEIR for Patient Profile"
* identifier 1..* MS
//* identifier.value 0..* MS
//* identifier.assigner 0..* MS
* name 1..* MS
//* name.given 0..* MS 
//* name.family 0..1 MS 
* gender 1..1 MS 
* birthDate 0..1 MS
* address 0..* 
* address.line 0..1  
* address.city 0..1  
* address.district 0..1 
* address.state 0..1
* contact 0..*
* contact.telecom 0..*
* contact.relationship 0..1
* contact.address.line 0..1
* contact.address.city 0..1
* contact.address.district 0..1
* contact.address.state 0..1

// Include the extensions
* extension contains PatientExtensions named patientExtensions 0..*




/* Instance: patient-example
InstanceOf: NEIRPatient
Usage: #example
Title: "NEIR Patient Example"
Description: "An example patient registration instance based on the NEIR profile."
* identifier[0].value[0] = "NEIR-12345"
* identifier[0].assigner[0] = "https://nimc.gov.ng"
* name.given[0] = "John"
* name.family[0] = "Doe"
* gender = #male
* birthDate = "2020-06-18"
* address[0].line[0] = "123 Health Street"
* address[0].city[0] = "Garki"
* address[0].district[0] = "AMAC"
* address[0].state[0] = "Abuja"
* contact[0].name[0].given[0] = "Mary"
* contact[0].name.family = "Zainab"
* contact[0].telecom[0].system[0] = #phone
* contact[0].telecom[0].value[0] = "+234-802-888-8888"
* extension[birthWeight].valueQuantity.value = 2500
* extension[ageInWeeks].valueQuantity.value = 60
* extension[ageInMonths].valueQuantity.value = 15
* extension[ageInYears].valueQuantity.value = 1
* extension[hivStatus].valueBoolean = true
* extension[pregnancyStatus].valueBoolean = false
* extension[siblingSurname].text = "Ngozi"
* extension[siblingGivenName].text = "Aisha"
* extension[siblingHealthStatus].text = "Alive" */




