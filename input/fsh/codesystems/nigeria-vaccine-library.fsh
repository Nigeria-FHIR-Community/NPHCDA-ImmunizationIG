// ============================
// Local CodeSystem (DE1–DE29)
// ============================
CodeSystem: NGVaccineLocalCS
Id: ng-vaccine-local
Title: "NG IMMZ.D.DE4 Vaccine Local Codes (Dose-labelled)"
Description: "Locally defined vaccine codes used for data capture and UI labels. Doses are local; external systems map at antigen/product level."
* ^url = $ngVacCS
* ^status = #active
* ^content = #complete
* ^caseSensitive = true

* #IMMZ.Z.DE1  "BCG birth dose"
* #IMMZ.Z.DE2  "HepB birth dose"
* #IMMZ.Z.DE3  "Polio (OPV0) birth dose"
* #IMMZ.Z.DE4  "Pentavalent 1"
* #IMMZ.Z.DE5  "Oral Polio Vaccine (OPV 1)"
* #IMMZ.Z.DE6  "Pneumococcal Conjugate Vaccine (PCV 1)"
* #IMMZ.Z.DE7  "Rotavirus 1"
* #IMMZ.Z.DE8  "Inactivated Polio Vaccine (IPV 1)"
* #IMMZ.Z.DE9  "Oral Polio Vaccine (OPV 2)"
* #IMMZ.Z.DE10 "Pneumococcal Conjugate Vaccine (PCV 2)"
* #IMMZ.Z.DE11 "Pentavalent 2"
* #IMMZ.Z.DE12 "Rotavirus 2"
* #IMMZ.Z.DE13 "Oral Polio Vaccine (OPV 3)"
* #IMMZ.Z.DE14 "Pentavalent 3"
* #IMMZ.Z.DE15 "Pneumococcal Conjugate Vaccine (PCV 3)"
* #IMMZ.Z.DE16 "Rotavirus 3"
* #IMMZ.Z.DE17 "Inactivated Polio Vaccine (IPV 2)"
* #IMMZ.Z.DE18 "Malaria 1"
* #IMMZ.Z.DE19 "Vitamin A 1"
* #IMMZ.Z.DE20 "Malaria 2"
* #IMMZ.Z.DE21 "Malaria 3"
* #IMMZ.Z.DE22 "Measles Rubella (MR 1)"
* #IMMZ.Z.DE23 "Yellow Fever"
* #IMMZ.Z.DE24 "Meningitis"
* #IMMZ.Z.DE25 "Vitamin A 2"
* #IMMZ.Z.DE26 "Measles Rubella (MR 2)"
* #IMMZ.Z.DE27 "Malaria 4"
* #IMMZ.Z.DE28 "Tetanus Diphtheria"
* #IMMZ.Z.DE29 "Human PapillomaVirus (HPV)"

// ============================
// ValueSets
// ============================

// 1) Local-only ValueSet (path-based)
ValueSet: NGVaccineLocalVS
Id: ng-vaccine-local-vs
Title: "NG IMMZ.D.DE4 Vaccine Local ValueSet"
Description: "All local vaccine codes (DE1–DE29)."
* ^url = $ngVacCS
* ^status = #active
* include codes from system NGVaccineLocalCS


// 2) Master “library” ValueSet (ICD-11 + SNOMED CT + Local) — path-based
ValueSet: NGVaccineLibraryVS
Id: ng-vaccine-library
Title: "NG IMMZ.D.DE4 Vaccine Library (ICD-11 + SNOMED CT + Local)"
Description: "Union set used to code Immunization.vaccineCode. Dose/order is not encoded in codes; use protocolApplied.doseNumber[x]."
* ^url = $ngVacVS
* ^status = #active

// --- ICD-11 vaccine concepts ---
* ^compose.include[0].system = $icd11
* ^compose.include[0].concept[0].code = #XM8142
* ^compose.include[0].concept[0].display = "BCG vaccine"
* ^compose.include[0].concept[1].code = #XM9V38
* ^compose.include[0].concept[1].display = "Hepatitis B vaccine"
* ^compose.include[0].concept[2].code = #XM0N50
* ^compose.include[0].concept[2].display = "Poliomyelitis vaccines"
* ^compose.include[0].concept[3].code = #XM1PB8
* ^compose.include[0].concept[3].display = "DTP-HepB-Hib pentavalent vaccines"
* ^compose.include[0].concept[4].code = #XM9G97
* ^compose.include[0].concept[4].display = "Pneumococcal conjugate vaccines"
* ^compose.include[0].concept[5].code = #XM1CE0
* ^compose.include[0].concept[5].display = "Rotavirus vaccines"
* ^compose.include[0].concept[6].code = #XM8TF3
* ^compose.include[0].concept[6].display = "Measles-rubella vaccine"
* ^compose.include[0].concept[7].code = #XM0N24
* ^compose.include[0].concept[7].display = "Yellow fever vaccine"
* ^compose.include[0].concept[8].code = #XM2WV4
* ^compose.include[0].concept[8].display = "Meningococcal vaccines"
* ^compose.include[0].concept[9].code = #XM32Q5
* ^compose.include[0].concept[9].display = "Tetanus-diphtheria vaccines"
* ^compose.include[0].concept[10].code = #XM9QP0
* ^compose.include[0].concept[10].display = "Human papillomavirus vaccines"

// --- SNOMED CT vaccine concepts ---
* ^compose.include[1].system = $sct
* ^compose.include[1].concept[0].code = #1861000221106
* ^compose.include[1].concept[0].display = "BCG vaccine"
* ^compose.include[1].concept[1].code = #871822003
* ^compose.include[1].concept[1].display = "Hepatitis B vaccine"
* ^compose.include[1].concept[2].code = #293117006
* ^compose.include[1].concept[2].display = "Poliomyelitis vaccine"
* ^compose.include[1].concept[3].code = #409568008
* ^compose.include[1].concept[3].display = "Pentavalent DTP-HepB-Hib vaccine"
* ^compose.include[1].concept[4].code = #1052328007
* ^compose.include[1].concept[4].display = "Pneumococcal conjugate vaccine"
* ^compose.include[1].concept[5].code = #871761004
* ^compose.include[1].concept[5].display = "Rotavirus vaccine"
* ^compose.include[1].concept[6].code = #871817003
* ^compose.include[1].concept[6].display = "Measles and rubella vaccine"
* ^compose.include[1].concept[7].code = #871717007
* ^compose.include[1].concept[7].display = "Yellow fever vaccine"
* ^compose.include[1].concept[8].code = #219088009
* ^compose.include[1].concept[8].display = "Meningococcal vaccine"
* ^compose.include[1].concept[9].code = #871826000
* ^compose.include[1].concept[9].display = "Tetanus and diphtheria vaccine"
* ^compose.include[1].concept[10].code = #911000221103
* ^compose.include[1].concept[10].display = "Human papillomavirus vaccine"

// --- Local IMMZ.Z.DE codes (include whole system) ---
* ^compose.include[2].system = $ngVacCS


// ============================
// ConceptMaps (Local → ICD-11 and Local → SNOMED CT)
// ============================

// ---------------- Local → ICD-11 ----------------
Instance: NGVaccineLocal-to-ICD11
InstanceOf: ConceptMap
Usage: #definition
Title: "Local Vaccine Codes → ICD-11"
Description: "Maps local dose-labelled DE codes to ICD-11 vaccine concepts (antigen/product level)."
* url = $cmLocalToICD11
* status = #active
* sourceUri = $ngVacCS
* targetUri = $icd11
* group[0].source = $ngVacCS
* group[0].target = $icd11

// BCG
* group[0].element[0].code = #IMMZ.Z.DE1
* group[0].element[0].target.code = #XM8142
* group[0].element[0].target.display = "BCG vaccine"
* group[0].element[0].target.equivalence = #equivalent

// HepB
* group[0].element[1].code = #IMMZ.Z.DE2
* group[0].element[1].target.code = #XM9V38
* group[0].element[1].target.display = "Hepatitis B vaccine"
* group[0].element[1].target.equivalence = #equivalent

// Polio (OPV0/1/2/3 and IPV → polio vaccine family)
* group[0].element[2].code = #IMMZ.Z.DE3
* group[0].element[2].target.code = #XM0N50 
* group[0].element[2].target.display = "Poliomyelitis vaccines"
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[3].code = #IMMZ.Z.DE5
* group[0].element[3].target.code = #XM0N50 
* group[0].element[3].target.display = "Poliomyelitis vaccines"
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[4].code = #IMMZ.Z.DE9
* group[0].element[4].target.code = #XM0N50 
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[5].code = #IMMZ.Z.DE13
* group[0].element[5].target.code = #XM0N50 
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[6].code = #IMMZ.Z.DE8
* group[0].element[6].target.code = #XM0N50 
* group[0].element[6].target.equivalence = #equivalent
* group[0].element[7].code = #IMMZ.Z.DE17
* group[0].element[7].target.code = #XM0N50 
* group[0].element[7].target.equivalence = #equivalent

// Pentavalent (1/2/3)
* group[0].element[8].code = #IMMZ.Z.DE4
* group[0].element[8].target.code = #XM1PB8 
* group[0].element[8].target.display = "DTP-HepB-Hib pentavalent vaccines"
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[9].code = #IMMZ.Z.DE11
* group[0].element[9].target.code = #XM1PB8 
* group[0].element[9].target.equivalence = #equivalent
* group[0].element[10].code = #IMMZ.Z.DE14
* group[0].element[10].target.code = #XM1PB8 
* group[0].element[10].target.equivalence = #equivalent

// PCV (1/2/3)
* group[0].element[11].code = #IMMZ.Z.DE6
* group[0].element[11].target.code = #XM9G97
* group[0].element[11].target.display = "Pneumococcal conjugate vaccines"
* group[0].element[11].target.equivalence = #equivalent
* group[0].element[12].code = #IMMZ.Z.DE10
* group[0].element[12].target.code = #XM9G97
* group[0].element[12].target.equivalence = #equivalent
* group[0].element[13].code = #IMMZ.Z.DE15
* group[0].element[13].target.code = #XM9G97
* group[0].element[13].target.equivalence = #equivalent

// Rotavirus (1/2/3)
* group[0].element[14].code = #IMMZ.Z.DE7
* group[0].element[14].target.code = #XM1CE0
* group[0].element[14].target.display = "Rotavirus vaccines"
* group[0].element[14].target.equivalence = #equivalent
* group[0].element[15].code = #IMMZ.Z.DE12
* group[0].element[15].target.code = #XM1CE0
* group[0].element[15].target.equivalence = #equivalent
* group[0].element[16].code = #IMMZ.Z.DE16
* group[0].element[16].target.code = #XM1CE0
* group[0].element[16].target.equivalence = #equivalent

// MR
* group[0].element[17].code = #IMMZ.Z.DE22
* group[0].element[17].target.code = #XM8TF3
* group[0].element[17].target.display = "Measles-rubella vaccine"
* group[0].element[17].target.equivalence = #equivalent
* group[0].element[18].code = #IMMZ.Z.DE26
* group[0].element[18].target.code = #XM8TF3
* group[0].element[18].target.equivalence = #equivalent

// Yellow Fever
* group[0].element[19].code = #IMMZ.Z.DE23
* group[0].element[19].target.code = #XM0N24
* group[0].element[19].target.display = "Yellow fever vaccines"
* group[0].element[19].target.equivalence = #equivalent

// Meningitis (Meningococcal)
* group[0].element[20].code = #IMMZ.Z.DE24
* group[0].element[20].target.code = #XM2WV4 
* group[0].element[20].target.display = "Meningococcal vaccines"
* group[0].element[20].target.equivalence = #equivalent

// Tetanus-Diphtheria
* group[0].element[21].code = #IMMZ.Z.DE28
* group[0].element[21].target.code = #XM32Q5
* group[0].element[21].target.display = "Tetanus-diphtheria vaccines"
* group[0].element[21].target.equivalence = #equivalent

// HPV
* group[0].element[22].code = #IMMZ.Z.DE29
* group[0].element[22].target.code = #XM9QP0
* group[0].element[22].target.display = "Human papillomavirus vaccines"
* group[0].element[22].target.equivalence = #equivalent

// Vitamin A and Malaria (no ICD-11 vaccine concept): mark unmatched
* group[0].element[23].code = #IMMZ.Z.DE19
* group[0].element[23].target.equivalence = #unmatched
* group[0].element[24].code = #IMMZ.Z.DE25
* group[0].element[24].target.equivalence = #unmatched
* group[0].element[25].code = #IMMZ.Z.DE18
* group[0].element[25].target.equivalence = #unmatched
* group[0].element[26].code = #IMMZ.Z.DE20
* group[0].element[26].target.equivalence = #unmatched
* group[0].element[27].code = #IMMZ.Z.DE21
* group[0].element[27].target.equivalence = #unmatched
* group[0].element[28].code = #IMMZ.Z.DE27
* group[0].element[28].target.equivalence = #unmatched


// ---------------- Local → SNOMED CT ----------------
Instance: NGVaccineLocal-to-SNOMED
InstanceOf: ConceptMap
Usage: #definition
Title: "Local Vaccine Codes → SNOMED CT"
Description: "Maps local dose-labelled DE codes to SNOMED CT vaccine concepts (antigen/product level)."
* url = $cmLocalToSCT
* status = #active
* sourceUri = $ngVacCS
* targetUri = $sct
* group[0].source = $ngVacCS
* group[0].target = $sct

// BCG
* group[0].element[0].code = #IMMZ.Z.DE1
* group[0].element[0].target.code = #1861000221106 
* group[0].element[0].target.display = "BCG vaccine"
* group[0].element[0].target.equivalence = #equivalent

// HepB
* group[0].element[0].code = #IMMZ.Z.DE2
* group[0].element[0].target.code = #871822003
* group[0].element[0].target.display = "Hepatitis B vaccine"
* group[0].element[0].target.equivalence = #equivalent

// Polio (OPV/IPV family)
* group[0].element[1].code = #IMMZ.Z.DE3
* group[0].element[1].target.code = #293117006 
* group[0].element[1].target.display = "Poliomyelitis vaccine"
* group[0].element[1].target.equivalence = #equivalent
* group[0].element[2].code = #IMMZ.Z.DE5
* group[0].element[2].target.code = #293117006 
* group[0].element[2].target.equivalence = #equivalent
* group[0].element[3].code = #IMMZ.Z.DE9
* group[0].element[3].target.code = #293117006 
* group[0].element[3].target.equivalence = #equivalent
* group[0].element[4].code = #IMMZ.Z.DE13
* group[0].element[4].target.code = #293117006 
* group[0].element[4].target.equivalence = #equivalent
* group[0].element[5].code = #IMMZ.Z.DE8
* group[0].element[5].target.code = #293117006 
* group[0].element[5].target.equivalence = #equivalent
* group[0].element[6].code = #IMMZ.Z.DE17
* group[0].element[6].target.code = #293117006 
* group[0].element[6].target.equivalence = #equivalent

// Pentavalent (1/2/3)
* group[0].element[7].code = #IMMZ.Z.DE4
* group[0].element[7].target.code = #409568008
* group[0].element[7].target.display = "DTP-HepB-Hib vaccine"
* group[0].element[7].target.equivalence = #equivalent
* group[0].element[8].code = #IMMZ.Z.DE11
* group[0].element[8].target.code = #409568008
* group[0].element[8].target.equivalence = #equivalent
* group[0].element[9].code = #IMMZ.Z.DE14
* group[0].element[9].target.code = #409568008
* group[0].element[9].target.equivalence = #equivalent

// PCV (1/2/3)
* group[0].element[10].code = #IMMZ.Z.DE6
* group[0].element[10].target.code = #1052328007
* group[0].element[10].target.display = "Pneumococcal conjugate vaccine"
* group[0].element[10].target.equivalence = #equivalent
* group[0].element[11].code = #IMMZ.Z.DE10
* group[0].element[11].target.code = #1052328007
* group[0].element[11].target.equivalence = #equivalent
* group[0].element[12].code = #IMMZ.Z.DE15
* group[0].element[12].target.code = #1052328007
* group[0].element[12].target.equivalence = #equivalent

// Rotavirus (1/2/3)
* group[0].element[13].code = #IMMZ.Z.DE7
* group[0].element[13].target.code = #871761004 
* group[0].element[13].target.display = "Rotavirus vaccine"
* group[0].element[13].target.equivalence = #equivalent
* group[0].element[14].code = #IMMZ.Z.DE12
* group[0].element[14].target.code = #871761004 
* group[0].element[14].target.equivalence = #equivalent
* group[0].element[15].code = #IMMZ.Z.DE16
* group[0].element[15].target.code = #871761004 
* group[0].element[15].target.equivalence = #equivalent

// MR (1/2)
* group[0].element[16].code = #IMMZ.Z.DE22
* group[0].element[16].target.code = #871817003
* group[0].element[16].target.display = "Measles and rubella vaccine"
* group[0].element[16].target.equivalence = #equivalent
* group[0].element[17].code = #IMMZ.Z.DE26
* group[0].element[17].target.code = #871817003
* group[0].element[17].target.equivalence = #equivalent

// Yellow Fever
* group[0].element[18].code = #IMMZ.Z.DE23
* group[0].element[18].target.code = #871717007 
* group[0].element[18].target.display = "Yellow fever vaccine"
* group[0].element[18].target.equivalence = #equivalent

// Meningitis (meningococcal)
* group[0].element[19].code = #IMMZ.Z.DE24
* group[0].element[19].target.code = #219088009  
* group[0].element[19].target.display = "Meningococcal vaccine"
* group[0].element[19].target.equivalence = #equivalent

// Tetanus-Diphtheria
* group[0].element[20].code = #IMMZ.Z.DE28
* group[0].element[20].target.code = #871826000 
* group[0].element[20].target.display = "Tetanus-diphtheria vaccine"
* group[0].element[20].target.equivalence = #equivalent

// HPV
* group[0].element[21].code = #IMMZ.Z.DE29
* group[0].element[21].target.code = #911000221103 
* group[0].element[21].target.display = "Human papillomavirus vaccine"
* group[0].element[21].target.equivalence = #equivalent

// Vitamin A & Malaria (not vaccines in the SNOMED vaccine branch): mark unmatched
* group[0].element[22].code = #IMMZ.Z.DE19
* group[0].element[22].target.equivalence = #unmatched
* group[0].element[22].target.display = "Vitamin A"
* group[0].element[23].code = #IMMZ.Z.DE25
* group[0].element[23].target.equivalence = #unmatched
* group[0].element[23].target.display = "Vitamin A"
* group[0].element[24].code = #IMMZ.Z.DE18
* group[0].element[24].target.equivalence = #unmatched
* group[0].element[24].target.display = "Vitamin A"
* group[0].element[25].code = #IMMZ.Z.DE20
* group[0].element[25].target.equivalence = #unmatched
* group[0].element[25].target.display = "Malaria"
* group[0].element[26].code = #IMMZ.Z.DE21
* group[0].element[26].target.equivalence = #unmatched
* group[0].element[26].target.display = "Malaria"
* group[0].element[27].code = #IMMZ.Z.DE27
* group[0].element[27].target.equivalence = #unmatched
* group[0].element[27].target.display = "Malaria"
