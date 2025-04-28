

8801023 - Unable to Complete8801019 - Refused8801005 - Exam Finding Not Present
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.06
eVitals.06 - SBP (Systolic Blood Pressure)
Definition
The patient's systolic blood pressure.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_04
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
500
Data Element Comment
Required for ACS-Field Triage and other patient scoring systems.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen SBP (Systolic Blood Pressure) is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen SBP (Systolic Blood Pressure) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen SBP (Systolic Blood Pressure) has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).