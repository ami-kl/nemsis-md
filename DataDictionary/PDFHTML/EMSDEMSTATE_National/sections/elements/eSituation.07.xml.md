

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.07
eSituation.07 - Chief Complaint Anatomic Location
Definition
The primary anatomic location of the chief complaint as identified by EMS personnel.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_11
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2807001Abdomen
2807003Back
2807005Chest
2807007Extremity-Lower
2807009Extremity-Upper
2807011General/Global
2807013Genitalia
2807015Head
2807017Neck
Data Element Comment
eSituation.02 (Possible Injury), eSituation.09 (Primary Symptom), eSituation.07 (Chief Complaint Anatomic Location), and
eSituation.08 (Chief Complaint Organ System) are grouped together to form the EMS Reason for Encounter.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Chief Complaint Anatomic Location is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Chief Complaint Anatomic Location has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.