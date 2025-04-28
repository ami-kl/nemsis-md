

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.08
dContact.08 - Agency Contact ZIP Code
Definition
The ZIP code of the Agency's contact's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_07
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
The address for the director/chief/lead administrator/CEO/ should be the main address for the EMS agency. 
Zip Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact ZIP Code is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Contact ZIP Code has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.