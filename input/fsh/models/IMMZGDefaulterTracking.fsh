Logical: DefaulterTracking
Title: "NG-Imm-G DefaulterTracking[information only]"
Description: "IMMZ.G - A logical model for tracking immunization defaulters."

* clientName 1..1 string "Client's name" "The first and last name of the client."
* clientSex 1..1 CodeableConcept "Sex" "Biological sex of the client."
  * ^code[+] = #NGGender
* clientAge 1..1 integer "Client's age" "Total number of months since the client was born."
* caregiverName 0..1 string "Caregiver's name" "Full name of the caregiver."
* caregiverPhone 0..1 string "Caregiver's phone number" "Mobile number of the caregiver."
* missedVaccine 1..* CodeableConcept "Immunization missed" "The type of vaccine missed."
  * ^code[+] = #NGVaccineLibraryVS
* missedVaccineDate 1..1 date "Date of immunization missed" "The date immunization was due."
* missedReason 0..1 string "Reason" "Capture's the reason(s) for a missed vaccination appointment."
