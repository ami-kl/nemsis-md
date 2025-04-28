

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.06
eProcedures.06 - Procedure Successful
Definition
Indicates that this individual procedure attempt which was performed on the patient was successful.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_06
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Procedure Successful is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure Successful has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.