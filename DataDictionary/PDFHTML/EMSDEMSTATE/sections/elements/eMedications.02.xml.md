

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.02
eMedications.02 - Medication Administered Prior to this Unit's EMS Care
Definition
Indicates that the medication administration which is documented was administered prior to this EMS units
care.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_02
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
nemSch_e001ErrorWhen Medication Administered Prior to this Unit's EMS Care is empty, it should have a Not
Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Administered Prior to this Unit's EMS Care has a Not Value (Not Applicable,
Not Recorded, or Not Reporting), it should be empty.
nemSch_e136WarningDate/Time Medication Administered should be recorded, unless Medication Administered Prior
to this Unit's EMS Care is "Yes".
nemSch_e137WarningDate/Time Medication Administered should not be earlier than Unit Notified by Dispatch
Date/Time, unless Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e138WarningDate/Time Medication Administered should not be earlier than Arrived at Patient Date/Time,
unless Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e139WarningDate/Time Medication Administered should not be later than Destination Patient Transfer of
Care Date/Time.
nemSch_e140WarningDate/Time Medication Administered should not be later than Unit Back in Service Date/Time.
nemSch_e141WarningDate/Time Medication Administered should not be later than Arrived at Patient Date/Time when
Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e146WarningMedication Administered Route should be recorded, unless Medication Administered Prior to this
Unit's EMS Care is "Yes".
nemSch_e147WarningMedication Dosage should be recorded, unless Medication Administered Prior to this Unit's EMS
Care is "Yes".
nemSch_e148WarningMedication Dosage Units should be recorded, unless Medication Administered Prior to this Unit's
EMS Care is "Yes".

nemSch_e150WarningRole/Type of Person Administering Medication should be recorded, unless Medication
Administered Prior to this Unit's EMS Care is "Yes".