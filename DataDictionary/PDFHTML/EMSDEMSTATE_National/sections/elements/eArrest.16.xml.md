

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.16
eArrest.16 - Reason CPR/Resuscitation Discontinued
Definition
The reason that CPR or the resuscitation efforts were discontinued.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_10
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3016001DNR
3016003Medical Control Order
3016005Obvious Signs of Death
3016007Physically Unable to Perform
3016009Protocol/Policy Requirements Completed
3016011Return of Spontaneous Circulation (pulse or BP noted)
Data Element Comment
Added Resuscitation to Title to allow better documentation of disposition.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Reason CPR/Resuscitation Discontinued is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Reason CPR/Resuscitation Discontinued has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_e112WarningReason CPR/Resuscitation Discontinued should only be recorded when Cardiac Arrest is
"Yes...".