

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.21
dAgency.21 - EMS Patient Contact Volume per Year
Definition
The number of EMS patient contacts per year based on last calendar year.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_17
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
400,000,000
Data Element Comment
This statistical information is associated with the EMS Agency's specific EMS Agency Number (dAgency.02). A value should
be associated with each with (dAgency.15) Statistical Calendar Year.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Patient Contact Volume per Year is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Patient Contact Volume per Year has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.