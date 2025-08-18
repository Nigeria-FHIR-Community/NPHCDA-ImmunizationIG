
Profile: NgImmMeasure
Parent: Measure
Id: ngimm-measure
Title: "NG-Imm Measure"
Description: "A profile on the Measure resource used to define immunization indicators within Nigeria's routine immunization program."

* identifier 1..1 MS
* identifier.value 1..1
* identifier.value ^short = "A unique identifier for the indicator definition (e.g. dropout-rate, bcg-coverage)."
* status 1..1 MS
* status ^short = "Indicates the status of the measure (e.g., draft, active, retired)."
* name 1..1 MS
* name ^short = "A machine-friendly name for the measure (e.g., DropoutRate)."
* title 1..1 MS
* title ^short = "A human-readable title for the measure (e.g., 'Penta1 to Measles Dropout Rate')."
* description 1..1 MS
* description ^short = "Detailed description of what this measure represents."
* purpose 0..1 MS
* purpose ^short = "Explains the reason this measure exists and what it is intended to support."
* topic 0..1 MS
* topic ^short = "A code or text indicating the domain/topic of the measure (e.g., Immunization Coverage)."
* scoring 1..1 MS
* scoring ^short = "How the measure is scored (e.g., proportion, ratio, continuous-variable)."
* improvementNotation 0..1 MS
* improvementNotation ^short = "Indicates whether an increase or decrease in the score is desirable."
* date 1..1 MS
* date ^short = "The date this measure profile or version was published."
* publisher 0..1 MS
* publisher ^short = "The organization or person responsible for publishing the measure."


* group 0..10 MS
* group.population 0..10 MS
* group.population.code 0..1
* group.population.code ^short = "The type of population for the measure (e.g., numerator, denominator, initial-population)."
* group.population.description 0..1 MS
* group.population.description ^short = "Description of the population involved in the indicator."
* group.population.criteria 1..1 MS
* group.population.criteria ^short = "Description of the population involved in the indicator."


* library 0..1 MS
* library ^short = "Reference to the logic library (e.g., CQL or ELM) defining computation rules for the measure."

