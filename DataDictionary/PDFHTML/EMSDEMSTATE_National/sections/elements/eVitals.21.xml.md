

8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.21
eVitals.21 - Glasgow Coma Score-Motor
Definition
The patient's Glasgow Coma Score Motor response.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_17
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
1No Motor Response (All Age Groups)
2Extension to pain (All Age Groups)
3Flexion to pain (All Age Groups)
4Withdrawal from pain (All Age Groups)
5Localizing pain (All Age Groups)
6Obeys commands (>2Years); Appropriate response to stimulation
Data Element Comment
Definitions now based on the National Trauma Data Standard (NTDS).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Glasgow Coma Score-Motor is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Glasgow Coma Score-Motor has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Glasgow Coma Score-Motor has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).