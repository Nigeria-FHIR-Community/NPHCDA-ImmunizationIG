CodeSystem: NGClinicalStatusCS
Id: nigeria-clinical-status 
Title: "NG Adverse Event Clinical Status"
Description: "A classification system that represents the current clinical status of an individual who experienced an Adverse Event Following Immunization (AEFI), based on medical observation, investigation, or follow-up assessment."
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-clinical-status"
* ^status = #active
* ^content = #complete
* #active "Active" "The clinical condition is currently present, ongoing, or requires active management or monitoring."
* #inactive "Inactive" "The clinical condition is no longer present but is not considered resolved; it may recur or requires no current treatment."
* #resolved "Resolved" "The clinical condition has completely resolved and is no longer impacting the patient’s health or requiring further management."
* #recovered "Recovered" "The individual has recovered fully from the adverse event without any long-term effects or sequelae."
* #recovered-with-sequelae "Recovered with sequelae" "The individual has recovered from the adverse event but with lasting effects, complications, or disabilities."
* #death "Death" "The adverse event resulted in the death of the individual."


CodeSystem: NGImmunizationSessionTypeCS
Id: nigeria-immunization-session-type
Title: "NG Immunization Session types"
Description: "A standardized classification of vaccine types administered for the prevention of specific diseases, identified by the antigen or disease target (e.g., BCG, HepB, OPV, Pentavalent, MR)."
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-session-type"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Immunization session types
* #fixed	"Fixed session" "An immunization session conducted at a static health facility or designated fixed site where routine immunization services are regularly available."
* #outreach	"Outreach session" "An immunization session conducted outside of fixed sites, typically within a 5–10 km radius of a health facility, aimed at increasing access for underserved populations."
* #mobile	"Mobile session" "An immunization session delivered by a mobile team traveling to hard-to-reach or remote areas beyond the normal outreach distance, often using vehicles or other transport."


CodeSystem: NGImmunizationContraindicationCS
Id: nigeria-immunization-contraindication
Title: " NG Vaccine contraindications"
Description: "A set of standardized codes used to represent clinical conditions, diagnoses, or circumstances that serve as contraindications to the administration of one or more vaccines."
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-contraindication"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Immunization Contraindications
* #immuno	"Immunocompromised" "The individual has a weakened immune system due to a medical condition (e.g., cancer, organ transplant, or immunosuppressive therapy), which contraindicates certain live vaccines."
* #severe-aefi	"severe AEFI" "The individual is currently experiencing a severe febrile or respiratory illness (REFI), which may necessitate deferral of immunization until recovery."
* #anaphylactic	"Anaphylactic reactions" "The individual has a documented history of a severe allergic (anaphylactic) reaction to a previous dose of a vaccine or any of its components, making re-administration contraindicated."
* #hiv "HIV positive" "The individual has symptomatic HIV infection, which may contraindicate live vaccines or require specific vaccine schedules based on immunological status."


CodeSystem: NGImmunizationSiteCS
Id: nigeria-immunization-site
Title: "NG Vaccine Site"
Description: "This CodeSystem captures the specific anatomical location on the patient’s body where a vaccine was administered."
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-immunization-site"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Immunization site
* #right-upper-arm "Right upper arm" "The vaccine is administered into the deltoid muscle of the right upper arm, commonly used for intramuscular or subcutaneous injections in older children and adults."
* #left-upper-arm	"Left upper arm" "The vaccine is administered into the deltoid muscle of the left upper arm, typically used when alternating injection sites or based on provider preference."
* #mouth "Mouth" "The vaccine is administered orally via the mouth, usually applicable for oral polio vaccine (OPV) or rotavirus vaccine."
* #antero-lateral-right-thigh "Antero-lateral Aspect of Right Thigh" "The vaccine is administered into the antero-lateral (front-side) part of the right thigh, commonly used in infants for intramuscular injections."
* #antero-lateral-left-thigh "Antero Lateral Aspect of Left Thigh" "The vaccine is administered into the antero-lateral (front-side) part of the left thigh, often used in infants when giving multiple vaccines."


/* CodeSystem: NigeriaImmunizationRouteCS
Id: nigeria-immunization-route
Title: "NG Vaccine Route"
Description: "This CodeSystem captures path by which a vaccine or medicinal product is introduced into the body."
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-immunization-route"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Immunization site
* #oral "Oral" "The vaccine is administered through the mouth and swallowed, typically used for oral vaccines like rotavirus or oral polio vaccine (OPV)."
* #Intradermal "Intradermal" "The vaccine is injected into the dermal layer of the skin, just below the surface. This route is commonly used for BCG vaccination."
* #Intramuscular "Intramuscular" "The vaccine is injected deep into the muscle tissue, allowing for rapid absorption. This is the most common route for many vaccines, such as DTP or hepatitis B."
* #Subcutaneous "Subcutaneous" "The vaccine is injected into the layer of fat and tissue just under the skin. It is typically used for vaccines like measles or yellow fever."
 */

CodeSystem: NigeriaAllergySeverityCS
Id: nigeria-allergy-severity
Title: "NG Reaction Severity"
Description: "This CodeSystem captures the assessed severity of an allergic reaction following immunization."
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-allergy-severity"
* ^status = #active
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for  Allergy Severity
* #mild "Mild" "The allergic reaction involves mild symptoms such as localized redness, itching, or rash, without systemic involvement or need for significant medical intervention."
* #moderate "Moderate" "The reaction includes more pronounced symptoms like widespread hives, mild breathing difficulty, or swelling that requires medical observation or treatment but is not life-threatening."
* #severe "Severe" "The reaction is life-threatening or requires urgent medical attention, such as anaphylaxis, severe respiratory distress, or cardiovascular compromise."


/* CodeSystem: NigeriaVerificationStatusCS
Id: nigeria-verification-status 
Title: "NG Adverse Events Verification Status"
Description: "This element captures the confirmed clinical outcome or current state of an Adverse Event Following Immunization (AEFI) based on clinical assessment, investigation, or follow-up."
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-verification-status"
* ^status = #active
* ^content = #complete
* #confirmed "Confirmed" "The reported adverse event has been assessed and confirmed to be a genuine AEFI based on available evidence and investigation."
* #unconfirmed "Unconfirmed" "The reported adverse event is currently under investigation or lacks sufficient evidence to confirm or refute its classification as an AEFI."
* #refuted "Refuted" "The reported adverse event has been assessed and found not to be related to immunization; it is ruled out as an AEFI."
* #entered-in-error "Entered in Error" "The report was mistakenly entered or does not constitute a valid AEFI record and has been retracted or marked as invalid."
 */

/* CodeSystem: NigeriaPrimaryVaccineStatusCS
Id: nigeria-primary-vaccine-status
Title: "NG Client's primary vaccine status"
Description: "This CodeSystem defines list of options for Client's primary vaccine status"
* ^url = "http://nphcda.gov.ng/ig/fhir/CodeSystem/ng-vaccine-statusCS"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^publisher = "NPHCDA"
* ^jurisdiction = urn:iso:std:iso:3166#NG "Nigeria"
// The CodeSystem for Pregnancy Status
* #complete	"Complete" "Client has completed all primary vaccines"
* #notcomplete	"Not Complete" "The Client has not completed all primary vaccines" */
