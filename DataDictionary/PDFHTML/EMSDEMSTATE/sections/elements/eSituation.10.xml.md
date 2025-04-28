

stringData Type: 2minLength: 255maxLength: 
8801031 - Symptom Not Present
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.10
eSituation.10 - Other Associated Symptoms
Definition
Other symptoms identified by the patient or observed by EMS personnel.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE09_14
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
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
nemSch_e001ErrorWhen Other Associated Symptoms is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Other Associated Symptoms has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e005ErrorWhen Other Associated Symptoms has a Pertinent Negative, it should have a value and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Other Associated Symptoms has a Not Value, no other value should be recorded.
nemSch_e077WarningPossible Injury should be "Yes" when a symptom or impression is injury-related.
nemSch_e081WarningOther Associated Symptoms should only be recorded when Primary Symptom is recorded.