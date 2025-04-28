

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.09
eSituation.09 - Primary Symptom
Definition
The primary sign and symptom present in the patient or observed by EMS personnel.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_13
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
(R[0-6][0-9](\.[0-9]{1,4})?|(R73\.9)|(R99))|([A-QSTUZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,4})?)
Data Element Comment
eSituation.02 (Possible Injury), eSituation.09 (Primary Symptom), eSituation.07 (Chief Complaint Anatomic Location), and
eSituation.08 (Chief Complaint Organ System) are grouped together to form the EMS Reason for Encounter. 
Code list is represented in ICD-10-CM Diagnosis Codes. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
ICD-10-CM 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Primary Symptom is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Primary Symptom has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e077WarningPossible Injury should be "Yes" when a symptom or impression is injury-related.
nemSch_e080WarningPrimary Symptom should be recorded when Type of Service Requested is "Emergency
Response (Primary Response Area)" and Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e081WarningOther Associated Symptoms should only be recorded when Primary Symptom is recorded.