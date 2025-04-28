

8801029 - Approximate8801023 - Unable to Complete
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.18
eSituation.18 - Date/Time Last Known Well
Definition
The estimated date and time the patient was last known to be well or in their usual state of health. This is
described or estimated by the patient, family, and/or bystanders.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
For stroke related events, this is the date and time the patient was last seen normal. For cardiac or respiratory arrest related
events, this is the date and time the patient was last known to have a pulse or when interaction was had with the patient. For
drowning related events, this is the date and time the patient was last seen. For injury or trauma related events, this is the date
and time the patient was injured.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time Last Known Well is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Date/Time Last Known Well has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e044WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time Last Known
Well.
nemSch_e054WarningUnit Back in Service Date/Time should not be earlier than Date/Time Last Known Well.
nemSch_e085WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e086WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Stroke Scale Result is "Positive".
nemSch_e087WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".
nemSch_e188ErrorWhen Date/Time Last Known Well has a Pertinent Negative of "Unable to Complete", it should be
empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e191ErrorWhen Date/Time Last Known Well has a Pertinent Negative of "Approximate", it should have a

value and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).