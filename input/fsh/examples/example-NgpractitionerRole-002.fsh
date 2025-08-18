Instance: practitionerrole-002
InstanceOf: NgImmPractitionerRole
Title: "Example NG-Imm PractitionerRole (AEFI Surveillance Officer)"
Description: "An AEFI Surveillance Officer role linking a CHEW to a public health facility in Kano State."
* id = "practitionerrole-002"

// ---- Practitioner linked to this role ----
* practitioner = Reference(NgImmPractitioner/practitioner-002) 
  // Musa Abdullahi, CHEW in Kano

// ---- Organization ----
* organization = Reference(NgImmOrganization/organization-003) 
  // e.g., Gwale PHC, Kano

// ---- Role code ----
* code[0].text = "AEFI Surveillance Officer"

// ---- Period of service ----
* period.start = "2023-05-01"

// ---- Location(s) where role is carried out ----
* location[0] = Reference(NgImmLocation/location-002) 
  // Gwale PHC, Kano

// ---- Healthcare Services ----
* healthcareService[0].display = "1. AEFI Case Detection and Reporting, 2. Community Health Education on Vaccine Safety"

