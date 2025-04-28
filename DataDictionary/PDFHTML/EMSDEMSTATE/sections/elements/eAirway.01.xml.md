

stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.01
eAirway.01 - Indications for Invasive Airway
Definition
The clinical indication for performing invasive airway management.
National ElementNoPertinent Negatives (PN)No
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
CorrelationID
Code List
CodeDescription
4001001Adequate Airway Reflexes/Effort, Potential for Compromise
4001003Airway Reflex Compromised
4001005Apnea or Agonal Respirations
4001007Illness Involving Airway
4001009Injury Involving Airway
4001011Other
4001013Ventilatory Effort Compromised
Data Element Comment
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Indications for Invasive Airway is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Indications for Invasive Airway has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Indications for Invasive Airway has a Not Value, no other value should be recorded.