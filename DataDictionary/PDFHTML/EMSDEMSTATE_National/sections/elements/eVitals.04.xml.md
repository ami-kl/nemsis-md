

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.04
eVitals.04 - ECG Type
Definition
The type of ECG associated with the cardiac rhythm.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
STEMI
Attributes
NOT Values (NV)
Code List
CodeDescription
33040002 Lead ECG (pads or paddles)
33040013 Lead
33040034 Lead
33040055 Lead
330400712 Lead-Left Sided (Normal)
330400912 Lead-Right Sided
330401115 Lead
330401318 Lead
3304015Other
Data Element Comment
Version 3 Changes Implemented
Added to better document ECG results.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen ECG Type is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen ECG Type has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.