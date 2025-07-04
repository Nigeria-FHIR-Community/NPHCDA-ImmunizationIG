Instance: ValidateNgImmBundle
InstanceOf: OperationDefinition
Title: "$validate-ngimm-bundle"
Description: "Validates a submitted NgImmBundle against the NG-Imm profiles."
Usage: #definition
* name = "ValidateNgImmBundle"
* status = #active
* kind = #operation
* code = #validate-ngimm-bundle
* resource[0] = #Bundle
* system = false
* type = true
* instance = true
* parameter[0].name = #bundle
* parameter[0].use = #in
* parameter[0].type = #Bundle
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[1].name = #outcome
* parameter[1].use = #out
* parameter[1].type = #OperationOutcome


Instance: SubmitNgImmBundle
InstanceOf: OperationDefinition
Title: "$submit-ngimm-bundle"
Description: "Submits a validated NgImmBundle to the national immunization registry."
Usage: #definition
* name = "SubmitNgImmBundle"
* status = #active
* kind = #operation
* code = #submit-ngimm-bundle
* resource[0] = #Bundle
* type = true
* instance = false
* parameter[0].name = #bundle
* parameter[0].use = #in
* parameter[0].type = #Bundle
* parameter[0].min = 0
* parameter[0].max = "1"


Instance: ExportNgImmBundle
InstanceOf: OperationDefinition
Title: "$export-ngimm-bundle"
Description: "Exports immunization bundles for a specified organization, district, or time window."
Usage: #definition
* name = "ExportNgImmBundle"
* status = #active
* kind = #operation
* code = #export-ngimm-bundle
* resource[0] = #Bundle
* type = true
* instance = false
* parameter[0].name = #organization
* parameter[0].use = #in
* parameter[0].type = #Reference
* parameter[1].name = #since
* parameter[1].use = #in
* parameter[1].type = #dateTime
* parameter[2].name = #bundle
* parameter[2].use = #out
* parameter[2].type = #Bundle


Instance: GetPatientHistory
InstanceOf: OperationDefinition
Title: "$get-patient-history"
Description: "Retrieve immunization history bundles for a patient by identifier or reference."
Usage: #definition
* name = "GetPatientHistory"
* status = #active
* kind = #operation
* code = #get-patient-history
* resource[0] = #Bundle
* type = false
* instance = false
* parameter[0].name = #identifier
* parameter[0].use = #in
* parameter[0].type = #token
* parameter[1].name = #bundle
* parameter[1].use = #out
* parameter[1].type = #Bundle


Instance: SyncNgImmBundle
InstanceOf: OperationDefinition
Title: "$sync-ngimm-bundle"
Description: "Return all NgImmBundles modified since a given timestamp for synchronization."
Usage: #definition
* name = "SyncNgImmBundle"
* status = #active
* kind = #operation
* code = #sync-ngimm-bundle
* resource[0] = #Bundle
* type = true
* instance = false
* parameter[0].name = #since
* parameter[0].use = #in
* parameter[0].type = #dateTime
* parameter[1].name = #bundle
* parameter[1].use = #out
* parameter[1].type = #Bundle


Instance: EvaluateCompleteness
InstanceOf: OperationDefinition
Title: "$evaluate-completeness"
Description: "Evaluates whether a submitted NgImmBundle is complete according to Must Support constraints."
Usage: #definition
* name = "EvaluateCompleteness"
* status = #active
* kind = #operation
* code = #evaluate-completeness
* resource[0] = #Bundle
* type = true
* instance = false
* parameter[0].name = #bundle
* parameter[0].use = #in
* parameter[0].type = #Bundle
* parameter[1].name = #report
* parameter[1].use = #out
* parameter[1].type = #OperationOutcome


Instance: ResolveConflicts
InstanceOf: OperationDefinition
Title: "$resolve-conflicts"
Description: "Identifies and resolves duplicate NgImmBundles for the same patient"
Usage: #definition
* name = "ResolveConflicts"
* status = #active
* kind = #operation
* code = #resolve-conflicts
* resource[0] = #Bundle
* type = false
* instance = false
* parameter[0].name = #patient
* parameter[0].use = #in
* parameter[0].type = #Reference
* parameter[1].name = #strategy
* parameter[1].use = #in
* parameter[1].type = #code
* parameter[2].name = #resolutionReport
* parameter[2].use = #out
* parameter[2].type = #OperationOutcome


Instance: GenerateImmunizationSummary
InstanceOf: OperationDefinition
Title: "$generate-summary"
Description: "Generates a human-readable summary of the immunization bundle for display or printing"
Usage: #definition
* name = "GenerateImmunizationSummary"
* status = #active
* kind = #operation
* code = #generate-summary
* resource[0] = #Bundle
* type = true
* instance = true
* parameter[0].name = #summary
* parameter[0].use = #out
* parameter[0].type = #string


Instance: GetNextDoseSchedule
InstanceOf: OperationDefinition
Title: "$get-next-dose-schedule"
Description: "Returns the next dose date for a patient based on Immunization.protocolApplied.nextDoseDate"
Usage: #definition
* name = "GetNextDoseSchedule"
* status = #active
* kind = #operation
* code = #get-next-dose-schedule
* resource[0] = #Bundle
* type = true
* instance = true
* parameter[0].name = #nextDoseDate
* parameter[0].use = #out
* parameter[0].type = #dateTime


Instance: RemoveObsoleteBundles
InstanceOf: OperationDefinition
Title: "$remove-obsolete-bundles"
Description: "flags immunization bundles where the patient record is inactive and older than 24 months. (simulate delete)"
Usage: #definition
* name = "RemoveObsoleteBundles"
* status = #active
* kind = #operation
* code = #remove-obsolete-bundles
* resource[0] = #Bundle
* type = false
* instance = false
* parameter[0].name = #cutoffDate
* parameter[0].use = #in
* parameter[0].type = #date
* parameter[1].name = #removedCount
* parameter[1].use = #out
* parameter[1].type = #integer
