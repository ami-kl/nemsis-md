

7701003 - Not Recorded7701001 - Not Applicable
StateNational
dAgency.08
dAgency.08 - EMS Agency Service Area ZIP Codes
Definition
The ZIP codes for the EMS Agency's service area.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
This data element was added to better document the service area of the EMS Agency. Each state listed is associated with the
counties, census tracts, and ZIP codes within the EMS Agency Service Area for each state. 
Zip Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Agency Service Area ZIP Codes is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Agency Service Area ZIP Codes has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_d003WarningWhen EMS Agency Service Area ZIP Codes has a Not Value, no other value should be recorded.