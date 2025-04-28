

8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.29
eVitals.29 - Stroke Scale Result
Definition
The findings or results of the Stroke Scale Type (eVitals.30) used to assess the patient exhibiting stroke-like
symptoms.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_24
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Stroke
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
3329001Negative
3329003Non-Conclusive
3329005Positive
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Stroke Scale Result is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Stroke Scale Result has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Stroke Scale Result has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e086WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Stroke Scale Result is "Positive".
nemSch_e172WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Stroke Scale Result is "Positive".