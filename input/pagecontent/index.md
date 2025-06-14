# Nigeria Immunization FHIR Implementation Guide (IG)

#### Revision History

<table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
            <th>Name</th>
            <th>Date</th>
            <th>Reason for Changes</th>
            <th>Version</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Nigeria Primary Healthcare Development Agency</td>
            <td>14th June 2025</td>
            <td>Third Draft</td>
            <td>0.3.0</td>
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


### Interaction Between Systems

#### Description of System Interactions
 
The Nigeria Immunization FHIR Implementation Guide (IG) establishes the technical framework for data exchange between key immunization-related systems. These interactions ensure  seamless interoperability, accurate data capture, and improved decision-making in Nigeria's immunization ecosystem.

    
#### Key Systems and Their Roles

<section>
   <p> Standalone Electronic Immunization Registries (EIRs) or Immunization modules in Hospital EMRs</p>
        <ul>
            <li>Capture, store, and followup on vaccination records for individuals.</li>
            <li>Interact with health facility systems and national immunization databases.</li>
        </ul>
    <p>Health Facility Registry (HFR)</p>   
         <ul>
            <li>Record patient encounters and immunization services provided.</li>
            <li>Share immunization event data with EIRs and decision-support systems.</li>
        </ul>
    <p>Health Workforce Registry (HWR)</p>   
         <ul>
            <li>Through this implementation guide update and read from national or state database of healthcare providers.</li>
            <li>Validate routine immunization service providers</li>
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


This IG defines FHIR-based interactions using standardized resources such as:

<ul>
    <li>Patient – Identifying individuals across systems.</li>
    <li>Immunization – Recording administered vaccines.</li>
    <li>Encounter – Documenting immunization visits.</li>
    <li>Observation – Capturing adverse events and immunization status.</li>
    <li>SupplyDelivery – Tracking vaccine inventory.</li>
</ul>



### Concepts
 <table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
 
      <th>SN</th>
      <th>Acronym</th>
      <th>Meaning</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1.</td>
      <td>AEFI</td>
      <td>Adverse Event Following Immunization</td>
    </tr>
    <tr>
      <td>2.</td>
      <td>BCG</td>
      <td>Bacille Calmette-Guérin</td>
    </tr>
    <tr>
      <td>3.</td>
      <td>DAK</td>
      <td>Digital Adaptation Kit</td>
    </tr>
    <tr>
      <td>4.</td>
      <td>DPT</td>
      <td>Diphtheria, Pertussis, Tetanus</td>
    </tr>
    <tr>
      <td>5.</td>
      <td>EIR</td>
      <td>Electronic Immunization Registry</td>
    </tr>
    <tr>
      <td>6.</td>
      <td>EPI</td>
      <td>Expanded Program on Immunization</td>
    </tr>
    <tr>
      <td>7.</td>
      <td>FMoHSW</td>
      <td>Federal Ministry of Health and Social Welfare</td>
    </tr>
    <tr>
      <td>8.</td>
      <td>Hep B</td>
      <td>Hepatitis B Vaccine</td>
    </tr>
    <tr>
      <td>9.</td>
      <td>HPV</td>
      <td>Human Papilloma Virus</td>
    </tr>
    <tr>
      <td>10.</td>
      <td>IPV</td>
      <td>Inactivated Polio Vaccine</td>
    </tr>
    <tr>
      <td>11.</td>
      <td>NPHCDA</td>
      <td>National Primary Healthcare Development Agency</td>
    </tr>
    <tr>
      <td>12.</td>
      <td>OPV</td>
      <td>Oral Polio Vaccine</td>
    </tr>
    <tr>
      <td>13.</td>
      <td>SMART</td>
      <td>Standards-based, Machine-readable, Adaptive, Requirements-based, Testable</td>
    </tr>
    <tr>
      <td>14.</td>
      <td>SRS</td>
      <td>Software Requirements Specification</td>
    </tr>
    <tr>
      <td>15.</td>
      <td>WHO</td>
      <td>World Health Organization</td>
    </tr>
  </tbody>

