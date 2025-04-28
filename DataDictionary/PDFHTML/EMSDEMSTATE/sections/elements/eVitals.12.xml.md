

8801023 - Unable to Complete8801019 - Refused8801005 - Exam Finding Not Present
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.12
eVitals.12 - Pulse Oximetry
Definition
The patient's oxygen saturation.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_09
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
100
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Pulse Oximetry is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Pulse Oximetry has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Pulse Oximetry has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).