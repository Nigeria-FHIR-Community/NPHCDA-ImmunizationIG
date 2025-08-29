// ============================================================
// Profile: Register Facility Bundle (NG-IMM)
// ============================================================
Profile: NgImmRegisterFacilityBundle
Parent: Bundle
Id: ngimm-register-facility-bundle
Title: "IMMZ.A Bundle Register Facility"
Description: """
Transaction Bundle used to register a facility and its core context:
Organization (owner), Location (service point), Practitioner (staff),
and PractitionerRole (linking staff to org/location and services).
"""

// Bundle type
* type 1..1
* type = #transaction
* timestamp 0..1
* entry 0..* MS

// Slice entries by contained resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    organization     0..1 MS and
    location         0..1 MS and
    practitioner     0..1 MS and
    practitionerrole 0..1 MS

// ---- Organization ----
* entry[organization].resource only NgImmOrganization
* entry[organization].request.method = #POST
* entry[organization].request.url = "Organization" (exactly)

// ---- Location ----
* entry[location].resource only NgImmLocation
* entry[location].request.method = #POST
* entry[location].request.url = "Location" (exactly)

// ---- Practitioner ----
* entry[practitioner].resource only NgImmPractitioner
* entry[practitioner].request.method = #POST
* entry[practitioner].request.url = "Practitioner" (exactly)

// ---- PractitionerRole ----
* entry[practitionerrole].resource only NgImmPractitionerRole
* entry[practitionerrole].request.method = #POST
* entry[practitionerrole].request.url = "PractitionerRole" (exactly)







