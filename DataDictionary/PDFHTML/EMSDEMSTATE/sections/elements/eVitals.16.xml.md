

3340005 - kPa3340003 - Percentage3340001 - mmHg
8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.16
eVitals.16 - End Tidal Carbon Dioxide (ETCO2)
Definition
The numeric value of the patient's exhaled end tidal carbon dioxide (ETCO2) level measured as a unit of
pressure in millimeters of mercury (mmHg), percentage or, kilopascal (kPa).
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_13
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
ETCO2Type
Constraints
Data Type
decimal
totalDigits
4
fractionDigits
1
minInclusive
0
maxInclusive
760
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen End Tidal Carbon Dioxide (ETCO2) is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen End Tidal Carbon Dioxide (ETCO2) has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e008ErrorWhen End Tidal Carbon Dioxide (ETCO2) has a Pertinent Negative, it should be empty and it
should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e131WarningEnd Tidal Carbon Dioxide (ETCO2) should be no more than 100 when ETCO2 Type is
"Percentage".
nemSch_e132WarningEnd Tidal Carbon Dioxide (ETCO2) should be no more than 100 when ETCO2 Type is "kPa".
nemSch_e133WarningEnd Tidal Carbon Dioxide (ETCO2) should be an integer when ETCO2 Type is "mmHg".
nemSch_e134WarningETCO2 Type should be recorded when End Tidal Carbon Dioxide (ETCO2) is recorded.