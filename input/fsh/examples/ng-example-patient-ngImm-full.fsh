Instance: FullExampleNgImmPatient
InstanceOf: NgImmPatient
Title: "Example Full Nigeria Immunization Patient"
Description: "A Nigeria Immunization Patient instance with all required and optional fields populated"
Usage: #example

// Identifier (required)
* identifier[0].system = "http://asokoro.hospital.org/mrn"
* identifier[0].value = "NEIR-0001"
* identifier[1].system = "http://nimc.gov.ng/nin"
* identifier[1].value = "NEIR-0003"

// Name (required)
* name[0].family = "Abubakar"
* name[0].given[0] = "Zainab"
* name[0].given[1] = "Aisha"

// Gender (required)
* gender = #female

// Birth Date (optional but Must Support)
* birthDate = "2013-02-14"

// Address (optional)
* address[0].line[0] = "45 Gombe Road"
* address[0].city = "Bauchi"
* address[0].district = "Bauchi Central LGA"
* address[0].state = "Bauchi"

// Contact (optional)
* contact[0].name[0].family = "Abubakar"
* contact[0].name[0].given[0] = "Musa"
* contact[0].relationship[0].text = "Father"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+2347012345678"
* contact[0].address.line = "12 GRA Avenue"
* contact[0].address.city = "Bauchi"
* contact[0].address.district = "Tudun Wada"
* contact[0].address.state = "Bauchi"

// Extensions
* extension[+].url = "ageInWeeks"
* extension[=].valueInteger = 8

* extension[+].url = "ageInMonths"
* extension[=].valueInteger = 2

* extension[+].url = "ageInYears"  
* extension[=].valueInteger = 0

* extension[+].url = "birthWeight"
* extension[=].valueDecimal = 3.4

* extension[+].url = "hivStatus"
* extension[=].valueString = "positive"

* extension[+].url = "pregnancyStatus"
* extension[=].valueString = "pregnant"

* extension[+].url = "adMinistrativeWard"
* extension[=].valueCodeableConcept = #Yaba

* extension[+].url = "siblingSurname"
* extension[=].valueString = "Abubakar"

* extension[+].url = "siblingGivenName"
* extension[=].valueString = "Yusuf"

* extension[+].url = "siblingBirthYear"
* extension[=].valueString = "2011"

* extension[+].url = "siblingGender"
* extension[=].valueString = "male"

* extension[+].url = "siblingHealthStatus"
* extension[=].valueString = "Recovered from malaria"
