

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.17
eDisposition.17 - Transport Mode from Scene
Definition
Indication whether the transport was emergent or non-emergent.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_14
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
4217001Emergent (Immediate Response)
4217003Emergent Downgraded to Non-Emergent
4217005Non-Emergent
4217007Non-Emergent Upgraded to Emergent
Data Element Comment
Information now split between eDisposition.17 (Transport Mode from Scene) and eDisposition.18 (Additional Transport Mode
Descriptors). Element eDisposition.18 (Additional Transport Mode Descriptors) has been added to document the use of lights
and sirens or other descriptive information.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Transport Mode from Scene is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Transport Mode from Scene has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e166WarningTransport Mode from Scene should be recorded when Transport Disposition is "Transport by
This EMS Unit...".
nemSch_e167WarningTransport Mode from Scene should not be recorded when Transport Disposition is "Patient
Refused Transport" or "No Transport".