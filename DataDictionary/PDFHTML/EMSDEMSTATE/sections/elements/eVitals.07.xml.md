

8801023 - Unable to Complete8801019 - Refused8801005 - Exam Finding Not Present
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.07
eVitals.07 - DBP (Diastolic Blood Pressure)
Definition
The patient's diastolic blood pressure.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_05
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Pattern
[5][0][0]|[1-4][0-9][0-9]|[0-9]|[1-9][0-9]|P|p
Data Element Comment
Diastolic blood pressure pattern allows for the following values:
1) A number 0 through 500 
2) P
3) p
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen DBP (Diastolic Blood Pressure) is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen DBP (Diastolic Blood Pressure) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen DBP (Diastolic Blood Pressure) has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).