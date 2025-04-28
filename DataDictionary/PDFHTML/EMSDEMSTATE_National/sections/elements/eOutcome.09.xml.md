

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.09
eOutcome.09 - Emergency Department Procedures
Definition
The procedures performed on the patient during the emergency department visit.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9A-HJ-NP-Z]{3,7}
Data Element Comment
ICD-10-PCS has a seven character alphanumeric code structure. Each character contains up to 34 possible values. Each
value represents a specific option for the general character definition (e.g., stomach is one of the values for the body part
character). The ten digits 0-9 and the 24 letters A-H,J-N and P-Z may be used in each character. The letters O and I are not
used in order to avoid confusion with the digits 0 and 1. 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Version 3 Changes Implemented
Added to better evaluate EMS care.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Emergency Department Procedures is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Emergency Department Procedures has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.