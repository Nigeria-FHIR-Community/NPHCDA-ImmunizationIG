CodeSystem:   IMMZ.H
Title:        "IMMZ.H CodeSystem for Stock Management Data Elements"
Description:  "CodeSystem for IMMZ.H Stock Management Data Elements"

* ^experimental = false
* ^caseSensitive = false
* ^name = "IMMZ_H"

* #IMMZ.H.DE1   "BCG Vaccines"
  * ^display = "BCG Vaccines"
* #IMMZ.H.DE2   "Opening balance"
* #IMMZ.H.DE3   "Received"
* #IMMZ.H.DE4   "Doses Opened"
* #IMMZ.H.DE5   "Ending balance"
* #IMMZ.H.DE6   "Wastage"
* #IMMZ.H.DE7   "Measles Vaccine"
* #IMMZ.H.DE8   "OPV Vaccine"
* #IMMZ.H.DE9   "PCV Vaccine"
* #IMMZ.H.DE10  "Rotavirus Vaccine"
* #IMMZ.H.DE11  "TT Vaccine"
* #IMMZ.H.DE12  "DPT-HepB-Hib Vaccine"
* #IMMZ.H.DE13  "Yellow Fever Vaccine"
* #IMMZ.H.DE14  "Hepatitis B Vaccine"
* #IMMZ.H.DE15  "COVID-19 Vaccine"
* #IMMZ.H.DE16  "Total vaccine doses received"
* #IMMZ.H.DE17  "Total vaccine doses used"
* #IMMZ.H.DE18  "Vaccine wastage rate"
* #IMMZ.H.DE19  "Vaccine stockout days"
* #IMMZ.H.DE20  "Vaccine minimum stock level"
* #IMMZ.H.DE21  "Vaccine maximum stock level"
* #IMMZ.H.DE22  "Stock at hand"
* #IMMZ.H.DE23  "Doses discarded"
* #IMMZ.H.DE24  "Doses discarded reason"
* #IMMZ.H.DE25  "Expired doses"
* #IMMZ.H.DE26  "Doses lost due to breakage"
* #IMMZ.H.DE27  "Doses lost due to VVM failure"
* #IMMZ.H.DE28  "Doses frozen"
* #IMMZ.H.DE29  "Functional cold chain equipment"
* #IMMZ.H.DE30  "Non-functional cold chain equipment"
* #IMMZ.H.DE31  "Refrigerator temperature monitoring"
* #IMMZ.H.DE32  "Vaccine storage conditions"
* #IMMZ.H.DE33  "Cold box functionality"
* #IMMZ.H.DE34  "Vaccine distribution tracking"
* #IMMZ.H.DE35  "Batch number tracking"
* #IMMZ.H.DE36  "Stock requisition requests"
* #IMMZ.H.DE37  "Stock issue vouchers"
* #IMMZ.H.DE38  "Stock verification"
* #IMMZ.H.DE39  "Stock adjustments"
* #IMMZ.H.DE40  "Stock replenishment status"
* #IMMZ.H.DE41  "Vaccine demand forecast"
* #IMMZ.H.DE42  "Stock balance report"
* #IMMZ.H.DE43  "Temperature excursion incidents"
* #IMMZ.H.DE44  "Stock loss documentation"
* #IMMZ.H.DE45  "Cold chain monitoring logs"
* #IMMZ.H.DE46  "Reorder level tracking"
* #IMMZ.H.DE47  "Stock receiving checklist"
* #IMMZ.H.DE48  "Vaccine logistics management"
* #IMMZ.H.DE49  "Stock availability monitoring"
* #IMMZ.H.DE50  "Stock movement summary"
* #IMMZ.H.DE51  "Closing balance"
* #IMMZ.H.DE52  "Quantity returned"
* #IMMZ.H.DE53  "Status of device"
* #IMMZ.H.DE54  "Functional device"
* #IMMZ.H.DE55  "Non-functional device"



Instance: IMMZHVaccineLibraryCodeSystem
InstanceOf: CodeSystem
Usage: #example
Title: "IMMZ.H CodeSystem for Vaccine Library"
Description: "CodeSystem for IMMZ.H Vaccine Library Data Elements"

* version = "1.0.0"
* name = "IMMZ_H"
* status = #active
* experimental = false
* caseSensitive = false
* content = #complete

* concept[0].code = #IMMZ.H.DE1
* concept[0].display = "BCG Vaccines"

* concept[1].code = #IMMZ.H.DE2
* concept[1].display = "Opening balance"

* concept[2].code = #IMMZ.H.DE3
* concept[2].display = "Received"

* concept[3].code = #IMMZ.H.DE4
* concept[3].display = "Doses Opened"

* concept[4].code = #IMMZ.H.DE5
* concept[4].display = "Ending balance"

* concept[5].code = #IMMZ.H.DE6
* concept[5].display = "Quantity returned"

* concept[6].code = #IMMZ.H.DE7
* concept[6].display = "No. of empty vials returned"

* concept[7].code = #IMMZ.H.DE8
* concept[7].display = "BCG Diluents"

* concept[8].code = #IMMZ.H.DE9
* concept[8].display = "Opening balance"

* concept[9].code = #IMMZ.H.DE10
* concept[9].display = "Received"

* concept[10].code = #IMMZ.H.DE11
* concept[10].display = "Doses Opened"

* concept[11].code = #IMMZ.H.DE12
* concept[11].display = "Ending balance"

* concept[12].code = #IMMZ.H.DE13
* concept[12].display = "Quantity returned"

* concept[13].code = #IMMZ.H.DE14
* concept[13].display = "No. of empty vials returned"

* concept[14].code = #IMMZ.H.DE15
* concept[14].display = "Hep B Vaccine"

* concept[15].code = #IMMZ.H.DE16
* concept[15].display = "Opening balance"

* concept[16].code = #IMMZ.H.DE17
* concept[16].display = "Received"

* concept[17].code = #IMMZ.H.DE18
* concept[17].display = "Doses Opened"

* concept[18].code = #IMMZ.H.DE19
* concept[18].display = "Ending balance"

* concept[19].code = #IMMZ.H.DE20
* concept[19].display = "Quantity returned"
* concept[20].code = #IMMZ.H.DE21
* concept[20].display = "No. of empty vials returned"

* concept[21].code = #IMMZ.H.DE22
* concept[21].display = "OPV Vaccine"

* concept[22].code = #IMMZ.H.DE23
* concept[22].display = "Opening balance"

* concept[23].code = #IMMZ.H.DE24
* concept[23].display = "Received"

* concept[24].code = #IMMZ.H.DE25
* concept[24].display = "Doses Opened"

* concept[25].code = #IMMZ.H.DE26
* concept[25].display = "Ending balance"

* concept[26].code = #IMMZ.H.DE27
* concept[26].display = "Quantity returned"

* concept[27].code = #IMMZ.H.DE28
* concept[27].display = "No. of empty vials returned"

* concept[28].code = #IMMZ.H.DE29
* concept[28].display = "PENTA Vaccine"

* concept[29].code = #IMMZ.H.DE30
* concept[29].display = "Opening balance"

* concept[30].code = #IMMZ.H.DE31
* concept[30].display = "Received"

* concept[31].code = #IMMZ.H.DE32
* concept[31].display = "Doses Opened"

* concept[32].code = #IMMZ.H.DE33
* concept[32].display = "Ending balance"

* concept[33].code = #IMMZ.H.DE34
* concept[33].display = "Quantity returned"

* concept[34].code = #IMMZ.H.DE35
* concept[34].display = "No. of empty vials returned"

* concept[35].code = #IMMZ.H.DE36
* concept[35].display = "PCV Vaccine"

* concept[36].code = #IMMZ.H.DE37
* concept[36].display = "Opening balance"

* concept[37].code = #IMMZ.H.DE38
* concept[37].display = "Received"

* concept[38].code = #IMMZ.H.DE39
* concept[38].display = "Doses Opened"

* concept[39].code = #IMMZ.H.DE40
* concept[39].display = "Ending balance"
* concept[40].code = #IMMZ.H.DE41
* concept[40].display = "Quantity returned"

* concept[41].code = #IMMZ.H.DE42
* concept[41].display = "No. of empty vials returned"

* concept[42].code = #IMMZ.H.DE43
* concept[42].display = "IPV Vaccine"

* concept[43].code = #IMMZ.H.DE44
* concept[43].display = "Opening balance"

* concept[44].code = #IMMZ.H.DE45
* concept[44].display = "Received"

* concept[45].code = #IMMZ.H.DE46
* concept[45].display = "Doses Opened"

* concept[46].code = #IMMZ.H.DE47
* concept[46].display = "Ending balance"

* concept[47].code = #IMMZ.H.DE48
* concept[47].display = "Quantity returned"

* concept[48].code = #IMMZ.H.DE49
* concept[48].display = "No. of empty vials returned"

* concept[49].code = #IMMZ.H.DE50
* concept[49].display = "Rotavirus Vaccine"

* concept[50].code = #IMMZ.H.DE51
* concept[50].display = "Opening balance"

* concept[51].code = #IMMZ.H.DE52
* concept[51].display = "Received"

* concept[52].code = #IMMZ.H.DE53
* concept[52].display = "Doses Opened"

* concept[53].code = #IMMZ.H.DE54
* concept[53].display = "Ending balance"

* concept[54].code = #IMMZ.H.DE55
* concept[54].display = "Quantity returned"

* concept[55].code = #IMMZ.H.DE56
* concept[55].display = "No. of empty vials returned"

* concept[56].code = #IMMZ.H.DE57
* concept[56].display = "Measles Vaccine"

* concept[57].code = #IMMZ.H.DE58
* concept[57].display = "Opening balance"

* concept[58].code = #IMMZ.H.DE59
* concept[58].display = "Received"

* concept[59].code = #IMMZ.H.DE60
* concept[59].display = "Doses Opened"
* concept[60].code = #IMMZ.H.DE61
* concept[60].display = "Ending balance"

* concept[61].code = #IMMZ.H.DE62
* concept[61].display = "Quantity returned"

* concept[62].code = #IMMZ.H.DE63
* concept[62].display = "No. of empty vials returned"

* concept[63].code = #IMMZ.H.DE64
* concept[63].display = "Measles diluents"

* concept[64].code = #IMMZ.H.DE65
* concept[64].display = "Opening balance"

* concept[65].code = #IMMZ.H.DE66
* concept[65].display = "Received"

* concept[66].code = #IMMZ.H.DE67
* concept[66].display = "Doses Opened"

* concept[67].code = #IMMZ.H.DE68
* concept[67].display = "Ending balance"

* concept[68].code = #IMMZ.H.DE69
* concept[68].display = "Quantity returned"

* concept[69].code = #IMMZ.H.DE70
* concept[69].display = "No. of empty vials returned"

* concept[70].code = #IMMZ.H.DE71
* concept[70].display = "Yellow Fever Vaccine"

* concept[71].code = #IMMZ.H.DE72
* concept[71].display = "Opening balance"

* concept[72].code = #IMMZ.H.DE73
* concept[72].display = "Received"

* concept[73].code = #IMMZ.H.DE74
* concept[73].display = "Doses Opened"

* concept[74].code = #IMMZ.H.DE75
* concept[74].display = "Ending balance"

* concept[75].code = #IMMZ.H.DE76
* concept[75].display = "Quantity returned"

* concept[76].code = #IMMZ.H.DE77
* concept[76].display = "No. of empty vials returned"

* concept[77].code = #IMMZ.H.DE78
* concept[77].display = "Yellow Fever Diluent"

* concept[78].code = #IMMZ.H.DE79
* concept[78].display = "Opening balance"

* concept[79].code = #IMMZ.H.DE80
* concept[79].display = "Received"
* concept[80].code = #IMMZ.H.DE81
* concept[80].display = "Doses Opened"

* concept[81].code = #IMMZ.H.DE82
* concept[81].display = "Ending balance"

* concept[82].code = #IMMZ.H.DE83
* concept[82].display = "Quantity returned"

* concept[83].code = #IMMZ.H.DE84
* concept[83].display = "No. of empty vials returned"

* concept[84].code = #IMMZ.H.DE85
* concept[84].display = "Men A Vaccine"

* concept[85].code = #IMMZ.H.DE86
* concept[85].display = "Opening balance"

* concept[86].code = #IMMZ.H.DE87
* concept[86].display = "Received"

* concept[87].code = #IMMZ.H.DE88
* concept[87].display = "Doses Opened"

* concept[88].code = #IMMZ.H.DE89
* concept[88].display = "Ending balance"

* concept[89].code = #IMMZ.H.DE90
* concept[89].display = "Quantity returned"

* concept[90].code = #IMMZ.H.DE91
* concept[90].display = "No. of empty vials returned"

* concept[91].code = #IMMZ.H.DE92
* concept[91].display = "Men A Diluents"

* concept[92].code = #IMMZ.H.DE93
* concept[92].display = "Opening balance"

* concept[93].code = #IMMZ.H.DE94
* concept[93].display = "Received"

* concept[94].code = #IMMZ.H.DE95
* concept[94].display = "Doses Opened"

* concept[95].code = #IMMZ.H.DE96
* concept[95].display = "Ending balance"

* concept[96].code = #IMMZ.H.DE97
* concept[96].display = "Quantity returned"

* concept[97].code = #IMMZ.H.DE98
* concept[97].display = "No. of empty vials returned"

* concept[98].code = #IMMZ.H.DE99
* concept[98].display = "HPV Vaccine"

* concept[99].code = #IMMZ.H.DE100
* concept[99].display = "Opening balance"
* concept[100].code = #IMMZ.H.DE101
* concept[100].display = "Received"

* concept[101].code = #IMMZ.H.DE102
* concept[101].display = "Doses Opened"

* concept[102].code = #IMMZ.H.DE103
* concept[102].display = "Ending balance"

* concept[103].code = #IMMZ.H.DE104
* concept[103].display = "Quantity returned"

* concept[104].code = #IMMZ.H.DE105
* concept[104].display = "No. of empty vials returned"

* concept[105].code = #IMMZ.H.DE106
* concept[105].display = "Td Vaccine"

* concept[106].code = #IMMZ.H.DE107
* concept[106].display = "Opening balance"

* concept[107].code = #IMMZ.H.DE108
* concept[107].display = "Received"

* concept[108].code = #IMMZ.H.DE109
* concept[108].display = "Doses Opened"

* concept[109].code = #IMMZ.H.DE110
* concept[109].display = "Ending balance"

* concept[110].code = #IMMZ.H.DE111
* concept[110].display = "Quantity returned"

* concept[111].code = #IMMZ.H.DE112
* concept[111].display = "No. of empty vials returned"

* concept[112].code = #IMMZ.H.DE113
* concept[112].display = "Devices/ material"

* concept[113].code = #IMMZ.H.DE114
* concept[113].display = "Name of the device/ material"

* concept[114].code = #IMMZ.H.DE115
* concept[114].display = "BCG syringes"

* concept[115].code = #IMMZ.H.DE116
* concept[115].display = "2ml Syringes"

* concept[116].code = #IMMZ.H.DE117
* concept[116].display = "AD syringes"

* concept[117].code = #IMMZ.H.DE118
* concept[117].display = "Ice packs"

* concept[118].code = #IMMZ.H.DE119
* concept[118].display = "Vaccine carrier"

* concept[119].code = #IMMZ.H.DE120
* concept[119].display = "Cold boxes"

* concept[120].code = #IMMZ.H.DE121
* concept[120].display = "Vaccine Fridges"

* concept[121].code = #IMMZ.H.DE122
* concept[121].display = "MUAC Stripes"

* concept[122].code = #IMMZ.H.DE123
* concept[122].display = "Opening balance"

* concept[123].code = #IMMZ.H.DE124
* concept[123].display = "Quantity received"

* concept[124].code = #IMMZ.H.DE125
* concept[124].display = "Quantity used"

* concept[125].code = #IMMZ.H.DE126
* concept[125].display = "Closing balance"

* concept[126].code = #IMMZ.H.DE127
* concept[126].display = "Quantity returned"

* concept[127].code = #IMMZ.H.DE128
* concept[127].display = "Status of device"

* concept[128].code = #IMMZ.H.DE129
* concept[128].display = "Functional device"

* concept[129].code = #IMMZ.H.DE130
* concept[129].display = "Non-functional device"
