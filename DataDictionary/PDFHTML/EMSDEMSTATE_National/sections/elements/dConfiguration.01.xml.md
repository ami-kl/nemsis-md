

StateNational
dConfiguration.01
dConfiguration.01 - State Associated with this Configuration
Definition
The state associated with this configuration.
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
Associated with the state (dAgency.04 - EMS Agency State). 
GNIS Codes Website:  http://geonames.usgs.gov/domestic/download_data.htm
The state EMS system does not need to import this information into their database. Reference the Demographic Dataset
Submission Guide for further details.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d010WarningThere should be a configuration group where State Associated with this Configuration is the state
recorded in EMS Agency State.
nemSch_d011WarningState Associated with this Configuration should be unique (the same state should not be listed
more than once).
nemSch_d012WarningEMS Certification Levels Permitted to Perform Each Procedure, within the configuration group for
the state recorded in EMS Agency State, should include the level recorded in Level of Service.
nemSch_d013WarningEMS Certification Levels Permitted to Administer Each Medication, within the configuration group
for the state recorded in EMS Agency State, should include the level recorded in Level of Service.