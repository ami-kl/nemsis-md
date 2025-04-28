

7701003 - Not Recorded7701001 - Not Applicable
StateNational
sConfiguration.03
sConfiguration.03 - Procedures Permitted by the State
Definition
Procedures permitted by the state for the certification/licensure level listed in sConfiguration.02.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
integer
maxInclusive
999999999999999999
minInclusive
100000
Data Element Comment
Used to populate dConfiguration.07 EMS Agency Procedures.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Procedures Permitted by the State is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_s002ErrorWhen Procedures Permitted by the State has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_s003WarningWhen Procedures Permitted by the State has a Not Value, no other value should be recorded.
nemSch_s019WarningProcedures Permitted by the State should be unique (the same procedure should not be listed
more than once for a particular level).