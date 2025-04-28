

8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.18
eVitals.18 - Blood Glucose Level
Definition
The patient's blood glucose level.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_14
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
PediatricStroke
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Pattern
[2][0][0][0]|[1][0-9][0-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9]|[0-9]|High|Low
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Blood Glucose Level is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Blood Glucose Level has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Blood Glucose Level has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).