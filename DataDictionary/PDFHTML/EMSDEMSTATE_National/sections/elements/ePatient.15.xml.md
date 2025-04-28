

8801029 - Approximate
7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.15
ePatient.15 - Age
Definition
The patient's age (either calculated from date of birth or best approximation) at the time of the incident.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE06_14
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
1
maxInclusive
120
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Age is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Age has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e063WarningAge should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e065WarningAge Units should be recorded when Age is recorded.
nemSch_e190ErrorWhen Age has a Pertinent Negative of "Approximate", it should have a value and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).