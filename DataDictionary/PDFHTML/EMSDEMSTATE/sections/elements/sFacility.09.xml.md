

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.09
sFacility.09 - Facility State
Definition
The state where the facility is located.
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
[0-9]{2}
Data Element Comment
GNIS Codes Website:  http://geonames.usgs.gov/domestic/download_data.htm
Used to populate dFacility.09 Facility State.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Facility State is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Facility State has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_s028WarningType of Facility, Facility Location Code, Facility Street Address, Facility City, and Facility State
should be a unique combination for each facility.
nemSch_s031WarningFacility County should belong within the Facility State.