

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.08
eScene.08 - Triage Classification for MCI Patient
Definition
The color associated with the initial triage assessment/classification of the MCI patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2708001Red - Immediate
2708003Yellow - Delayed
2708005Green - Minimal (Minor)
2708007Gray - Expectant
2708009Black - Deceased
Data Element Comment
This element is documented when eScene.07 (Mass Casualty Incident) = Yes. 
Examples of triage systems include START and SALT. 
Adapted from: SALT mass casualty triage: concept endorsed by the American College of Emergency Physicians, American College of
Surgeons Committee on Trauma, American Trauma Society, National Association of EMS Physicians, National Disaster Life Support
Education Consortium, and State and Territorial Injury Prevention Directors Association. Disaster Med Public Health Prep. 2008
Dec;2(4):245-6.
START reference: Benson M, Koenig KL, Schultz CH. Disaster triage: START, then SAVE-a new method of dynamic triage for victims of
a catastrophic earthquake. Prehospital Disaster Med. 1996; Apr-Jun; 11(2): 117-24
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Triage Classification for MCI Patient is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Triage Classification for MCI Patient has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e069WarningTriage Classification for MCI Patient should be recorded when Mass Casualty Incident is "Yes".