

stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eHistory.05
eHistory.05 - Advance Directives
Definition
The presence of a valid DNR form, living will, or document directing end of life or healthcare treatment
decisions.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE12_07
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
3105001Family/Guardian request DNR (but no documentation)
3105003Living Will
3105005None
3105007Other
3105009Other Healthcare Advanced Directive Form
3105011State EMS DNR or Medical Order Form
Data Element Comment
Advanced Directive and Do Not Resuscitate are both included in this data element.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Advance Directives is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Advance Directives has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Advance Directives has a Not Value, no other value should be recorded.