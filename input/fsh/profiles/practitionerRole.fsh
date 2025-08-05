Profile: NgImmPractitionerRole
Parent: PractitionerRole
Id: ng-imm-practitionerrole
Title: "NG-Imm PractitionerRole"
Description: """
Defines the role(s) of a Nigerian healthcare practitioner in the immunization context.
Links a Practitioner to an Organization, specifies their role, contact details, 
and periods of service, with constraints to support the Nigeria Immunization IG.
"""

* practitioner 1..1 MS
* practitioner only Reference(NgImmPractitioner)
* practitioner ^short = "Practitioner linked to this role"
* practitioner ^definition = "Reference to the Nigerian healthcare practitioner holding this role."

* organization 1..1 MS
* organization only Reference(NgImmOrganization)
* organization ^short = "Organization the practitioner is associated with"
* organization ^definition = "The health facility, agency, or organization in which the practitioner works."

* code 1..* MS
* code ^short = "Roles of the practitioner"
* code ^definition = "Describes the functional roles (e.g., Routine Immunization Officer, AEFI Surveillance Officer)."
* code.text 1..1
* code.text ^short = "Plain text description of role"
* code.text ^definition = "The common-language label for the role."


* period 0..1 MS
* period ^short = "Period during which the practitioner is performing this role"
* period ^definition = "The time interval this practitioner has or had this role."

* location 0..* MS
* location only Reference(Location)
* location ^short = "Locations where the practitioner role is performed"
* location ^definition = "Physical or service delivery locations where this role is carried out."

* healthcareService 0..* MS
* healthcareService ^short = "Services provided"
* healthcareService ^definition = "Types of immunization or related health services delivered in this role."


// Hide data elements not needed
* availableTime 0..0
* notAvailable 0..0
