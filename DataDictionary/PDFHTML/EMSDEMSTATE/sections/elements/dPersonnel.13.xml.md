

stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.13
dPersonnel.13 - EMS Personnel's Race
Definition
The personnel's race as defined by the OMB (US Office of Management and Budget).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD08_13
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
1513001American Indian or Alaska Native
1513003Asian
1513005Black or African American
1513007Hispanic or Latino
1513009Native Hawaiian or Other Pacific Islander
1513011White
1513013Middle Eastern or North African
Data Element Comment
OMB requirements are provided at: . A single multiple choice questionhttps://www.federalregister.gov/d/2024-06469
methodology is being implemented to improve the completion of ethnicity information. Ethnicity (Version 2.1.1: D08_14) has
been merged with this data element and retired.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Race is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen EMS Personnel's Race has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen EMS Personnel's Race has a Not Value, no other value should be recorded.