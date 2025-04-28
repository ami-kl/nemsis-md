

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.04
eArrest.04 - Arrest Witnessed By
Definition
Indication of who the cardiac arrest was witnessed by.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_04
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
3004001Not Witnessed
3004003Witnessed by Family Member
3004005Witnessed by Healthcare Provider
3004007Witnessed by Bystander
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Arrest Witnessed By is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Arrest Witnessed By has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Arrest Witnessed By has a Not Value, no other value should be recorded.
nemSch_e100WarningArrest Witnessed By should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e101WarningArrest Witnessed By should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e102WarningWhen Arrest Witnessed By is "Not Witnessed", no other value should be recorded.