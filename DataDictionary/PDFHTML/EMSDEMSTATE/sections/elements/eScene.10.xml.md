

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eScene.10
eScene.10 - Incident Facility Code
Definition
The state, regulatory, or other unique number (code) associated with the facility if the Incident is a
Healthcare Facility.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_08
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
This may be populated from a list created within dFacility.03 (Facility Location Code) or dFacility.05 (Facility National Provider
Identifier).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident Facility Code is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident Facility Code has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.