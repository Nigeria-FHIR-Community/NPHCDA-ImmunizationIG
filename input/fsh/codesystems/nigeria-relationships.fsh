
CodeSystem: NGRelationshipsCS
Id: nigeria-relationship
Title: "NG-Imm Relationships CS"
Description: "This CodeSystem defines list of persons related to a patient, but who is not a direct target of care"
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-relationship"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"

// The different relationships used in the IG

* #BROTHER	"Brother"
* #SISTER	"Sister"
* #SON	"Son"
* #DAUGHTER	"Daughter"
* #MOTHER	"Mother"
* #FATHER	"Father"
* #AUNT	"Aunt"
* #COUNSN	"Cousin"
* #GRDSON	"Grand Son"
* #GRDDAU "Grand Daughter"
* #INLAW "Inlaw"
* #NEPHEW "Nephew"
* #NIECE "Niece"
* #UNCLE "Uncle"
* #FRND "Friend"