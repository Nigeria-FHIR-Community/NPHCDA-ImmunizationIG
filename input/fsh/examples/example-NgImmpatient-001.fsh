Instance: patient-001
InstanceOf: NgImmPatient
Title: "Example NG-Imm Patient 001"
Description: "An example patient resource fully populated according to the NG-Imm Patient profile."

* meta.lastUpdated = "2025-08-16T12:00:00Z"

// ---------------- Identifiers ----------------
* identifier[NationalIDNo].system = "https://nimc.org/nin"
* identifier[NationalIDNo].value = "12345678901"

* identifier[MedicalRecordsNumber].system = "http://hospital.org/medicalrecord-no"
* identifier[MedicalRecordsNumber].value = "ASOK-MRN-2025-001"

* identifier[ImmunizationRecordsNumber].system = "https://nphcda.gov.ng/immunization-no"
* identifier[ImmunizationRecordsNumber].value = "IMM-001-2025"

* identifier[BirthCertificateNo].system = "http://npc.gov.ng/birthCertificate-no"
* identifier[BirthCertificateNo].value = "BCN-2020-90876"

* identifier[PhoneNumber].system = "http://ncc.gov.ng/phone-no"
* identifier[PhoneNumber].value = "08031234567"

* identifier[InsuranceNumber].system = "http://nhia.gov.ng/insurance-no"
* identifier[InsuranceNumber].value = "NHIA-PL-2025-112233"

// ---------------- Name, Gender, BirthDate ----------------
* name.family = "Okafor"
* name.given[0] = "Chinedu"
* name.given[+] = "Emeka"

* gender = #male
* birthDate = "2020-05-15"
* active = true

// ---------------- Address ----------------
* address.line = "No 10, Independence Layout"
* address.city = "Enugu"
* address.district = #enu-lga001 "Enugu North LGA"
* address.state = #enugu "Enugu State"

// Extension for Administrative Ward
* address.extension[administrativeWard].valueCodeableConcept = #enu-ward005 "G.R.A Ward"

// ---------------- Caregiver Contact ----------------
* contact.name.family = "Okafor"
* contact.name.given[0] = "Ngozi"
* contact.telecom.system = #phone
* contact.telecom.value = "08039876543"
* contact.relationship.text = #MOTHER "Mother"

* contact.address.line = "No 10, Independence Layout"
* contact.address.city = "Enugu"
* contact.address.district = #enu-lga001 "Enugu North LGA"
* contact.address.state = #enugu "Enugu State"

// Extension for Caregiver Administrative Ward
* contact.address.extension[administrativeWard].valueCodeableConcept = #enu-ward005 "G.R.A Ward"

// ---------------- Link to RelatedPerson (Sibling) ----------------
* link.other = Reference(NgImmSiblingRelatedPerson/example-sibling)
* link.type = #see-also


// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Patient</b>: Baby Musa (male), born 2023-05-12</p>
  <p><b>Identifiers</b>: MRN: NGHOSP-001-0001</p>
  <p><b>Address</b>: Kano, Kano State, Nigeria</p>
</div>
"""