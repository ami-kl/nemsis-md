

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.07
eDisposition.07 - Destination ZIP Code
Definition
The destination ZIP code in which the patient was delivered or transferred to.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_07
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
May be auto-populated if list created in dFacility.10 (Facility ZIP Code).
ZIP Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination ZIP Code is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination ZIP Code has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e163WarningDestination ZIP Code should be recorded when Transport Disposition is "Transport by This EMS
Unit...".