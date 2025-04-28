

8801023 - Unable to Complete8801019 - Refused
eVitals.33
eVitals.33 - Revised Trauma Score
Definition
The patient's Revised Trauma Score.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE14_27
Is NillableYes
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Trauma
Attributes
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
12
Data Element Comment
The Unweighted Revised Trauma Score is a physiological scoring system that is based on the first set of vital signs obtained
from the patient, and consists of Glasgow Coma Scale, Systolic Blood Pressure and Respiratory Rate.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Revised Trauma Score is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e008ErrorWhen Revised Trauma Score has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).