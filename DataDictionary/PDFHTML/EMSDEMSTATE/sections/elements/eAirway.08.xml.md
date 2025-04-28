

stringData Type: 2minLength: 255maxLength: 
8801015 - None Reported
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.08
eAirway.08 - Airway Complications Encountered
Definition
The airway management complications encountered during the patient care episode.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
4008001Adverse Event from Facilitating Drugs
4008003Bradycardia (<50)
4008005Cardiac Arrest
4008007Esophageal Intubation-Delayed Detection (After Tube Secured)
4008009Esophageal Intubation-Detected in Emergency Department
4008011Failed Intubation Effort
4008013Injury or Trauma to Patient from Airway Management Effort
4008015Other
4008017Oxygen Desaturation (<90%)
4008019Patient Vomiting/Aspiration
4008021Tube Dislodged During Transport/Patient Care
4008023Tube Was Not in Correct Position when EMS Crew/Team Assumed Care of the Patient
Data Element Comment
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Airway Complications Encountered is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Airway Complications Encountered has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e008ErrorWhen Airway Complications Encountered has a Pertinent Negative, it should be empty and it
should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Airway Complications Encountered has a Not Value, no other value should be recorded.
nemSch_e010WarningWhen Airway Complications Encountered has a Pertinent Negative, no other value should be
recorded.