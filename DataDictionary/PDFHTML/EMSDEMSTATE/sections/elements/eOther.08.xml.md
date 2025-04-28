

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eOther.08
eOther.08 - Crew Member Completing this Report
Definition
The statewide assigned ID number of the EMS crew member which completed this patient care report.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE23_10
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
If the EMS Professional has a specific ID associated with two states, the ID used would typically be based on the EMS
Agencies state license.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Crew Member Completing this Report is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Crew Member Completing this Report has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.