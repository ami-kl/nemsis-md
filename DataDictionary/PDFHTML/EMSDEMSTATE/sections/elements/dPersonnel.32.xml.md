

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.32
dPersonnel.32 - EMS Personnel's Employment Status Date
Definition
The personnel's employment status date.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD07_04
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Employment Status Date is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Personnel's Employment Status Date has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.