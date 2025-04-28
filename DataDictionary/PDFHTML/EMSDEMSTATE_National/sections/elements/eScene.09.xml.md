

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.09
eScene.09 - Incident Location Type
Definition
The kind of location where the incident happened.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_07
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
Y92\.[0-9]{1,3}
Data Element Comment
Code list is represented in ICD-10-CM. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
ICD-10-CM 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident Location Type is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident Location Type has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_e070WarningIncident Location Type should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".