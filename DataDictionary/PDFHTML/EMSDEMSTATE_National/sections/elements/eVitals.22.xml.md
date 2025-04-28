

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.22
eVitals.22 - Glasgow Coma Score-Qualifier
Definition
Documentation of factors which make the GCS score more meaningful.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE14_18
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
3322001Eye Obstruction Prevents Eye Assessment
3322003Initial GCS has legitimate values without interventions such as intubation and sedation
3322005Patient Chemically Paralyzed
3322007Patient Chemically Sedated
3322009Patient Intubated
Data Element Comment
Definitions now based on the National Trauma Data Standard (NTDS).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Glasgow Coma Score-Qualifier is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Glasgow Coma Score-Qualifier has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Glasgow Coma Score-Qualifier has a Not Value, no other value should be recorded.
nemSch_e135WarningWhen Glasgow Coma Score-Qualifier is "Initial GCS has legitimate values without interventions
such as intubation and sedation", no other value should be recorded.