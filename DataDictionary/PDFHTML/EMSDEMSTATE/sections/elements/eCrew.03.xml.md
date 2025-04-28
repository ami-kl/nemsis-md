

stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eCrew.03
eCrew.03 - Crew Member Response Role
Definition
The role(s) of the crew member during response, at scene treatment, and/or transport.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE04_02
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2403001Driver/Pilot-Response
2403003Driver/Pilot-Transport
2403005Other
2403007Other Patient Caregiver-At Scene
2403009Other Patient Caregiver-Transport
2403011Primary Patient Caregiver-At Scene
2403013Primary Patient Caregiver-Transport
Data Element Comment
This element has been changed to allow for multiple selections. There must be a driver for response and transport. There
must be a primary patient caregiver for scene and transport.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Crew Member Response Role is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Crew Member Response Role has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Crew Member Response Role has a Not Value, no other value should be recorded.