

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.19
eScene.19 - Incident ZIP Code
Definition
The ZIP code of the incident location.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_15
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
nemSch_e001ErrorWhen Incident ZIP Code is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident ZIP Code has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e072WarningIncident ZIP Code should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".