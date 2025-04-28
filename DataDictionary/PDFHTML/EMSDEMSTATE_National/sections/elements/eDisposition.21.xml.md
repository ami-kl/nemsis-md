

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.21
eDisposition.21 - Type of Destination
Definition
The type of destination the patient was delivered or transferred to.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_17
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
4221001Home
4221003Hospital-Emergency Department
4221005Hospital-Non-Emergency Department Bed
4221007Clinic
4221009Morgue/Mortuary
4221013Other
4221015Other EMS Responder (air)
4221017Other EMS Responder (ground)
4221019Police/Jail
4221021Urgent Care
4221023Freestanding Emergency Department
4221025Dialysis Center
4221027Diagnostic Services
4221029Assisted Living Facility
4221031Mental Health Facility
4221033Nursing Home
4221035Other Recurring Care Center
4221037Physical Rehabilitation Facility
4221039Drug and/or Alcohol Rehabilitation Facility
4221041Skilled Nursing Facility
Data Element Comment
Required if Patient Transported by EMS.
Version 3 Changes Implemented
With the release of v3.5.0 additional values were added to meet the needs of EMS.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Destination is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Destination has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e170WarningType of Destination should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e171WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Arrest is "Yes...".

nemSch_e172WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Stroke Scale Result is "Positive".
nemSch_e173WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".