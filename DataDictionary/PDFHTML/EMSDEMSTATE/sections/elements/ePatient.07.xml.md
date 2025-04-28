

7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.07
ePatient.07 - Patient's Home County
Definition
The patient's home county or parish of residence.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE06_06
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}
Data Element Comment
Based on the ANSI Code Single Choice based on the County Name but stored as the ANSI code (combined 5 digit State and
County codes) Should be required if there is a patient associated with the event. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Home County is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Patient's Home County has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_e057WarningPatient's Home County should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided".
nemSch_e058WarningPatient's Home County should belong within the Patient's Home State.