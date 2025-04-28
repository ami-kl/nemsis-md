

8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.31
eVitals.31 - Reperfusion Checklist
Definition
The results of the patient's Reperfusion Checklist for potential Thrombolysis use.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_25
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
STEMIStroke
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
3331001Definite Contraindications to Thrombolytic Use
3331003No Contraindications to Thrombolytic Use
3331005Possible Contraindications to Thrombolytic Use
Data Element Comment
Name changed from Thrombolytic Screen
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Reperfusion Checklist is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Reperfusion Checklist has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_e008ErrorWhen Reperfusion Checklist has a Pertinent Negative, it should be empty and it should not have
a Not Value (Not Applicable, Not Recorded, or Not Reporting).