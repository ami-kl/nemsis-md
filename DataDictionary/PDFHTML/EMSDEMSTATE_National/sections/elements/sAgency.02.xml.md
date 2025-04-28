

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sAgency.02
sAgency.02 - EMS Agency Number
Definition
The state-assigned provider number of the EMS agency.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_01
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
15
Data Element Comment
This may be the EMS Agency Name or a unique number assigned by the state EMS office. This is required to document
multiple license types and numbers associated with the same EMS agency. 
Used to populate the following data elements: 
dAgency.02 EMS Agency Number 
eScene.03 Other EMS or Public Safety Agency ID Number 
eDisposition.02 Destination/Transferred To, Code (for transfer of EMS care)
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen EMS Agency Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen EMS Agency Number has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_s027WarningEMS Agency Unique State ID and EMS Agency Number should be a unique combination for
each EMS agency.