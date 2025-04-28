

8801015 - None Reported
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eInjury.04
eInjury.04 - Trauma Triage Criteria (Moderate Risk for Serious Injury)
Definition
Trauma triage criteria for the yellow boxes (Mechanism of Injury and EMS Judgment) in the 2021 ACS
National Guideline for the Field Triage of Injured Patients.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE10_04
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
2904001Pedestrian/bicycle rider thrown, run over, or with significant impact
2904003Fall Adults: > 20 ft. (one story is equal to 10 ft.) (DEPRECATED)
2904005Fall Children: > 10 ft. or 2-3 times the height of the child (DEPRECATED)
2904007Auto Crash: Death in passenger compartment
2904009Auto Crash: Partial or complete ejection
2904011Auto Crash: Significant intrusion (including roof): >12 inches occupant site; >18 inches any site; need for
extrication
2904013Auto Crash: Vehicle telemetry data consistent with severe injury
2904015Motorcycle Crash > 20 MPH (DEPRECATED)
2904017SBP < 110 for age > 65 (DEPRECATED)
2904019Anticoagulant use
2904021Pregnancy > 20 weeks
2904023Other EMS judgment
2904025Burn, without other trauma (DEPRECATED)
2904027Burns in conjunction with trauma
2904029Auto Crash: Child (age 0-9 years) unrestrained or in unsecured child safety seat
2904031Fall from height > 10 feet (all ages)
2904033Low-level falls in young children (age <= 5 years) or older adults (age >= 65 years) with significant head impact
2904035Rider separated from transport vehicle with significant impact (eg, motorcycle, ATV, horse, etc.)
2904037Special, high-resource healthcare needs
2904039Suspicion of child abuse
Data Element Comment
2021 National Guidelines for the Field Triage of Injured Patients - Yellow Criteria (i.e., Mechanism of Injury and EMS
Judgment)
Version 3 Changes Implemented
Revised to represent the 2021 National Guidelines for the Field Triage of Injured Patients - Yellow Criteria. Website: 
https://www.facs.org/quality-programs/trauma/systems/field-triage-guidelines
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) is empty, it should have a Not
Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) has a Not Value (Not

Applicable, Not Recorded, or Not Reporting), it should be empty.
nemSch_e008ErrorWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) has a Pertinent Negative, it
should be empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not
Reporting).
nemSch_e009WarningWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) has a Not Value, no other value
should be recorded.
nemSch_e010WarningWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) has a Pertinent Negative, no
other value should be recorded.
nemSch_e092WarningTrauma Triage Criteria (Moderate Risk for Serious Injury) should only be recorded when
Possible Injury is "Yes".