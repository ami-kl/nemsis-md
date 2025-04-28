

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.11
sFacility.11 - Facility County
Definition
The county where the facility is located.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}
Data Element Comment
GNIS Codes Website:  http://geonames.usgs.gov/domestic/download_data.htm
Used to populate dFacility.11 Facility County.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Facility County is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Facility County has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_s031WarningFacility County should belong within the Facility State.