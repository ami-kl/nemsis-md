

9904003 - Work9904001 - Personal
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.11
dContact.11 - Agency Contact Email Address
Definition
The primary email address of the Agency contact.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_10
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
EmailAddressType
Constraints
Data Type
string
minLength
3
maxLength
100
Pattern
.+@.+
Data Element Comment
The address for the director/chief/lead administrator/CEO/ should be the main address for the EMS agency.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact Email Address is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Contact Email Address has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen Agency Contact Email Address has a Not Value, no other value should be recorded.