

StateNational
dAgency.04
dAgency.04 - EMS Agency State
Definition
The state/territory which assigned the EMS agency number.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_03
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Pattern
[0-9]{2}
Data Element Comment
This has been clarified to reflect that it is the state associated with the EMS Agency number listed in dAgency.02 – EMS
Agency Number. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_d010WarningThere should be a configuration group where State Associated with this Configuration is the state
recorded in EMS Agency State.
nemSch_d012WarningEMS Certification Levels Permitted to Perform Each Procedure, within the configuration group for
the state recorded in EMS Agency State, should include the level recorded in Level of Service.
nemSch_d013WarningEMS Certification Levels Permitted to Administer Each Medication, within the configuration group
for the state recorded in EMS Agency State, should include the level recorded in Level of Service.