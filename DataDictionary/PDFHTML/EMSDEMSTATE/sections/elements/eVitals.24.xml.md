

8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.24
eVitals.24 - Temperature
Definition
The patient's body temperature in degrees Celsius/centigrade.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_20
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Pediatric
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
decimal
totalDigits
3
fractionDigits
1
minInclusive
0
maxInclusive
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Temperature is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Temperature has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_e008ErrorWhen Temperature has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).