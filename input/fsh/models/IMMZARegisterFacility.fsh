Logical: RegisterFacilityModel
Id: register-facility-model
Title: "A - Register Facility [information only]"
Description: "IMMZ.A - A logical model representing a health facility being registered in the immunization system."

* identifier 1..1 string "Unique identifier for health facilities including the master facility list."
* facilityName 1..1 string "The full name of the Organization/facility."
* alternateName 0..1 string "The other names the Organization/facility is known for."
* dateOfRecordCreation 0..1 date "Date of capture for administrative purposes."
* facilityType 0..1 CodeableConcept "The type of health facility."
  * ^code[+] = #NGFacilityTypeVS
* facilityStatus 0..1 string "The Status of the health facility."
* facilityContactType 0..1 string "The type of health facility contact Eg. email, fax, phone."
* facilityContactValue 0..1 string "The actual value of the contact (eg. the phone number +23435565656)."
* facilityaddress 0..1 BackboneElement "Office address."
  * houseNumber 0..1 string "The number of the house where the facility is."
  * village 0..1 string "The village or street where the facility is."
  * city 0..1 string "The town or city where the facility is ."
  * ward 0..1 CodeableConcept "The ward where the health facility is."
    * ^code[+] = #NGWardsVS
  * lga 0..1 CodeableConcept "Local Government Authority where the facility is."
    * ^code[+] = #NGLGAsVS
  * state 0..1 CodeableConcept "The state where the health facility is."
    * ^code[+] = #NGStatesVS
* primarycontact 0..* BackboneElement "The primary contact for the health facility"
  * name 1..1 BackboneElement "The full name of the contact."
    * family 1..1 string "Family name of the contact."
    * given 1..1 string "Given name of the contact."
  * telecom 0..* ContactPoint "Phone number of the contact."
    * system 1..1 code "Type of communication (e.g., phone, email)."
    * value 1..1 string "The primary contact's number or email address."
  * houseNumber 0..1 string "The number of the primary contact."
  * village 0..1 string "The village or street where the primary contact lives."
  * city 0..1 string "The town or city where the primary contact resides."
  * ward 0..1 CodeableConcept "The ward where the primary contact is."
    * ^code[+] = #NGWardsVS
  * lga 0..1 CodeableConcept "Local Government Authority where the primary contact lives."
    * ^code[+] = #NGLGAsVS
  * state 0..1 CodeableConcept "The state where the primary contact is."
    * ^code[+] = #NGStatesVS




