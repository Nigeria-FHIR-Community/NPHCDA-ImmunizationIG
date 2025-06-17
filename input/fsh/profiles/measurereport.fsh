Profile: NgImmMeasureReport
Parent: MeasureReport
Id: measure-report-profile 
Description: "Nigeria Immunization Measure Report Profile"


* identifier.value 1..1 MS
* identifier.value ^short = "A unique identifier for the instance of the report that has been generated"

* status 1..1 MS
* status ^short = "The status of the report (e.g, initial, complete, etc)"

* type 1..1 MS
* type ^short = "The type of report which has been generated (i.e. is the report a list of individuals, a summary, etc)"

//* measure 1..1 MS
//* measure ^short = "The indicator or measure definition which is being reported on (for example: Dropout rate, defaulters, etc)"

* date 1..1 MS
* date ^short = "The date and time on which the report was generated"

* reporter only Reference(Practitioner or Location or Organization)
* reporter ^short = "Indicates the organization, or location which is generating or producing the report"

* period 1..1 MS
* period.start 1..1 
* period.start ^short = "The start date of the reporting period for which data in the report has been included"
* period.end 1..1 
* period.end ^short = "The end date of the reporting period for which data in the report has been included"

* group.measureScore 0..1 MS
* group.measureScore.value 0..1 
* group.measureScore.value ^short = "The calculated score of the measure / indicator which is being reported on"
* group.measureScore.unit  0..1 
* group.measureScore.unit ^short = "The unit of  calculated score of the measure / indicator which is being reported on"
 