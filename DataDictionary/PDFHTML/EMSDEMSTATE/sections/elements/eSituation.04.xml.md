

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.04
eSituation.04 - Complaint
Definition
The statement of the problem by the patient or the history provider.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_05
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
255
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Complaint is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Complaint has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.