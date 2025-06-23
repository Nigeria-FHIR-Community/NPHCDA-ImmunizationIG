
### Supported Search Parameters for Nigeria Immunization Patient Profile

This page outlines the supported FHIR [Search Parameters](https://www.hl7.org/fhir/search.html) for the [**NgImmPatient**](StructureDefinition-NgImmPatient.html) and [**NgImmImmunization**](StructureDefinition-NgImmImmunization.html) profiles in the Nigeria Immunization Implementation Guide. These parameters enable efficient querying of patient records in systems that implement this guide.

The listed search parameters are derived from standard FHIR-defined parameters, with custom additions where relevant to local immunization use cases in Nigeria.

---

#### List of Supported Search Parameters for Patient profile

| **Name**        | **Type** | **FHIR Path**            | **Description**                                                                 |
|----------------|----------|--------------------------|---------------------------------------------------------------------------------|
| `identifier`   | `token`  | `Patient.identifier`     | Search by patient’s unique identifier such as NIN or program ID.              |
| `firstname`         | `string` | `Patient.firstname`       | Search by patient’s given name.                                      |
| `lastname`         | `string` | `Patient.lastname`       | Search by patient’s family name.                                      |
| `birthdate`    | `date`   | `Patient.birthDate`      | Filter patients by date of birth. Format: YYYY-MM-DD.                          |
| `createdate`    | `createdate`   | `Patient.createDate`      | Filter patients by date of record creation. Format: YYYY-MM-DD.        |
| `gender`       | `token`  | `Patient.gender`         | Filter patients by sex (Male, Female). Bound to [**NGGenderVS**](ValueSet-nigeria-gender.html).                  |
| `address-state`| `string` | `Patient.address.state`  | Search by the state of residence. Bound to [**NGStatesVS**](ValueSet-nigeria-states.html).                       |
| `address-lgas` | `string` | `Patient.address.district` | Search by Local Government Area (LGA). Bound to [**NGLGAsVS**](ValueSet-nigeria-lgas.html). |

---

#### Examples of Use

##### 1. Search by Patient Identifier
```markdown
GET [base]/Patient?identifier=NIN35635556
```

##### 2. Search by FiName
```markdoown
GET [base]/Patient?name=Chukwu
```

##### 3. Search by Date of Birth
```markdown
GET [base]/Patient?birthdate=2022-07-15
```

##### 4. Search by State of Residence
```markdown
GET [base]/Patient?address-state=Benue
```



#### List of supported search for [NgImmImmunization](StructureDefinition-NgImmImmunization.html) Profile:

| **Name**        | **Type** | **FHIR Path**                 | **Description**                                                                 |
|----------------|----------|-------------------------------|---------------------------------------------------------------------------------|
| `patient`      | `reference` | `Immunization.patient`      | Search immunizations by the referenced patient.                                |
| `status`       | `token`  | `Immunization.status`         | Filter by immunization status (e.g., completed, not-done).                     |
| `vaccine-code` | `token`  | `Immunization.vaccineCode`    | Search by the administered vaccine code.                                       |
| `date`         | `date`   | `Immunization.occurrenceDateTime` | Filter by date of immunization event.                                     |

---

#### Notes
- All search parameters comply with FHIR R4 standards and SMART Guidelines principles.
- Custom value sets such as [**NGStatesVS**](ValueSet-nigeria-states.html), [**NGLGAsVS**](ValueSet-nigeria-lgas.html), and [**NGGenderVS**](ValueSet-nigeria-gender.html) are used to ensure consistency across systems.
- Implementers are encouraged to optimize server-side indexing for these fields to enable fast and scalable search.

---

For a complete list of FHIR search parameter types and modifiers, refer to the [FHIR Search documentation](https://www.hl7.org/fhir/search.html).



### Supported RESTful Operations for Nigeria Immunization Patient Profile

This page describes the RESTful interactions supported for systems implementing the [**NgImmPatient**](StructureDefinition-NgImmPatient.html) and [**NgImmImmunization**](StructureDefinition-NgImmImmunization.html) profiles, aligned with FHIR R4 and SMART Guidelines principles. These operations define how client systems (e.g., EMRs, registries, mobile apps) can interact with immunization-related patient data.

---

#### Overview of Supported RESTful Interactions

| **Operation** | **FHIR Verb** | **Description**                                                                 |
|---------------|---------------|---------------------------------------------------------------------------------|
| `Read`        | `GET [base]/Patient/{id}` | Retrieve a specific immunization client record by logical ID.              |
| `Search`      | `GET [base]/Patient?[parameters]` | Query patient records using defined search parameters.                |
| `Create`      | `POST [base]/Patient` | Register a new immunization client (create a new Patient resource).         |
| `Update`      | `PUT [base]/Patient/{id}` | Update an existing patient record.                                           |
| `Patch`       | _(optional)_ | Apply partial updates to a patient record. _(Not required by default)_       |
| `Delete`      | _(not supported)_ | Deletion is not recommended for immunization clients (use status flags instead). |

---

#### Examples of Use

##### 1. Read Patient by ID
```markdown
GET /Patient/12345
```

##### 2. Search for Patient by Identifier
```markdown
GET /Patient?identifier=NIN12345678
```

##### 3. Create New Patient Record

```markdown
POST /Patient
Content-Type: application/fhir+json
```


```json
{
  "resourceType": "Patient",
  "identifier": [
    {
      "system": "https://nimc.gov.ng",
      "value": "NIN12345678"
    }
  ],
  "name": [
    {
      "family": "Okonkwo",
      "given": ["Adaeze"]
    }
  ],
  "gender": "female",
  "birthDate": "2022-04-15",
  ...
}
```
##### 4. Update an Existing Record

```markdown
PUT /Patient/12345
Content-Type: application/fhir+json
```

```json
{
  "resourceType": "Patient",
  "id": "12345",
  ...
}
```

##### ⚠️ Important Implementation Notes

All create and update operations must conform to the [**NgImmPatient**](StructureDefinition-NgImmPatient.html) and [**NgImmImmunization**](StructureDefinition-NgImmImmunization.html) profiles.
Use validation tools to ensure submitted resources are profile-conformant.
Delete operation is disabled to avoid accidental removal of patient records; use status or metadata flags if deactivation is needed.
All RESTful interactions must be secured and comply with Nigeria’s health data protection policies.