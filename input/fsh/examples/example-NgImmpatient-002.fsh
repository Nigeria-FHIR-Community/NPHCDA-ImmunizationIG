Instance: patient-002
InstanceOf: NgImmPatient
Title: "Example NG-Imm Patient -002"
Description: "A partially populated patient per NgImmPatient, with only MRN and phone identifiers."

* meta.lastUpdated = "2025-08-16T12:00:00Z"

// ---- Identifiers (only these two) ----
//* identifier[MedicalRecordsNumber].system = "http://hospital.org/medicalrecord-no"
* identifier[MedicalRecordsNumber].value = "ASOK-MRN-2025-219"
* identifier[MedicalRecordsNumber].type.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/ng-identifier-type"
* identifier[MedicalRecordsNumber].type.coding[0].code = #MRN

//* identifier[PhoneNumber].system = "http://ncc.gov.ng/phone-no"
* identifier[PhoneNumber].value = "08021234567"
* identifier[PhoneNumber].type.coding[0].system = "http://nphcda.gov.ng/ig/CodeSystem/ng-identifier-type"
* identifier[PhoneNumber].type.coding[0].code = #MOBILE

// ---- Core demographics ----
* name.family = "Bello"
* name.given[0] = "Amina"
* gender = #female
* birthDate = "2023-04-02"
* active = true

// ---- Address (basic) ----
* address.line = "House 4, Angwan Rimi"
* address.city = "Gindiri"
* address.district = #kd-giwa "Giwa LGA"
* address.state = #KD "Kaduna"

// ---- Primary caregiver (minimal) ----
* contact.name.family = "Bello"
* contact.name.given[0] = "Fatima"
* contact.telecom.system = #phone
* contact.telecom.value = "08035551234"
* contact.relationship[0].text = #MOTHER "Mother"





// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Patient</b>: Ifeoma Okeke (female), born 1985-08-25</p>
  <p><b>Identifiers</b>: MRN: LAG-234-8890, Phone: +234-802-555-7890</p>
  <p><b>Address</b>: Surulere, Lagos State, Nigeria</p>
</div>
"""