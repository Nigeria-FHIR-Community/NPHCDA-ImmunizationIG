Instance: practitionerrole-001
InstanceOf: NgImmPractitionerRole
Title: "Example NG-Imm PractitionerRole"
Description: "A Routine Immunization Officer role linking a practitioner to a primary health centre in Lagos."
* id = "practitionerrole-001"

// ---- Practitioner linked to this role ----
* practitioner = Reference(practitioner-001) // e.g., Nkiru Okafor

// ---- Organization ----
* organization = Reference(organization-001) // e.g., Surulere PHC, Lagos

// ---- Role code ----
* code[0].text = "Routine Immunization Officer"

// ---- Period of service ----
* period.start = "2022-01-01"
* period.end   = "2025-12-31"

// ---- Location(s) where role is carried out ----
* location[0] = Reference(location-001) // e.g., Surulere PHC, Lagos

// ---- Healthcare Services ----
* healthcareService[0].display = "1. Childhood Routine Immunization Services 2. AEFI Surveillance & Reporting"
