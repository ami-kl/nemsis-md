

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.10
eProcedures.10 - Role/Type of Person Performing the Procedure
Definition
The type (level) of EMS or Healthcare Professional performing the procedure. For procedures performed
prior to EMS arrival, this may be a non-EMS healthcare professional.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9905001Advanced Emergency Medical Technician (AEMT)
9905002Emergency Medical Technician - Intermediate
9905003Emergency Medical Responder (EMR)
9905005Emergency Medical Technician (EMT)
9905007Paramedic
9905019Other Healthcare Professional
9905021Other Non-Healthcare Professional
9905025Physician
9905027Respiratory Therapist
9905029Student
9905031Critical Care Paramedic
9905033Community Paramedicine
9905035Nurse Practitioner
9905037Physician Assistant
9905039Licensed Practical Nurse (LPN)
9905041Registered Nurse
9905043Patient
9905045Lay Person
9905047Law Enforcement
9905049Family Member
9905051Fire Personnel (non EMS)
Data Element Comment
Added to document the type of healthcare professional administering the medication. This could be auto-completed from the
crew ID but is necessary to document medication administration prior to EMS arrival. State may maintain an enumerated list
but must collapse to the National Standard. 
The category EMT-Intermediate includes EMS professionals with an "85" or "99" certification level.
Version 3 Changes Implemented
Added to document the type of healthcare professional performing the procedure.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Role/Type of Person Performing the Procedure is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Role/Type of Person Performing the Procedure has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.

nemSch_e159WarningRole/Type of Person Performing the Procedure should be recorded, unless Procedure
Performed Prior to this Unit's EMS Care is "Yes".