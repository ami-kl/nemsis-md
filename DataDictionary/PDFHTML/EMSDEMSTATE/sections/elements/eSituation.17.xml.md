

stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.17
eSituation.17 - Patient Activity
Definition
The activity the patient was involved in at the time the patient experienced the onset of symptoms or
experienced an injury.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
Y93\.[A-Za-z0-9]{1,4}
Data Element Comment
Code list is represented in ICD-10-CM. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
Code list is represented in ICD-10 Codes. 
Website - http://uts.nlm.nih.gov 
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient Activity is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Patient Activity has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_e009WarningWhen Patient Activity has a Not Value, no other value should be recorded.