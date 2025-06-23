Profile: NgImmOrganization
Parent: Organization
Id: ng-imm-organization 
Description: "An organization profile representing healthcare facilities responsible for immunization services or other types of organizations."


* identifier 1..* MS
* identifier.system 1..1
* identifier.system ^short = "The facility type regulator or identifity provider if not health facility"
* identifier.value 1..1
* identifier.value ^short = "The facility or organization uniqe identifier"
* active 1..1 MS
* active ^short = "Boolean to indicate if institution is active or inactive"
* name 1..1 MS
* name ^short = "The name of the organization or health facility"
* type 1..*
* type from NGFacilityTypeVS (required)
* type ^short = "The type of the organization or health facility"
* telecom 0..*
* telecom.system 1..1
* telecom.system ^short = "The organization type of contact detail"
* telecom.value 1..1
* telecom.value ^short = "The organization contact detail"

* address 1..* MS
* address.line 1..*
* address.line ^short = "The organization contact address line"
* address.city 1..1
* address.city ^short = "The organization contact address city"
* address.state 1..1
* address.state ^short = "The organization contact address state"




// Hide these
* telecom.use 0..0


