

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.05
eDisposition.05 - Destination State
Definition
The state of the destination the patient was delivered or transferred to.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_05
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
Based on the ANSI Code. May be auto-populated if list created in dFacility.09 (Facility State).
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination State is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination State has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e160WarningDestination State should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e162WarningDestination County should belong within the Destination State.