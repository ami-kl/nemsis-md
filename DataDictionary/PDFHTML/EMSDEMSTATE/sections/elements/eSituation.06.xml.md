

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.06
eSituation.06 - Time Units of Duration of Complaint
Definition
The time units of the duration of the patient's complaint.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_07
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2806001Seconds
2806003Minutes
2806005Hours
2806007Days
2806009Weeks
2806011Months
2806013Years
Data Element Comment
Associated with eSituation.05 (Duration of the Complaint).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Time Units of Duration of Complaint is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Time Units of Duration of Complaint has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.