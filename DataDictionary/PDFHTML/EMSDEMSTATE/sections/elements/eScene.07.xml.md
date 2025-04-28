

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.07
eScene.07 - Mass Casualty Incident
Definition
Indicator if this event would be considered a mass casualty incident (overwhelmed existing EMS resources).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_06
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Mass Casualty Incident is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Mass Casualty Incident has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e068WarningNumber of Patients at Scene should be "Multiple" when Mass Casualty Incident is "Yes".
nemSch_e069WarningTriage Classification for MCI Patient should be recorded when Mass Casualty Incident is "Yes".