

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.02
dPersonnel.02 - EMS Personnel's First Name
Definition
The first name of the personnel.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD08_03
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
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's First Name is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen EMS Personnel's First Name has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.