
Profile: NEIRPatient
Parent: Patient
Description: "NEIR for Patient Profile"
* identifier 1..*
* identifier.value 1..* MS
* identifier.assigner 1..* MS
* name 1..*
* name.given 1..* MS 
* name.family 1..1 MS 
* gender 1..1 MS 
* birthDate 0..1 MS
* extension contains ageInWeeks named ageInWeeks 0..1
* extension contains ageInMonths named ageInMonths 0..1
* extension contains ageInYears named ageInYears 0..1
* extension contains birthWeight named birthWeight 0..1
* address 0..* 
* address.line 0..1  
* address.city 0..1  
* extension contains wardExtension named ward 0..1
* address.district 1..1 
* address.state 1..1
* contact 0..*
* contact.name.given 0..1
* contact.name.family 0..1
* contact.telecom 0..*
* contact.relationship 0..1
* contact.address.line 0..1
* contact.address.city 0..1
* contact.address.district 0..1
* contact.address.state 0..1
* extension contains siblingsGivenName named siblingsGivenName 0..*
* extension contains siblingsSurName named siblingsSurName 0..1
* extension contains siblingsBirthYear named siblingsBirthYear 0..1
* extension contains siblingsGender named siblingsGender 0..1
* extension contains siblingsHealthStatus named siblingsHealthStatus 0..1
* extension contains hivStatus named hivStatus 0..1
* extension contains pregnancyStatus named pregnancyStatus 0..1








Instance: patient-example
InstanceOf: NEIRPatient
Usage: #example
Title: "NEIR Patient Example"
Description: "An example patient registration instance based on the NEIR profile."
* identifier.value = "NEIR-12345"
* identifier.assigner = "nimc"
* name.given[0] = "John"
* name.family = "Doe"
* gender = #male
* birthDate = "2020-06-18"
* extension[motherHealthStatus].valueCodeableConcept.text = "Alive"
* extension[hivStatus].valueCodeableConcept.text = "Negative"
* extension[pregnancyStatus].valueBoolean = false
* extension[birthWeight].valueQuantity.value = 2500
* extension[siblingsGivenName].valueHumanName.given[0] = "Sarah"
* extension[siblingsSurName].valueSurName.family = "Sarah"
* address[0].line[0] = "123 Health Street"
* address[0].city = "Garki"
* address[0].district = "AMAC"
* address[0].state = "Abuja"
* contact[0].name.given = "Mary"
* contact[0].name.family = "Zainab"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+234-802-888-8888"