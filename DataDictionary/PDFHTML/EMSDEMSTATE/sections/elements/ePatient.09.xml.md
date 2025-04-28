

7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.09
ePatient.09 - Patient's Home ZIP Code
Definition
The patient's ZIP code of residence.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE06_08
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
ZIP Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Home ZIP Code is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Patient's Home ZIP Code has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e060WarningPatient's Home ZIP Code should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided".