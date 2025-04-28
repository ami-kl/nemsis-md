

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.05
eProcedures.05 - Number of Procedure Attempts
Definition
The number of attempts taken to complete a procedure or intervention regardless of success.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_05
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
integer
minInclusive
1
maxInclusive
10
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Number of Procedure Attempts is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Number of Procedure Attempts has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.