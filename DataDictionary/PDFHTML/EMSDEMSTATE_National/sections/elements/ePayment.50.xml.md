

7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePayment.50
ePayment.50 - CMS Service Level
Definition
The CMS service level for this EMS encounter.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE07_34
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2650001ALS, Level 1
2650003ALS, Level 1 Emergency
2650005ALS, Level 2
2650007BLS
2650009BLS, Emergency
2650011Fixed Wing (Airplane)
2650013Paramedic Intercept
2650015Specialty Care Transport
2650017Rotary Wing (Helicopter)
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen CMS Service Level is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen CMS Service Level has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.