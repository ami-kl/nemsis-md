

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.22
dPersonnel.22 - EMS Personnel's State of Licensure
Definition
The state of the certification/licensure ID number assigned to the personnel member.
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
Pattern
[0-9]{2}
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's State of Licensure is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element
is optional).
nemSch_d002ErrorWhen EMS Personnel's State of Licensure has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.