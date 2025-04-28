

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.12
dContact.12 - EMS Agency Contact Web Address
Definition
The primary website address of the agency.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_11
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
3
maxLength
255
Data Element Comment
The EMS agency website address should be entered for the Agency Contact Type (dContact.05) "EMS Agency
Director/Chief/Lead Administrator/CEO". The EMS agency website address or other websites are optional for other contact
types (e.g., Administrative Assistant, EMS Medical Director, etc.).
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Agency Contact Web Address is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_d002ErrorWhen EMS Agency Contact Web Address has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.