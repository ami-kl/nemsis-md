

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.08
eMedications.08 - Medication Complication
Definition
Any complication (abnormal effect on the patient) associated with the administration of the medication to the
patient by EMS.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_08
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
Code List
CodeDescription
3708001Altered Mental Status
3708003Apnea
3708005Bleeding
3708007Bradycardia
3708009Bradypnea
3708011Diarrhea
3708013Extravasation
3708015Hypertension
3708017Hyperthermia
3708019Hypotension
3708021Hypothermia
3708023Hypoxia
3708025Injury
3708029Nausea
3708031None
3708033Other
3708035Respiratory Distress
3708037Tachycardia
3708039Tachypnea
3708041Vomiting
3708043Itching
3708045Urticaria
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Complication is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Complication has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Medication Complication has a Not Value, no other value should be recorded.
nemSch_e149WarningWhen Medication Complication is "None", no other value should be recorded.