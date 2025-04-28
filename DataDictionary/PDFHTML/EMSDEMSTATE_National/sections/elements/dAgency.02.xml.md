

StateNational
dAgency.02
dAgency.02 - EMS Agency Number
Definition
The state-assigned provider number of the responding agency
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_01
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Data Type
string
minLength
1
maxLength
15
Data Element Comment
This is the primary identifier for the entire Demographic Section. Each of the Demographic sections must be associated with
an EMS Agency Number. An EMS Agency can have more than one Agency Number within a state. This reflects the ability for
an EMS Agency to have a different number for each service type or location (based on state implementation). The EMS
Agency Number in dAgency.02 can be used to auto-populate eResponse.01 EMS Agency Number in the EMS Event section.