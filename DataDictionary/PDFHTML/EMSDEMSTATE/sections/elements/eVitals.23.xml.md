

8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.23
eVitals.23 - Total Glasgow Coma Score
Definition
The patient's total Glasgow Coma Score.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_19
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
3
maxInclusive
15
Data Element Comment
Can be documented or calculated from EVitals.19 (GCS-Eye), EVitals.20 (GCS-Verbal), and EVitals.21 (GCS-Motor).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Total Glasgow Coma Score is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Total Glasgow Coma Score has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Total Glasgow Coma Score has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).