

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.11
eSituation.11 - Provider's Primary Impression
Definition
The EMS personnel's impression of the patient's primary problem or most significant condition which led to
the management given to the patient (treatments, medications, or procedures).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_15
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
Code list is represented in ICD-10-CM. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
ICD-10-CM 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Provider's Primary Impression is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Provider's Primary Impression has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e077WarningPossible Injury should be "Yes" when a symptom or impression is injury-related.
nemSch_e082WarningProvider's Primary Impression should be recorded when Type of Service Requested is
"Emergency Response (Primary Response Area)" and Patient Evaluation/Care is "Patient
Evaluated and Care Provided".
nemSch_e083WarningProvider's Secondary Impressions should only be recorded when Provider's Primary Impression
is recorded.