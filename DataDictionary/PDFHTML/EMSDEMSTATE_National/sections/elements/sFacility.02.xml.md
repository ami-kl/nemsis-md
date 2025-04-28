

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.02
sFacility.02 - Facility Name
Definition
The name of the facility.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_11
Is NillableYes
UsageRecommended
Recurrence0 : 1
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
Used to populate dFacility.02 Facility Name
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Facility Name is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Facility Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.