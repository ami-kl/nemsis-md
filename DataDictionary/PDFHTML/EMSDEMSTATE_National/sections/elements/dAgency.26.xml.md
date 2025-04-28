

7701003 - Not Recorded7701001 - Not Applicable
StateNational
dAgency.26
dAgency.26 - Fire Department ID Number
Definition
The state assigned Fire Department ID Number for EMS Agency(ies) operating within a Fire Department.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
20
Data Element Comment
Fire Department ID was added to better integrate Fire Department EMS Agencies and linkage to other EMS related data
systems such as NFIRS.
Version 3 Changes Implemented
Added to better associate Fire and EMS licensure and operational identifiers.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Fire Department ID Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Fire Department ID Number has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen Fire Department ID Number has a Not Value, no other value should be recorded.
nemSch_d008WarningFire Department ID Number should be recorded when Organizational Type is "Fire Department".
nemSch_d009WarningFire Department ID Number should only be recorded when Organizational Type is "Fire
Department".