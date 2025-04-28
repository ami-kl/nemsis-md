

7701003 - Not Recorded7701001 - Not Applicable
dRecord.02
dRecord.02 - Software Name
Definition
The name of the application used to create the record for the agency listed in dAgency.02.
National ElementNoPertinent Negatives (PN)No
State ElementNo
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
50
Data Element Comment
This was added to document the software used to generate the Demographic XML file. This is not the last software which sent
the demographic file from another software.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Software Name is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen Software Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.