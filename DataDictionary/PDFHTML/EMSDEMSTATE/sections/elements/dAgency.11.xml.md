

StateNational
dAgency.11
dAgency.11 - Level of Service
Definition
The level of service which the agency provides EMS care for every request for service (the minimum
certification level). This may be the license level granted by the state EMS office.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_07
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
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
The Level of Service is associated with the specific EMS Agency Number (dAgency.02) for the EMS Agency. For example a
BLS licensed ambulance service (EMT-Basic) with EMT-Intermediate or EMT-Paramedic on staff, the appropriate level of
service is "EMT-Basic". This is because the care provided to patients is limited to BLS skills. 
The category EMT-Intermediate includes EMS professionals with an "85" or "99" certification level.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d012WarningEMS Certification Levels Permitted to Perform Each Procedure, within the configuration group
for the state recorded in EMS Agency State, should include the level recorded in Level of
Service.
nemSch_d013WarningEMS Certification Levels Permitted to Administer Each Medication, within the configuration
group for the state recorded in EMS Agency State, should include the level recorded in Level of
Service.