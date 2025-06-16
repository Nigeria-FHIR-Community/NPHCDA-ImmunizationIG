# Administrative Gender Value Set

This value set defines a standard set of administrative genders used in person-related records and transactions.

The **Administrative Gender** code system supports a minimal but practical set of gender categories relevant for most administrative and clinical systems.

---

## Value Set: Administrative Gender

**Canonical URL**: `http://ng-fhir-community.com.ng/fhir/ValueSet/administrative-gender`  
**Status**: active  
**Definition**: The gender of a person used for administrative purposes (not for clinical diagnosis).

---

## Included Codes

| Code | Display | Definition |
|------|---------|------------|
| `male` | Male | Male gender |
| `female` | Female | Female gender |
| `unknown` | Unknown | The gender is unknown or not stated |

> **Note**: These values align with HL7 and ISO recommendations for basic gender classification in health systems.

---

## Usage Notes

This value set is typically used in:

- **Patient.gender**
- **RelatedPerson.gender**
- **Practitioner.gender**
- Any other demographic context where a system must indicate a person’s administrative gender

It is **not intended** to capture gender identity or clinical sex characteristics. For clinical use cases involving sex assigned at birth, gender identity, or intersex conditions, additional value sets or extensions should be considered.

---

## Source & License

Based on the HL7 FHIR [AdministrativeGender](http://hl7.org/fhir/valueset-administrative-gender.html) value set.  
This version is locally maintained for use within the application and aligns with the base FHIR specification.

