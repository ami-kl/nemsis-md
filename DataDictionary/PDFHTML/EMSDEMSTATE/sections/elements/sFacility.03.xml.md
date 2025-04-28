

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.03
sFacility.03 - Facility Location Code
Definition
The code of the facility as assigned by the state.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_12
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Used to populate dFacility.03 Facility Location Code.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Facility Location Code is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen Facility Location Code has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_s028WarningType of Facility, Facility Location Code, Facility Street Address, Facility City, and Facility State
should be a unique combination for each facility.