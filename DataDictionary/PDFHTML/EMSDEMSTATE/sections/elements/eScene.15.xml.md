

stringData Type: 1minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eScene.15
eScene.15 - Incident Street Address
Definition
The street address where the patient was found, or, if no patient, the address to which the unit responded.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_11
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident Street Address is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident Street Address has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.