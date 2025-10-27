// ============================
// Local CodeSystem (DE1–DE29)
// ============================
CodeSystem: NGVaccineLocalCS
Id: ng-vaccine-local
Title: "NG IMMZ.D.DE4 Vaccine Local Codes (Dose-labelled)"
Description: "Locally defined vaccine codes used for data capture and UI labels. Doses are local; external systems map at antigen/product level."
* ^url = "https://nphcda.gov.ng/ig/CodeSystem/ng-vaccine-local"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false

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


// 2) Master “library” ValueSet (ICD-11)
CodeSystem: NGVaccineLibraryICD11CS
Id: ng-vaccine-icd-cs
Title: "NG IMMZ.D.DE4 ICD11 Vaccine Library"
Description: "ICD11 code Immunization.vaccineCode. Dose/order is not encoded in codes; use protocolApplied.doseNumber[x]."
* ^status = #active
* ^url = "https://nphcda.gov.ng/ig/CodeSystem/ng-vaccine-icd-cs"
* ^experimental = false
* ^publisher = "DHIN"
* ^caseSensitive = true

// --- ICD-11 vaccine concepts ---
* #XM8142 "BCG vaccine"
* #XM9V38 "Hepatitis B vaccine"
* #XM0N50 "Poliomyelitis vaccines"
* #XM1PB8 "DTP-HepB-Hib pentavalent vaccines"
* #XM9G97 "Pneumococcal conjugate vaccines"
* #XM1CE0 "Rotavirus vaccines"
* #XM8TF3 "Measles-rubella vaccine"
* #XM0N24 "Yellow fever vaccine"
* #XM2WV4 "Meningococcal vaccines"
* #XM32Q5 "Tetanus-diphtheria vaccines"
* #XM9QP0 "Human papillomavirus vaccines"


// 3) Master “library” CodeSystem (SNOMED CT)
CodeSystem: NGVaccineLibrarySNOMEDCS
Id: ng-snomed-cs
Title: "NG IMMZ.D.DE4 Vaccine Library (SNOMED CT)"
Description: "SNOMED-CT code Immunization.vaccineCode. Dose/order is not encoded in codes; use protocolApplied.doseNumber[x]."
* ^url = "https://nphcda.gov.ng/ig/CodeSystem/ng-snomed-cs"
* ^status = #active
* ^experimental = false
* ^publisher = "DHIN"
* ^caseSensitive = true

// --- SNOMED CT vaccine concepts ---
* #1861000221106 "BCG vaccine"
* #871822003 "Hepatitis B vaccine"
* #293117006 "Poliomyelitis vaccine"
* #409568008 "DTP-HepB-Hib vaccine"
* #1052328007 "Pneumococcal conjugate vaccine"
* #871761004 "Rotavirus vaccine"
* #871817003 "Measles and rubella vaccine"
* #871717007 "Yellow fever vaccine"
* #219088009 "Meningococcal vaccine"
* #871826000 "Tetanus-diphtheria vaccine"
* #911000221103 "Human papillomavirus vaccine"


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
* name = "Local-icd11"
* experimental = false
* status = #active
* sourceUri = $ngVacLocalVS
* targetUri = $ngicd11VS
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
* name = "Local-Snomed"
* sourceUri = $ngVacLocalVS
* targetUri = $ngsnomedVS
* group[0].source = $ngVacCS
* group[0].target = $sct
* experimental = false

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
