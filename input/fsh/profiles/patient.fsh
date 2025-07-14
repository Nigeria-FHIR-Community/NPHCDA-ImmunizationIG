
Profile: NgImmPatient
Parent: Patient
Title: "NG-Imm Patient"
Description: "Nigeria Immunization Patient Profile"

* meta.lastUpdated 1..1 MS
* meta.lastUpdated ^short = "The date and time when the client record was created or last updated."

* identifier.value 1..1 MS
* identifier.value ^short = "The actual ID value (eg. NIN35635556)"
* identifier.system 1..1 MS
* identifier.system ^short = "The organization website that assign the ID being entered (eg. https://nimc.gov.ng)"
* name 1..* MS
* name.given 1..* 
* name.given ^short = "The other names of the Immunization client"
* name.family 1..1
* name.family ^short = "The surname or family name of the Immunization client"
// Bind gender to your custom AdministrativeGender value set
//* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* gender from NGGenderVS (required)
* gender ^short = "The sex of the Immunization client"
* active 0..1 
* active ^short = "Whether this patient's record is in active use (0-23 mnths is active)"
* birthDate 0..1 MS
* birthDate ^short = "The date of birth of the Immunization client in the form dd-mm-yyy"
* deceased[x] 0..1
* deceased[x] ^short = "Indicates if an individual client is alive or dead"
* deceasedBoolean 0..1
* deceasedBoolean ^short = "Indicates if the individual is deceased (dead) or not"
* deceasedDateTime 0..1
* deceasedDateTime ^short = "Indicates when the individual passed away if dead."
* active 0..1
* active ^short = "Indicates Whether this patient's record is in active use or not (eg. for Immunization, this flag can be set to true between 0-24 months, and false there after, to optimize searches)"
* address.line 0..1 MS
* address.line ^short = "The house number number, stree, village, setttement, and name where the Client lives"
* address.city 0..1  
* address.city ^short = "The city, town or settlement where the client lives in the state"
* address.district from NGLGAsVS (required)
* address.district ^short = "The FHIR name is district, used as Nigeria LGA in this profile"
* address.district ^definition = "Full detailed definition for the address district field as Local Government Area"
* address.state from NGStatesVS (required)
* address.state ^short = "The name of the state where the client resides in Nigeria"
* contact.name.given 0..* MS
* contact.name.given ^short = "The first name of the Client's primary Caregiver, can be a Parent or Guardian"
* contact.name.family 0..1 MS
* contact.name.family ^short = "The surname (family) name of the Client's primary Caregiver, can be a Parent or Guardian"
* contact.telecom 0..*
* contact.telecom.system 0..1 MS
* contact.telecom.system ^short = "The primary means to contact the Client's primary Caregiver or Guardian"
* contact.telecom.value 0..1 MS
* contact.telecom.value ^short = "The primary means to value(phone no. or email address) the Client's primary Caregiver or Guardian"
* contact.relationship.text from NGRelationshipsVS (extensible)
* contact.relationship.text ^short = "The relationship of the Client with the primary Caregiver or Guardian (eg. Parent)"
* contact.address.line 0..1 MS
* contact.address.line ^short = "The line address of the Client's primary Caregiver or Guardian"
* contact.address.city 0..1
* contact.address.city ^short = "The city, town or settlement where the Client's primary Caregiver or Guardian lives"
* contact.address.district from NGLGAsVS (required)
* contact.address.district ^short = "The LGA where the Client's primary Caregiver or Guardian lives"
* contact.address.state from NGStatesVS (required)
* contact.address.state ^short = "The State in Nigeria where the Client's primary Caregiver or Guardian lives"
* communication 0..*
* communication.language from NGLanguagesVS (extensible)
* communication.language ^short = "Preferred language which can be used to communicate with the patient about his or her health"
* photo 0..*
* photo ^short = "Image of the patient"
* link.other only Reference(NgImmSiblingRelatedPerson)


// Include the extensions
* address.extension contains NGAdministrativeWard named administrativeWard 0..1 MS
//* contact.address.extension[NigeriaAdministrativeWard].valueCodeableConcept from NigeriaWardsVS (required)
* contact.address.extension contains NGAdministrativeWard named administrativeWard 0..1 MS
* extension contains NGBirthWeight named birthWeight 0..1 MS
//* extension contains NGHivStatus named hivStatus 0..1 MS
* extension contains NGPregnancyStatus named pregnancyStatus 0..1 MS
* extension contains NGAgeInWeeks named ageInWeeks 0..1 MS
* extension contains NGAgeInMonths named ageInMonths 0..1 MS
* extension contains NGAgeInYears named ageInYears 0..1 MS
//* extension contains NGCreatedDate named createdDate 0..1 MS

// Hide dataelements

* name.use 0..0 
* identifier.use 0..0
* address.use 0..0
* contact.name.use 0..0
* contact.telecom.use 0..0
* contact.address.use 0..0
* implicitRules 0..0
* modifierExtension 0..0
* contact.modifierExtension 0..0
* link.modifierExtension 0..0