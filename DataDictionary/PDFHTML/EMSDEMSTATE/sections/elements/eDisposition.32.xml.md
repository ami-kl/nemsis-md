

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.32
eDisposition.32 - Level of Care Provided per Protocol
Definition
The general level of care provided to this patient as defined per provider level in local EMS protocols or
clinical guidelines.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
4232001BLS - All Levels
4232003ALS - AEMT/Intermediate
4232005ALS - Paramedic
4232007EMS and Other Health-Care Staff
4232009Critical Care
4232011Integrated Health Care
4232013No Care Provided
Data Element Comment
The level of care should be defined by the situation, medications, and procedures provided to the patient based on what is
allowed in the local EMS protocols. This definition can vary between regions; what may be allowed for BLS providers in one
region may be considered ALS care in another. This is not a reflection of the provider levels providing care, but the actual care
given-for example, BLS care provided by a paramedic would be entered as "BLS". This element benefits reviews of
performance, resource demand and utilization, and reimbursement coding.
Version 3 Changes Implemented
Element added wit the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Level of Care Provided per Protocol is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Level of Care Provided per Protocol has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e187WarningLevel of Care Provided per Protocol should be recorded (with a value other than "No Care
Provided") when Patient Evaluation/Care is "Patient Evaluated and Care Provided".