

stringData Type: 2minLength: 255maxLength: 
8801023 - Unable to Complete8801021 - Unresponsive8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.14
ePatient.14 - Race
Definition
The patient's race as defined by the OMB (US Office of Management and Budget).
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE06_12
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
2514001American Indian or Alaska Native
2514003Asian
2514005Black or African American
2514007Hispanic or Latino
2514009Native Hawaiian or Other Pacific Islander
2514011White
2514013Middle Eastern or North African
Data Element Comment
OMB requirements are provided at: . Using single multiple choice questionhttps://www.federalregister.gov/d/2024-06469
methodology to improve the completion of ethnicity information.
Ethnicity (Version 2.2.1: E06_13) has been merged with this data element and retired.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Race is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Race has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e008ErrorWhen Race has a Pertinent Negative, it should be empty and it should not have a Not Value
(Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Race has a Not Value, no other value should be recorded.
nemSch_e010WarningWhen Race has a Pertinent Negative, no other value should be recorded.
nemSch_e062WarningRace should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided".