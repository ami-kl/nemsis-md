

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.05
eSituation.05 - Duration of Complaint
Definition
The duration of the complaint.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_06
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
integer
minInclusive
1
maxInclusive
365
Data Element Comment
Associated with eSituation.06 (Time Units of Duration of the Complaint).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Duration of Complaint is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Duration of Complaint has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.