

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.08
eVitals.08 - Method of Blood Pressure Measurement
Definition
Indication of method of blood pressure measurement.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE14_06
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
3308001Arterial Line
3308003Doppler
3308005Cuff-Automated
3308007Cuff-Manual Auscultated
3308009Cuff-Manual Palpated Only
3308011Venous Line
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Method of Blood Pressure Measurement is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Method of Blood Pressure Measurement has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.