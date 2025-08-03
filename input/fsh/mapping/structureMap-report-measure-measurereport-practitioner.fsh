Instance: reportgeneration-to-measurereport
InstanceOf: StructureMap
Usage: #definition
Title: "StructureMap: ReportGeneration to MeasureReport and Related Profiles"
Description: "Map ReportGeneration logical model to NgImmMeasureReport, NgImmMeasure, and NgImmPractitioner"
* id = "reportgeneration-to-measurereport"
* url = "https://nphcda.gov.ng/immunizationIG/StructureMap/reportgeneration-to-measurereport"
* name = "ReportGenerationToMeasureReport"
* status = #active

// Structures
* structure[0].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/reportgeneration"
* structure[0].mode = #source
* structure[0].alias = "RG"

* structure[1].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ngimm-measurereport"
* structure[1].mode = #target
* structure[1].alias = "MR"

* structure[2].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ngimm-measure"
* structure[2].mode = #target
* structure[2].alias = "MEASURE"

* structure[3].url = "https://nphcda.gov.ng/immunizationIG/StructureDefinition/ng-imm-practitioner"
* structure[3].mode = #target
* structure[3].alias = "PRAC"

//Group: reportGenerationToMeasureReport

* group[+].name = "reportGenerationToMeasureReport"
* group[=].typeMode = #none
* group[=].input[0].name = "RG"
* group[=].input[0].mode = #source
* group[=].input[1].name = "MR"
* group[=].input[1].mode = #target

* group[=].rule[+].name = "reportId"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "reportId"
* group[=].rule[=].target.context = "MR"
* group[=].rule[=].target.element = "identifier.value"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "reportDate"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "generationDate"
* group[=].rule[=].target.context = "MR"
* group[=].rule[=].target.element = "date"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "reportingPeriod"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "reportingStart"
* group[=].rule[=].target.context = "MR"
* group[=].rule[=].target.element = "period.start"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "reportingPeriodEnd"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "reportingEnd"
* group[=].rule[=].target.context = "MR"
* group[=].rule[=].target.element = "period.end"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "measureScore"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "calculatedValue"
* group[=].rule[=].target.context = "MR"
* group[=].rule[=].target.element = "group[0].measureScore.value"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "unit"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "calculatedUnit"
* group[=].rule[=].target.context = "MR"
* group[=].rule[=].target.element = "group[0].measureScore.unit"
* group[=].rule[=].target.transform = #copy


// Group: reportGenerationToMeasure
* group[+].name = "reportGenerationToMeasure"
* group[=].typeMode = #none
* group[=].input[0].name = "RG"
* group[=].input[0].mode = #source
* group[=].input[1].name = "MEASURE"
* group[=].input[1].mode = #target

* group[=].rule[+].name = "indicatorCode"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "indicatorId"
* group[=].rule[=].target.context = "MEASURE"
* group[=].rule[=].target.element = "identifier.value"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "indicatorName"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "indicatorName"
* group[=].rule[=].target.context = "MEASURE"
* group[=].rule[=].target.element = "name"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "indicatorTitle"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "indicatorTitle"
* group[=].rule[=].target.context = "MEASURE"
* group[=].rule[=].target.element = "title"
* group[=].rule[=].target.transform = #copy


// Group: reportGenerationToPractitioner
* group[+].name = "reportGenerationToPractitioner"
* group[=].typeMode = #none
* group[=].input[0].name = "RG"
* group[=].input[0].mode = #source
* group[=].input[1].name = "PRAC"
* group[=].input[1].mode = #target

* group[=].rule[+].name = "reporterId"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "reporterId"
* group[=].rule[=].target.context = "PRAC"
* group[=].rule[=].target.element = "identifier.value"
* group[=].rule[=].target.transform = #copy

* group[=].rule[+].name = "reporterName"
* group[=].rule[=].source.context = "RG"
* group[=].rule[=].source.element = "reporterName"
* group[=].rule[=].target.context = "PRAC"
* group[=].rule[=].target.element = "name[0].text"
* group[=].rule[=].target.transform = #copy
