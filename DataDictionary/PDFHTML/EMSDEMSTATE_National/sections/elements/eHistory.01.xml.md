

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eHistory.01
eHistory.01 - Barriers to Patient Care
Definition
Indication of whether or not there were any patient specific barriers to serving the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE12_01
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
Code List
CodeDescription
3101001Cultural, Custom, Religious
3101003Developmentally Impaired
3101005Hearing Impaired
3101007Language
3101009None Noted
3101011Obesity
3101013Physical Barrier (Unable to Access Patient)
3101015Physically Impaired
3101017Physically Restrained
3101019Psychologically Impaired
3101021Sight Impaired
3101023Speech Impaired
3101025Unattended or Unsupervised (including minors)
3101027Unconscious
3101029Uncooperative
3101031State of Emotional Distress
3101033Alcohol Use, Suspected
3101035Drug Use, Suspected
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Barriers to Patient Care is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Barriers to Patient Care has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Barriers to Patient Care has a Not Value, no other value should be recorded.
nemSch_e124WarningWhen Barriers to Patient Care is "None Noted", no other value should be recorded.