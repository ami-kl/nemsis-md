

8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
ePatient.03
ePatient.03 - First Name
Definition
The patient's first (given) name.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE06_02
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Pertinent negatives accepted with option of "Unable to Complete" or "Refused".
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen First Name is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen First Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e008ErrorWhen First Name has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).