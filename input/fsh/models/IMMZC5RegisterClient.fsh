Logical: RegisterClientModel
Id: register-client-model
Title: "NGImm-C5 RegisterClient[information only]"
Description: "IMMZ.C5 - A logical model representing a client being registered in the immunization system."

* identifier 1..1 string "Unique identifier for clients including the national identification number, medical records number, immunization information system ID, and others."
* name 1..1 BackboneElement "The full name of the client."
  * family 1..1 string "Client's family name or last name."
  * given 1..1 string "Client's first name or given name."
* sex 1..1 CodeableConcept "Sex" "Documentation of a specific instance of sex information for the client."
  * ^code[+] = #NGGenderVS
* dateOfBirth 1..1 date "Client's date of birth (DOB) if known. If unknown, use assigned DOB for administrative purposes."
* ageInWeeks 0..1 integer "The client's calculated age (number of weeks) based on the date of birth and the visit date."
* ageInMonths 0..1 integer "The client's calculated age (number of months) based on the date of birth and the visit date."
* ageInYears 0..1 integer "The client's calculated age (number of years) based on the date of birth and the visit date."
* weightAtBirth 0..1 Quantity "Client's weight at birth in Kg."
* address 0..1 BackboneElement "Client's residential address."
  * residentialAddress 0..1 string "Child's residential address."
  * houseNumber 0..1 string "The number of the house where the client lives."
  * village 0..1 string "The village where the client lives."
  * town 0..1 string "The town or city where the client resides."
  * ward 0..1 CodeableConcept "The ward where the client lives."
    * ^code[+] = #NGWardsVS
  * lga 0..1 CodeableConcept "Local Government Authority where the client lives."
    * ^code[+] = #NGLGAsVS
  * state 0..1 CodeableConcept "The state where the client lives."
    * ^code[+] = #NGStatesVS
* contact 0..* BackboneElement "The client's caregiver (person) which could be next of kin (e.g. partner, husband, mother, sibling, etc.)."
  * name 1..1 BackboneElement "The full name of the caregiver."
    * family 1..1 string "Family name of the caregiver."
    * given 1..1 string "Given name of the caregiver."
  * telecom 0..* ContactPoint "Phone number of the caregiver."
    * system 1..1 code "Type of communication (e.g., phone, email)."
    * value 1..1 string "Caregiver's contact number or address."
  * relationship 0..1 CodeableConcept "The relationship of the caregiver to the client."
    * text 0..* string "Caregiver relationship dsiplay text."
* otherChildren 0..* BackboneElement "Any other children the mother has."
  * name 1..1 string "The full name of the mother's other children."
  * birthYear 1..1 integer "The year the mother's children were born."
  * sex 1..1 CodeableConcept "Biological characteristics that define humans as female or male."
    * ^code[+] = #NGGenderVS
* healthStatus 0..1 CodeableConcept "Overall physical, mental, and emotional well-being of the Sibling."
  * ^code[+] = #NGSiblingHealthStatusVS
* hivStatus 0..1 CodeableConcept "HIV status of the client."
  * ^code[+] = #NGHivStatusVS
* pregnancyStatus 0..1 CodeableConcept "Confirms whether the client is pregnant or not."
  * ^code[+] = #NGPregnancyStatusVS



Instance: example-register-client
InstanceOf: RegisterClientModel
Title: "Example Register Client"
Description: "Example instance of a client being registered in the IMMZ system."
Usage: #example

* identifier.value = "123456789"
* name.family = "Doe"
* name.given = "John"
* sex = #male
* dateOfBirth = "2020-05-15"
* ageInWeeks = 200
* ageInMonths = 46
* ageInYears = 3
* weightAtBirth.value = 3.2
* weightAtBirth.unit = "kg"
* weightAtBirth.system = "http://unitsofmeasure.org"

* address.residentialAddress = "123 Health Street"
* address.village = "Wukari"
* address.town = "Ikeja"
* address.ward.text = "12345"
* address.lga.text = "Ikeja-central"
* address.state.text = "Lagos"
* contact[0].name.given = "Amaka"
* contact[0].name.family = "Iliya" 
* contact[0].relationship.text = "Mother"
* hivStatus.coding[0].system = "http://example.org/fhir/hiv-status"
* hivStatus.coding[0].display = "Negative"
* pregnancyStatus.text = "not pregnant"
