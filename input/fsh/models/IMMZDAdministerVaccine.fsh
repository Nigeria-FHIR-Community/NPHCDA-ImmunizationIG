Logical: AdministerVaccine
Title: "IMMZ.D Administer Vaccine"
Description: "A logical model for capturing vaccine administration details"

* nameOfHealthFacility 1..1 string "Name of health facility" "Name of the facility where the vaccination is taking place."
  * ^code[+] = #IMMZ.D.DE1
* facilityType 1..1 CodeableConcept "Facility type" "The type of health facility. Uses the IMMZ.D CodeSystem."
  * ^code[+] = #IMMZ.D.DE2
  * ^binding.strength = #required
  * ^binding.valueSet = "IMMZ.D#IMMZ.D.DE2"
* sessionType 1..1 CodeableConcept "Session type" "Type of immunization session. Uses the IMMZ.D CodeSystem."
  * ^code[+] = #IMMZ.D.DE6
  * ^binding.strength = #required
  * ^binding.valueSet = "IMMZ.D#IMMZ.D.DE6"
* vaccineType 1..1 CodeableConcept "Vaccine type" "Type of vaccine administered. Uses IMMZ.F Vaccine Library codes."
  * ^code[+] = #IMMZ.D.DE10
* contraindicated 0..1 boolean "Contraindicated" "Immunization not recommended due to contraindications."
  * ^code[+] = #IMMZ.D.DE11
* contraindications 0..* CodeableConcept "Contraindications to immunization" "Specific situations where certain vaccines should not be administered. Uses the IMMZ.D CodeSystem."
  * ^code[+] = #IMMZ.D.DE12
  * ^binding.strength = #required
  * ^binding.valueSet = "IMMZ.D#IMMZ.D.DE12"
* vaccinationDateTime 1..1 dateTime "Date and time of vaccination" "The date and time the vaccine was administered."
  * ^code[+] = #IMMZ.D.DE17
* vaccineAdministeringCenter 1..1 string "Vaccine Administering Center" "Facility where vaccine was administered."
  * ^code[+] = #IMMZ.D.DE18
* vaccineBatchNumber 1..1 string "Vaccine batch number" "Batch or lot number of vaccine."
  * ^code[+] = #IMMZ.D.DE19
* expirationDate 1..1 date "Expiration date" "Expiration date of the vaccine. Use last day of the month if only month is given."
  * ^code[+] = #IMMZ.D.DE20
* siteAdministered 1..1 CodeableConcept "Site administered" "Body site where vaccine was administered. Uses the IMMZ.D CodeSystem."
  * ^code[+] = #IMMZ.D.DE21
  * ^binding.strength = #required
  * ^binding.valueSet = "IMMZ.D#IMMZ.D.DE21"
* routeOfAdministration 1..1 CodeableConcept "Route of administration" "Route of delivery of the vaccine. Uses the IMMZ.D CodeSystem."
  * ^code[+] = #IMMZ.D.DE27
  * ^binding.strength = #required
  * ^binding.valueSet = "IMMZ.D#IMMZ.D.DE27"
* doseQuantity 1..1 Quantity "Dose quantity" "Quantity of vaccine product administered."
  * ^code[+] = #IMMZ.D.DE32
* healthWorkerIdentifier 1..1 string "Health worker identifier" "Person, organization, or role of the vaccinator. Can be populated from a Health Worker Registry."
  * ^code[+] = #IMMZ.D.DE33


Instance: vaccine-administration-example
InstanceOf: AdministerVaccine
Title: "Example Vaccine Administration Record"
Description: "An example instance demonstrating the use of the Administer Vaccine Logical Model."

* nameOfHealthFacility = "Sunrise Health Clinic"
* facilityType = #IMMZ.D.DE3 "Public"
* sessionType = #IMMZ.D.DE7 "Fixed"
* vaccineType = #IMMZ.D.DE10 "Measles Vaccine"
* contraindicated = false
* contraindications[+] = #IMMZ.D.DE14 "Severe AEFI"
* vaccinationDateTime = "2025-03-20T10:30:00Z"
* vaccineAdministeringCenter = "Sunrise Health Clinic - Immunization Wing"
* vaccineBatchNumber = "BATCH12345"
* expirationDate = "2026-06-30"
* siteAdministered = #IMMZ.D.DE23 "Left upper arm"
* routeOfAdministration = #IMMZ.D.DE30 "Intramuscular"
* doseQuantity = 0.5 'mL' "Dose"
* healthWorkerIdentifier = "HW-56789"
