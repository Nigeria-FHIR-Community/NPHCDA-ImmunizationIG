Instance: practitionerrole-003
InstanceOf: NgImmPractitionerRole
Title: "Example NG-Imm PractitionerRole (Midwife, Enugu)"
Description: "A Midwife role linking a licensed midwife to a public teaching hospital in Enugu State, providing maternal and child health immunization services."
* id = "practitionerrole-003"

// ---- Practitioner linked to this role ----
* practitioner = Reference(practitioner-003) 
  // Chinelo Eze, Midwife

// ---- Organization ----
* organization = Reference(organization-002) 
  // Enugu State University Teaching Hospital

// ---- Role code ----
* code[0].text = "Midwife - Maternal & Child Health Immunization"

// ---- Period of service ----
* period.start = "2020-01-01"
* period.end   = "2024-12-31"

// ---- Location(s) where role is carried out ----
* location[0] = Reference(location-003) 
  // ESUTH Immunization Unit

// ---- Healthcare Services ----
* healthcareService[0].display = "1. Maternal Tetanus Immunization, 2. Newborn and Infant Routine Immunization, 3. Maternal & Child Health Education"

