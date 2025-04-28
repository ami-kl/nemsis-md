

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.12
eSituation.12 - Provider's Secondary Impressions
Definition
The EMS personnel's impression of the patient's secondary problem or most significant condition which led
to the management given to the patient (treatments, medications, or procedures).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_16
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
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
nemSch_e001ErrorWhen Provider's Secondary Impressions is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Provider's Secondary Impressions has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Provider's Secondary Impressions has a Not Value, no other value should be recorded.
nemSch_e077WarningPossible Injury should be "Yes" when a symptom or impression is injury-related.
nemSch_e083WarningProvider's Secondary Impressions should only be recorded when Provider's Primary Impression
is recorded.