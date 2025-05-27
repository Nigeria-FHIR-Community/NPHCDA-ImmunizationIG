CodeSystem:   IMMZ.E
Title:        "IMMZ.E CodeSystem for Manage AEFI Data Elements"
Id : IMMZ-E
Description:  "CodeSystem for IMMZ.E Manage AEFI Data Elements"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_E"

* #IMMZ.E.DE1  "Reaction date"
* #IMMZ.E.DE2  "Reaction Observation ID"
* #IMMZ.E.DE3  "Complaint"
* #IMMZ.E.DE4  "Reaction manifestation"
* #IMMZ.E.DE5  "Reaction Severity"
* #IMMZ.E.DE6  "Mild"
* #IMMZ.E.DE7  "Severe"
* #IMMZ.E.DE8  "Reaction outcome"
* #IMMZ.E.DE9  "Death"
* #IMMZ.E.DE10 "Recovered"
* #IMMZ.E.DE11 "Recovered with sequelae"
* #IMMZ.E.DE12 "Dose number"
* #IMMZ.E.DE13 "Total doses in series"
* #IMMZ.E.DE14 "Disease targeted"
* #IMMZ.E.DE15 "Tuberculosis"
* #IMMZ.E.DE16 "Type B viral hepatitis"
* #IMMZ.E.DE17 "Poliomyelitis"
* #IMMZ.E.DE18 "Pneumococcal disease"
* #IMMZ.E.DE19 "Diphtheria"
* #IMMZ.E.DE20 "Haemophilus influenza type B"
* #IMMZ.E.DE21 "Pertussis"
* #IMMZ.E.DE22 "Tetanus"
* #IMMZ.E.DE23 "Enteritis due to rotavirus"
* #IMMZ.E.DE24 "Human papilloma virus infection"
* #IMMZ.E.DE25 "Malaria"
* #IMMZ.E.DE26 "Yellow fever"
* #IMMZ.E.DE27 "Measles"
* #IMMZ.E.DE28 "Men A"
* #IMMZ.E.DE29 "COVID-19"
* #IMMZ.E.DE30 "Due date of next dose"
* #IMMZ.E.DE31 "Digital certificate needed"
* #IMMZ.E.DE32 "Certificate issuer"
* #IMMZ.E.DE33 "Health Certificate Identifier (HCID)"
* #IMMZ.E.DE34 "Certificate valid from"
* #IMMZ.E.DE35 "Certificate valid until"
* #IMMZ.E.DE36 "Certificate scheme version"

//Additional for manifestation

* #IMMZ.E.DE37 "Fever - Elevated body temperature"
* #IMMZ.E.DE38 "Rash - Skin eruption or inflammation"
* #IMMZ.E.DE39 "Swelling - Localized or generalized swelling"
* #IMMZ.E.DE40 "Anaphylaxis - Severe allergic reaction requiring immediate intervention"
* #IMMZ.E.DE41 "Diarrhea - Frequent loose or watery stools"


Instance: IMMZHManageAEFI
InstanceOf: CodeSystem
Usage: #example
Title: "IMMZ.E CodeSystem for Manage AEFI"
Description: "CodeSystem for IMMZ.H Manage AEFI Data Elements"

* version = "1.0.0"
* name = "IMMZ_E"
* status = #active
* experimental = false
* caseSensitive = false
* content = #complete

* concept[0].code = #IMMZ.E.DE1
* concept[0].display = "Reaction date"

* concept[1].code = #IMMZ.E.DE2
* concept[1].display = "Reaction Observation ID"

* concept[2].code = #IMMZ.E.DE3
* concept[2].display = "Complaint"

* concept[3].code = #IMMZ.E.DE4
* concept[3].display = "Reaction manifestation"

* concept[4].code = #IMMZ.E.DE5
* concept[4].display = "Reaction Severity"

* concept[5].code = #IMMZ.E.DE6
* concept[5].display = "Mild"

* concept[6].code = #IMMZ.E.DE7
* concept[6].display = "Severe"

* concept[7].code = #IMMZ.E.DE8
* concept[7].display = "Reaction outcome"

* concept[8].code = #IMMZ.E.DE9
* concept[8].display = "Death"

* concept[9].code = #IMMZ.E.DE10
* concept[9].display = "Recovered"

* concept[10].code = #IMMZ.E.DE11
* concept[10].display = "Recovered with sequelae"

* concept[11].code = #IMMZ.E.DE12
* concept[11].display = "Dose number"

* concept[12].code = #IMMZ.E.DE13
* concept[12].display = "Total doses in series"

* concept[13].code = #IMMZ.E.DE14
* concept[13].display = "Disease targeted"

* concept[14].code = #IMMZ.E.DE15
* concept[14].display = "Tuberculosis"

* concept[15].code = #IMMZ.E.DE16
* concept[15].display = "Type B viral hepatitis"

* concept[16].code = #IMMZ.E.DE17
* concept[16].display = "Poliomyelitis"

* concept[17].code = #IMMZ.E.DE18
* concept[17].display = "Pneumococcal disease"

* concept[18].code = #IMMZ.E.DE19
* concept[18].display = "Diptheria"

* concept[19].code = #IMMZ.E.DE20
* concept[19].display = "Haemophilus influenza type B"
* concept[20].code = #IMMZ.E.DE21
* concept[20].display = "Pertussis"

* concept[21].code = #IMMZ.E.DE22
* concept[21].display = "Tetanus"

* concept[22].code = #IMMZ.E.DE23
* concept[22].display = "Enteritis due to rotavirus"

* concept[23].code = #IMMZ.E.DE24
* concept[23].display = "Human papilloma virus infection"

* concept[24].code = #IMMZ.E.DE25
* concept[24].display = "Malaria"

* concept[25].code = #IMMZ.E.DE26
* concept[25].display = "Yellow fever"

* concept[26].code = #IMMZ.E.DE27
* concept[26].display = "Measles"

* concept[27].code = #IMMZ.E.DE28
* concept[27].display = "Men A"

* concept[28].code = #IMMZ.E.DE29
* concept[28].display = "COVID-19"

* concept[29].code = #IMMZ.E.DE30
* concept[29].display = "Due date of next dose"

* concept[30].code = #IMMZ.E.DE31
* concept[30].display = "Digital certificate needed"

* concept[31].code = #IMMZ.E.DE32
* concept[31].display = "Certificate issuer"

* concept[32].code = #IMMZ.E.DE33
* concept[32].display = "Health Certificate Identifier (HCID)"

* concept[33].code = #IMMZ.E.DE34
* concept[33].display = "Certificate valid from"

* concept[34].code = #IMMZ.E.DE35
* concept[34].display = "Certificate valid until"

* concept[35].code = #IMMZ.E.DE36
* concept[35].display = "Certificate scheme version"
