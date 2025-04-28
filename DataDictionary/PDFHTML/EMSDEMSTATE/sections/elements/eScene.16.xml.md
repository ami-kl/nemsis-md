

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eScene.16
eScene.16 - Incident Apartment, Suite, or Room
Definition
The number of the specific apartment, suite, or room where the incident occurred.
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
string
minLength
1
maxLength
15
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident Apartment, Suite, or Room is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident Apartment, Suite, or Room has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.