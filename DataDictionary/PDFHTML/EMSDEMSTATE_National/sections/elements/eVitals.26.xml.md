

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.26
eVitals.26 - Level of Responsiveness (AVPU)
Definition
The patient's highest level of responsiveness.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE14_22
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
3326001Alert
3326003Verbal
3326005Painful
3326007Unresponsive
Data Element Comment
Definition changed to indicate highest level of responsiveness.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Level of Responsiveness (AVPU) is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Level of Responsiveness (AVPU) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.