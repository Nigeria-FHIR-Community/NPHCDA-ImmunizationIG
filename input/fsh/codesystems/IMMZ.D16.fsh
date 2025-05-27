CodeSystem:   IMMZ.D16
Title:        "IMMZ.D16 CodeSystem for Treat AEFI Data Elements"
Id : IMMZ-D16
Description:  "CodeSystem for IMMZ.D16 Treat AEFI Data Elements"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_D16"

* #IMMZ.D16.DE1  "Reaction date"
* #IMMZ.D16.DE2  "Reaction Observation ID"
* #IMMZ.D16.DE3  "Complaint"
* #IMMZ.D16.DE4  "Reaction manifestation"
* #IMMZ.D16.DE5  "Reaction Severity"
* #IMMZ.D16.DE6  "Mild"
* #IMMZ.D16.DE7  "Severe"
* #IMMZ.D16.DE8  "Reaction outcome"
* #IMMZ.D16.DE9  "Death"
* #IMMZ.D16.DE10 "Recovered"
* #IMMZ.D16.DE11 "Recovered with sequelae"
* #IMMZ.D16.DE12 "Dose number"
* #IMMZ.D16.DE13 "Total doses in series"
* #IMMZ.D16.DE14 "Disease targeted"
* #IMMZ.D16.DE15 "Tuberculosis"
* #IMMZ.D16.DE16 "Type B viral hepatitis"
* #IMMZ.D16.DE17 "Poliomyelitis"
* #IMMZ.D16.DE18 "Pneumococcal disease"
* #IMMZ.D16.DE19 "Diphtheria"
* #IMMZ.D16.DE20 "Haemophilus influenza type B"
* #IMMZ.D16.DE21 "Pertussis"
* #IMMZ.D16.DE22 "Tetanus"
* #IMMZ.D16.DE23 "Enteritis due to rotavirus"
* #IMMZ.D16.DE24 "Human papilloma virus infection"
* #IMMZ.D16.DE25 "Malaria"
* #IMMZ.D16.DE26 "Yellow fever"
* #IMMZ.D16.DE27 "Measles"
* #IMMZ.D16.DE28 "Men A"
* #IMMZ.D16.DE29 "COVID-19"
* #IMMZ.D16.DE30 "Due date of next dose"
* #IMMZ.D16.DE31 "Digital certificate needed"
* #IMMZ.D16.DE32 "Certificate issuer"
* #IMMZ.D16.DE33 "Health Certificate Identifier (HCID)"
* #IMMZ.D16.DE34 "Certificate valid from"
* #IMMZ.D16.DE35 "Certificate valid until"
* #IMMZ.D16.DE36 "Certificate scheme version"

//Additional for manifestation

* #IMMZ.D16.DE37 "Fever - Elevated body temperature"
* #IMMZ.D16.DE38 "Rash - Skin eruption or inflammation"
* #IMMZ.D16.DE39 "Swelling - Localized or generalized swelling"
* #IMMZ.D16.DE40 "Anaphylaxis - Severe allergic reaction requiring immediate intervention"
* #IMMZ.D16.DE41 "Diarrhea - Frequent loose or watery stools"


Instance: IMMZHTreatAEFI
InstanceOf: CodeSystem
Usage: #example
Title: "IMMZ.H CodeSystem for Treat AEFI"
Description: "CodeSystem for IMMZ.H Treat AEFI Data Elements"

* version = "1.0.0"
* name = "IMMZ_D16"
* status = #active
* experimental = false
* caseSensitive = false
* content = #complete

* concept[0].code = #IMMZ.D16.DE1
* concept[0].display = "Reaction date"

* concept[1].code = #IMMZ.D16.DE2
* concept[1].display = "Reaction Observation ID"

* concept[2].code = #IMMZ.D16.DE3
* concept[2].display = "Complaint"

* concept[3].code = #IMMZ.D16.DE4
* concept[3].display = "Reaction manifestation"

* concept[4].code = #IMMZ.D16.DE5
* concept[4].display = "Reaction Severity"

* concept[5].code = #IMMZ.D16.DE6
* concept[5].display = "Mild"

* concept[6].code = #IMMZ.D16.DE7
* concept[6].display = "Severe"

* concept[7].code = #IMMZ.D16.DE8
* concept[7].display = "Reaction outcome"

* concept[8].code = #IMMZ.D16.DE9
* concept[8].display = "Death"

* concept[9].code = #IMMZ.D16.DE10
* concept[9].display = "Recovered"

* concept[10].code = #IMMZ.D16.DE11
* concept[10].display = "Recovered with sequelae"

* concept[11].code = #IMMZ.D16.DE12
* concept[11].display = "Dose number"

* concept[12].code = #IMMZ.D16.DE13
* concept[12].display = "Total doses in series"

* concept[13].code = #IMMZ.D16.DE14
* concept[13].display = "Disease targeted"

* concept[14].code = #IMMZ.D16.DE15
* concept[14].display = "Tuberculosis"

* concept[15].code = #IMMZ.D16.DE16
* concept[15].display = "Type B viral hepatitis"

* concept[16].code = #IMMZ.D16.DE17
* concept[16].display = "Poliomyelitis"

* concept[17].code = #IMMZ.D16.DE18
* concept[17].display = "Pneumococcal disease"

* concept[18].code = #IMMZ.D16.DE19
* concept[18].display = "Diptheria"

* concept[19].code = #IMMZ.D16.DE20
* concept[19].display = "Haemophilus influenza type B"
* concept[20].code = #IMMZ.D16.DE21
* concept[20].display = "Pertussis"

* concept[21].code = #IMMZ.D16.DE22
* concept[21].display = "Tetanus"

* concept[22].code = #IMMZ.D16.DE23
* concept[22].display = "Enteritis due to rotavirus"

* concept[23].code = #IMMZ.D16.DE24
* concept[23].display = "Human papilloma virus infection"

* concept[24].code = #IMMZ.D16.DE25
* concept[24].display = "Malaria"

* concept[25].code = #IMMZ.D16.DE26
* concept[25].display = "Yellow fever"

* concept[26].code = #IMMZ.D16.DE27
* concept[26].display = "Measles"

* concept[27].code = #IMMZ.D16.DE28
* concept[27].display = "Men A"

* concept[28].code = #IMMZ.D16.DE29
* concept[28].display = "COVID-19"

* concept[29].code = #IMMZ.D16.DE30
* concept[29].display = "Due date of next dose"

* concept[30].code = #IMMZ.D16.DE31
* concept[30].display = "Digital certificate needed"

* concept[31].code = #IMMZ.D16.DE32
* concept[31].display = "Certificate issuer"

* concept[32].code = #IMMZ.D16.DE33
* concept[32].display = "Health Certificate Identifier (HCID)"

* concept[33].code = #IMMZ.D16.DE34
* concept[33].display = "Certificate valid from"

* concept[34].code = #IMMZ.D16.DE35
* concept[34].display = "Certificate valid until"

* concept[35].code = #IMMZ.D16.DE36
* concept[35].display = "Certificate scheme version"
