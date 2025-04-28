

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.06
eScene.06 - Number of Patients at Scene
Definition
Indicator of how many total patients were at the scene.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_05
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
2707001Multiple
2707003None
2707005Single
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Number of Patients at Scene is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Number of Patients at Scene has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e067WarningNumber of Patients at Scene should be "Multiple" or "Single" when Unit Disposition is "Patient
Contact Made".
nemSch_e068WarningNumber of Patients at Scene should be "Multiple" when Mass Casualty Incident is "Yes".