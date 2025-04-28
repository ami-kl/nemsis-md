

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.29
eDisposition.29 - Crew Disposition
Definition
The crew disposition for this EMS event identifying which crew provided primary patient care or whether
support services were required.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
4229001Initiated and Continued Primary Care
4229003Initiated Primary Care and Transferred to Another EMS Crew
4229005Provided Care Supporting Primary EMS Crew
4229007Assumed Primary Care from Another EMS Crew
4229009Incident Support Services Provided (Including Standby)
4229011Back in Service, No Care/Support Services Required
4229013Back in Service, Care/Support Services Refused
Data Element Comment
Grouped with Patient and Transport Dispositions. Depending on context of the Value, "Unit" could be Vehicle or
Service/Agency.
Version 3 Changes Implemented
Element added with the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Crew Disposition is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Crew Disposition has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e181WarningUnit Disposition should be "Patient Contact Made" when Crew Disposition contains "... Primary
Care..." or "Provided Care Supporting Primary EMS Crew".
nemSch_e184WarningPatient Evaluation/Care should be "Patient Evaluated and Care Provided" when Crew
Disposition contains "... Primary Care..." or "Provided Care Supporting Primary EMS Crew".
nemSch_e185WarningCrew Disposition should be recorded when Unit Disposition is "Patient Contact Made".