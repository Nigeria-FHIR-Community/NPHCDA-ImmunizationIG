Profile: NEIRDefaulterTracingRequest
Parent: ServiceRequest
Description: "Service Request for defaulter tracing"

* identifier 0..1
* basedOn 
* status MS
* category 1..1 MS
* category from NEIRServiceRequestVS
* category ^short = "Category of the request e.g Defaulter Tracing | Laboratory procedure | Imaging | Counselling | Education |Surgical procedure"
* priority
* subject MS
* subject.display 1..1
* subject.reference 1..1
* authoredOn MS
* requester MS
* requester.display 1..1
* requester.reference 1..1

Instance: service-request-example
InstanceOf: ServiceRequest
Usage: #example 
Description: "An example of a service request"
* status = #active
* intent = #order
* subject = Reference(Patient/patient-example)


Instance: neir-defaulter-tracing-request-example
InstanceOf: NEIRDefaulterTracingRequest
Usage: #example 
Description: "An example of a defaulter tracing request"
* identifier.system = "https://nigerian.org/fhir/serviceRequest"
* identifier.use = #official
* identifier.value = "123456"
* basedOn = Reference(ServiceRequest/service-request-example)
* status = #active
* intent = #order
* category = #NGR-001
* priority = #routine
* subject.display = "John Doe"
* subject = Reference(Patient/patient-example)
* authoredOn = "2025-03-13"
* requester.display = "John Doe"
* requester = Reference(Practitioner/practitioner-example)
