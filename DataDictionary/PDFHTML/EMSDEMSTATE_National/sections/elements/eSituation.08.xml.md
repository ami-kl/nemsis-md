

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.08
eSituation.08 - Chief Complaint Organ System
Definition
The primary organ system of the patient injured or medically affected.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_12
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2808001Behavioral/Psychiatric
2808003Cardiovascular
2808005CNS/Neuro
2808007Endocrine/Metabolic
2808009GI
2808011Global/General
2808013Lymphatic/Immune
2808015Musculoskeletal/Skin
2808017Reproductive
2808019Pulmonary
2808021Renal
Data Element Comment
Altered to follow the anatomical organ systems as defined by general anatomy. Added Lymphatic/Immune; Merged Skin with
Muscular-Skeletal. Changed OB/Gyn to Reproductive.
Retained non-organ system designations for Global/General and Behavioral/Psychiatric.
eSituation.02 (Possible Injury), eSituation.09 (Primary Symptom), eSituation.07 (Chief Complaint Anatomic Location), and
eSituation.08 (Chief Complaint Organ System) are grouped together to form the EMS Reason for Encounter.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Chief Complaint Organ System is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Chief Complaint Organ System has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.