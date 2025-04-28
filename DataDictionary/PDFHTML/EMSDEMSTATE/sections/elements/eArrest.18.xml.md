

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.18
eArrest.18 - End of EMS Cardiac Arrest Event
Definition
The patient's outcome at the end of the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3018001Expired in ED
3018003Expired in the Field
3018005Ongoing Resuscitation in ED
3018007ROSC in the Field
3018009ROSC in the ED
3018011Ongoing Resuscitation by Other EMS
Data Element Comment
Added to better identify the outcome of EMS cardiac arrest patients.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen End of EMS Cardiac Arrest Event is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen End of EMS Cardiac Arrest Event has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e115WarningEnd of EMS Cardiac Arrest Event should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e116WarningEnd of EMS Cardiac Arrest Event should only be recorded when Cardiac Arrest is "Yes...".