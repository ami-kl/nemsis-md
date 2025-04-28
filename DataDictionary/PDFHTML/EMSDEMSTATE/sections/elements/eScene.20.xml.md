

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eScene.20
eScene.20 - Scene Cross Street or Directions
Definition
The nearest cross street to the incident address or directions from a recognized landmark or the second
street name of an intersection.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Version 3 Changes Implemented
Added to better locate/document the scene (incident) location.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Scene Cross Street or Directions is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Scene Cross Street or Directions has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.