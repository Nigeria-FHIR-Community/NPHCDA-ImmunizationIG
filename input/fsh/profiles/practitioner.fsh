
Profile: NgImmPractitioner
Parent: Practitioner
Title: "NG-Imm Practitioner"
Description: "Profile for a Nigerian Practitioner" 
* identifier 0..* MS
* identifier.system 1..1
* identifier.system ^short = "The namespace for the identifier value e.g a MDCN URL"
* identifier.value 1..1
* identifier.value ^short = "The value that is unique from the identity provider"
* active 0..1
* active ^short = "A boolean indicating that this practitioner is active"
* name MS
* name.given 1..1
* name.given ^short = "The first name of the practitioner e.g. of the Routine Immunization officer"
* name.family 1..1
* name.given ^short = "The surname of the practitioner e.g. of the Routine Immunization officer"
* telecom 0..* MS
* telecom.system 1..1 
* telecom.system ^short = "The preferred communication medium e.g. email | mobile"
* telecom.value 1..1 
* telecom.system ^short = "The contact communication information e.g. nkiru@test.com | 08092299999"
* birthDate MS 
* birthDate ^short = "The date of birth of the healthcare professional"
* qualification.issuer only Reference(NgImmOrganization)
* qualification.issuer ^short = "The regulating organization that issue the qualification"
* qualification.period 0..1
* qualification.period ^short = "The time duration this qualification is valid"
* qualification.code.text 0..1
* qualification.code.text ^short = "The public certificate number"


// Hide dataelements

* name.use 0..0 


