

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.02
eVitals.02 - Obtained Prior to this Unit's EMS Care
Definition
Indicates that the information which is documented was obtained prior to the documenting EMS units care.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE14_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
This is the NEMSIS Version 3 method to document prior aid.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Obtained Prior to this Unit's EMS Care is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Obtained Prior to this Unit's EMS Care has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e125WarningDate/Time Vital Signs Taken should be recorded, unless Obtained Prior to this Unit's EMS Care
is "Yes".
nemSch_e126WarningDate/Time Vital Signs Taken should not be earlier than Unit Notified by Dispatch Date/Time,
unless Obtained Prior to this Unit's EMS Care is "Yes".
nemSch_e127WarningDate/Time Vital Signs Taken should not be earlier than Arrived at Patient Date/Time, unless
Obtained Prior to this Unit's EMS Care is "Yes".
nemSch_e128WarningDate/Time Vital Signs Taken should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e129WarningDate/Time Vital Signs Taken should not be later than Unit Back in Service Date/Time.
nemSch_e130WarningDate/Time Vital Signs Taken should not be later than Arrived at Patient Date/Time when
Obtained Prior to this Unit's EMS Care is "Yes".