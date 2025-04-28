

StateNational
eDisposition.27
eDisposition.27 - Unit Disposition
Definition
The unit disposition for an EMS event identifying whether patient contact was made by this EMS unit/crew.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
4227001Patient Contact Made
4227003Cancelled on Scene
4227005Cancelled Prior to Arrival at Scene
4227007No Patient Contact
4227009No Patient Found
4227011Non-Patient Incident (Not Otherwise Listed)
Data Element Comment
Grouped with Incident and Transport dispositions. Who provided care or services is defined in Incident Dispostion.
Version 3 Changes Implemented
Element added with the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e018WarningUnit En Route Date/Time should be recorded unless Unit Disposition is "Cancelled Prior to
Arrival at Scene".
nemSch_e020WarningUnit Arrived on Scene Date/Time should be recorded unless Unit Disposition is "Cancelled Prior
to Arrival at Scene".
nemSch_e023WarningArrived at Patient Date/Time should be recorded when Unit Disposition is "Patient Contact
Made".
nemSch_e025WarningUnit Left Scene Date/Time should be recorded unless Unit Disposition is "Cancelled Prior to
Arrival at Scene".
nemSch_e067WarningNumber of Patients at Scene should be "Multiple" or "Single" when Unit Disposition is "Patient
Contact Made".
nemSch_e070WarningIncident Location Type should be recorded unless Unit Disposition is "Cancelled Prior to Arrival
at Scene".
nemSch_e071WarningIncident State should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".
nemSch_e072WarningIncident ZIP Code should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".
nemSch_e073WarningIncident County should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".
nemSch_e180WarningUnit Disposition should be "Patient Contact Made" when Patient Evaluation/Care is "Patient
Evaluated..." or "Patient Refused Evaluation/Care".

nemSch_e181WarningUnit Disposition should be "Patient Contact Made" when Crew Disposition contains "... Primary
Care..." or "Provided Care Supporting Primary EMS Crew".
nemSch_e182WarningUnit Disposition should be "Patient Contact Made" when Transport Disposition is a value other
than "Non-Patient Transport (Not Otherwise Listed)" or "No Transport".
nemSch_e183WarningPatient Evaluation/Care should be recorded when Unit Disposition is "Patient Contact Made".
nemSch_e185WarningCrew Disposition should be recorded when Unit Disposition is "Patient Contact Made".
nemSch_e186WarningTransport Disposition should be recorded when Unit Disposition is "Patient Contact Made".