

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.10
sFacility.10 - Facility ZIP Code
Definition
The zip code where the facility is located.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
ZIP Codes Product Website:  Product:https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
USA - 5-digit ZIP Code Database, Commercial Edition 
Used to populate dFacility.10 Facility ZIP Code.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Facility ZIP Code is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Facility ZIP Code has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.