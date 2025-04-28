

8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.27
eVitals.27 - Pain Scale Score
Definition
The patient's indication of pain from a scale of 0-10.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_23
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
PediatricSTEMITrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
10
Data Element Comment
The Pain Score can be obtained from several pain measurement tools or pain scale types (eVitals.28). The pain scale type
used should have a numeric value associated with each diagram as appropriate. If the pain scale type utilizes multiple
indicators/categories the total should be calculated and entered for the pain score associated with the patient assessment.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Pain Scale Score is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Pain Scale Score has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Pain Scale Score has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).