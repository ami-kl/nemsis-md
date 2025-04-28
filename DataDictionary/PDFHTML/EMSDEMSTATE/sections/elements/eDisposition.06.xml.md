

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.06
eDisposition.06 - Destination County
Definition
The destination county in which the patient was delivered or transferred to.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_06
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
May be auto-populated if list created in dFacility.11 (Facility County). Based on the ANSI Code Single Choice based on the
County Name but stored as the ANSI code (combined 5 digit State and County codes) Should be required if there is a patient
associated with the event. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination County is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination County has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e161WarningDestination County should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e162WarningDestination County should belong within the Destination State.