

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sAgency.03
sAgency.03 - EMS Agency Name
Definition
The formal name of the EMS agency.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_02
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
2
maxLength
100
Data Element Comment
An EMS agency can have more than one Agency Number within a state. This reflects the ability for an EMS agency to have a
different number for each service type or location (based on state implementation). 
Used to populate the following data elements: 
dAgency.03 EMS Agency Name 
eScene.02 - Other EMS or Public Safety Agencies at Scene 
eDisposition.01 - Destination/Transferred To, Name (for transfer of EMS care)
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen EMS Agency Name is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen EMS Agency Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.