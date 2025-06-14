
Profile: NEIRPatient
Parent: Patient
Description: "NEIR for Patient Profile"
* identifier 1..* MS
//* identifier.value 1..* MS
//* identifier.assigner 1..* MS
* name 1..* MS
* name.given 1..* 
* name.family 1..1
* gender 1..1 MS 
* birthDate 0..1 MS
* address 0..1 MS
* address.line 0..1 
* address.city 0..1  
* address.district 0..1 MS
* address.district ^short = "The FHIR name is district, used as Nigeria LGA in this profile"
* address.district ^definition = "Full detailed definition for the address district field as Local Government Area"
* address.state 0..1 MS
* contact 0..*
* contact.name.given 0..* MS
* contact.name.family 0..1 MS
* contact.telecom 0..* MS
* contact.relationship 0..1 MS
* contact.address.line 0..1
* contact.address.city 0..1
* contact.address.district 0..1
* contact.address.state 0..1


// Include the extensions
* extension contains PatientExtensions named patientExtensions 0..* MS
