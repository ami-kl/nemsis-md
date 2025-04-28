

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Defined List Maintenance Policy      
Purpose and Scope 
The purpose of this policy is to improve the quality of EMS patient care documentation by updating  
documentation code lists known as “Defined Lists” on a regular schedule to ensure consistency in 
reporting and code inclusion for emerging issues.  
  
Defined Lists are created for consistency in reporting among EMS clinicians and to improve accuracy 
when utilizing data for agency reporting, quality assurance (QA) or research purposes. States and local 
agencies have the flexibility to add additional codes to the list as needed, however, they are encouraged 
to carefully consider any specific additions since excessive lists create an additional burden for the EMS 
clinician.  
 
Defined Lists referred to in this policy are associated with NEMSIS elements capturing:  
1. Cause of Injury: eInjury.01; 
2. Provider’s Primary and Secondary Impressions: eSituation.11 and eSituation.12; 
3. Primary and Other Associated Symptoms: eSituation.09 and eSituation.10; 
4. Incident Location Type: eScene.09; 
5. Medication Given: eMedications.03, dConfiguration.09*, sConfiguration.05*; and 
6. Procedures: eProcedures.03, dConfiguration.07*, sConfiguration.03*. 
 
*Defined Lists for eMedications.03 and eProcedures.03 can be used to configure State and Agency level 
files.  
Maintenance Expectations 
The NEMSIS TAC and the Defined Lists Review Committee will review and update the Defined Lists 
annually.  
 
The update will be completed and disseminated in the summer of each year for inclusion in vendor 
software compliance test cases for the following year (e.g., An update to a Defined List is completed and 
disseminated in September 2023. That updated list will be reflected in compliance testing beginning 
January 2024.). 
 
Only Defined Lists with changes will be updated. A change log for each year will be included with each list 
update. 
 
 
 
 
  

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Location and Formats 
Defined Lists are made available in XML, JSON, and text files. They are located under “DefinedLists” in the 
NemsisPublic Git Repository: 
https://stash.utahdcc.org/stash/projects/NEP/repos/nemsis_public/browse.   
 
Reference materials are also provided on the NEMSIS website: https://nemsis.org/technical-
resources/version-3/version-3-resources/.  
 
Defined Lists Review Committee 
The Review Committee will consist of the following representatives: 
1. One representative from a State Office of EMS;  
2. Two active field clinicians (one basic and one advanced life support) with experience in data 
collection; 
3. One EMS Medical Director or EMS-focused physician; 
4. One EMS field software vendor; 
5. One EMS biller;  
6. One member of the NEMSIS TAC; and  
7. NEMSIS Liaison to NASEMSO. 
 
Committee participants will be invited to participate by the NEMSIS TAC. If the participant is unable to 
perform their duties, the TAC will identify and invite a replacement. Committee members will not be 
permitted to name a replacement on their behalf. Stakeholders are welcome to indicate their interest in 
the committee to the designated NEMSIS TAC team member and will be taken into consideration. The 
final selection of the committee members will be determined by the TAC and NHTSA’s Office of EMS.  
 
  

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Revision Requests 
Revisions to a Defined List may be submitted by any stakeholder by submitting a service desk ticket here: 
https://nemsis.atlassian.net/servicedesk/customer/portals.  
 
Revisions may also be submitted by members of the Review Committee, the NEMSIS TAC, and NHTSA’s 
Office of EMS. Revision requests will be reviewed by the committee in the next scheduled meeting.   
 
The submitter will be notified by the TAC of the final decision from the Review Committee.  
 
Considerations 
Revisions to the lists may include: 
1. Additions; 
2. Removal/replacement of retired codes; and/or 
3. Replacing a code with one more appropriate for EMS documentation, and/or code revisions 
designed to add clarity for the EMS clinician.  
 
Code considerations will include: 
1. Frequency of code use; 
2. Applicability to EMS care and documentation; and  
3. Emerging trends. 
 
Other considerations: 
1. Reducing redundancy, documentation burden and any overlap that may exist between the 
Defined Lists (e.g., similar codes existing in both Provider Impressions and Patient Symptoms 
lists); and 
2. Primary consideration is the documentation burden placed on the field clinician. Excessive lists 
will continue to be discouraged. 
 
Codes will be selected, updated or replaced with those most appropriate to the EMS industry. Preference 
will be shown for: 
1. “Procedure” and “regime/therapy” codes found in the SNOMED CT standard for Procedures; 
2. “Multiple ingredient” and “ingredient” codes found in the RxNorm standard for Medications, 
avoiding name brand codes if possible; and 
3. Billable codes to support reimbursement. 
 
Notification and Dissemination 
Notification of updates to Defined Lists will be provided during the following: 
1. The NEMSIS bi-monthly v3 Implementation Calls; 
2. National Association of State EMS Officials council meetings; and  
3. The NEMSIS Google Group forum.  
 
The TAC will update and publish the related resources including multiple formats for use by States and 
software developers. 
  

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Suggested Lists 
Other recommended code lists provided by the NEMSIS Technical Assistance Center (TAC) are referred to 
as “Suggested Lists”. These lists are associated with NEMSIS data elements not defined as “Required” or 
“Mandatory” in the NEMSIS v3.5 data standard. Suggested Lists may be updated as needed, but are not 
subject to the same maintenance schedule as Defined Lists, as they are a courtesy resource. 
(https://nemsis.org/technical-resources/version-3/version-3-resources/)  
 
For convenience, Suggested Lists are provided in the same formats (XML, JSON, text) as Defined Lists and 
can be found in the same repository: 
https://stash.utahdcc.org/stash/projects/NEP/repos/nemsis_public/browse.  
  
Suggested Lists and their associated NEMSIS element: 
1. Patient Activity (eSituation.17); 
2. Medication Allergies (eHistory.06); 
3. Environmental/Food Allergies (eHistory.07); and 
4. Medical/Surgical History (eHistory.08).  
 
Use of Suggested Lists is not associated with nor required for software compliance to the NEMSIS v3.5 
data standard.  
 
Questions or Comments 
For questions or comments regarding this policy, contact Cassie Longhart at 
cassie.longhart@hsc.utah.edu or email support@nemsis.atlassian.net.   
 