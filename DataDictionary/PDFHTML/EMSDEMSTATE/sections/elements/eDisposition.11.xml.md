

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eDisposition.11
eDisposition.11 - Number of Patients Transported in this EMS Unit
Definition
The number of patients transported by this EMS crew and unit.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
100
Data Element Comment
Added to document multiple patients being transported with the same vehicle and crew.
Version 3 Changes Implemented
Added to document multiple patients being transported with the same vehicle and crew.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Number of Patients Transported in this EMS Unit is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Number of Patients Transported in this EMS Unit has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.