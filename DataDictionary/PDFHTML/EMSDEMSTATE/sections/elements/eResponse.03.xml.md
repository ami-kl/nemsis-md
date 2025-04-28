

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.03
eResponse.03 - Incident Number
Definition
The incident number assigned by the 911 Dispatch System.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_02
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
This number can be used to associate multiple EMS responses, dispatch information, and other information to the same EMS
event or patient.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident Number is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident Number has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.