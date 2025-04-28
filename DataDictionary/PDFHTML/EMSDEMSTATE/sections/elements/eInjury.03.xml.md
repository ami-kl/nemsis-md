

stringData Type: 2minLength: 255maxLength: 
8801015 - None Reported
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eInjury.03
eInjury.03 - Trauma Triage Criteria (High Risk for Serious Injury)
Definition
Trauma triage criteria for the red boxes (Injury Patterns and Mental Status and Vital Signs) in the 2021 ACS
National Guideline for the Field Triage of Injured Patients.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
2903001Amputation proximal to wrist or ankle
2903003Crushed, degloved, mangled, or pulseless extremity
2903005Chest wall instability, deformity, or suspected flail chest
2903007Glasgow Coma Score <= 13 (DEPRECATED)
2903009Skull deformity, suspected skull fracture
2903011Paralysis (DEPRECATED)
2903013Suspected pelvic fracture
2903015Penetrating injuries to head, neck, torso, and proximal extremities
2903017Respiratory Rate <10 or >29 breaths per minute (<20 in infants aged <1 year) or need for ventilatory support 
(DEPRECATED)
2903019Systolic Blood Pressure <90 mmHg (DEPRECATED)
2903021Suspected fracture of two or more proximal long bones
2903023Active bleeding requiring a tourniquet or wound packing with continuous pressure
2903025Age >= 10 years: HR > SBP
2903027Age >= 65 years: SBP < 110 mmHg
2903029Age 0-9 years: SBP < 70mm Hg + (2 x age in years)
2903031Age 10-64 years: SBP < 90 mmHg
2903033Respiratory distress or need for respiratory support
2903035Room-air pulse oximetry < 90%
2903037RR < 10 or > 29 breaths/min
2903039Suspected spinal injury with new motor or sensory loss
2903041Unable to follow commands (motor GCS < 6)
Data Element Comment
2021 National Guidelines for the Field Triage of Injured Patients - Red Criteria (i.e., Injury Patterns, Mental Status & Vital
Signs)
Version 3 Changes Implemented
Revised to represent the 2021 National Guidelines for the Field Triage of Injured Patients - Red Criteria. Website: 
https://www.facs.org/quality-programs/trauma/systems/field-triage-guidelines/
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Trauma Triage Criteria (High Risk for Serious Injury) is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent

Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Trauma Triage Criteria (High Risk for Serious Injury) has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e008ErrorWhen Trauma Triage Criteria (High Risk for Serious Injury) has a Pertinent Negative, it should
be empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Trauma Triage Criteria (High Risk for Serious Injury) has a Not Value, no other value
should be recorded.
nemSch_e010WarningWhen Trauma Triage Criteria (High Risk for Serious Injury) has a Pertinent Negative, no other
value should be recorded.
nemSch_e091WarningTrauma Triage Criteria (High Risk for Serious Injury) should only be recorded when Possible
Injury is "Yes".