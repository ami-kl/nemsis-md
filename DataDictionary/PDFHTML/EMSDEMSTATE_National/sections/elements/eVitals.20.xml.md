

8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.20
eVitals.20 - Glasgow Coma Score-Verbal
Definition
The patient's Glasgow Coma Score Verbal response.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_16
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
1No verbal/vocal response (All Age Groups)
2Incomprehensible sounds (>2 Years); Inconsolable, agitated
3Inappropriate words (>2 Years); Inconsistently consolable, moaning
4Confused (>2 Years); Cries but is consolable, inappropriate interactions
5Oriented (>2 Years); Smiles, oriented to sounds, follows objects, interacts
Data Element Comment
Definitions now based on the National Trauma Data Standard (NTDS).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Glasgow Coma Score-Verbal is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Glasgow Coma Score-Verbal has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Glasgow Coma Score-Verbal has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).