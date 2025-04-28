

7701003 - Not Recorded7701001 - Not Applicable
StateNational
dAgency.25
dAgency.25 - National Provider Identifier
Definition
The National Provider Identifier issued by CMS.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_21
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
Constraints
Data Type
string
length
10
Data Element Comment
Only EMS Agencies billing for service will have an NPI number. 
CMS (Centers for Medicare and Medicaid Services) NPI Registry lookup: 
https://npiregistry.cms.hhs.gov/
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen National Provider Identifier is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen National Provider Identifier has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen National Provider Identifier has a Not Value, no other value should be recorded.