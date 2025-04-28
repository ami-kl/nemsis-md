

8801023 - Unable to Complete8801019 - Refused8801005 - Exam Finding Not Present
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.10
eVitals.10 - Heart Rate
Definition
The patient's heart rate expressed as a number per minute.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_07
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
Pulse Rate and Electronic Monitor Rate have been merged with an additional data element for Method of Heart Rate
Measurement.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Heart Rate is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Heart Rate has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e008ErrorWhen Heart Rate has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).