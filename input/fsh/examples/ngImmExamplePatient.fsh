Instance: NgImmExamplePatient
InstanceOf: NgImmPatient
Title: "Example Nigeria Immunization Patient for use in Bundle"
Description: "Sample patient for use with Bunlde and resident in Kogi State"
Usage: #example

* meta.lastUpdated = "2025-07-04T08:30:00+01:00"

* identifier.system = "https://nimc.gov.ng"
* identifier.value = "NIN98765432100"

* name[0].family = "Abdulraheem"
* name[0].given[0] = "Zainab"

* gender = $NGGenderVS#female "Female"
* birthDate = "2024-02-20"
* active = true

* address.line = "No. 10, Igalamela Compound, Ankpa"
* address.city = "Ankpa"
* address.district = $NGLGAVS#KO08 "Ankpa"
* address.state = $NGStateVS#KO "Kogi"
* address.extension[administrativeWard].valueCodeableConcept = $ngwards#KO0802 "Enjema"

* contact.name.family = "Abdulraheem"
* contact.name.given[0] = "Aisha"
* contact.telecom.system = #phone
* contact.telecom.value = "+2348031234567"
* contact.relationship.text = $ngrelationships#mother "Mother"
* contact.address.line = "No. 10, Igalamela Compound"
* contact.address.city = "Ankpa"
* contact.address.district = $nglgas#KO08 "Ankpa"
* contact.address.state = $ngstates#KO "Kogi"
* contact.address.extension[administrativeWard].valueCodeableConcept = $ngwards#KO0802 "Enjema"

* communication[0].language = $nglanguages#ibo "Igbo"
* photo[0].url = "https://example.org/photos/zainab-abdulraheem.jpg"

* extension[birthWeight].valueQuantity.value = 3.1
* extension[birthWeight].valueQuantity.unit = "kg"
* extension[pregnancyStatus].valueCodeableConcept = $ngpregnancystatus#notpregnant "Not Pregnant"
* extension[ageInWeeks].valueInteger = 20
* extension[ageInMonths].valueInteger = 5
* extension[ageInYears].valueInteger = 0
