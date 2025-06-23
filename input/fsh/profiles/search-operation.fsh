Instance: SearchParameter-ngimm-identifier
InstanceOf: SearchParameter
Title: "Search by Patient Identifier"
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
Title: "Search by Patient firstname"
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
Title: "Search by Patient lastname"
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
Title: "Search by Patient birth date"
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
Title: "Search by Patient gender"
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
Title: "Search by Patient created date"
Usage: #definition
* name = "createddate"
* status = #active
* code = #createddate
* base = #Patient
* type = #token
* expression = "Patient.createddate"
* description = "Search by patient created date"

Instance: SearchParameter-ngimm-state
InstanceOf: SearchParameter
Title: "Search by Patient state of residence"
Usage: #definition
* name = "state"
* status = #active
* code = #state
* base = #Patient
* type = #token
* expression = "Patient.state"
* description = "Search by patient State of residence"

Instance: SearchParameter-ngimm-lga
InstanceOf: SearchParameter
Title: "Search by Patient lga of residence"
Usage: #definition
* name = "lga"
* status = #active
* code = #lga
* base = #Patient
* type = #token
* expression = "Patient.lga"
* description = "Search by patient LGA of residence"