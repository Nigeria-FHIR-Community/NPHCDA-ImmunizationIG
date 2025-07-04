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
            <td>National Primary Health Care Development Agency</td>
            <td>4th July 2025</td>
            <td>Fifth Draft</td>
            <td>0.5.0</td>
        </tr>
    </tbody>
</table>


### Purpose

This Nigeria Immunization FHIR Implementation Guide (IG) is designed to support the country's adoption of the WHO SMART Guidelines approach by presenting the Digital Adaptation Kit (Business Requirments) for Immunization developed from National Primary Health Care Development Agency (NPHCDA) immunization guidelines. In addition, this IG presents the minimal Client/Server Capability for software-agnostic immunization systems in Nigeria. It presents the workflow in form of logical models, profiles and extensions, terminology structures (ValueSets and CodeSystems), and examples. Also, key operations necessary for conformance of the priority profiles where also presented. This initiative aims to strengthen immunization data management, enhance interoperability, and improve data-driven decision-making by developing standardized, contextually relevant digital solutions.

### Background

Immunization is one of the most cost-effective public health interventions, yet many countries, including Nigeria, face challenges in achieving full vaccine coverage. Digital tools and data management systems are being integrated into immunization programs to improve efficiency, accuracy, and accessibility. However, the successful adoption and scaling of these systems require solutions that are country-driven, user-friendly, reliable, and contextually relevant.

The WHO SMART Guidelines provide a standardized framework for developing and implementing interoperable, evidence-based, and scalable digital health solutions. This is particularly crucial for immunization, where timely and accurate data supports vaccine coverage tracking, identification of zero-dose children, and equitable service delivery. A key component of this approach is the Digital Adaptation Kit (DAK), which includes health interventions, workflows, core data elements, decision support logic, and other technical components necessary for effective immunization service management.

Nigeria has faced challenges such as data quality issues, fragmented systems, and disparities in access to immunization services. To address these, the country is aligning with the SMART Guidelines methodology and national health strategies like the National Immunization Strategy (NIS) and Immunization Agenda 2030 (IA2030). This initiative aims to enhance data interoperability, decision-making, and service delivery through the adoption of FHIR-based digital systems.

A User Requirement Gathering (URG) process is critical in developing Nigeria’s Immunization DAK. This process ensures that the digital immunization system is effective, adaptable, and user-friendly by engaging key stakeholders (health workers, program managers, and data specialists) to define essential system functionalities. This FHIR Implementation Guide (IG) serves as a blueprint for Nigeria’s interoperable, scalable, and standardized immunization data system, ensuring seamless integration with national and global health initiatives.

###  Scope of the FHIR Implementation Guide

This Implementation Guide (IG) defines the core FHIR profiles, extensions, value sets, and terminology bindings required to support routine immunization workflows in Nigeria, using HL7® FHIR® standards using the WHO SMART Guidelines framework. Developed under the leadership of the National Primary Health Care Development Agency (NPHCDA), this IG provides structured guidance for digitizing, exchanging, and interpreting immunization-related data in an interoperable and scalable way.

The scope of this guide focuses on the following core components:
- **Standardizing how immunization clients (patients) are registered and managed**, using the [**NgImmPatient**](StructureDefinition-NgImmPatient.html) profile.
- **Structuring immunization service delivery records**, such as vaccine administration, using the [**NgImmImmunization**](StructureDefinition-NgImmImmunization.html) profile.
- **Defining the necessary search parameters, RESTful operations, and data constraints** to ensure interoperable exchange of immunization data across digital platforms.
- **Providing the minimum data structures required** for systems to exchange immunization-related data across multiple levels of the health system, from point-of-care to national dashboards.

#### Use cases covered in this guide
The IG covers the following key immunization use cases (which will continue to expand in subsequent iterations) prioritized by NPHCDA and stakeholders:

- **Health Facility Registration and Update** <br>
  Standardizes how health facilities are referenced or updated in immunization records using external facility registries.
- **Routine Immunization Client Registration and Update**<br>
  Enables consistent identification and demographic capture of children and caregivers for immunization purposes.
- **Planning Vaccination Sessions** <br>
    Provides structure for managing immunization sessions, target population, and logistics information.
- **Administer Vaccine** <br>
    Captures all necessary data about the immunization event, including vaccine product, lot number, site, route, and performer.
- **Manage and Report Adverse Events Following Immunization (AEFI)** <br>
    Supports linking immunization events with reported AEFIs for monitoring and reporting purposes.
- **Defaulter Tracking** <br>
    Provides mechanisms to identify and recall clients who have missed scheduled doses.
- **Report Generation** <br>
    Enables data aggregation and export for DHIS2, performance dashboards, or public health surveillance.

This guide does **not prescribe a specific software platform or vendor product**. Instead, it defines a set of national interoperability standards that can be adopted by EMR vendors, immunization registries, mobile app developers, and data exchange platforms to ensure consistency, data quality, and alignment with Nigeria’s digital health strategy.

#### High level workflows
The overview of the business processes in this DAK captures all business processes at a high level.
 <div> 
<img src="workflow-summary-bpmn.png" alt="summary" style="width:85%"/>
</div>



### Interaction Between priority Systems

This FHIR IG is designed to promote system **interoperability** across the Nigerian digital health ecosystem. The artifacts defined in this guide (such as profiles, extensions, and value sets) are intended to work in conjunction with external health and administrative data systems to enable seamless integration and real-time information sharing.
Specifically, this IG enables integration with the following external platforms:

- **National Health Facility Registry (HFR)**
 Enables linking of immunization events and service delivery to verified and uniquely identified facilities in the country.
- **Health Workforce Registry (HWR)**
Facilitates referencing of vaccinators, supervisors, and AEFI reporters using standardized practitioner records (eg. MDCN or other Workforce Registry).
- **National Health Management Information System (HMIS - DHIS2)**
 Supports reporting of immunization indicators and AEFI statistics to national dashboards through aggregate or individual record submission.
- **Civil Registration and Vital Statistics (CRVS) Platform**
 Supports potential linkages with birth registration systems to promote timely identification of newborns eligible for immunization.
- **Analytics Tools and Dashboards**
Provides clean, structured data for integration with data analytics platforms for coverage monitoring, predictive modeling, and operational intelligence.

These integrations are essential to achieving the goals of a nationally scalable, data-driven immunization system, and reflect Nigeria’s commitment to advancing digital public infrastructure (DPIs) and universal health coverage (UHC).


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
      <td>BPMN</td>
      <td>Business Process Modelling Notation</td>
    </tr>
    <tr>
      <td>4.</td>
      <td>CHEW</td>
      <td>Community Health Extension Worker</td>
    </tr>
    <tr>
      <td>5.</td>
      <td>CRVS</td>
      <td>Civil Registration and Vital Statistics</td>
    </tr>
    <tr>
      <td>6.</td>
      <td>DAK</td>
      <td>Digital Adaptation Kit</td>
    </tr>
    <tr>
      <td>7.</td>
      <td>DHI</td>
      <td>Digital Health Information</td>
    </tr>
    <tr>
      <td>8.</td>
      <td>DHIS2</td>
      <td>District Health Information System 2</td>
    </tr>
     <tr>
      <td>9.</td>
      <td>DPI</td>
      <td>Digital Public Infrastructure</td>
    </tr>
    <tr>
      <td>10.</td>
      <td>DPT</td>
      <td>Diphtheria, Pertussis, Tetanus</td>
    </tr>
    <tr>
      <td>11.</td>
      <td>eCHIS</td>
      <td>electronic Community Health Information System</td>
    </tr>
    <tr>
      <td>12.</td>
      <td>EIR</td>
      <td>Electronic Immunization Registry</td>
    </tr>
    <tr>
      <td>13.</td>
      <td>EMR</td>
      <td>Electronic Medical Record</td>
    </tr>
    <tr>
      <td>14.</td>
      <td>EPI</td>
      <td>Expanded Program on Immunization</td>
    </tr>
    <tr>
      <td>15.</td>
      <td>FHIR</td>
      <td>Fast Healthcare Interoperability Resource</td>
    </tr>
    <tr>
      <td>16.</td>
      <td>FMoHSW</td>
      <td>Federal Ministry of Health and Social Welfare</td>
    </tr>
    <tr>
      <td>17.</td>
      <td>Hep B</td>
      <td>Hepatitis B Vaccine</td>
    </tr>
    <tr>
      <td>18.</td>
      <td>HFR</td>
      <td>Health Facility Registry</td>
    </tr>
    <tr>
      <td>19.</td>
      <td>HL7</td>
      <td>Health Level-7</td>
    </tr>
    <tr>
      <td>20.</td>
      <td>HMIS</td>
      <td>Health Management Information System</td>
    </tr>
    <tr>
      <td>21.</td>
      <td>HPVV</td>
      <td>Human Papilloma Virus Vaccine</td>
    </tr>
    <tr>
      <td>22.</td>
      <td>HWR</td>
      <td>Health Workforce Registry</td>
    </tr>
    <tr>
      <td>23.</td>
      <td>IA2030</td>
      <td>Immunization Agenda 2030</td>
    </tr>
    <tr>
      <td>24.</td>
      <td>IG</td>
      <td>Implementation Guide</td>
    </tr>
    <tr>
      <td>25.</td>
      <td>IPV</td>
      <td>Inactivated Polio Vaccine</td>
    </tr>
     <tr>
      <td>26.</td>
      <td>LGA</td>
      <td>Local Government Authority</td>
    </tr>
      <tr>
      <td>27.</td>
      <td>LIO</td>
      <td>Logistics Immunization officer</td>
    </tr>
    <tr>
      <td>28.</td>
      <td>MDCN</td>
      <td>Medical and Dental Council of Nigeria</td>
    </tr>
    <tr>
      <td>29.</td>
      <td>NIS</td>
      <td>National Immunization Strategy</td>
    </tr>
    <tr>
      <td>30.</td>
      <td>NPHCDA</td>
      <td>National Primary Health Care Development Agency</td>
    </tr>
    <tr>
      <td>31.</td>
      <td>OIC</td>
      <td>Officer In Charge</td>
    </tr>
    <tr>
      <td>32.</td>
      <td>OPV</td>
      <td>Oral Polio Vaccine</td>
    </tr>
    <tr>
      <td>33.</td>
      <td>PHC</td>
      <td>Primary Health Care</td>
    </tr>
    <tr>
      <td>34.</td>
      <td>SIO</td>
      <td>State Immunization Officer</td>
    </tr>
    <tr>
      <td>35.</td>
      <td>SMART</td>
      <td>Standards-based, Machine-readable, Adaptive, Requirements-based, Testable</td>
    </tr>
    <tr>
      <td>36.</td>
      <td>SMoH</td>
      <td>State Ministry of Health</td>
    </tr>
    <tr>
      <td>37.</td>
      <td>SPHCDB</td>
      <td>State Primary Health Care Development Board</td>
    </tr>
    <tr>
      <td>38.</td>
      <td>SRS</td>
      <td>Software Requirements Specification</td>
    </tr>
    <tr>
      <td>39.</td>
      <td>UHC</td>
      <td>Universal Health Coverage</td>
    </tr>
    <tr>
      <td>40.</td>
      <td>URG</td>
      <td>User Requirement Gathering</td>
    </tr>
    <tr>
      <td>41.</td>
      <td>WHO</td>
      <td>World Health Organization</td>
    </tr>
  </tbody>

