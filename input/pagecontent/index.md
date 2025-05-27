# Nigeria Immunization FHIR Implementation Guide (IG)

#### Revision History

<table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
            <th>Name</th>
            <th>Date</th>
            <th>Reason For Changes</th>
            <th>Version</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Nigeria Primary Healthcare Development Agency</td>
            <td>27th May 2025</td>
            <td>Initial Draft</td>
            <td>1.1</td>
        </tr>
    </tbody>
</table>

### Purpose

This Nigeria Immunization FHIR Implementation Guide (IG) is designed to support the country's adoption of the WHO SMART Guidelines for Immunization by developing a Digital Adaptation Kit (DAK) that aligns with both national and global immunization strategies.

This initiative aims to strengthen immunization data management, enhance interoperability, and improve data-driven decision-making by developing standardized, contextually relevant digital solutions. As part of this effort, the IG ensures that the Electronic Immunization Registry (EIR) is interoperable, scalable, and aligned with global health data exchange standards, particularly leveraging FHIR (Fast Healthcare Interoperability Resources) to facilitate seamless data sharing across systems.

### Background

Immunization is one of the most cost-effective public health interventions, yet many countries, including Nigeria, face challenges in achieving full vaccine coverage. Digital tools and data management systems are being integrated into immunization programs to improve efficiency, accuracy, and accessibility. However, the successful adoption and scaling of these systems require solutions that are country-driven, user-friendly, reliable, and contextually relevant.

The WHO SMART Guidelines provide a standardized framework for developing and implementing interoperable, evidence-based, and scalable digital health solutions. This is particularly crucial for immunization, where timely and accurate data supports vaccine coverage tracking, identification of zero-dose children, and equitable service delivery. A key component of this approach is the Digital Adaptation Kit (DAK), which includes health interventions, workflows, core data elements, decision support logic, and other technical components necessary for effective immunization service management.

Nigeria has faced challenges such as data quality issues, fragmented systems, and disparities in access to immunization services. To address these, the country is aligning with the SMART Guidelines methodology and national health strategies like the National Immunization Strategy (NIS) and Immunization Agenda 2030 (IA2030). This initiative aims to enhance data interoperability, decision-making, and service delivery through the adoption of FHIR-based digital systems.

A User Requirement Gathering (URG) process is critical in developing Nigeria’s Immunization DAK. This process ensures that the digital immunization system is effective, adaptable, and user-friendly by engaging key stakeholders—health workers, program managers, and data specialists—to define essential system functionalities.

This FHIR Implementation Guide (IG) serves as a blueprint for Nigeria’s interoperable, scalable, and standardized immunization data system, ensuring seamless integration with national and global health initiatives.

###  Scope of the FHIR IG

This section defines how different systems interact within Nigeria’s immunization ecosystem, ensuring seamless data exchange, interoperability, and alignment with national and global health standards.


### Interaction Between Systems (To be Reviewed)

#### Description of System Interactions
 
The Nigeria Immunization FHIR Implementation Guide (IG) establishes the technical framework for data exchange between key immunization-related systems. These interactions ensure  seamless interoperability, accurate data capture, and improved decision-making in Nigeria's immunization ecosystem.
    
#### Key Systems and Their Roles

<section>

   <p> Electronic Immunization Registries (EIRs) </p>
        <ul>
            <li>Capture and store vaccination records for individuals.</li>
            <li>Interact with health facility systems and national immunization databases.</li>
        </ul>
    <p>Health Facility Information Systems (HFIS)</p>   
         <ul>
            <li>Record patient encounters and immunization services provided.</li>
            <li>Share immunization event data with EIRs and decision-support systems.</li>
        </ul>
    <p>Electronic Immunization Registries (EIRs)</p>   
         <ul>
            <li>Capture and store vaccination records for individuals.</li>
            <li>Interact with health facility systems and national immunization databases.</li>
        </ul>
    <p>Logistics Management Information Systems (LMIS)</p>   
         <ul>
            <li>Track vaccine supply, distribution, and cold chain status.</li>
            <li>Share stock levels and replenishment requests with EIRs and health facilities.</li>
        </ul> 
     <p>National Health Information Systems (NHIS) & DHIS2</p>   
         <ul>
            <li>Aggregate immunization data for reporting and policy decision-making.</li>
            <li>Interact with EIRs for real-time immunization coverage monitoring.</li>
        </ul> 
     <p>Civil Registration & Vital Statistics (CRVS)</p>   
         <ul>
            <li>Exchange birth and death records to support vaccination planning.</li>
        </ul>
     <p> Decision Support & Analytics Platforms</p>   
         <ul>
            <li>Provide alerts, reminders, and dashboards for vaccination tracking.</li>
            <li>Integrate with AI-driven insights to identify zero-dose children </li>
        </ul>               

</section>

#### FHIR-Based Data Exchange

<section>

<p>

This IG defines FHIR-based interactions using standardized resources such as:

<p>

<ul>
    <li>Patient – Identifying individuals across systems.</li>
    <li>Immunization – Recording administered vaccines.</li>
    <li>Encounter – Documenting immunization visits.</li>
    <li>Observation – Capturing adverse events and immunization status.</li>
    <li>SupplyDelivery – Tracking vaccine inventory.</li>
</ul>
<section>