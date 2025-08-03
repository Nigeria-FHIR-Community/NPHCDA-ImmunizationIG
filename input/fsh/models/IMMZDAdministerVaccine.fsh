Logical: AdministerVaccine
Title: "NG-Imm-D AdministerVaccine"
Description: "IMMZ.D - A logical model for capturing vaccine administration details"

* nameOfHealthFacility 1..1 string "Name of health facility" "Name of the facility where the vaccination is taking place."
* facilityType 1..1 CodeableConcept "Facility type" "The type of health facility. Uses the IMMZ.D CodeSystem."
  * ^code[+] = #NGFacilityTypeVS
* sessionType 1..1 CodeableConcept "Session type" "Type of immunization session. Uses the IMMZ.D CodeSystem."
  * ^code[+] = #NGSessionTypeVS
* vaccineType 1..1 CodeableConcept "Vaccine type" "Type of vaccine administered. Uses IMMZ.F Vaccine Library codes."
  * ^code[+] = #NGVaccineLibraryVS
* contraindicated 0..1 boolean "Contraindicated" "Immunization not recommended due to contraindications."
* contraindications 0..* CodeableConcept "Contraindications to immunization" "Specific situations where certain vaccines should not be administered. Uses the IMMZ.D CodeSystem."
  * ^code[+] = #NGContraindicationVS
* vaccinationDateTime 1..1 dateTime "Date and time of vaccination" "The date and time the vaccine was administered."
* vaccineAdministeringCenter 1..1 string "Vaccine Administering Center" "Facility where vaccine was administered."
* vaccineBatchNumber 1..1 string "Vaccine batch number" "Batch or lot number of vaccine."
* expirationDate 1..1 date "Expiration date" "Expiration date of the vaccine. Use last day of the month if only month is given."
* siteAdministered 1..1 CodeableConcept "Site administered" "Body site where vaccine was administered. Uses the IMMZ.D CodeSystem."
  * ^code[+] = #NGImmunizationSiteVS
* routeOfAdministration 1..1 CodeableConcept "Route of administration" "Route of delivery of the vaccine. Uses the IMMZ.D CodeSystem."
  * ^code[+] = #NGImmunizationRouteVS
* doseQuantity 1..1 Quantity "Dose quantity" "Quantity of vaccine product administered."
* healthWorkerIdentifier 1..1 string "Health worker identifier" "Person, organization, or role of the vaccinator. Can be populated from a Health Worker Registry."

