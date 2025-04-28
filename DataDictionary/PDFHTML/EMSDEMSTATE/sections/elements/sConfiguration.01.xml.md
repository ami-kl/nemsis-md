

7701003 - Not Recorded7701001 - Not Applicable
StateNational
sConfiguration.01
sConfiguration.01 - State Certification/Licensure Levels
Definition
The levels of certification/licensure for EMS personnel recognized by the state.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_01
Is NillableYes
UsageRequired
Recurrence1 : M
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
Used to populate EMS-related values in the following data elements (some data elements contain additional non-EMS-related
values, such as "Student" or "Patient" that should be allowed unless specifically instructed otherwise by the state): 
dAgency.11 Level of Service 
dConfiguration.06 EMS Certification Levels Permitted to Perform Each Procedure 
dConfiguration.08 EMS Certification Levels Permitted to Administer Each Medication 
dVehicle.05 Crew State Certification/Licensure Levels 
dPersonnel.24 EMS Personnel's State EMS Certification Licensure Level 
dPersonnel.38 EMS Personnel's Practice Level 
ePayment.42 Specialty Care Transport Care Provider
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen State Certification/Licensure Levels is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_s002ErrorWhen State Certification/Licensure Levels has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_s003WarningWhen State Certification/Licensure Levels has a Not Value, no other value should be recorded.
nemSch_s016WarningState Certification/Licensure Levels should be unique (the same level should not be listed more
than once).
nemSch_s017WarningEMS Certification Levels Permitted to Perform Each Procedure should be on the list of State
Certification/Licensure Levels.
nemSch_s020WarningEMS Certification Levels Permitted to Administer Each Medication should be on the list of State
Certification/Licensure Levels.