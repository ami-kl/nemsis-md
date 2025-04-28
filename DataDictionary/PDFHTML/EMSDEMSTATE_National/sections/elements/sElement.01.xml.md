

7701003 - Not Recorded7701001 - Not Applicable
StateNational
sElement.01
sElement.01 - State Collected Element
Definition
The data elements that the state collects or requires.
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
100
Data Element Comment
Used to configure the agency demographic and patient care report data elements that are to be collected and reported to the
state by EMS agencies within the state.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen State Collected Element is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen State Collected Element has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_s003WarningWhen State Collected Element has a Not Value, no other value should be recorded.
nemSch_s015WarningState Collected Element should be unique (the same element should not be listed more than
once).