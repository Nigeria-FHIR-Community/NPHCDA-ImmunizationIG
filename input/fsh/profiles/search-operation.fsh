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

Instance: SearchParameter-ngimm-telecom
InstanceOf: SearchParameter
Title: "NG-Imm Search patient by phone or email"
Usage: #definition
* name = "telecom"
* status = #active
* code = #telecom
* base = #Patient
* type = #token
* expression = "Patient.telecom"
* description = "Search patient record by phone number or email address"


Instance: SearchParameter-ngimm-createddate
InstanceOf: SearchParameter
Title: "NG-Imm Search Patient by date of creation or update"
Usage: #definition

* name = "createddate"
* status = #active
* code = #createddate
* base = #Patient
* type = #date
* expression = "Patient.meta.lastUpdated"
* description = "Search by patient's creation or last updated date (range supported)"



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
Title: "NG-Imm Search by Patient LGA"
Usage: #definition
* name = "lga"
* status = #active
* code = #district
* base = #Patient
* type = #token
* expression = "Patient.district"
* description = "Search by patient LGA of residence"

Instance: SearchParameter-ngimm-city
InstanceOf: SearchParameter
Title: "NG-Imm Search Patient by city"
Usage: #definition
* name = "city"
* status = #active
* code = #city
* base = #Patient
* type = #token
* expression = "Patient.city"
* description = "Search patient records by city, town or settlement"

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
Title: "NG-Imm Search Immunization by immunization status"
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


Instance: NgImmBundleSearchByBirthDate
InstanceOf: SearchParameter
Title: "NG-Imm Search Bundle by Patient BirthDate"
Description: "Retrieve bundles where the Patient has a specific birth date"
Usage: #definition
* name = "searchBundleByPatientBirthDate"
* status = #active
* description = "Search for a bundle based on Patient.birthDate"
* code = #patient-birthdate
* base = #Bundle
* type = #date
* expression = "Bundle.entry.resource.ofType(Patient).birthDate"

Instance: NgImmBundleSearchByPatientIdentifier
InstanceOf: SearchParameter
Title: "NG-Imm Search Bundle by Patient Identifier"
Description: "Allows search of NgImmBundle resources where the embedded Patient has a specific identifier (e.g., NIN)"
Usage: #definition
* name = "searchBundleByPatientIdentifier"
* status = #active
* description = "Search for a bundle containing a patient with a specific identifier"
* code = #patient.identifier
* base = #Bundle
* type = #token
* expression = "Bundle.entry.resource.ofType(Patient).identifier"
* xpathUsage = #normal


Instance: NgImmBundleSearchByVaccineCode
InstanceOf: SearchParameter
Title: "NG-Imm Search Bundle by Vaccine Code"
Description: "Searches bundles containing a specific vaccine code in Immunization"
Usage: #definition
* name = "searchBundleByVaccineCode"
* status = #active
* description = "Search for a bundle containing Immunization resource with specified vaccineCode"
* code = #vaccine-code
* base = #Bundle
* type = #token
* expression = "Bundle.entry.resource.ofType(Immunization).vaccineCode"

Instance: NgImmBundleSearchByState
InstanceOf: SearchParameter
Title: "NG-Imm Search Bundle by Patient State"
Description: "Retrieve bundles where the Patient resides in a specific Nigerian State"
Usage: #definition
* name = "searchBundleByPatientState"
* status = #active
* description = "Search for a bundle based on Patient address.state"
* code = #patient-address-state
* base = #Bundle
* type = #token
* expression = "Bundle.entry.resource.ofType(Patient).address.state"

Instance: NgImmBundleSearchByFacilityIdentifier
InstanceOf: SearchParameter
Title: "NG-Imm Search Bundle by Organization Identifier"
Description: "Retrieve bundles that reference a specific healthcare organization/facility"
Usage: #definition
* name = "searchBundleByOrganizationIdentifier"
* status = #active
* description = "Search for a bundle based on Organization.identifier"
* code = #organization-identifier
* base = #Bundle
* type = #token
* expression = "Bundle.entry.resource.ofType(Organization).identifier"


Instance: NgImmBundleSearchByLastUpdated
InstanceOf: SearchParameter
Title: "NG-Imm Search Bundle by Last Updated Date"
Description: "Retrieve bundles based on last updated timestamp"
Usage: #definition
* name = "searchBundleByLastUpdated"
* status = #active
* description = "Search for bundles that were last updated on or after a given date"
* code = #_lastUpdated
* base = #Bundle
* type = #date
* expression = "Bundle.meta.lastUpdated"
