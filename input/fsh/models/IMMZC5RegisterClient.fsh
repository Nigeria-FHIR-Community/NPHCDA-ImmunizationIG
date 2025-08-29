Logical: RegisterClientModel
Id: register-client-model
Title: "NG-Imm-C5 RegisterClient"
Description: "IMMZ.C5 - A logical model representing a client being registered in the immunization system."

// ---------------- Core Identifiers & Demographics ----------------
* identifier 1..1 string "Unique identifier for clients including the national identification number, medical records number, immunization information system ID, and others."
* name 1..1 BackboneElement "The full name of the client."
  * family 1..1 string "Client's family name or last name."
  * given 1..1 string "Client's first name or given name."
* sex 1..1 CodeableConcept "Sex" "Documentation of a specific instance of sex information for the client."
* sex ^binding.strength = #preferred
* sex ^binding.valueSet = Canonical(NGGenderVS)
* dateOfBirth 1..1 date "Client's date of birth (DOB) if known. If unknown, use assigned DOB for administrative purposes."
* ageInWeeks 0..1 integer "The client's calculated age (number of weeks) based on the date of birth and the visit date."
* ageInMonths 0..1 integer "The client's calculated age (number of months) based on the date of birth and the visit date."
* ageInYears 0..1 integer "The client's calculated age (number of years) based on the date of birth and the visit date."
* weightAtBirth 0..1 Quantity "Client's weight at birth in kg."

// ---------------- Address ----------------
* address 0..1 BackboneElement "Client's residential address."
  * residentialAddress 0..1 string "Child's residential address."
  * houseNumber 0..1 string "The number of the house where the client lives."
  * village 0..1 string "The village where the client lives."
  * town 0..1 string "The town or city where the client resides."
  * ward 0..1 CodeableConcept "The ward where the client lives."
  * lga 0..1 CodeableConcept "Local Government Authority where the client lives."
  * state 0..1 CodeableConcept "The state where the client lives."
* address.ward ^binding.strength = #preferred
* address.ward ^binding.valueSet = Canonical(NGWardsVS)
* address.lga ^binding.strength = #preferred
* address.lga ^binding.valueSet = Canonical(NGLGAsVS)
* address.state ^binding.strength = #preferred
* address.state ^binding.valueSet = Canonical(NGStatesVS)

// ---------------- Contacts (Caregivers) ----------------
* contact 0..* BackboneElement "The client's caregiver (person) which could be next of kin (e.g., partner, husband, mother, sibling, etc.)."
  * name 1..1 BackboneElement "The full name of the caregiver."
    * family 1..1 string "Family name of the caregiver."
    * given 1..1 string "Given name of the caregiver."
  * telecom 0..* ContactPoint "Phone number of the caregiver."
    * system 1..1 code "Type of communication (e.g., phone, email)."
    * value 1..1 string "Caregiver's contact number or address."
  * relationship 0..1 CodeableConcept "The relationship of the caregiver to the client."
    * text 0..1 string "Caregiver relationship display text."

// ---------------- Other Children ----------------
* otherChildren 0..* BackboneElement "Any other children the mother has."
  * name 1..1 string "The full name of the mother's other children."
  * birthYear 1..1 integer "The year the mother's children were born."
  * sex 1..1 CodeableConcept "Biological characteristics that define humans as female or male."
* otherChildren.sex ^binding.strength = #preferred
* otherChildren.sex ^binding.valueSet = Canonical(NGGenderVS)

// ---------------- Health / Status ----------------
* healthStatus 0..1 CodeableConcept "Overall physical, mental, and emotional well-being of the sibling."
* healthStatus ^binding.strength = #preferred
* healthStatus ^binding.valueSet = Canonical(NGSiblingHealthStatusVS)

* hivStatus 0..1 CodeableConcept "HIV status of the client."
* hivStatus ^binding.strength = #preferred
* hivStatus ^binding.valueSet = Canonical(NGHivStatusVS)

* pregnancyStatus 0..1 CodeableConcept "Confirms whether the client is pregnant or not."
* pregnancyStatus ^binding.strength = #preferred
* pregnancyStatus ^binding.valueSet = Canonical(NGPregnancyStatusVS)






// Average EXAMPLE for the logical model: RegisterClientModel
Instance: Example-RegisterClient
InstanceOf: RegisterClientModel
Usage: #example
Title: "Example RegisterClient (Average)"
Description: "Representative example of a client registered in the immunization system."

// ---------------- Core Identifiers & Demographics ----------------
* identifier = "CLI-2025-0001"
* name.family = "Okafor"
* name.given = "Amaka"
* sex = http://nphcda.gov.ng/ValueSet/NGGenderVS#female "Female"
* dateOfBirth = "2021-05-12"
* ageInYears = 4
* weightAtBirth.value = 3.2
* weightAtBirth.unit = "kg"
* weightAtBirth.system = "http://unitsofmeasure.org"
* weightAtBirth.code = #kg

// ---------------- Address ----------------
* address.residentialAddress = "No. 12 Independence Layout"
* address.houseNumber = "12"
* address.village = "Independence"
* address.town = "Enugu"
* address.ward = http://nphcda.gov.ng/ValueSet/NGWardsVS#en-agwu "Agwu"
* address.lga = http://nphcda.gov.ng/ValueSet/NGLGAsVS#en-awgu "Awgu LGA"
* address.state = http://nphcda.gov.ng/ValueSet/NGStatesVS#EN "Enugu"

// ---------------- Contacts (Caregivers) ----------------
* contact[0].name.family = "Okafor"
* contact[0].name.given = "Ngozi"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+2348012345678"
* contact[0].relationship.text = "Mother"

// ---------------- Other Children ----------------
* otherChildren[0].name = "Chidi Okafor"
* otherChildren[0].birthYear = 2019
* otherChildren[0].sex = http://nphcda.gov.ng/ValueSet/NGGenderVS#male "Male"

// ---------------- Health / Status ----------------
* healthStatus = http://nphcda.gov.ng/ValueSet/NGSiblingHealthStatusVS#healthy "Healthy"
* hivStatus = http://nphcda.gov.ng/ValueSet/NGHivStatusVS#negative "Negative"
* pregnancyStatus = http://nphcda.gov.ng/ValueSet/NGPregnancyStatusVS#notpregnant "Not Pregnant"
