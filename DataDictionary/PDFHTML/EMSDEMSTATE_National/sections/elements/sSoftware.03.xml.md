

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sSoftware.03
sSoftware.03 - Software Version
Definition
The version of the application used to create this state data set record.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
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
nemSch_s001ErrorWhen Software Version is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Software Version has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.