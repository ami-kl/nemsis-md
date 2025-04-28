

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.07
eAirway.07 - Crew Member ID
Definition
The statewide assigned ID number of the EMS crew member confirming the airway placement.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Crew Member ID is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Crew Member ID has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.