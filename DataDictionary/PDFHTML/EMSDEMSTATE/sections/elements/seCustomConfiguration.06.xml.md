

anySimpleTypeData Type: preservewhiteSpace: 
anySimpleTypeData Type: preservewhiteSpace: 
StateNational
seCustomConfiguration.06
seCustomConfiguration.06 - Patient Care Report Custom Data Element Potential Values
Definition
The values which are associated with the patient care report custom data element. Values would be the
choices provided to the user when they document the custom data element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
nemsisCode
customValueDescription
Constraints
Data Type
string
minLength
1
maxLength
100
Data Element Comment
Used to populate eCustomConfiguration.06 Custom Data Element Potential Values.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s011ErrorPatient Care Report Custom Data Element Potential Values should be unique (the same value
should not be listed more than once).
nemSch_s012ErrorThe Custom Value Description for Patient Care Report Custom Data Element Potential Values
should be unique (the same description should not be listed more than once).