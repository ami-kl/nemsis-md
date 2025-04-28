

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eInjury.01
eInjury.01 - Cause of Injury
Definition
The category of the reported/suspected external cause of the injury.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE10_01
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
([TV-Y][0-9]{2})((\.[0-9A-Z]{1,4})?)
Data Element Comment
Suggested code list is represented in ICD-10-CM. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
Code list is represented in ICD-10 Codes. 
Website - http://uts.nlm.nih.gov 
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Cause of Injury is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Cause of Injury has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Cause of Injury has a Not Value, no other value should be recorded.
nemSch_e089WarningCause of Injury should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided" and Possible Injury is "Yes".
nemSch_e090WarningCause of Injury should only be recorded when Possible Injury is "Yes".