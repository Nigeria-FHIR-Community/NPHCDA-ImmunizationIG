The decision-support logic component of the adaptation kit provides the decision-support logic and algorithms, as well as the scheduling of services, in accordance with WHO guidelines. In this DAK, the decision logic and algorithms deconstruct the recommendations within the immunization guidelines and guidance into a format that clearly labels the inputs and outputs that would be operationalized in a digital decision-support system.

### Decision Support Logic Overview

The table below provides an overview of the decision-support tables and algorithms for the different business processes in an Immunization system. The structure of the decision-support tables is based on an adaptation of the Decision Model and Notation (DMN), an industry standard for modeling and executing decision logic. These decision-support tables detail the business rules, data inputs, and outputs to support IIS business processes. 

Table 7: Decision Support Logic Overview
<table border="1" class="dataframe table table-striped table-bordered">

    <thead>
        <tr class="header">
            <th>Activity ID & Activity Name</th>
            <th>Tab</th>
            <th>Decision Table ID</th>
            <th>Decision Table Description</th>
            <th>Reference/Source</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>IMMZ.D2 Determine required vaccinations</td>
            <td>BCG Vaccine</td>
            <td>IMMZ.DT.01</td>
            <td>Recommended vaccinations for Bacille Calmette-Guerin (BCG) as per recommendations by WHO and Nigeria</td>
            <td>Nigeria National Immunization policy draft <br> 
            <a href="https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables" target="_blank">WHO Recommendations on Routine Immunization</a></td>
        </tr>
        <tr>
            <td></td>
            <td>Hepatitis B Vaccine</td>
            <td>IMMZ.DT.02</td>
            <td>Recommended vaccinations for Hepatitis B as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Polio Vaccine</td>
            <td>IMMZ.DT.03</td>
            <td>Recommended vaccinations for Polio as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>DTP+HepB+Hib (Pentavalent) Vaccine</td>
            <td>IMMZ.DT.04</td>
            <td>Recommended vaccinations for Diphtheria, Pertussis, and Tetanus (DPT)-containing vaccines + HepB + Hib (Penta) as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Pneumococcal Vaccine</td>
            <td>IMMZ.DT.06</td>
            <td>Recommended vaccinations for pneumococcal as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Rota virus Vaccine</td>
            <td>IMMZ.DT.07</td>
            <td>Recommended vaccinations for Rota virus as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Measles Vaccine</td>
            <td>IMMZ.DT.08</td>
            <td>Recommended vaccinations for measles as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Malaria Vaccine</td>
            <td>IMMZ.DT.09</td>
            <td>Recommended vaccinations for Malaria as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Human Papilloma Vaccine</td>
            <td>IMMZ.DT.10</td>
            <td>Recommended vaccinations for HPV as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Yellow fever Vaccine</td>
            <td>IMMZ.DT.11</td>
            <td>Recommended vaccinations for Yellow fever as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Meningococcal Vaccine</td>
            <td>IMMZ.DT.13</td>
            <td>Recommended vaccinations for Meningococcal as per Nigeria recommendations</td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>Vitamin A supplementation</td>
            <td>IMMZ.DT.14</td>
            <td>Recommended Vitamin A supplementation as per Nigeria recommendations</td>
            <td></td>
        </tr>
    </tbody>

</table>

### Decision-support Tables

Each of the decision logic above have been elaborated on in decision support tables. Below we have highlighted an example of what each component of the decision support table means and highlighted an example of the Yellow fever vaccine decision support table.

<table border="1" class="dataframe table table-striped table-bordered">
   <thead>
<tr class="header"> <th  >Decision ID</th>

            <th colspan="4">The name of the “decision” describing what algorithm or logic is represented (e.g. pre-eclampsia risk counselling). The Decision ID should correspond to the number in the overview table on "overview" tab</th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="4">The description of the decision that needs to be made based on IF/THEN statements with the appropriate data element name for the variables. The rule should demonstrate the relationship between the input variables and the expected outputs and actions within the decision-support logic – e.g. if blood pressure is higher than 140 SBP/90 DBP, then the client should be flagged as a high-risk pregnancy.</th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="4">The event that would indicate when this decision-support logic should appear within the workflow, such as the activity that would trigger this decision to be made.</th>
            </tr>
            </thead>
              <thead>

<tr class="header">

             <th colspan="2">Inputs</th>
            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
        </tr>
    </thead>

   <tbody>

        <tr>
            <td >These are the variables or conditions that need to be considered to determine the consequent actions or outputs.</td>
            <td >If there are multiple input entries on the same row (such as here), these different inputs are considered as “AND” – conditions that need to be in place at the same time.</td>
            <td>The resulting action or decision based on the combination of input entries. This is the statement that immediately follows the “THEN”. Examples of outputs may include a diagnosis, alerts/prompts for referral, or a recommendation to vaccinate.</td>
            <td>Concrete measures to be taken based on the output (refer, provide treatment and/or counselling, conduct test, etc.). In some cases, output and action may be the same.</td>
            <td>Additional explanations or descriptions, including possible pop-up alert messages and relevant background information. This section can also include the written content which would appear in the pop-up messages notifying the health worker on the appropriate next steps, which can include counselling, case management approach, or referral.</td>
        </tr>
        <tr>
            <td >Inputs placed on different rows are considered as <b>“OR”</b> conditions that can be considered independently of the inputs on other rows.</td>
            <td ></td>
              <td ></td>
               <td ></td>
        </tr>
    </tbody>

</table>

 Table 9 . Example decision logic table for Yellow Fever vaccination

<table border="1" class="dataframe table table-striped table-bordered">
   <thead>
<tr class="header"> <th>Decision ID</th>

            <th  colspan="5"> IMMZ.DT.06.Yellow Fever</th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5">If child or person has not been vaccinated, give Yellow Fever vaccine between age 9-12 months</th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> IMMZ.D2 Determine Required Vaccinations if any</th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>

    <td>"Number of doses administered" = 0</td>
    <td>"Age in Months" >= 9</td> 
    <td> Client vaccinated for Yellow Fever - No Doses</td>
    <td>Should vaccinate Client for Yellow Fever because Client received no doses on a 1 dose scheme</td>
    <td>Provide Yellow Fever immunizations – using the "Yellow Fever vaccine immunization – NO PREVIOUS" schedule (1 dose scheme)
    <br>
    <strong>Note:</strong><br>
    This dose is applicable if the following scenarios are met:<br>

    - The country has a Yellow Fever endemic<br>
    - The individual is travelling to a Yellow Fever endemic area<br>
    - The child is 9 months old.<br>
    <br>
    </td>
    <td>
     <a href="https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables" target="_blank">WHO Recommendations for Routine Immunization</a><br>

   <br>

    Nigeria National Immunization Policy Draft

</td>

</tr>
</tbody>
</table>

#### BCG

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="10">IMMZ.DT.01.BCG</th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="10">If child or person has not been vaccinated, give BCG vaccine as soon as possible after birth</th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="10"> IMMZ.D2 Determine Required Vaccinations if any </th>
            </tr>
            </thead>
    <thead>

<tr class="header">
 <th colspan="7">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

 <tbody> 

    <tr>
    <td style="width:10%">Number of BCG primary series doses administered Count of vaccines administered (where "Vaccine type" = "BCG vaccines" and "Type of dose" = "Primary series")</td>
    <td>Client's age Today's date − "Date of birth"</td>
    <td>Client's HIV status</td>
    <td>Client's antiretroviral therapy (ART) status</td>
    <td>Is client immunologically stable</td>
    <td>Client's tuberculosis (TB) infection test result</td>
    <td>Is client clinically well</td>
    <td></td>
     <td></td> <td></td> <td></td>
    </tr>
    <tr>
    <td>No BCG primary series dose was administered Count of vaccines administered (where "Vaccine type" = "BCG vaccines" and "Type of dose" = "Primary series") = 0</td>
    <td>Client's age is less than or equal to 28 days Today's date − "Date of birth" ≤ 28 days (Neonate)</td>
    <td>Client's HIV status is negative or unknown "HIV status" ≠ "HIV-positive"</td>
    <td> - </td>  <td> - </td>  <td> - </td>  <td> - </td>
    <td>Client is due for BCG vaccination "Immunization recommendation status" = "Due"</td>
    <td>Vaccinate client with first BCG dose as no BCG dose was administered, client is within age range, and HIV status is not positive Check for contraindications.</td>
    <td><b>WHO Recommendation:</b> Neonates born to women of unknown HIV status should be vaccinated as the benefits of BCG vaccination outweigh the risks. Neonates of unknown HIV status born to HIV-infected women should be vaccinated if they have no clinical evidence suggestive of HIV infection.</td>
    <td>WHO recommendations for routine immunization - summary tables: <a href="https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables" target="_blank">https://www.who.int/teams/immunization-vaccines-and-biologicals/policies/who-recommendations-for-routine-immunization---summary-tables</a></td>
    </tr>

<tr>
<td></td><td></td>
<td>Client's HIV status is positive "HIV status" = "HIV-positive"</td>
<td>Client is currently receiving antiretroviral therapy "Currently on ART" = TRUE</td>
<td>Client is immunologically stable "Immunologically stable" = TRUE </td>
<td> - </td>
<td> - </td>
<td>Client is due for BCG vaccination "Immunization recommendation status" = "Due" </td>
<td>Vaccinate client with first BCG dose as no BCG dose was administered, and client is immunologically stable. Check for contraindications. </td>
<td><b>WHO Recommendation:</b> For neonates with HIV infection confirmed by early virological testing, BCG vaccination should be delayed until ART has been started and the infant confirmed to be immunologically stable (CD4 > 25%). Moderate-to-late preterm infants (gestational age > 31 weeks) and low-birth-weight infants (< 2500 g) who are healthy and clinically stable can receive BCG vaccination at birth, or at the latest, upon discharge.</td>
<td></td>
</tr>
<tr>
<td></td><td></td><td></td><td></td>
<td>Client is not immunologically stable "Immunologically stable"= FALSE</td>
<td> - </td>
<td> - </td>
<td> Client is not due for BCG vaccination "Immunization recommendation status" = "Not Administered" </td>
<td> Do not vaccinate client with first BCG dose as client is not immunologically stable. Check for any vaccines due and inform the caregiver of when to come back for the first BCG dose. </td>
<td> <b>WHO Recommendation:</b> For neonates with HIV infection confirmed by early virological testing, BCG vaccination should be delayed until ART has been started and the infant confirmed to be immunologically stable (CD4 > 25%). </td>
</tr>
  
<tr>
<td></td>
<td></td>
<td></td>
<td>Client is currently not receiving antiretroviral therapy "Currently on ART" = FALSE</td>
<td> - </td>
<td> - </td>
<td> - </td>
<td>Client is not due for BCG vaccination "Immunization recommendation status" = "Not Administered"</td>
<td>Should not vaccinate client with first BCG dose as client is not currently receiving ART. Check for any vaccines due and inform the caregiver of when to come back for the first BCG dose.</td>
<td></td>
</tr>
<tr>
<td></td>
<td>Client's age is between 28 days and  11 months</td>
<td>Client's HIV status is negative or unknown "HIV status" ≠ "HIV-positive"</td>
<td> - </td>
<td> - </td>
<td>Client's TB infection test result is negative "TB infection test result" = "Negative"</td>
<td> - </td>
<td>Client is due for BCG vaccination "Immunization recommendation status" = "Due"</td>
<td>Should vaccinate client with first BCG dose as no BCG dose was administered, and client's TB test result is negative. Check for contraindications.</td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td> - </td>
<td> - </td>
<td>Client's TB infection test result is unknown (test not done or no result yet) "TB infection test result" IS NULL</td>
<td> - </td>
<td>Clinical judgement is required. Create clinical note."Immunization recommendation status" = "Further evaluation needed"</td>
<td>Recommend the client to perform TB infection testing. Re-evaluate client once the test result is available.</td>
<td></td>
</tr><tr>
<td></td>
<td></td>
<td></td>
<td> - </td>
<td> - </td>
<td>Client's TB infection test result is positive "TB infection test result" = "Positive"</td>
<td> - </td>
<td>Client is not due for BCG vaccination "Immunization recommendation status" = "Not Administered"</td>
<td>Should not vaccinate client with first BCG dose as client's TB infection test result is positive. Consider evaluating for TB disease or for TB preventive treatment (TPT) eligibility (once TB disease is ruled out).</td>
<td></td>
</tr><tr>
<td></td>
<td></td>
<td>"Client's HIV status is positive
""HIV status"" = ""HIV-positive"""

</td>
<td>Client is currently receiving antiretroviral therapy "Currently on ART" = TRUE</td>
<td>Client is immunologically stable "Immunologically stable" = TRUE</td>
<td> * </td>
<td> Client is clinically well "Clinically well" = TRUE</td>
<td>Client is due for BCG vaccination "Immunization recommendation status" = "Due"</td>
<td>Vaccinate client with first BCG dose as no BCG dose was administered, client is receiving ART, clinically well and immunologically stable. Check for contraindications.</td>
<td><b>WHO Recommendation:</b> If children infected with HIV are receiving ART and are clinically well and immunologically stable (CD4% > 25% for children aged under 5 years), they should be vaccinated with BCG.</td>
</tr><tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Client is not immunologically stable "Immunologically stable" = FALSE</td>
<td> * </td>
<td>Client is not clinically well "Clinically well" = FALSE</td>
<td>Client is not due for BCG vaccination "Immunization recommendation status" = "Not Administered"</td>
<td>Should not vaccinate client with first BCG dose as client is not clinically well and/or immunologically stable.
Check for any vaccines due, and inform the caregiver of when to come back for the first BCG dose.</td>
<td></td>
</tr><tr>
<td></td>
<td></td>
<td></td>
<td>
  Client is currently not receiving antiretroviral therapy<br>
  "Currently on ART" = FALSE<br></td>
  <td> - </td>
<td> - </td>
<td> * </td>
 <td> Client is not due for BCG vaccination<br>
  "Immunization recommendation status" = "Not Administered"<br></td>
  <td>Should not vaccinate client with first BCG dose as client is not currently receiving ART.<br>
  Check for any vaccines due and inform the caregiver of when to come back for the first BCG dose.
</td>
 
<td></td>
</tr><tr>
<td></td>
<td>Client's age is more than 11months Today's date − ""Date of birth"" ≥ 11months </td>
<td>Client's HIV status is negative or unknown "HIV status" ≠ "HIV-positive"
</td>
<td> - </td>
<td> - </td>
<td>Client's TB infection test result is negative "TB infection test result" = "Negative"</td>
<td></td>
<td>Client is overdue for BCG vaccination</td>
<td>Should not vaccinate client with BCG dose as the Nigeria Immunization schedule has a limit of 11 months for BCG</td>
<td><b>WHO Recommendation:</b> BCG vaccination is also recommended for unvaccinated older children, adolescents and adults negative for TST or IGRA who are in settings with high incidence of TB and/or high leprosy burden, those moving from low-to-high TB incidence/leprosy burden settings and persons at risk of occupational exposure in low and high TB incidence areas (e.g. health workers, laboratory workers, medical students, prison workers, other individuals with occupational exposure)</td>
</tr><tr>
<td></td>
<td></td>
<td></td>
<td> - </td>
<td> - </td>
<td>Client's TB infection test result is unknown (test not done or no result yet) "TB infection test result"" IS NULL</td>
<td> - </td>
<td>Clinical judgement is required. Create clinical note. "Immunization recommendation status" = "Further evaluation needed"</td>
<td>Should not vaccinate client with first BCG dose as client's TB infection test result is positive. Consider evaluating for TB disease or for TB preventive treatment (TPT) eligibility (once TB disease is ruled out).</td>
<td style="border-bottom: none; "></td>
</tr><tr>
<td></td>
<td></td>
<td></td>
<td> - </td>
<td> - </td>
<td>Client's TB infection test result is positive "TB infection test result" = "Positive"</td>
<td> - </td>
<td>Client is overdue for BCG vaccination "Immunization recommendation status" = "Not Administered"</td>
<td></td>
<td style="border-bottom: none; "></td>
</tr><tr>
<td></td>
<td></td>
<td>Client's HIV status is positive "HIV status" = "HIV-positive"</td>
<td>Client is currently receiving antiretroviral therapy "Currently on ART" = TRUE
</td>
<td>Client is immunologically stable "Immunologically stable" = TRUE</td>
<td> * </td>
<td>Client is clinically well "Clinically well" = TRUE</td>
<td>Client is overdue for BCG vaccination "Immunization recommendation status" = "Overdue"</td>
<td>No BCG dose is administered, client is receiving ART, clinically well and immunologically stable.</td>
<td></td>
</tr>
<tr>
<td></td><td></td><td></td><td></td>
<td>Client is not immunologically stable "Immunologically stable" = FALSE</td>
<td> * </td>
<td>Client is not clinically well "Clinically well" = FALSE</td>
<td>Client is not due for BCG vaccination "Immunization recommendation status" = "Not Administered"</td>
<td>Should not vaccinate client with first BCG dose as client is not clinically well and/or immunologically stable and is overdue for first BCG dose</td>
<td style="border-bottom: none; "></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>Client is currently not receiving antiretroviral therapy "Currently on ART" = FALSE</td>
<td> - </td>
<td> * </td>
<td> - </td>
<td>Client is not due for BCG vaccination "Immunization recommendation status" = "Not Administered"</td>
<td>Should not vaccinate client with first BCG dose as client is not currently receiving ART and is overdue for  first BCG dose</td>
<td></td>
<td></td>
</tr>
</tbody>
</table>
<br>
<hr>

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5">IMMZ.D5.DT.BCG contraindications</th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5">Check for contraindications before administering the vaccine(s) due</th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5">IMMZ.D5 Determine vaccine(s) to be administered based on contraindications</th>
            </tr>
            </thead>
    <thead>

<tr class="header">
 <th colspan="2">Potential contraindications</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

 <tbody> 
 <tr>
  <td>The client is pregnant<br>"Potential contraindications" = "Currently pregnant"</td>
   <td>–</td>
  <td>BCG vaccination is contraindicated<br>"Immunization recommendation status" = "Contraindicated"</td>
  <td>Do not vaccinate client with BCG as BCG vaccination is not recommended during pregnancy</td>
   <td>–</td>
  <td>WHO recommendations for routine immunization – summary tables (January 2025) (1)</td>
</tr>

<tr>
  <td>The client has history of severe allergic reactions<br>"Potential contraindications" = "Severe allergic reactions"</td>
  <td>–</td>
  <td>BCG vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.<br>"Immunization recommendation status" = "Further evaluation needed"</td>
  <td>Do not vaccinate client with BCG if the client had previous allergic reaction to any component of the vaccine</td>
   <td>–</td>
  <td style="border-bottom: none; ">BCG vaccines: WHO position paper (February 2018) (2)</td>
</tr>

<tr>
  <td>The client has immunodeficiency syndromes<br>"Potential contraindications" = "Immunodeficiency syndromes"</td>
   <td>–</td>
  <td>BCG vaccination is contraindicated<br>"Immunization recommendation status" = "Contraindicated"</td>
  <td>Do not vaccinate client with BCG as BCG vaccination is contraindicated for clients with immunodeficiency syndromes</td>
  <td><b>WHO Recommendation:</b> BCG vaccination is contraindicated for persons with congenital cell-mediated or severe combined immunodeficiency, immunodeficiency syndromes (e.g. HIV/AIDS, known or suspected congenital immunodeficiency, leukaemia, lymphoma or other malignant disease)</td>
  <td style="border-bottom: none; "></td>
</tr>

<tr>
  <td style="border-bottom: none; ">The client is exposed to immunosuppressive treatment<br>"Potential contraindications" = "Exposed to immunosuppressive treatment"</td>
  <td>Client's age is less than 1 year<br>"Age" &lt; 1 year</td>
  <td>BCG vaccination is contraindicated<br>"Immunization recommendation status" = "Contraindicated"</td>
  <td>Do not vaccinate client with BCG as BCG vaccination is contraindicated for clients undergoing immunosuppressive treatment</td>
  <td><b>WHO Recommendation: </b>BCG vaccination is contraindicated for patients undergoing immunosuppressive treatment (e.g. corticosteroids, alkylating agents, biological response modifiers, antimetabolites, radiation). Infants exposed to immunosuppressive treatment in utero or via breastfeeding should not receive BCG vaccination</td>
  <td style="border-bottom: none; "></td>
</tr>

<tr>
<td></td> 
  <td>BCG vaccination could be contraindicated. Clinical judgement is required. Create a clinical note.<br>"Immunization recommendation status" = "Further evaluation needed"</td>
  <td>Do not vaccinate client with BCG if client is exposed to or receives immunosuppressive treatment</td>
  
  <td></td>
  <td ></td>
</tr>

<tr>
  <td colspan="6"><strong>Note:</strong> While vaccines are universally recommended, some clients may have contraindications to particular vaccines. Additional contraindications may be included in WHO position paper for the vaccine – BCG vaccines: WHO position paper (February 2018) (2).</td>
</tr>

 </tbody>
 </table>

 <hr>

 <table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Schedule ID</th>

            <th colspan="11">IMMZ.D18.S.BCG schedule</th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="11"></th>
           </tr> 
            </thead>
            <thead>
            <tr class="header">
            <th>Service name </th> 
            <th>Service description</th>
            <th>Trigger event</th>
            <th>Trigger date</th>
            <th>Create condition</th>
            <th>Due date</th>
            <th>Overdue </th>
            <th>Expiration </th>
            <th>Completion</th>
            <th>Comments</th>
            <th>Reference(s)</th>
        </tr>
    </thead>
    <tbody>
   <tr>
      <th><i>The name of the service for which the schedule is relevant</i></th>
      <th><i>Description of the service (to provide clarity)</i></th>
      <th><i>What event signals the start of the service schedule?</i></th>
      <th><i>What is the date of the signalling event that will be used to determine a service’s due date?</i></th>
      <th><i>Are there any conditions that specify when a service should be given?</i></th>
      <th><i>How is the due date of the service calculated?</i></th>
      <th><i>When does the service become overdue?</i></th>
      <th><i>When does the service expire?</i></th>
      <th><i>How does the health worker complete the service?</i></th>
      <th></th>
      <th> </th>
    </tr>
     <tr>
      <td>Bacille Calmette–Guérin (BCG) dose 1</td>
      <td>Provision of the BCG dose</td>
      <td>Child's birth</td>
      <td>"Date of birth"</td>
      <td>"BCG dose should be provided if the client has not received any BCG doses and is in a high incidence of tuberculosis (TB) and/or high leprosy burden. It should also be provided after a negative test result for tuberculin skin test (TST) or interferon-gamma release assay (IGRA) tests. The client should also receive vaccination if they are infected with HIV, on antiretroviral therapy (ART) and clinically well and immunologically stable. This dose also applies to neonates born to women with an unknown HIV status, as well as neonates with an unknown HIV status who were born to women infected with HIV. BCG dose should be provided up to 23 months, and during outbreaks/supplementary immunization activities up to 59 months of age."</td>
      <td>"Date of birth"</td>
      <td>To be determined by Nigeria MoH</td>
      <td>To be determined by Nigeria MoH</td>
      <td>"One BCG dose from the primary series was administered. The primary series has been completed
        ""Completed the primary vaccination series"" = TRUE (where ""Vaccine type"" = ""BCG vaccines"")"</td>
        <td></td>
        <td>"WHO recommendations for routine immunization – summary tables (January 2025)<br>
Nigeria - 2024 draft National Immunisation Policy v3"</td>
    </tr>
    </tbody>
    </table>

#### Polio

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Yellow Fever

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Measles

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Pneumococcal

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### DPT Hep B-Hib

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Rotavirus

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### HPV

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Vitamin A

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Malaria

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Covid 19

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Meningococcal

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>

#### Td for pregnant women

<table border="1" class="dataframe table table-striped table-bordered">
   <thead><tr class="header"> <th>Decision ID</th>

            <th  colspan="5"></th>
            </tr>
            <tr class="header">
            <th>Business Rule</th>
            <th colspan="5"></th>
           </tr> <tr class="header">
            <th>Trigger</th>
            <th colspan="5"> </th>
            </tr>
            </thead>
              <thead>

<tr class="header">
 <th colspan="2">Inputs</th>

            <th>Output</th>
            <th>Action</th>
            <th>Annotations</th>
            <th>Reference(s)</th>
        </tr>
    </thead>

   <tbody> 
<tr>
</tr>
</tbody>
</table>
