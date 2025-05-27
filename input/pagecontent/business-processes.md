A business process, or process, is a set of related activities or tasks performed together to achieve the objectives of the health Programme area, such as registration, counseling, and referrals. 
Workflows are a visual representation of the progression of activities (tasks, events, and interactions) that are performed within the business process. The workflow provides a story for the business process being diagrammed and is used to enhance communication and collaboration among users, stakeholders, and engineers.


The business processes here have been informed by <a href="https://www.who.int/publications/i/item/9789240099456"> WHO Digital adaptation kit for immunizations.</a>

### Business Processes

#### Table 2: Overview of Business Processes

<table border="1" class="dataframe table table-striped table-bordered">
  <thead>

    <tr>
      <th>#</th>
      <th>Process Name</th>
      <th>Process ID</th>
      <th>Personas</th>
      <th>Objectives</th>
      <th>Task Set</th>
    </tr>

  </thead>
  <tbody>
   <tr>

      <td></td>
      <td>Title</td>
      <td>ID used to reference this process throughout the DAK</td>
      <td>Individuals interacting to complete the process</td>
      <td>A concrete statement describing what the process seeks to achieve</td>
      <td>The general set of activities performed within the process</td>
    </tr>

   <tr>

    <td>A</td>
    <td>Vaccination Location Registration</td>
    <td>IMMZ.A</td>
    <td>EIR Staff</td>
    <td>All vaccinator locations (public sector facilities, government facilities) able to administer vaccines should be registered and uniquely identified to allow vaccine coverage and stock.</td>
    <td>
      <ol>
        <li>Starting point: EIR staff registers a new vaccination location.</li>
        <li>Validate against the national facility master list (NFML).</li>
        <li>Notify NMFL of changes/updates.</li>
        <li>Request and submit additional information.</li>
        <li>Create and update vaccination location record.</li>
        <li>Generate EIR Unique identifier.</li>
        <li>Send vaccination location registration notification.</li>
      </ol>
    </td>

  </tr> <tr>

      <td>B</td>
      <td>Plan service delivery</td>
      <td>IMMZ.B</td>
      <td>Health worker</td>
      <td>In preparation for a vaccination session, ensure sufficient supply and plan their workload.</td>
      <td>
        <ol>
          <li>Starting point: The health worker reviews vaccination records to determine vaccine needs estimates.</li>
          <li>Record details on the planning sheet.</li>
          <li>Order additional stock.</li>
          <li>Record stock received.</li>
          <li>Assemble all needed materials for vaccination.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>C</td>
      <td>Client Registration</td>
      <td>IMMZ.C</td>
      <td>Health worker</td>
      <td>To create and/or update client’s lifelong vaccine record in the EIR to support future vaccine administration.</td>
      <td>
        <ol>
          <li>Starting point: The client arrives at the vaccination location and the health worker locates the client’s immunization history.</li>
          <li>Search for the client’s record via the EIR.</li>
          <li>Review and update the client’s record.</li>
          <li>Create new client records as required.</li>
          <li>Save the record.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>D</td>
      <td>Vaccine administration</td>
      <td>IMMZ.D</td>
      <td>Health worker</td>
      <td>To determine what vaccines a client needs, administer those and record the data both in the system and the client’s home-based vaccination record.</td>
      <td>
        <ol>
          <li>Starting point: The client has been registered in the system.</li>
          <li>Query client’s record.</li>
          <li>Determine the required vaccines.</li>
          <li>Prepare and administer vaccines.</li>
          <li>Record the appropriate data.</li>
          <li>Monitor the client for any adverse effects of vaccination.</li>
          <li>Inform the client when to return for vaccination and set client reminder.</li>
          <li>Generate digital vaccination certificate.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>E</td>
      <td>AEFI Monitoring</td>
      <td>IMMZ.E</td>
      <td>Health worker</td>
      <td>To monitor and record AEFI.</td>
      <td>
        <ol>
          <li>Starting point: The client reports AEFI.</li>
          <li>The health worker searches the record and records the AEFI against the vaccine administered.</li>
          <li>Counsels the client and treats them appropriately.</li>
          <li>Advises client on when to come for the next vaccine.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>F</td>
      <td>Client reminder</td>
      <td>IMMZ.F</td>
      <td>Health worker</td>
      <td>This is to remind clients that it is time to return for vaccination.</td>
      <td>
        <ol>
          <li>Starting point: The client’s records are evaluated to determine if they meet the defined criteria.</li>
          <li>Select notification method.</li>
          <li>Generate a list of clients.</li>
          <li>Send reminder notifications.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>G</td>
      <td>Defaulter tracing</td>
      <td>IMMZ.G</td>
      <td>Community health worker</td>
      <td>To identify clients that are overdue for follow-up.</td>
      <td>
        <ol>
          <li>Starting point: Clients are overdue for vaccination.</li>
          <li>Determine if and which vaccines were missed.</li>
          <li>Generate a list of clients and their contact information.</li>
          <li>Send the client’s info to the respective CHPs.</li>
          <li>Plan for follow-up.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>H</td>
      <td>Report generation</td>
      <td>IMMZ.H</td>
      <td>Health worker</td>
      <td>To provide data access and analysis for decision-making.</td>
      <td>
        <ol>
          <li>Starting point: Define the reporting parameters.</li>
          <li>Generate report.</li>
          <li>High-level review and analyze.</li>
        </ol>
      </td>
    </tr>
    <tr>
      <td>I</td>
      <td>Stock management</td>
      <td>IMMZ.I</td>
      <td>Health worker</td>
      <td>To track vaccine availability to avoid stockouts and shortages that could lead to missed vaccinations. This also helps prevent vaccine wastage due to expiry and demand forecasting.</td>
      <td>
        <ol>
          <li>Starting point: Healthcare worker receiving vaccine stock from respective vaccine depot.</li>
          <li>Receive vaccine stocks. Allow the user to receive vaccine stocks.</li>
          <li>Dispatch vaccines (Issue Stock).</li>
          <li>Monitor stock levels - be able to tell what is available at the facility.</li>
        </ol>
      </td>
    </tr>

  </tbody>
  </table>

#### Table 3: Business process symbols used in workflows

<table border="1" class="dataframe table table-striped table-bordered">
  <thead>

    <tr>
      <th>Symbol</th>
      <th>Symbol Name</th>
      <th>Description</th>
    </tr>

  </thead>
  <tbody>
  <tr>

      <td><img src="swim-lane.png" alt="swim-lane" style="width:85%"/></td>
      <td>Swim lane</td>
      <td>Each individual or type of user is assigned to a swim lane, a designated area for noting the activities performed or expected of that specific actor. For example, a family planning health worker may have one swim lane; the supervisor would be in another swim lane; the clients/patients would be classified in another swim lane. If the activities can be performed by either actor, then those activities can be depicted overlapping the two relevant swim lanes.</td>
    </tr>
    <tr>
      <td><img src="start-event.png" alt="start-event" style="width:85%"/></td>
      <td>Start event or Trigger event</td>
      <td>The workflow diagram should contain both a start and an end event, defining the beginning and completion of the task, respectively.</td>
    </tr>
    <tr>
      <td><img src="end-event.png" alt="end-event" style="width:85%"/></td>
      <td>End event</td>
      <td>There can be multiple end events depicted across multiple swimlanes in a business process diagram. However, for diagram clarity, there should only be one end event per swim lane.</td>
    </tr>
    <tr>
      <td><img src="activity.png" alt="activity" style="width:85%"/></td>
      <td>Activity, Process, Step or Task</td>
      <td>Each activity should start with a verb, e.g., “Register client”, “Calculate risk”. Between the start and end of a task, there should be a series of activities noted - in the successive actions performed by the actor for that swim lane. There can also be sub-processes within each activity.</td>
    </tr>
    <tr>
      <td><img src="activity-with-sub-process.png" alt="activity-with-sub-process" style="width:85%"/></td>
      <td>Activity with sub-process</td>
      <td>This symbol denotes an activity that has a much longer sub-process, to be detailed in another diagram. If the diagram starts to become too complex and unhelpful, the sub-process symbol should be used to reference this sub-another process depicted on another diagram page. (Activity with sub-process in grey box is not covered in this DAK).</td>
    </tr>
    <tr>
      <td><img src="sequence-flow.png" alt="sequence-flow" style="width:85%"/></td>
      <td>Sequence flow</td>
      <td>This symbol denotes the flow direction from one process to the next. The end event should not have any output arrows. All symbols (except the Start event) may have an unlimited number of input arrows. All symbols (except the end event and the Gateway) should have one and only one output arrow, leading to a new symbol, looping back to a previously used symbol, or pointing to the End event symbol. Connecting arrows should not intersect (cross) each other.</td>
    </tr>
    <tr>
      <td><img src="gateway.png" alt="gateway" style="width:85%"/></td>
      <td>Gateway</td>
      <td>This symbol is used to depict a fork, or decision point, in the workflow, which may be a simple binary (for example, yes/no) filter with two corresponding output arrows or a different set of outputs. In this document, there should typically be only two different outputs that originate from the decision point. If you find yourself needing more than two “output” or sequence flow direction arrows, this is most likely trying to depict “decision-support logic” or a “business rule”. This should be depicted as an “Activity with business rule”.</td>
    </tr>
    <tr>
      <td><img src="throw-link.png" alt="throw-link" style="width:85%"/></td>
      <td>Throw – Link</td>
      <td>The “Throw–Link” serves as the start of an off-page connector. It is the end of the process when there is no more room on your page for that workflow. It is the end of a process on your current page or the end of a sub-process that is part of a larger process. When used, there will need to be a corresponding “Catch–Link” on the other page that shows the continuation of the workflow that follows the “Throw–Link”.</td>
    </tr>
    <tr>
      <td><img src="catch-link.png" alt="catch-link" style="width:85%"/></td>
      <td>Catch – Link</td>
      <td>The “Catch–Link” serves as an off-page connector. It is the start of a new process that follows a previous process, a continuation of a process from a previous page, on a different page from the “Throw – Link” or the start of a sub-process that is part of a larger process. Every “CatchLink” needs to align with at least one corresponding “Throw–Link” that is aligned to the prior process diagram “Catch–Link”.</td>
    </tr>
    <tr>
      <td><img src="loop-activity.png" alt="loop-activity" style="width:85%"/></td>
      <td>Loop Activity</td>
      <td>This “Loop Activity” or loop task symbolizes an activity or task that is repeated until it no longer needs to be repeated. For example, vaccine administration can happen as many times as the number of vaccines that need to be given.</td>
    </tr>

  </tbody>
  </table>

The overview of the business processes in this DAK captures all business processes at a high level.

 <div> 
<img src="summary-flow.png" alt="summary" style="width:85%"/>
</div>

### Workflows

#### Health Facility Registration 

<b> Objective: </b> To register and uniquely identify vaccination locations in order to administer vaccines and enable appropriate tracking of vaccine coverage and stock.
 
 <div> 
<img src="health-facility-registration.png" alt="health_facility_registration.png" style="width:85%"/>
</div>
<br>

#### Plan Service delivery

<b> Objective: </b> To prepare for an immunization session, either at the vaccination location or done at an outreach site.
 
 <div> 
<img src="plan-service-delivery.png" alt="plan-service-delivery.png" style="width:85%"/>
</div>
<br>

#### Client registration

<b> Objective: </b> To start the client’s lifelong immunization record.
 
 <div> 
<img src="client-registration.png" alt="client-registration" style="width:85%"/>
</div>
<br>

#### Vaccine administration
<b> Objective: </b> To determine what vaccines a client needs, administer those, and record the data both in the system and on the client’s vaccination card.
 <div> 
<img src="administer-vaccine.png" alt="administer-vaccine.png" style="width:85%"/>
</div>
<br>

#### Manage AEFIs
<b> Objective: </b> To manage caregiver reports or client presenting at health facilities with cases of AEFI based on set triggers.
 
 <div> 
<img src="manage-aefi.png" alt="manage-aefi.png" style="width:85%"/>
</div>
<br>

#### Client reminder 
<b> Objective: </b> To send vaccination reminders to community health workers that certain clients are due for vaccination.
 
 <div> 
<img src="client-reminder.png" alt="client-reminder.png" style="width:85%"/>
</div>
<br>

#### Defaulter tracing
<b> Objective: </b> To identify clients that are overdue for follow-up
 
 <div> 
<img src="defaulter-tracing.png" alt="defaulter-tracing.png" style="width:85%"/>
</div>
<br>

#### Report generation
<b> Objective: </b> To provide data access and analysis for decision-making
 
 <div> 
<img src="report-generation.png" alt="report-generation.png" style="width:85%"/>
</div>
<br>
 