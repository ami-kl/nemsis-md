

StateNational
dAgency.06
dAgency.06 - EMS Agency Service Area County(ies)
Definition
The county(ies) within each state for which the agency formally provides service.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_04
Is NillableNo
UsageMandatory
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Pattern
[0-9]{5}
Data Element Comment
Each state listed is associated with the counties, census tracts, and ZIP codes within the EMS Agency Service Area for each
state. County codes are based on ISO/ANSI codes. It is a 5-digit code based on state (2-digit) and county (3-digit). 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_d006ErrorEMS Agency Service Area County(ies) should belong to the state with which it is grouped.
nemSch_d007WarningEMS Agency Census Tracts should belong to a county recorded in EMS Agency Service Area
County(ies) in the state with which it is grouped.