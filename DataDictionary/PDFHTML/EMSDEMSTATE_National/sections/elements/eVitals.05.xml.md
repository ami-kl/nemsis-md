

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.05
eVitals.05 - Method of ECG Interpretation
Definition
The method of ECG interpretation.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
STEMI
Attributes
NOT Values (NV)
Code List
CodeDescription
3305001Computer Interpretation
3305003Manual Interpretation
3305005Transmission with No Interpretation
3305007Transmission with Remote Interpretation
Data Element Comment
"Transmission with no interpretation" may be used by EMS Agency Personnel that are not trained to interpret cardiac rhythms.
Version 3 Changes Implemented
Added to better document ECG results.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Method of ECG Interpretation is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Method of ECG Interpretation has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Method of ECG Interpretation has a Not Value, no other value should be recorded.