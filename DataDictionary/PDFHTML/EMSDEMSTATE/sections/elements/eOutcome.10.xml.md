

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.10
eOutcome.10 - Emergency Department Diagnosis
Definition
The practitioner's description of the condition or problem for which Emergency Department services were
provided.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
[A-Z][0-9][0-9A-Z]((\.[0-9A-Z]{1,4})?)
Data Element Comment
Code list is represented in ICD-10-CM: Diagnosis Codes. 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Version 3 Changes Implemented
Added to better evaluate EMS care.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Emergency Department Diagnosis is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Emergency Department Diagnosis has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Emergency Department Diagnosis has a Not Value, no other value should be recorded.