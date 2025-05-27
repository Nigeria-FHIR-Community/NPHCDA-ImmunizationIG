CodeSystem:   IMMZ.F
Title:        "IMMZ.F CodeSystem for Defaulter Tracing Data Elements"
Description:  "CodeSystem for IMMZ.F Defaulter Tracing Data Elements"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_F"

* #IMMZ.F.DE1  "Client's name"
* #IMMZ.F.DE2  "Sex"
* #IMMZ.F.DE3  "Client's age"
* #IMMZ.F.DE4  "Caregiver's name"
* #IMMZ.F.DE5  "Caregiver's phone number"
* #IMMZ.F.DE6  "Immunization missed"
* #IMMZ.F.DE7  "Date of immunization missed"
* #IMMZ.F.DE8  "Reason"


Instance: IMMZDefaulterTracingCodeSystem
InstanceOf: CodeSystem
Usage: #example
Title: "IMMZ.F CodeSystem for Defaulter Tracing"
Description: "CodeSystem for IMMZ.F Defaulter Tracing Data Elements"

* version = "1.0.0"
* name = "IMMZ_F"
* status = #active
* experimental = false
* caseSensitive = false
* content = #complete

* concept[0].code = #IMMZ.F.DE1
* concept[0].display = "Client's name"

* concept[1].code = #IMMZ.F.DE2
* concept[1].display = "Sex"

* concept[2].code = #IMMZ.F.DE3
* concept[2].display = "Client's age"

* concept[3].code = #IMMZ.F.DE4
* concept[3].display = "Caregiver's name"

* concept[4].code = #IMMZ.F.DE5
* concept[4].display = "Caregiver's phone number"

* concept[5].code = #IMMZ.F.DE6
* concept[5].display = "Immunization missed"

* concept[6].code = #IMMZ.F.DE7
* concept[6].display = "Date of immunization missed"

* concept[7].code = #IMMZ.F.DE8
* concept[7].display = "Reason"
