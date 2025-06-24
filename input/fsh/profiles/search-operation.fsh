Instance: SearchParameter-ngimm-identifier
InstanceOf: SearchParameter
Title: "NG-Imm Search Patient by Identifier"
Usage: #definition
* name = "identifier"
* status = #active
* code = #identifier
* base = #Patient
* type = #token
* expression = "Patient.identifier"
* description = "Search by patient identifier"


Instance: SearchParameter-ngimm-firstname
InstanceOf: SearchParameter
Title: "NG-Imm Search Patient by firstname"
Usage: #definition
* name = "firstname"
* status = #active
* code = #firstname
* base = #Patient
* type = #token
* expression = "Patient.firstname"
* description = "Search by patient firstname"

Instance: SearchParameter-ngimm-lastname
InstanceOf: SearchParameter
Title: "NG-Imm Search Patient by lastname"
Usage: #definition
* name = "lastname"
* status = #active
* code = #lastname
* base = #Patient
* type = #token
* expression = "Patient.lastname"
* description = "Search by patient lastname"

Instance: SearchParameter-ngimm-birthdate
InstanceOf: SearchParameter
Title: "NG-Imm Search Patient by birth date"
Usage: #definition
* name = "birthDate"
* status = #active
* code = #birthdate
* base = #Patient
* type = #token
* expression = "Patient.birthdate"
* description = "Search by patient birth date"

Instance: SearchParameter-ngimm-gender
InstanceOf: SearchParameter
Title: "NG-Imm Search Patient by gender"
Usage: #definition
* name = "gender"
* status = #active
* code = #gender
* base = #Patient
* type = #token
* expression = "Patient.gender"
* description = "Search by patient gender"

Instance: SearchParameter-ngimm-createddate
InstanceOf: SearchParameter
Title: "NG-Imm Search Patient by date of creation"
Usage: #definition
* name = "createddate"
* status = #active
* code = #createddate
* base = #Patient
* type = #token
* expression = "Patient.createddate"
* description = "Search by patient's date of creation"

Instance: SearchParameter-ngimm-state
InstanceOf: SearchParameter
Title: "NG-Imm Search Patient by state"
Usage: #definition
* name = "state"
* status = #active
* code = #state
* base = #Patient
* type = #token
* expression = "Patient.state"
* description = "Search by patient's State of residence"

Instance: SearchParameter-ngimm-lga
InstanceOf: SearchParameter
Title: "NG-Imm Search by Patient lga of residence"
Usage: #definition
* name = "lga"
* status = #active
* code = #lga
* base = #Patient
* type = #token
* expression = "Patient.lga"
* description = "Search by patient LGA of residence"

Instance: SearchParameter-ngimm-immpatient
InstanceOf: SearchParameter
Title: "NG-Imm Search Immunization by patient"
Usage: #definition
* name = "immpatient"
* status = #active
* code = #immpatient
* base = #Immunization
* type = #token
* expression = "Immunization.patient"
* description = "Search Immunization records by patient"


Instance: SearchParameter-ngimm-immstatus
InstanceOf: SearchParameter
Title: "NG-Imm Search Immunization by status of immunization"
Usage: #definition
* name = "immstatus"
* status = #active
* code = #immstatus
* base = #Immunization
* type = #token
* expression = "Immunization.status"
* description = "Search Immunization records by status (eg. completed, or not done)"

Instance: SearchParameter-ngimm-immvaccinecode
InstanceOf: SearchParameter
Title: "NG-Imm Search Immunization by vaccine code"
Usage: #definition
* name = "immvaccinecode"
* status = #active
* code = #immvaccinecode
* base = #Immunization
* type = #token
* expression = "Immunization.vaccinecode"
* description = "Search Immunization records by vaccination code"



Instance: SearchParameter-ngimm-immdate
InstanceOf: SearchParameter
Title: "NG-Imm Search Immunization by date of vaccination"
Usage: #definition
* name = "immdate"
* status = #active
* code = #immdate
* base = #Immunization
* type = #token
* expression = "Immunization.date"
* description = "Search Immunization records by date of vaccination"


