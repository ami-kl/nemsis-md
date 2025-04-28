

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.02
eArrest.02 - Cardiac Arrest Etiology
Definition
Indication of the etiology or cause of the cardiac arrest (classified as cardiac, non-cardiac, etc.).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3002001Cardiac (Presumed)
3002003Drowning/Submersion
3002005Drug Overdose
3002007Electrocution
3002009Exsanguination-Medical (Non-Traumatic)
3002011Other
3002013Respiratory/Asphyxia
3002015Traumatic Cause
Data Element Comment
This element is a component of the Utstein Cardiac Arrest Criteria.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Cardiac Arrest Etiology is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Cardiac Arrest Etiology has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e093WarningCardiac Arrest Etiology should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e094WarningCardiac Arrest Etiology should only be recorded when Cardiac Arrest is "Yes...".