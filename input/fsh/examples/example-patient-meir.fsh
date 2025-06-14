Instance: ExampleNEIRPatient2
InstanceOf: NEIRPatient
Title: "Example NEIR Patient"
Description: "A sample patient conforming to the NEIRPatient profile"
Usage: #example

//base elements
* identifier[0].system = "http://hospital.org/mrn"
* identifier[0].value = "123456"
* name[0].family = "Okonkwo"
* name[0].given[0] = "Ada"
* gender = #female
* birthDate = "2021-07-15"
* address[0].line[0] = "10 Akintola Street"
* address[0].city = "Enugu"
* address[0].district = "Enugu North"
* address[0].state = "Enugu"
* contact[0].name[0].family = "Okonkwo"
* contact[0].name[0].given[0] = "Nkechi"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+2348031234567"
* contact[0].relationship[0].text[0] = "mother"
* contact[0].address.line[0] = "15 Ogui Road"
* contact[0].address.city = "New Heaven"
* contact[0].address.district = "Enugu Central"
* contact[0].address.state = "Enugu"


// Extensions
* extension[+].url = "ageInWeeks"
* extension[=].valueInteger = 104

* extension[+].url = "ageInMonths"
* extension[=].valueInteger = 24

* extension[+].url = "ageInYears"
* extension[=].valueInteger = 2

* extension[+].url = "birthWeight"
* extension[=].valueDecimal = 3.4

* extension[+].url = "hivStatus"
* extension[=].valueBoolean = false

* extension[+].url = "pregnancyStatus"
* extension[=].valueBoolean = false

* extension[+].url = "adMinistrativeWard"
* extension[=].valueString = "Udenu Ward 5"

* extension[+].url = "siblingSurname"
* extension[=].valueString = "Okonkwo"

* extension[+].url = "siblingGivenName"
* extension[=].valueString = "Chinedu"

* extension[+].url = "siblingBirthYear"
* extension[=].valueDate = "2012"

* extension[+].url = "siblingGender"
* extension[=].valueString = "male"




/* 
// Extensions
* extension[ageInWeeks].valueInteger = 104
* extension[ageInMonths].valueInteger = 24
* extension[ageInYears].valueInteger = 2
* extension[birthWeight].valueDecimal = 3.2
* extension[pregnancyStatus].valueBoolean = false
* extension[hivStatus].valueString = "Negative"
* extension[administrativeWard].valueString = "Udenu Ward 5"
* extension[siblingSurname].valueString = "Okonkwo"
* extension[siblingGivenName].valueString = "Chinedu"
* extension[siblingBirthYear].valueString = "2019"
* extension[siblingGender].valueString = "male"
* extension[siblingHealthStatus].valueString = "Alive" */