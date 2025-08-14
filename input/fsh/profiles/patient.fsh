
Profile: NgImmPatient
Parent: Patient
Title: "NG-Imm Patient"
Description: "Nigeria Immunization Patient Profile"


* meta.lastUpdated 1..1 MS
* meta.lastUpdated ^short = "The date and time when the client record was created or last updated."
* identifier 1..* MS
* identifier ^short = "The identifier set given to a Client at different points (can be the National ID, the Hospital specific mrn, or even phone number)"
* identifier.value 1..1 MS
* identifier.value ^short = "The actual ID value eg. in case of 11 digit NIN, the value will be 12335635556, and phone number like 11-digit 08031234569, or hospital MRN (varies in length and structure acrsoss facilities) like 2021-0764564 "
* identifier.system 1..1 MS
* identifier.system ^short = "The organization website/name that assign the ID being entered (eg. https://nimc.gov.ng or asokoro hosp., or MTN)"
* name 1..1 MS
* name.given 1..* 
* name.given ^short = "The other names of the Immunization client like the Firstname and Middle names if applicable"
* name.family 1..1
* name.family ^short = "The surname or family name of the Immunization client"
* gender from NGGenderVS (required)
* gender ^short = "The sex of the Immunization client"
* active 0..1 
* active ^short = "Whether this patient's record is in active use (0-23 mnths is active)"
* birthDate 0..1 MS
* birthDate ^short = "The date of birth of the Immunization client in the form dd-mm-yyy"
* active 0..1
* active ^short = "Indicates Whether this patient's record is in active use or not (eg. for Immunization, this flag can be set to true between 0-24 months, and false there after, to optimize searches)"
* address 0..* MS
* address.line 0..1 
* address.line ^short = "The house number number, stree, and name where the Client lives"
* address.city 0..1  
* address.city ^short = "The city, village, town or settlement where the client lives in the state"
* address.district from NGLGAsVS (required)
* address.district ^short = "The FHIR name is district, used as Nigeria LGA in this profile"
* address.district ^definition = "Full detailed definition for the address district field as Local Government Area"
* address.state from NGStatesVS (required)
* address.state ^short = "The name of the state where the client resides in Nigeria"
* contact 0..* MS
* contact ^short = "The contact information of the Client's primary Caregiver, can be a Parent or Guardian"
* contact.name.given 0..* 
* contact.name.given ^short = "The first name of the Client's primary Caregiver, can be a Parent or Guardian"
* contact.name.family 0..1 
* contact.name.family ^short = "The surname (family) name of the Client's primary Caregiver, can be a Parent or Guardian"
* contact.telecom 0..* MS
* contact.telecom.system 0..1 
* contact.telecom.system ^short = "The primary means to contact the Client's primary Caregiver or Guardian"
* contact.telecom.value 0..1 
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

* link 0..1
* link.other ^short = "This link provides reference to the immunization client's Related persons"
* link.other only Reference(NgImmSiblingRelatedPerson)
* link.type ^short = "The type of Link (eg. reference) client's Related persons"
* link.type 1..1



// Include the extensions
* address.extension contains NGAdministrativeWard named administrativeWard 0..1 MS
//* contact.address.extension[NigeriaAdministrativeWard].valueCodeableConcept from NigeriaWardsVS (required)
* contact.address.extension contains NGAdministrativeWard named administrativeWard 0..1 MS


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