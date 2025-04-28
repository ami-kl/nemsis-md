

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.02
eProcedures.02 - Procedure Performed Prior to this Unit's EMS Care
Definition
Indicates that the procedure which was performed and documented was performed prior to this EMS units
care.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_02
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
nemSch_e001ErrorWhen Procedure Performed Prior to this Unit's EMS Care is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure Performed Prior to this Unit's EMS Care has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e151WarningDate/Time Procedure Performed should be recorded, unless Procedure Performed Prior to this
Unit's EMS Care is "Yes".
nemSch_e152WarningDate/Time Procedure Performed should not be earlier than Unit Notified by Dispatch Date/Time,
unless Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e153WarningDate/Time Procedure Performed should not be earlier than Arrived at Patient Date/Time, unless
Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e154WarningDate/Time Procedure Performed should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e155WarningDate/Time Procedure Performed should not be later than Unit Back in Service Date/Time.
nemSch_e156WarningDate/Time Procedure Performed should not be later than Arrived at Patient Date/Time when
Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e159WarningRole/Type of Person Performing the Procedure should be recorded, unless Procedure
Performed Prior to this Unit's EMS Care is "Yes".