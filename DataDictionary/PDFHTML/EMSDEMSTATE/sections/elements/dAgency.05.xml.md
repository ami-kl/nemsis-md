

StateNational
dAgency.05
dAgency.05 - EMS Agency Service Area States
Definition
The states in which the EMS Agency provides services including the state associated with the EMS Agency
Number.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
Each state is captured as a group where the EMS agency provides service. The group includes dAgency.05, dAgency.06,
dAgency.07, and Agency.08. 
Element added to document all of the states in which the EMS agency provides services. Each state listed is associated with
the counties, census tracts, and ZIP codes within the EMS Agency Service Area for each state. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_d006ErrorEMS Agency Service Area County(ies) should belong to the state with which it is grouped.
nemSch_d007WarningEMS Agency Census Tracts should belong to a county recorded in EMS Agency Service Area
County(ies) in the state with which it is grouped.