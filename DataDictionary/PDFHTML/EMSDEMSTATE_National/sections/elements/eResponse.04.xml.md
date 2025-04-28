

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.04
eResponse.04 - EMS Response Number
Definition
The internal EMS response number which is unique for each EMS Vehicle's (Unit) response to an incident
within an EMS Agency.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_03
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
3
maxLength
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen EMS Response Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen EMS Response Number has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.