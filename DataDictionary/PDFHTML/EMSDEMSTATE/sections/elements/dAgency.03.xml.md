

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.03
dAgency.03 - EMS Agency Name
Definition
The formal name of the agency.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_02
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Agency Name is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen EMS Agency Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.