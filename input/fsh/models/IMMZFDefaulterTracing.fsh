Logical: DefaulterTracing
Title: "IMMZ.F Defaulter Tracing"
Description: "A logical model for tracking immunization defaulters."

* clientName 1..1 string "Client's name" "The first and last name of the client."
  * ^code[+] = #IMMZ.F.DE1
* clientSex 1..1 CodeableConcept "Sex" "Biological sex of the client."
  * ^code[+] = #IMMZ.F.DE2
  * ^binding.strength = #required
  * ^binding.valueSet = "#IMMZ.F.DE2"
* clientAge 1..1 integer "Client's age" "Total number of months since the client was born."
  * ^code[+] = #IMMZ.F.DE3

* caregiverName 0..1 string "Caregiver's name" "Full name of the caregiver."
  * ^code[+] = #IMMZ.F.DE4
* caregiverPhone 0..1 string "Caregiver's phone number" "Mobile number of the caregiver."
  * ^code[+] = #IMMZ.F.DE5

* missedVaccine 1..* CodeableConcept "Immunization missed" "The type of vaccine missed."
  * ^code[+] = #IMMZ.F.DE6
  * ^binding.strength = #required
  * ^binding.valueSet = "#IMMZ.F.DE6"
* missedVaccineDate 1..1 date "Date of immunization missed" "The date immunization was due."
  * ^code[+] = #IMMZ.F.DE7
* missedReason 0..1 string "Reason" "Capture's the reason(s) for a missed vaccination appointment."
  * ^code[+] = #IMMZ.F.DE8

Instance: defaulter-tracing-example
InstanceOf: DefaulterTracing
Usage: #example
* clientName = "John Doe"
* clientSex = #IMMZ.F.DE2 "Male"
* clientAge = 24
* caregiverName = "Jane Doe"
* caregiverPhone = "+2348012345678"
* missedVaccine[+] = #IMMZ.F.DE6 "Measles"
* missedVaccine[+] = #IMMZ.F.DE6 "Polio"
* missedVaccineDate = "2025-02-15"
* missedReason = "Caregiver forgot the appointment."
