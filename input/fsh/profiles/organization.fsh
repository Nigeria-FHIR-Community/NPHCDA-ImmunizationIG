Profile: NgImmOrganization
Parent: Organization
Id: ng-imm-organization 
Title: "NG-Imm Organization"
Description: "An organization profile representing healthcare facilities responsible for immunization services or other types of organizations."


* identifier 1..* MS
* identifier.system 1..1
* identifier.system ^short = "The facility type regulator or identifity provider if not health facility (E.g. HERFAMA in Lagos State)"
* identifier.value 1..1
* identifier.value ^short = "The facility or organization uniqe identifier"
* active 1..1 MS
* active ^short = "Boolean to indicate if institution is active or inactive"
* name 1..1 MS
* name ^short = "The name of the organization or health facility"
* type 1..*
* type from NGFacilityTypeVS (extensible)
* type ^short = "The type of the organization or health facility"
* telecom 0..*
* telecom.system 1..1
* telecom.system ^short = "The organization type of contact detail"
* telecom.value 1..1
* telecom.value ^short = "The organization contact detail"
* partOf only Reference(NgImmOrganization)
* partOf ^short = "The Organization which this organization forms a part"

* address 1..* MS
* address.line 1..*
* address.line ^short = "The organization contact address line"
* address.city 1..1
* address.city ^short = "The organization contact address city, town or settlement"
* address.district from NGLGAsVS
* address.district ^short = "The organization contact address LGA"
* address.state from NGStatesVS
* address.state ^short = "The organization contact address state"

* extension contains NGOrganizationOwner named NGOrganizationOwner 0..1 MS


// Hide these
* telecom.use 0..0


