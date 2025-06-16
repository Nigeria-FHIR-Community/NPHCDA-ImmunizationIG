
Profile: NgImmPatient
Parent: Patient
Description: "Nigeria Immunization Patient Profile"


* identifier.value 1..1 MS
* identifier.value ^short = "The actual ID value (eg. NIN35635556)"
* identifier.system 1..1 MS
* identifier.system ^short = "The organization website that assign the ID being entered (eg. https://nimc.gov.ng)"
* name 1..* MS
* name.given 1..* 
* name.given ^short = "The other names of the Immunization client"
* name.family 1..1
* name.family ^short = "The surname or family name of the Immunization client"
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* gender ^short = "The sex of the Immunization client"
* birthDate 0..1 MS
* birthDate ^short = "The date of birth of the Immunization client in the form dd-mm-yyy"
* address.line 0..1 MS
* address.line ^short = "The address, used as Nigeria LGA in this profile"
* address.city 0..1  
* address.district 0..1 MS
* address.district ^short = "The FHIR name is district, used as Nigeria LGA in this profile"
* address.district ^definition = "Full detailed definition for the address district field as Local Government Area"
* address.state 0..1 MS
* address.state ^short = "The name of the state where the client resides in Nigeria"
* contact.name.given 0..* MS
* contact.name.given ^short = "The first name of the Client's primary Caregiver, can be a parent or Guardian"
* contact.name.family 0..1 MS
* contact.name.family ^short = "The surname (family) name of the Client's primary Caregiver, can be a parent or Guardian"
* contact.telecom.system 0..1 MS
* contact.telecom.system ^short = "The primary means to contact the Client's primary Caregiver or Guardian"
* contact.telecom.value 0..1 MS
* contact.telecom.value ^short = "The primary means to value(phone no. or email address) the Client's primary Caregiver or Guardian"
* contact.relationship.text 0..1 MS
* contact.relationship.text ^short = "The relationship of the Client with the primary Caregiver or Guardian (eg. Parent)"
* contact.address.line 0..1 MS
* contact.address.line ^short = "The line address of the Client's primary Caregiver or Guardian"
* contact.address.city 0..1
* contact.address.city ^short = "The city where the Client's primary Caregiver or Guardian lives"
* contact.address.district 0..1 MS
* contact.address.district ^short = "The LGA where the Client's primary Caregiver or Guardian lives"
* contact.address.state 0..1 MS
* contact.address.state ^short = "The State in Nigeria where the Client's primary Caregiver or Guardian lives"


// Include the extensions
* address.extension contains AddressAdministrativeWard named administrativeWard 0..1 MS
* contact.address.extension contains AddressAdministrativeWard named administrativeWard 0..1 MS
* extension contains BirthWeight named birthWeight 0..1 MS
* extension contains HIVStatus named hivStatus 0..1 MS
* extension contains PregnancyStatus named pregnancyStatus 0..1 MS
* extension contains AgeInWeeks named ageInWeeks 0..1 MS
* extension contains AgeInMonths named ageInMonths 0..1 MS
* extension contains AgeInYears named ageInYears 0..1 MS

