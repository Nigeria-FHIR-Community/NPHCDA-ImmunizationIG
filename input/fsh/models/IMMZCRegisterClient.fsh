Logical: RegisterClientModel
Id: register-client-model
Title: "IMMZ.C Register Client"
Description: "A logical model representing a client being registered in the immunization system."

* identifier 1..1 string "Unique identifier for clients including the national identification number, medical records number, immunization information system ID, and others."
  * ^code[+] = #DE1
* name 1..1 BackboneElement "The full name of the client."
  * family 1..1 string "Client's family name or last name."
    * ^code[+] = #DE4
  * given 1..1 string "Client's first name or given name."
    * ^code[+] = #DE3
* sex 1..1 code "Sex" "Documentation of a specific instance of sex information for the client."
  * ^code[+] = #DE5
* dateOfBirth 1..1 date "Client's date of birth (DOB) if known. If unknown, use assigned DOB for administrative purposes."
  * ^code[+] = #DE8
* ageInWeeks 0..1 integer "The client's calculated age (number of weeks) based on the date of birth and the visit date."
  * ^code[+] = #DE9
* ageInMonths 0..1 integer "The client's calculated age (number of months) based on the date of birth and the visit date."
  * ^code[+] = #DE10
* ageInYears 0..1 integer "The client's calculated age (number of years) based on the date of birth and the visit date."
  * ^code[+] = #DE11
* weightAtBirth 0..1 Quantity "Client's weight at birth in Kg."
  * ^code[+] = #DE12
* address 0..1 BackboneElement "Client's residential address."
  * residentialAddress 0..1 string "Child's residential address."
    * ^code[+] = #DE13
  * houseNumber 0..1 string "The number of the house where the client lives."
    * ^code[+] = #DE14
  * village 0..1 string "The village where the client lives."
    * ^code[+] = #DE15
  * town 0..1 string "The town or city where the client resides."
    * ^code[+] = #DE16
  * ward 0..1 string "The ward where the client lives."
    * ^code[+] = #DE17
  * lga 0..1 string "Local Government Authority where the client lives."
    * ^code[+] = #DE18
  * state 0..1 string "The state where the client lives."
    * ^code[+] = #DE19
* contact 0..* BackboneElement "The client's caregiver (person) which could be next of kin (e.g. partner, husband, mother, sibling, etc.)."
  * name 1..1 BackboneElement "The full name of the caregiver."
    * family 1..1 string "Family name of the caregiver."
    * given 1..1 string "Given name of the caregiver."
  * telecom 0..* ContactPoint "Phone number of the caregiver."
    * system 1..1 code "Type of communication (e.g., phone, email)."
    * value 1..1 string "Caregiver's contact number or address."
    * use 0..1 code "Purpose of the contact information (e.g., home, work, mobile)."
 
  * relationship 0..1 CodeableConcept "The relationship of the caregiver to the client."
    * coding 0..* Coding "Caregiver relationship coding."
      * system 1..1 uri "System for caregiver relationship codes." 
      * code 1..1 code "Caregiver relationship code."
      * display 1..1 string "Caregiver relationship display text."
* otherChildren 0..* BackboneElement "Any other children the mother has."
  * name 1..1 string "The full name of the mother's other children."
    * ^code[+] = #DE28
  * birthYear 1..1 integer "The year the mother's children were born."
    * ^code[+] = #DE29
  * sex 1..1 CodeableConcept "Biological characteristics that define humans as female or male."
    * ^code[+] = #DE30
* healthState 0..1 CodeableConcept "Overall physical, mental, and emotional well-being of the mother."
  * ^code[+] = #DE31
* hivStatus 0..1 CodeableConcept "HIV status of the client."
  * ^code[+] = #DE37
* pregnancyStatus 0..1 boolean "Confirms whether the client is pregnant or not."
  * ^code[+] = #DE41



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
* weightAtBirth.code = #DE12

* address.residentialAddress = "123 Health Street"
* address.village = "ImmunoCity"
* address.town = "HealthyState"
* address.ward = "12345"
* address.lga = "Central District"
* address.state = "Lagos"

* contact[0].name.given = "Jane"
* contact[0].name.family = "Doe" 


* contact[0].relationship.coding[0].system = "http://example.org/fhir/contact-relationship"
* contact[0].relationship.coding[0].code = #DE21
* contact[0].relationship.coding[0].display = "Mother"

* hivStatus.coding[0].system = "http://example.org/fhir/hiv-status"
* hivStatus.coding[0].code = #DE39
* hivStatus.coding[0].display = "Negative"

* pregnancyStatus = false
