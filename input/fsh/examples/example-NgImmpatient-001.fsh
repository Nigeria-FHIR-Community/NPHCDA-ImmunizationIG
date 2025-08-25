Instance: patient-001
InstanceOf: NgImmPatient
Title: "Example NG-Imm Patient 001"
Description: "An example patient resource fully populated according to the NG-Imm Patient profile."

* meta.lastUpdated = "2025-08-16T12:00:00Z"

// ---------------- Identifiers ----------------
//* identifier[NationalIDNo].system = "https://nimc.org/nin"
* identifier[NationalIDNo].value = "12345678901"
* identifier[NationalIDNo].type.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/patient-identifier-cs"
* identifier[NationalIDNo].type.coding[0].code = #NIN

//* identifier[MedicalRecordsNumber].system = "http://enugugh.ng/medicalrecord-no"
* identifier[MedicalRecordsNumber].value = "ASOK-MRN-2025-001"
* identifier[MedicalRecordsNumber].type.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/patient-identifier-cs"
* identifier[MedicalRecordsNumber].type.coding[0].code = #MRN

//* identifier[ImmunizationRecordsNumber].system = "https://nphcda.gov.ng/immunization-no"
* identifier[ImmunizationRecordsNumber].type.coding[0].code = #IMMNO
* identifier[ImmunizationRecordsNumber].value = "NPHCDA-IMM-00123456"
* identifier[ImmunizationRecordsNumber].type.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/patient-identifier-cs"


//* identifier[BirthCertificateNo].system = "http://npc.gov.ng/birthCertificate-no"
* identifier[BirthCertificateNo].value = "BCN-2020-90876"
* identifier[BirthCertificateNo].type.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/patient-identifier-cs"
* identifier[BirthCertificateNo].type.coding[0].code = #BIRTHCERT

//* identifier[PhoneNumber].system = "http://ncc.gov.ng/phone-no"
* identifier[PhoneNumber].value = "08031234567"
* identifier[PhoneNumber].type.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/patient-identifier-cs"
* identifier[PhoneNumber].type.coding[0].code = #MOBILE

//* identifier[InsuranceNumber].system = "http://nhia.gov.ng/insurance-no"
* identifier[InsuranceNumber].value = "NHIA-PL-2025-112233"
* identifier[InsuranceNumber].type.coding[0].system = "http://nphcda.gov.ng/ig/immunization/ValueSet/patient-identifier-cs"
* identifier[InsuranceNumber].type.coding[0].code = #INSUR

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
* address.district = #en-aninri "Aninri LGA"
* address.state = #EN "Enugu"


// ---------------- Caregiver Contact ----------------
* contact.name.family = "Okafor"
* contact.name.given[0] = "Ngozi"
* contact.telecom.system = #phone
* contact.telecom.value = "08039876543"
* contact.relationship.text = #MOTHER "Mother"

* contact.address.line = "No 10, Independence Layout"
* contact.address.city = "Enugu"
* contact.address.district = #en-aninri "Aninri LGA"
* contact.address.state = #EN "Enugu"

// Extension for Caregiver Administrative Ward
//* contact.address.extension[administrativeWard].valueCodeableConcept = #fc-amac-abajic "Abaji central"

// ---------------- Link to RelatedPerson (Sibling) ----------------
* link.other = Reference(relatedperson-001)
* link.type = #seealso


// Narrative
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p><b>Patient</b>: Emeka Chinedu (male), born 2023-05-12</p>
  <p><b>Identifiers</b>: MRN: ASOK-MRN-2025-001</p>
  <p><b>Address</b>: No 10, Independence Layout, Enugu State, Nigeria</p>
</div>
"""