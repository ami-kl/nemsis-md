

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.11
eArrest.11 - First Monitored Arrest Rhythm of the Patient
Definition
Documentation of what the first monitored arrest rhythm which was noted.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_05
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3011001Asystole
3011005PEA
3011007Unknown AED Non-Shockable Rhythm
3011009Unknown AED Shockable Rhythm
3011011Ventricular Fibrillation
3011013Ventricular Tachycardia-Pulseless
Data Element Comment
Added term "Arrest" to title to clarify this is the arrest rhythm. 
Values "Other" and "Normal Sinus Rhythm" removed since they are not Cardiac Arrest Rhythms. 
Value "Ventricular Tachycardia" has been changed to "Ventricular Tachycardia-Pulseless".
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen First Monitored Arrest Rhythm of the Patient is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen First Monitored Arrest Rhythm of the Patient has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.