

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.12
eArrest.12 - Any Return of Spontaneous Circulation
Definition
Indication whether or not there was any return of spontaneous circulation.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_06
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3012001No
3012003Yes, At Arrival at the ED
3012005Yes, Prior to Arrival at the ED
3012007Yes, Sustained for 20 consecutive minutes
Data Element Comment
This element needs to be documented when the patient has been in cardiac arrest and transported to a healthcare facility to
show the change in patient condition, if any. 
Any ROSC is defined as any brief (approximately >30 seconds) restoration of spontaneous circulation that provides evidence
of more than an occasional gasp, occasional fleeting palpable pulse, or arterial waveform.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Any Return of Spontaneous Circulation is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Any Return of Spontaneous Circulation has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_e009WarningWhen Any Return of Spontaneous Circulation has a Not Value, no other value should be
recorded.
nemSch_e108WarningAny Return of Spontaneous Circulation should be recorded when Patient Evaluation/Care is
"Patient Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e109WarningAny Return of Spontaneous Circulation should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e110WarningWhen Any Return of Spontaneous Circulation is "No", no other value should be recorded.