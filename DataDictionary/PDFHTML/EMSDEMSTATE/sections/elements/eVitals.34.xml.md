

8801019 - Refused8801023 - Unable to Complete
7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.34
eVitals.34 - Stroke Scale Score
Definition
The stroke score value associated with the stroke scale type listed in eVitals.30.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Stroke
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
42
Data Element Comment
Score associated with the stroke scale listed in eVitals.30
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Stroke Scale Score is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Stroke Scale Score has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Stroke Scale Score has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).