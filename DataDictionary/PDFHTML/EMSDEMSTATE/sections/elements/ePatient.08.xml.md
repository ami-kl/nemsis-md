

7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.08
ePatient.08 - Patient's Home State
Definition
The state, territory, or province where the patient resides.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE06_07
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{2}
Data Element Comment
The ANSI Code Selection by text but stored as ANSI code.
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Home State is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Patient's Home State has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e058WarningPatient's Home County should belong within the Patient's Home State.
nemSch_e059WarningPatient's Home State should be recorded when Patient Evaluation/Care is "Patient Evaluated and
Care Provided".