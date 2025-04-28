

8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.17
eVitals.17 - Carbon Monoxide (CO)
Definition
The numeric value of the patient's carbon monoxide level measured as a percentage (%) of
carboxyhemoglobin (COHb).
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
decimal
minInclusive
0
maxInclusive
100
totalDigits
3
fractionDigits
1
Data Element Comment
Version 3 Changes Implemented
Added to allow use of new patient monitoring devices.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Carbon Monoxide (CO) is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Carbon Monoxide (CO) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Carbon Monoxide (CO) has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).