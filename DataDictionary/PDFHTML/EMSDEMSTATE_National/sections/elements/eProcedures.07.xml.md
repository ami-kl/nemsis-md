

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.07
eProcedures.07 - Procedure Complication
Definition
Any complication (abnormal effect on the patient) associated with the performance of the procedure on the
patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_07
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayPediatricTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
3907001Altered Mental Status
3907003Apnea
3907005Bleeding
3907007Bradypnea
3907009Diarrhea
3907011Esophageal Intubation-immediately
3907013Esophageal Intubation-other
3907015Extravasation
3907017Hypertension
3907019Hyperthermia
3907021Hypotension
3907023Hypothermia
3907025Hypoxia
3907027Injury
3907031Nausea
3907033None
3907035Other
3907039Respiratory Distress
3907041Tachycardia
3907043Tachypnea
3907045Vomiting
3907047Bradycardia
3907049Itching
3907051Urticaria
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Procedure Complication is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure Complication has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Procedure Complication has a Not Value, no other value should be recorded.
nemSch_e158WarningWhen Procedure Complication is "None", no other value should be recorded.

