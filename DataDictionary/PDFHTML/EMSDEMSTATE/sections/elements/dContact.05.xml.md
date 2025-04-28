

stringData Type: 1minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.05
dContact.05 - Agency Contact Address
Definition
The street address of the agency contact's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_04
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
The address for the director/chief/lead administrator/CEO/ should be the main address for the EMS agency.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact Address is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Contact Address has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.