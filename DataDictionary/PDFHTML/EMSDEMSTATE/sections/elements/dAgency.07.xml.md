

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
dAgency.07
dAgency.07 - EMS Agency Census Tracts
Definition
The US census tracts in which the EMS agency formally provides service.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
[0-9]{11}
Data Element Comment
This data element was added to better document the service area of the EMS Agency. Each state listed is associated with the
counties, census tracts, and ZIP codes within the EMS Agency Service Area for each state. 
The format of the census tract number must be an 11-digit number, based upon the 2010 census, using the pattern: 
2-digit State Code 3-digit County Code 6-digit Census Tract Number (no decimal) 
Example: NEMSIS TAC office (UT, Salt Lake County, Census Tract - located at 295 Chipeta Way, Salt Lake City, UT)
49035101400 
Census Tract Data Website (files and descriptions): 
https://www.census.gov/geographies/reference-files/2010/geo/relationship-files.html
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Agency Census Tracts is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen EMS Agency Census Tracts has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen EMS Agency Census Tracts has a Not Value, no other value should be recorded.
nemSch_d007WarningEMS Agency Census Tracts should belong to a county recorded in EMS Agency Service Area
County(ies) in the state with which it is grouped.