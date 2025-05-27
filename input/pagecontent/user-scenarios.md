User scenarios are narratives that describe how the different personas may interact with each other and are intended to give an illustrative idea of a typical workflow.  This section is intended to provide an understanding of how the system would be used, and how it would fit into existing workflows.

### User scenario for Routine Vaccination

<table border="1" class="dataframe table table-striped table-bordered">
   <thead>
<tr class="header">
                <th style="vertical-align: top;">Key Personas</th>
                <th colspan="2">
                <ul>
                <li>Caregiver (mother): Juliet</li>
                <li>Child: Ann</li>
                <li>Health worker: Lucy</li></ul>               

  </th></tr></thead> <tbody><tr><td colspan="3">
<p>Juliet, a 21-year-old mother, lives in a small village near Igboland with her husband and their 6-week-old daughter, Ann. Despite having only completed primary school, Juliet is deeply committed to ensuring Ann’s health and well-being. </p>
<p>Ann was born at home, and her birth was not registered.  Juliet took Ann to the local clinic shortly after birth for birth vaccines. At the Clinic, Juliet found Lucy who assessed Ann and deemed her eligible for vaccination. Lucy assigned Ann a unique identification number and issued Ann a child health card. She input Ann’s details including biodata, residential address, mother’s other children, vaccine schedule, weight and height.  Lucy administered  birth vaccines which included BCG 0.05ml intradermal, 2 drops of OPV0 orally, 0.5ml HepB intramuscular and recorded on the child health card the date of administration, batch number and date for next visit. Lucy then observed Ann for adverse events following immunization and discharged Juliet home with a reminder for the next visit.</p>
<p>Six weeks later, Juliet reviews the child health card and sees that Ann is due for the  6-weeks vaccine. The clinic, located in Igboland, is over an hour’s walk from Juliet’s home. Despite the distance, Juliet appreciates the journey as it allows her to meet other new mothers and learn from the advice provided by the clinic’s nurse.</p>
<p>The following morning, Juliet sets out with Ann to visit the Igboland clinic, arriving just after 9 a.m. The small waiting area is filled with five other mothers and their children. Juliet takes her seat, holding Ann close as she waits for her turn.
When Lucy, the nurse-in-charge, calls Juliet in, Juliet hands over Ann’s child health card. Lucy takes the card and logs into the clinic’s electronic immunization registry (EIR) on her tablet.</p>
<p>Using the unique ID from the card, Lucy retrieves Ann’s digital immunization record. Lucy updates Ann’s record by inputting Juliet’s details including name, telephone number, relationship, and next of kin.  She then reviews it alongside the child health card and confirms that Ann is due for pentavalent, pneumococcal, OPV1, Rota 1 , and IPV1 vaccines that day. Before proceeding, Lucy weighs Ann on the clinic’s scale, carefully noting her weight. She records this information in both the vaccine card and the EIR, remarking that Ann’s weight gain is on track. She also takes time to address Juliet’s questions about breastfeeding and reassures her about Ann’s growth.</p>
<p>Lucy then prepares the vaccines. She opens the cooler box, which she had stocked earlier that morning, and carefully checks the expiration dates and safety indicators on each vial. Confident in their safety, she begins administering the vaccines. Ann receives oral doses first, followed by injections. Juliet comforts Ann as Lucy completes the process.</p>
<p>After the vaccinations, Lucy updates Ann’s digital record in the EIR and documents the details in the child health card. She explains to Juliet the importance of tracking both records to ensure continuity of care. Lucy then discusses the next steps, noting the date of Ann’s next immunization. She writes this information on the child health card and advises Juliet to aim for the suggested date, reassuring her that arriving within a day or two is still acceptable. Lucy also explains how to manage mild side effects, like fever, that Ann might experience after the vaccines. As a final step, Lucy tells Juliet that she will get a reminder notification a day before the due date for the upcoming vaccinations.</p>
<p>Feeling reassured by Lucy’s guidance and support, Juliet leaves the clinic with Ann. She is confident in her ability to care for her daughter and is grateful for the well-organized services that help her keep Ann healthy. The clinic’s integrated system ensures that Ann’s immunization schedule is well-documented, and the SMS reminders will help Juliet stay on track for future visits.</p>

</td>        </tr>
        <tr>
        <td style="vertical-align: top;">Business Processes

</td>
<td>
<ul>
<li>Registration</li>
<li>Administer vaccine</li>
<li>AEFI monitoring</li>
<li>Client reminder</li>
</ul>
</td>
</tr></tbody> </table>

### User scenario for Defaulter Tracking

<table border="1" class="dataframe table table-striped table-bordered">
 <thead>
 <tr class="header">
    <th style="vertical-align: top;">Key Personas</th>
    <th><ul>
     <li>Health worker: Lucy</li>
     <li>Community health worker: Susan</li>
     <li>Client: Ann</li>
     <li>Caregiver: Juliet</li>
     </ul>               
    </th>
    </tr>

</thead>
<tbody>
<tr>
<td colspan="2">
<p>Lucy, the nurse responsible for the under-5 clinic in Igboland, is tasked with ensuring that all children in her clinic’s catchment area are vaccinated. The estimated number of children is derived from the population served by her clinic, the only healthcare facility in the region. To achieve her goal, Lucy collaborates closely with Susan, a respected community health worker.</p>
<p>The introduction of the EIR has significantly reduced Lucy’s administrative burden. Previously, she spent hours each week manually reviewing the paper immunization registry to identify children who were overdue for vaccinations, calculating their status based on recorded dates. </p>
<p>Every end month, Lucy generates a list of defaulters from the system. She sends this list to the community health worker via SMS.  Susan does defaulter tracking in her catchment area. In her list, Ann who was due for her 10 weeks vaccine, is first on the list.</p>
<p>She finds the location and phone number of Juliet, Ann’s mother from the list. She knows the location well and finds her way to Juliet’s house. She finds Juliet sun-bathing Ann and confirms Juliet’s identification. Susan introduces herself and the reason for her visit. </p>
<p>Juliet warmly welcomes her and offers her a seat. She explains to Susan that she had travelled and did not remember to take Ann to the facility for her routine immunization. Susan emphasizes the importance of immunization on the child’s health and encourages Juliet to visit the health facility the next morning. Juliet agrees to take Ann to the facility as she bids Susan goodbye.</p>
<p>The next morning, Juliet takes Ann to the facility where Ann receives her immunization. Lucy updates her records and Ann’s name is taken off the defaulter list.</p>
   </td>
   </tr>
   <tr>
   <td>Business Processes </td>
 <td>

    <ul>
    <li>Defaulter tracking</li>

<li>Report generation
</li></ul></td></tr></tbody></table>

###  Catch-up campaign

<table border="1" class="dataframe table table-striped table-bordered">
 <thead>
 <tr class="header">
 <th style="vertical-align: top;">Key Personas</th>
<th><ul><li>EPI Manager: Dr. Sade</li><li>Nurse: Lydia</li><li>Community health worker: Anita</li><li>Caregiver: Martha</li><li>Client: Eric</li>
</ul></th> </tr></thead>
<tbody>
<tr>
<td colspan="2">
<p>Dr. Sade has been serving as the Expanded Program on Immunization (EPI) Manager in Lagos state for the last decade. In his role, he is responsible for planning and overseeing the immunization programs at all the facilities within his state. He supports these facilities, reviews data, and ensures that the programs are running efficiently. Dr. Sade regularly monitors the monthly immunization reports submitted by each facility, looking for potential issues such as inaccurate data, low vaccine coverage, or vaccine stockouts that may disrupt the clinics' operations. He also keeps track of the target population of children in the state and maps where these children are located. Recently, Dr. Sade noticed that the polio vaccination coverage was significantly lower than expected across several facilities.</p>
<p>During a workshop last month, Dr. Sade and other EPI Managers were informed about a national initiative to conduct local catch-up vaccination campaigns to address this issue. These campaigns were planned to be larger in scope due to the significant number of overdue vaccinations. While the state had previously carried out smaller catch-up activities, such as during Child Health Week or Immunization Days, this campaign was expected to be more extensive. Dr. Sade’s task was to adapt the national plan for his state, manage the budget, and supervise the campaign’s implementation. He worked closely with various stakeholders to coordinate activities, while also ensuring that the community was engaged and well-informed about the campaign.</p>
<p>Lydia and her team designed a vaccination strategy that included both fixed-site clinics and mobile vaccination teams to reach urban and rural areas across Lagos. The goal was to vaccinate all children under five years old in the affected areas within three weeks. To ensure that the community was fully aware and engaged, community health workers and healthcare providers held town hall meetings, distributed flyers, and conducted radio broadcasts. These efforts helped explain the importance of the polio vaccination and address concerns and misconceptions, using endorsements from trusted local leaders and healthcare professionals to build confidence in the vaccine.</p>
<p>In preparation for the campaign, the National Primary Health Care Development Agency (nphcda) provided healthcare workers with training on vaccine administration, cold chain management, and accurate data recording. Vaccines were distributed to health centers and mobile teams, ensuring that the cold chain was maintained from the national storage facility to local sites.</p>
<p>The campaign kicked off with a highly publicized launch event, after which both fixed-site clinics and mobile vaccination units began administering the oral polio vaccine (OPV). Healthcare workers visited households, schools, marketplaces, bus stations, and remote villages to ensure that no child was left unvaccinated. Vaccination teams used the Electronic Immunization Registry (EIR) to record data in real time, allowing for immediate monitoring and adjustments as needed.</p>
<p>Anita, a community registered worker, was one of the healthcare providers involved in the immunization campaign. During a visit to Igboland village, she met Martha, the mother of a 2-year-old boy named Eric. Anita explained the ongoing polio vaccination campaign to Martha, who was already aware and gave her consent to vaccinate Eric. When Anita searched for Eric’s record in the EIR using his birth certificate number, she couldn’t find it. Martha, however, showed Anita the child’s vaccination history in the vaccination card, confirming that Eric had already been vaccinated. Anita then registered Eric in the EIR, updated his immunization record, administered the oral polio vaccine, and saved the data.</p>
<p>The healthcare providers continued with the immunization efforts over the course of the next three weeks. At the end of the campaign, they returned all tools and equipment to the health centers. County health authorities and NVIP conducted post-vaccination surveillance to monitor for any adverse events and verify that the campaign’s coverage targets had been met.</p>
<p>Lydia and her team conducted an evaluation of the campaign's success based on the vaccination coverage data and the containment of the polio outbreak. A detailed report was compiled, highlighting the outcomes and lessons learned from the campaign.</p></td></tr>
   <tr>
   <td>Business Processes </td>
 <td><ul><li>Catch-up campaign</li>
<li>Report generation</li>
</ul></td>
</tr></tbody></table>

### Report Generation

<table border="1" class="dataframe table table-striped table-bordered">
 <thead>
 <tr class="header">
    <th>Key Personas</th>
    <th>
    <ul><li>State EPI- John</li></ul>

    </th>

    </tr>

</thead>
<tbody>
<tr>
<td colspan="2">
<p>John is the Abuja State EPI. He is 35 years old and has a university degree in management. He has been the state EPI for the last 6 years. John is responsible for planning, and supporting all of the facilities in his state to manage their immunization programs, supervising and conducting reviews of data of immunization programs in  Abuja. He closely monitors the monthly reports that each facility sends and looks for potential issues that may require his attention, such as inaccurate data on the reports or situations where the overall vaccine coverage in a facility may be lower than their targets, or if they have had times where they do not have a vaccine in stock to run their clinics. John is also responsible for keeping track of the target population of children in his state and a sketch map of where that population is found. Abuja, like the rest of the region, has had significant challenges due to the COVID-19 pandemic. Many parents did not bring their children for their routine vaccinations for fear of contracting COVID-19. As a result, John has noticed their coverage rates for most vaccines are much lower. </p>
<p>John logs in to EIR with his credentials to generate monthly vaccination reports for his state. He generates the reports and during the analysis, he realizes there are still many children who are overdue for their vaccines. </p>
<p>John shares the report with his colleagues and plans for some local outreach campaigns as part of a coordinated national plan to address this issue. John and his team have conducted these outreach campaigns previously, typically one or 2 times a month during Child Health Week events or Immunization Days. Since this campaign will be larger due to the number of overdue vaccines, the National Vaccine Immunization Program is working with other partners to offer additional support. John has the responsibility to review the plan made by the national government for the campaign in his region, review the budget, and supervise the implementation of the campaign. John works closely with stakeholders (coordination) and the community (communication) to implement the sub-county’s immunization plans. </p>

   </td>
   </tr>
   <tr>
   <td>Business Processes </td>
 <td>

    <ul>
    <li>Report generation</li></ul> </td></tr>

</tbody>
</table>

### Contraindication

<table border="1" class="dataframe table table-striped table-bordered">
 <thead>
 <tr class="header">
    <th style="vertical-align: top;">Key Personas</th>
    <th>
    <ul><li>Caregiver (mother): Chioma</li>
    <li>Child: Favour</li>
    <li>Health worker: Obi</li>
    </ul>
    </th>
</tr>

</thead>
<tbody>
<tr>
<td colspan="2">
<p>Chioma is a hardworking 30-year-old businesswoman. Her child, Favour, is due for the 14-week vaccination. She wakes up early to prepare Favour for her clinic then rush back to her business. If she is late for the clinic, there will be a long queue, and Chioma does not wish to spend her day at the clinic. 
At the health facility, she finds 2 mothers in the queue. She finds a seat and waits for her turn. Before long, it is Favour’s turn. Favour’s vaccination card was screened to determine what vaccines she is eligible for. As she prepares Favour for her vaccination, Obi asks her if Favour had any reaction after the last vaccination. Chioma casually mentions to Obi that after the last two vaccinations, Favour had a severe rash on her leg and Chioma had to rush her to the nearest private clinic. 
Obi reassured her and documented it in the AEFI form, he also counselled Chioma that in the event of subsequent reactions, she should bring the child immediately back to the health facility for proper management and documentation. Obi administered the Penta 3, IPV2, Rota 3, PCV 3, OPV 3 antigens, updated Favour’s child health card,  documents in the relevant data tools and reminds Chioma of the next visit.
Chioma is done with the clinic visit and leaves satisfied to attend to her business.

</p>
</td>
</tr>
<tr>
   <td style="vertical-align: top;">Business Processes </td>
   <td><ul>
    <li>Register</li>
    <li>Contraindicate</li></ul>
    </td>
</tr>
</tbody>
</table>

### AEFI

<table border="1" class="dataframe table table-striped table-bordered">
 <thead>
 <tr class="header">
    <th style="vertical-align: top;">Key Personas</th>
    <th>
    <ul><li>Caregiver (Mother); Hauwa</li>
    <li>Child: Aisha</li>
    <li>Immunization Officer: Zainab</li>
    <li>Community health worker: Blessing</li></ul></th></tr>

</thead>
<tbody>
<tr>
<td colspan="2">
<p>
It's a humid Wednesday afternoon, and Zainab has just finished vaccinating a group of infants when a distressed mother, Hauwa, rushes in carrying her 9-month-old daughter, Aisha. The baby received the Measles 1, MenA and Yellow fever vaccines a few hours before and now has a high fever and won't stop crying. Hauwa explains that Aisha has been unusually irritable and developed some swelling at the injection site.
Zainab quickly noticed that the baby's right arm where she received the Yellow Fever vaccine injection was swollen and red, and felt very hot to the touch. The facility's only working thermometer showed 39.5°C. This is clearly an adverse event following immunization (AEFI) case
Drawing from her experience, Zainab first tries to calm Hauwa while conducting a quick assessment. She notices that despite the fever and swelling, Aisha is still alert and taking breast milk.
She gives Aisha paracetamol. This is the only medication available and she knows Hauwa does not have money to go to the nearest referral health facility which is 30 kilometers away. She gets information of where she lives to give to the community health worker to visit her at home the next day. She provides counseling to Hauwa on the management of the symptoms and reassures her that she did the right thing in coming to the health facility to report.
Zainab asks for the child's immunization card only to discover that Hauwa, in her panic, left it at home. Zainab used the Immunization register to confirm Hauwa’s last clinic visit and the batch number of the vaccine administered - crucial information for AEFI reporting.
In the facility's AEFI forms (reporting and line listing), Zainab documents everything she observes: Onset of symptoms, current temperature, size of injection site swelling, baby's alertness level. 
Hauwa goes home and the next day the community health worker does a home visit. She finds Aisha’s fever has subsided and the swelling has also decreased. 

</p>
</td>
</tr>
 <tr>
   <td style="vertical-align: top;">Business Processes </td>
 <td>
    <ul>
    <li>Registration</li>
    <li>AEFI reporting and Line listing</li></ul> </td></tr>
</tbody>
</table>

### HIV client Immunization

<table border="1" class="dataframe table table-striped table-bordered">
 <thead>
 <tr class="header">
    <th style="vertical-align: top;">Key Personas</th>
    <th>
    <ul><li>Caregiver (Mother); Mrs. Adekunle</li>
    <li>Child: Tunde</li>
    <li>Routine Immunization Officer: Bola</li>
    </ul></th></tr>

</thead>
<tbody>
<tr>
<td colspan="2">
<p>  It's Monday morning when Mrs. Adekunle quietly approaches Bola's immunization desk after most other mothers have left. She whispers Tunde is 9months, HIV positive and is due for the yellow fever vaccine.
Bola pulls her aside and asks for Tunde’s child immunization card. She reviews Tunde's growth chart and notices he's been growing well. She looks for any signs of illness or severe thrush. Her assessment of Tunde shows that he is asymptomatic hence she can safely administer the vaccines. If Tunde had shown any HIV symptoms, then the yellow fever vaccine would not have been administered. Bola administered Yellow fever, and other co-administered vaccines at 9 months (Measles, and MenA).
She records in the immunization register, tally sheet and the child health card as she reminded  Mrs Adekunle of the importance of keeping to the immunization schedule and advises her to always mention Tunde's HIV exposure status to healthcare workers.
Mrs.Adekunle is happy with the advice and promises to do her best.

</p>
</td>
</tr>
<tr>
   <td style="vertical-align: top;">Business Processes </td>
   <td><ul>
    <li>Registration</li>
    <li>Administer vaccine</li>
    </ul>
   </td>
</tr>
</tbody>
</table>

### Stock Management 

<table border="1" class="dataframe table table-striped table-bordered">
 <thead>
 <tr class="header">
    <th style="vertical-align: top;">Key Personas</th>
    <th><ul>
     <li>Health Worker- Mary</li>
     <li>Vaccine depot staff- Helena</li>
     </ul></th>    
</tr>

</thead>
<tbody>
<tr>
<td colspan="2">
  <p> Mary is a health worker in  Lavane health facility in Abuja state. 
During her weekly stock count review, she notices that pentavalent vaccine is below the minimum count.  
She needs to order for the vaccines from the state vaccine depot. She fills in the ordering form capturing the vaccine and quantity needed. She sends the ordering form to the state depot and monitors the status  for the vaccines.
At the depot, Helena is the vaccine admin in Abuja. She receives the vaccine order from Lavane health facility. After confirming that vaccine is available, she accepts the order. She fills in the dispatch form indicating the vaccine and quantity released.
Mary, on the other hand, receives the vaccines and fills in the form indicating the vaccine name, batch number, expiry date and the manufacturing company.
</p>
   </td>
   </tr>
   <tr>
   <td>Business Processes</td>
   <td><ul><li>Stock Management</li>
   </ul></td>
</tr></tbody></table>

### User Scenario Interpretation for Functional Requirements

<p>
User scenarios are helpful tools not only to better understand the context in which a digital tool would operate but also to provide some insights into what key data elements would need to be recorded and accounted for in the database. Additionally, the context in which the tool would be used, illustrated by the user scenarios, provides insight into some functional and non-functional requirements that the system would also need. For example, in the table below based on the user scenarios described above, the first column highlights the key data elements that need to be recorded and/or calculated. The second column highlights some elements of decision-support logic that can be automated in the system. The third column displays some key functional and non-functional requirements that should be included in the system.
The table below provides an example of a breakdown of these three elements extracted from the user scenario above. 

</p>
 

#### Table 1: <i>Interpretation of the routine vaccination </i>

<table border="1" class="dataframe table table-striped table-bordered">
 <thead>
 <tr class="header">

    <th>Data Elements to be collected</th>
    <th>Decision Logic to be embedded</th>
    <th>Functional and non-functional requirements

</th>

    </tr>

</thead>
<tbody>
<tr>
<td>
<ul>
<li>Unique ID</li>
<li>Name</li>
<li>Date of birth</li>
<li>Vaccine given</li>
<li>Date vaccine given</li>
<li>Weight</li>
</ul>

</td><td>
<ul>
<li>Determine what vaccines are due at this time (taking into account, the last vaccine date, and national vaccine schedule)</li>

<li>Determine if weight is appropriate for age based on standardized growth charts (age calculated by date of birth)</li>

<li>Determine when the next vaccines are due (taking into account, the last vaccine date, and the national vaccine schedule)</li>

<li>Determine if the due date of the vaccine is within a few days </li>
</ul>

</td><td>
<ul>
<li>Ability to automatically generate SMS messages based on trigger events</li>

<li>Indicate consent to receive reminders </li>

<li>Indicate dissent to receive reminders if the default is to receive reminders and there is an opt-out option</li>

<li>Send reminders only to those who have given consent</li>
</ul>
</td>
</tr>
</tbody>
</table>

#### Table 2: <i>Interpretation of the defaulter tracing</i>

<table border="1" class="dataframe table table-striped table-bordered">
 <thead>
 <tr class="header">
    <th>Data Elements to be collected</th>
    <th>Decision Logic to be embedded</th>
    <th>Functional and non-functional requirements</th>

    </tr>

</thead>
<tbody>
<tr>
<td>
<ul>
<li>Catchment area population (entered by system admin)</li>
<li>Name</li>
<li>Date of Birth</li>
<li>Sex</li>
<li>Parent/contact name</li>
<li>Parent/contact phone number</li>
<li>Address/Location</li>
<li>Vaccine given</li>
<li>Vaccine given date</li>
</ul>
</td>

<td>
<ul>
<li>Determine which vaccines are due at this time (taking into account, the last vaccine date, and national vaccine schedule)</li>

<li>Determine any vaccine past due (by more than a set number of days)</li>

</ul>
</td>

<td>
<ul>
<li>Generate a list of children due (or overdue) for a vaccine within a specific time frame</li>

<li>Generate a list of children due (or overdue) for a vaccine within a specific catchment area</li>

<li>Send list of overdue children to the specific phone number associated with the catchment area</li>

<li>Ability to automatically generate SMS messages based on trigger events</li>

</ul>
</td>
</tr>
</tbody>
</table>

#### Table 3: <i>Interpretation of catch-up campaign</i>

<table border="1" class="dataframe table table-striped table-bordered">
 <thead>
 <tr class="header">

    <th>Data Elements to be collected</th>
    <th>Decision Logic to be embedded</th>
    <th>Functional and non-functional requirements

</th>

    </tr>

</thead>
<tbody>
<tr>
<td>
<ul>
<li>Target population (estimated from census projections)</li>
<li>Coverage rates (the vaccines given divided by the target population) </li>
<li>Address of client</li>

</ul>
</td>

<td>
<ul>
<li>Determine what vaccines are past due at this time (taking into account, date of birth, last vaccine date, and national vaccine schedule) </li>
<li>Determine if overall coverage is below the target</li>
<li>Calculate the stock needed to provide for those who are imminently due and overdue for vaccination </li>
<li>Determine where the target population is located (based on the clinic they are associated with as well as their address)</li>

</ul>
</td>
<td>
<ul>
<li>Ability to generate monthly reports of vaccine coverage rates</li>
<li>Ability to generate ad hoc report</li>
<li>Ability to sort and filter reports by vaccination location, address, and other attributes as needed</li>

</ul>
</td>
</tr>
</tbody>
</table>
