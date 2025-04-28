

7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.16
ePatient.16 - Age Units
Definition
The unit used to define the patient's age.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE06_15
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2516001Days
2516003Hours
2516005Minutes
2516007Months
2516009Years
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Age Units is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Age Units has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e064WarningAge Units should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e065WarningAge Units should be recorded when Age is recorded.