

7701003 - Not Recorded7701001 - Not Applicable
StateNational
sConfiguration.04
sConfiguration.04 - EMS Certification Levels Permitted to Administer Each Medication
Definition
The certification/licensure level that is permitted to administer the medications listed in sConfiguration.05.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_07
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9917001Advanced Emergency Medical Technician (AEMT)
9917002Emergency Medical Technician - Intermediate
9917003Emergency Medical Responder (EMR)
9917005Emergency Medical Technician (EMT)
9917007Paramedic
9917019Physician
9917021Critical Care Paramedic
9917023Community Paramedicine
9917025Nurse Practitioner
9917027Physician Assistant
9917029Licensed Practical Nurse (LPN)
9917031Registered Nurse
Data Element Comment
Used to populate dConfiguration.08 EMS Certification Levels Permitted to Administer Each Medication.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen EMS Certification Levels Permitted to Administer Each Medication is empty, it should
have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_s002ErrorWhen EMS Certification Levels Permitted to Administer Each Medication has a Not Value (Not
Applicable, Not Recorded, or Not Reporting), it should be empty.
nemSch_s020WarningEMS Certification Levels Permitted to Administer Each Medication should be on the list of State
Certification/Licensure Levels.
nemSch_s021WarningEMS Certification Levels Permitted to Administer Each Medication should be unique (the same
level should not be listed more than once).