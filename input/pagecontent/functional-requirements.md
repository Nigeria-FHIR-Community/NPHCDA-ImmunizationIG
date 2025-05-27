Functional requirements describe the capabilities a digital tracking and decision-support system must have to meet end-users’ needs and support tasks within the business process. These requirements define essential system functions such as user management, data collection, patient tracking, decision support, reporting, system integration, and inventory management. They ensure the system facilitates accurate data entry, automates workflows, provides actionable insights, and integrates with relevant healthcare systems for seamless operations.

<table border="1" class="dataframe table table-striped table-bordered">

        <thead>
             <tr class="header">
                <th></th>
                <th>Activity ID and name</th>
                <th>As a…</th>
                <th>I want…</th>
                <th>So that…</th>
            </tr>
        </thead>
      <tbody>     
      <tr>

<td colspan="5">
Business process A: vaccination location registration
</td>
</tr>

    <tr>
        <td>IMMZ.FXNREQ.001</td>
        <td>IMMZ.A1.Obtain vaccination location information</td>
        <td>State Immunization Officer</td>
        <td>The EIR system to be integrated with other existing health registries</td>
        <td>I will know about new vaccination locations and be informed about any updated information</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.002</td>
        <td>IMMZ.A2.Update/anew vaccination location</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to allow manual insertion of a new vaccination location</td>
        <td>I can add and use vaccination locations not in the system</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.003</td>
        <td>IMMZ.A3.Digitize REW microplans</td>
        <td>State Immunization Officer</td>
        <td>The system to have digitized REW microplans</td>
        <td>Plans can be automatically generated for each outreach session</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.004</td>
        <td>IMMZ.A4.Verify information for additional data</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to verify all required vaccination location information is complete</td>
        <td>Any missed fields can be identified</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.005</td>
        <td>IMMZ.A5.Generate unique location identifier</td>
        <td>State Immunization Officer</td>
        <td>The system to generate a unique code for each vaccination location</td>
        <td>The vaccination location will have a unique identifier in the EIR system</td>

    </tr>

    <tr>
        <td>IMMZ.FXREQ.006</td>
        <td>IMMZ.A6. Generate Geo coordinates</td>
        <td>State Immunization Officer</td>
        <td>The system to have geo mapping capabilities</td>
        <td>The vaccination locations can be easily identified</td>

    </tr>

    <tr>
        <td>IMMZ.FXREQ.007</td>
        <td>IMMZ.A7.Obtain Contact information of focal persons</td>
        <td>State Immunization Officer</td>
        <td>The system to include the phone number and email address of the focal person</td>
        <td>I can easily contact the focal person</td>

    </tr>

    <tr>
        <td>IMMZ.FXREQ.008</td>
        <td>IMMZ.A8.Record vaccination location details</td>
        <td>State Immunization Officer</td>
        <td>The system to record vaccination dates, type of facility (public, private, secondary, tertiary) and type of site (fixed, outreach)</td>
        <td>The exact vaccination location details are captured</td>

    </tr>

    <tr>

<td colspan="5"> Business process B: Plan service delivery </td>

    </tr>

        <tr>
        <td>IMMZ.FXNREQ.009</td>
        <td>IMMZ.B1.Review past vaccination records to estimate vaccines needed</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To identify, by checking the information in the system, all clients that are due (or overdue) for vaccination by the next immunization session date</td>
        <td>I can plan my immunization session</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.010</td>
        <td>IMMZ.B2.Review past vaccination records to estimate vaccines needed</td>
        <td>State Immunization Officer</td>
        <td>To sort the list of needed vaccines by antigen</td>
        <td>I know how much of each vaccine is needed</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.011</td>
        <td>IMMZ.B3.Record details on planning sheet</td>
        <td>State Immunization Officer</td>
        <td>To be able to check in the system the available stock at my vaccination location or at the local storage area/warehouse</td>
        <td>I can determine the stock available for use</td>

    </tr>

 <tr>
<td colspan="5">

    Business process C: Client registration

    </td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.012</td>
        <td>IMMZ.C1.Query client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To search for a client using at least two identifying information</td>
        <td>I improve my chances of finding a match and distinguishing between similar records</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.013</td>
        <td>IMMZ.C1.Query client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To search for the client record given some demographic information</td>
        <td>I can find the client record if I do not have the unique ID</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.014</td>
        <td>IMMZ.C1.Query client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to return all potential matches based upon search criteria</td>
        <td>I can find the best match</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.015</td>
        <td>IMMZ.C1.Query client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The ability for searches to include results that look or sound similar to the search term (phonetic search)</td>
        <td>I can find something that may be spelt incorrectly</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.016</td>
        <td>IMMZ.C1.Query client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to prompt a search for the client (check if it is already in the system) prior to starting a new record</td>
        <td>Duplicates are prevented</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.017</td>
        <td>IMMZ.C1.Query client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to retrieve and display, as a search result, a specific set of data (demographic information/photo/unique ID, etc.)</td>
        <td>I can select the correct record</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.018</td>
        <td>IMMZ.C1.Query client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to display the most probable matches at the top of the list</td>
        <td>I can review them first</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.019</td>
        <td>IMMZ.C2.Create client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to enforce a minimal required data set for new registrations</td>
        <td>Sufficient data is entered to be able to identify the client</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.020</td>
        <td>IMMZ.C2.Create client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To select the vaccination location of the client from a list of locations</td>
        <td>Entry errors are prevented</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.021</td>
        <td>IMMZ.C2.Create client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to uniquely identify every client using a system-generated unique identifier or an existing identifier (e.g. national ID, client ID)</td>
        <td>The client can be definitively identified using that number</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.022</td>
        <td>IMMZ.C3.Validate client details</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To be able to modify appropriate client data as needed</td>
        <td>The record contains up-to-date information</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.023</td>
        <td>IMMZ.C3.Validate client details</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to track that I have changed an existing record</td>
        <td>Accountability for data modification is ensured</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.024</td>
        <td>IMMZ.C3.Validate client details</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to identify changes made to the record for my confirmation before saving</td>
        <td>I can have the opportunity to double-check the data to prevent entry errors</td>

    </tr>

     <tr>

<td colspan="5">

    Business process D: Administer vaccine

    </td>

    </tr>

  <tr>

        <td>IMMZ.FXNREQ.025</td>
        <td>IMMZ.D1.Capture or update client history</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to provide a history of previous care (including previous vaccination records)</td>
        <td>I have access and review client's history</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.026</td>
        <td>IMMZ.D1.Capture or update client history</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To add client's health history (including previous vaccination records)</td>
        <td>I can appropriately determine which vaccinations are required</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.027</td>
        <td>IMMZ.D2.Determine required vaccination(s)</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to display vaccines due according to predefined vaccine protocol</td>
        <td>I can assess which vaccines need to be administered</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.028</td>
        <td>IMMZ.D2.Determine required vaccination(s)</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to determine vaccines due for a given client by considering relevant information, such as the age of the client, vaccine products, vaccines already given and predefined vaccine protocol</td>
        <td>It helps me with selecting the appropriate vaccines for the client</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.029</td>
        <td>IMMZ.D3.Determine vaccine(s) to be administered based on contraindications</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To be alerted of any relevant potential contraindications for the vaccine (e.g. based on age, previous allergic reactions, etc.)</td>
        <td>I can withhold the vaccine, if contraindicated</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.030</td>
        <td>IMMZ.D3.Determine vaccine(s) to be administered based on contraindications</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To be able to quickly access information regarding any contraindications by antigen</td>
        <td>I can access all information on contraindications in one place</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.031</td>
        <td>IMMZ.D4.Update client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To document why a vaccine was not given</td>
        <td>The client has a complete record</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.032</td>
        <td>IMMZ.D4.Update client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To update clients’ vaccination record with all relevant information (i.e. date, dose, batch number, lot number, vaccine type, vaccine vial monitor status)</td>
        <td>The client has a complete record, and doses can be traced</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.033</td>
        <td>IMMZ.D4.Update client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to associate the context data for each entry (e.g. the vaccination location where the dose was given, the health worker administering it)</td>
        <td>The client has a complete record and I can investigate if any issues arise</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.034</td>
        <td>IMMZ.D4.Update client record</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To record vaccines in the EPI schedule, any vaccines introduced, COVID-19, TD vaccine for pregnant women, campaign vaccines</td>
        <td>The client has a complete record</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.035</td>
        <td>IMMZ.D5.Determine time for next visit (as needed)</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to display due date of the next vaccine</td>
        <td>I can inform the client when to return for their next vaccination</td>

    </tr>

    <tr>
        <td>IMMZ.FXREQ.Q036</td>
        <td>IMMZ.D6.Generate digital certificate</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to generate a digital certificate with name, age, contact number, QR code and other items as found in the WHO sample certificate</td>
        <td>The client can verify they have been vaccinated</td>

    </tr>

     <tr>

<td colspan="5">
   Business process E; AEFI Monitoring

    </td>

    </tr>

     <tr>
        <td>IMMZ.FXNREQ.037</td>
        <td>IMMZ.E1.Monitor adverse reactions in clients</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The AEFI module to be separate</td>
        <td>I can record any significant observations that may be specific to the client and treat as appropriate</td>

    </tr>

    <tr>
        <td>IMMZ.FXREQ.038</td>
        <td>IMMZ.E2.Follow-up clients</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to be interoperable with the MedSafety App</td>
        <td>I can follow-up vaccine related complications</td>

    </tr>

     <tr>

<td colspan="5">
   Business process F: Client reminder

    </td>

    </tr>

     <tr>
        <td>IMMZ.FXNREQ.039</td>
        <td>IMMZ.F1.Define/evaluate criteria</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To associate a client with a vaccination location to generate a provider-based reminder/recall</td>
        <td>Vaccination location specific lists of clients can be generated</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.040</td>
        <td>IMMZ.F2.Select notification method</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to Call/ SMS/WhatsApp a client</td>
        <td>Notifications will go through the client’s preferred method</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.041</td>
        <td>IMMZ.F3.Send notifications</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to automatically send reminder notification to caregiver a day before appointment or a day after a missed appointment</td>
        <td>They will be alerted of an upcoming or overdue appointment</td>

    </tr>

    <tr>
        <td>IMMZ.FXNREQ.042</td>
        <td>IMMZ.F3.Send notifications</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The notification to include specific details about upcoming immunization session dates and times or outreach dates and times as appropriate</td>
        <td>The client will know specifically when and where to go to receive a vaccination</td>

    </tr>

    <tr>

<td colspan="5"> Business process G: Defaulter tracing  </td>

    </tr>
      <tr>
        <td>IMMZ.FXNREQ.043</td>
        <td>IMMZ.G1.Determine if vaccines were missed</td>
        <td>Routine Immunization Service Provider/ Medical Records Officer</td>
        <td>The system to flag a client as a defaulter after a configured number of reminders are sent</td>
        <td>We can identify those who have not come and are overdue, requiring additional intervention</td>
    </tr>
    <tr>
        <td>IMMZ.FXNREQ.044</td>
        <td>IMMZ.G1.Determine if vaccines were missed</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>The system to be linked to eCHIS</td>
        <td>CHEWS can do follow-ups in the catchment area of the facility.</td>
    </tr>
    <tr>
        <td>IMMZ.FXNREQ.045</td>
        <td>IMMZ.G2.Generate list of clients who are due or overdue for vaccination</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To produce a list of clients who missed their vaccine for each antigen, along with their location and personal information</td>
        <td>I can plan follow-up activities and contact the clients</td>
    </tr>
    <tr>
        <td>IMMZ.FXNREQ.046</td>
        <td>IMMZ.G3.Plan for follow-up directly or during outreach</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To display a list of clients due for specific planned outreach and immunization sessions, based on area</td>
        <td>The immunization session or outreach will have a targeted list of clients, allowing for prioritization of tasks and workload</td>
    </tr>
    <tr>
        <td>IMMZ.FXNREQ.047</td>
        <td>IMMZ.G4.Update record to document reason/lost follow-up</td>
        <td>Routine Immunization Service Provider/Medical Records Officer</td>
        <td>To record reason vaccine was missed</td>
        <td>This information can be used for planning and reporting purposes</td>
    </tr>
    <tr>
        <td>IMMZ.FXNREQ.048</td>
        <td>IMMZ.G4.Update record to document reason/lost follow-up</td>
        <td>Routine Immunization Officer/Medical Officer</td>
        <td>To update client information such as including change of address (moved permanently or temporarily)</td>
        <td>To facilitate the client being contacted or being removed from an immunization session’s list</td>
    </tr>
    <tr>
        <td>IMMZ.FXREQ.049</td>
        <td>IMMZ.G5.Track zero dose children</td>
        <td>State Immunization Officer</td>
        <td>The system to automate follow-up on zero-dose children from linkage to the birth register or from coverage calculations</td>
        <td>I can follow up and have an idea of the number of zero-dose children and communities where zero-dose children are located.</td>
    </tr>

 <tr>
<td colspan="5">Business process H: Report generation  </td>

    </tr>

      <tr>
        <td>IMMZ.FXNREQ.050</td>
        <td>IMMZ.H1.Define parameters for report</td>
        <td>Routine Immunization Service Provider/Medical Records Officer/OIC</td>
        <td>To be able to access the health facility’s dashboard</td>
        <td>I can access and analyze health facility data</td>
    </tr>
    <tr>
        <td>IMMZ.FXNREQ.051</td>
        <td>IMMZ.H1.Define parameters for report</td>
        <td>LGA M&E</td>
        <td>To be able to access LGA and health facility dashboards in my area</td>
        <td>I can generate reports specific to my LGA</td>
    </tr>
    <tr>
        <td>IMMZ.FXNREQ.052</td>
        <td>IMMZ.H1.Define parameters for report</td>
        <td>State M&E</td>
        <td>To be able to access State, LGA, and Health facility data</td>
        <td>I can generate reports specific to my State</td>
    </tr>
    <tr>
        <td>IMMZ.FXNREQ.053</td>
        <td>IMMZ.H2.View and download</td>
        <td>Honourable Minister FMoHSW, DHPRS FMoH, ED, DG NCDC, DDCI, DL&HC, H/RI, RIWG data team, DDPRS, DHIS2 national FP, Head NSCS, EPI Partners</td>
        <td>To be able to view and download reports</td>
        <td>I can view the immunization status at the national level</td>
    </tr>

 <tr>
<td colspan="5">Business process I; Stock Management  </td>

    </tr>
 <tr>
        <td>IMMZ.FXNREQ.054</td>
        <td>IMMZ.I1. Record stock taken</td>
        <td>Cold Chain Officer</td>
        <td>To record stock removed from cold storage and taken to immunization session</td>
        <td>The count for the cold storage will be accurate, and the immunization session stock will be accounted for</td>
    </tr>
    <tr>
        <td>IMMZ.FXNREQ.055</td>
        <td>IMMZ.I1. Record stock taken</td>
        <td>Cold Chain Officer</td>
        <td>The system to maintain a tally of stock available at each location (e.g. stock available in the cold fridge at vaccination location, stock that is out for immunization session)</td>
        <td>I can see where all stock is physically located in real time</td>
    </tr>
 <tr>
<td colspan="5">Administrative Data Access Rights and Controls  </td>

    </tr>
<tr>
        <td>IMMZ.FXREQ.056</td>
        <td>Assign roles</td>
        <td>Officer In Charge (OIC)</td>
        <td>The system to assign roles</td>
        <td>I can assign roles to team members in the facility</td>
    </tr>
    <tr>
        <td>IMMZ.FXREQ.057</td>
        <td>Support back-end</td>
        <td>IT Administrator</td>
        <td>Access to back-end</td>
        <td>I can offer backend support, troubleshooting, and system maintenance</td>
    </tr>
    <tr>
        <td>IMMZ.FXREQ.058</td>
        <td>Create Profiles</td>
        <td>State M&E</td>
        <td>The system to create profiles</td>
        <td>I can create user profiles for LGA and health facility</td>
    </tr>
</tbody>

 </table>
