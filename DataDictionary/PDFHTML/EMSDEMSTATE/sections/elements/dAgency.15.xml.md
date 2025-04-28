

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.15
dAgency.15 - Statistical Calendar Year
Definition
The calendar year to which the information pertains for the EMS Agency and the specific EMS Agency
Number (dAgency.02).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_10
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
integer
minInclusive
1900
maxInclusive
2050
Data Element Comment
Added Calendar Year to the definition to remove confusion noted in draft comments. Will allow multiple entry to allow data to
be stored on several years. This statistical information is associated with the EMS Agency's specific EMS Agency Number
(dAgency.02) and elements dAgency.16 through dAgency.22.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Statistical Calendar Year is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Statistical Calendar Year has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.