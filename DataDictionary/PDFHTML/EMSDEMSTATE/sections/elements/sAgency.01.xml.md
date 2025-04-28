

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sAgency.01
sAgency.01 - EMS Agency Unique State ID
Definition
The unique ID assigned to the EMS Agency which is associated with all state licensure numbers and
information.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
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
1
maxLength
50
Data Element Comment
Used to populate dAgency.01 EMS Agency Unique State ID.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen EMS Agency Unique State ID is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen EMS Agency Unique State ID has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_s027WarningEMS Agency Unique State ID and EMS Agency Number should be a unique combination for
each EMS agency.