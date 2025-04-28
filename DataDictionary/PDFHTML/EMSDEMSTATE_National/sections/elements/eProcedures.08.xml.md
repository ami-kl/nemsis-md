

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.08
eProcedures.08 - Response to Procedure
Definition
The patient's response to the procedure.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_08
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9916001Improved
9916003Unchanged
9916005Worse
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Response to Procedure is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Response to Procedure has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.