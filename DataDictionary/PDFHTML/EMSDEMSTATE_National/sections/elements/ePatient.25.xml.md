

8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.25
ePatient.25 - Sex
Definition
The patient's sex.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
9919001Female
9919003Male
9919005Unknown
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Sex is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Sex has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e008ErrorWhen Sex has a Pertinent Negative, it should be empty and it should not have a Not Value (Not
Applicable, Not Recorded, or Not Reporting).
nemSch_e193WarningSex should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care Provided".