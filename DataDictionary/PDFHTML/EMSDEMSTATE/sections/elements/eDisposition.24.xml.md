

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.24
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation
Definition
Indication that an alert (or activation) was called by EMS to the appropriate destination healthcare facility
team. The alert (or activation) should occur prior to the EMS Unit arrival at the destination with the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac ArrestSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
4224001No
4224003Yes-Adult Trauma
4224005Yes-Cardiac Arrest
4224007Yes-Obstetrics
4224009Yes-Other
4224011Yes-Pediatric Trauma
4224013Yes-STEMI
4224015Yes-Stroke
4224017Yes-Trauma (General)
4224019Yes-Sepsis
Data Element Comment
Version 3 Changes Implemented
Added to better document performance measure for acute time dependent illness and injury systems of care.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination Team Pre-Arrival Alert or Activation is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination Team Pre-Arrival Alert or Activation has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e174WarningWhen Destination Team Pre-Arrival Alert or Activation is "No", no other value should be
recorded.
nemSch_e175WarningDestination Team Pre-Arrival Alert or Activation should be recorded when Date/Time of
Destination Prearrival Alert or Activation is recorded.
nemSch_e176WarningDate/Time of Destination Prearrival Alert or Activation should be recorded when Destination
Team Pre-Arrival Alert or Activation is recorded with a value other than "None".