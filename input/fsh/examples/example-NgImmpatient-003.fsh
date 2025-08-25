Instance: patient-003
InstanceOf: NgImmPatient
Title: "Example NG-Imm Patient-003"
Description: "A sample immunization patient from Lagos State."

* meta.lastUpdated = "2025-08-16T12:00:00Z"

// ---- Identifiers ----
//* identifier[MedicalRecordsNumber].system = "http://hospital.org/medicalrecord-no"
* identifier[MedicalRecordsNumber].value = "LUTH-MRN-2025-0789"
* identifier[MedicalRecordsNumber].type.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/patient-identifier-cs"
* identifier[MedicalRecordsNumber].type.coding[0].code = #MRN

//* identifier[PhoneNumber].system = "http://ncc.gov.ng/phone-no"
* identifier[PhoneNumber].value = "08051234567"
* identifier[PhoneNumber].type.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/patient-identifier-cs"
* identifier[PhoneNumber].type.coding[0].code = #MOBILE

// ---- Name & Demographics ----
* name.family = "Adeyemi"
* name.given[0] = "Tolu"
* name.given[+] = "Oluwatobi"
* gender = #male
* birthDate = "2022-09-21"
* active = true

// ---- Address (Lagos context) ----
* address.line = "Flat 3, Block B, Surulere Housing Estate"
* address.city = "Surulere"
* address.district = #la-surulere "Surulere LGA"
* address.state = #LA "Lagos"

// Administrative Ward Extension
//* address.extension[administrativeWard].valueCodeableConcept = #fc-amac-gurdi "Gurdi"

// ---- Caregiver ----
* contact.name.family = "Adeyemi"
* contact.name.given[0] = "Kemi"
* contact.telecom.system = #phone
* contact.telecom.value = "08063456789"
* contact.relationship.text = #MOTHER "Mother"

* contact.address.line = "Flat 3, Block B, Surulere Housing Estate"
* contact.address.city = "Surulere"
* contact.address.district = #la-surulere "Surulere LGA"
* contact.address.state = #LA "Lagos"
* contact.address.extension[administrativeWard].valueCodeableConcept = #fc-amac-gurdi "Gurdi"


// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Patient</b>: Chinedu Obi (male), born 1990-11-11</p>
  <p><b>Identifiers</b>: MRN: ENU-445-9932</p>
  <p><b>Address</b>: Enugu City, Enugu State, Nigeria</p>
</div>
"""