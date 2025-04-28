

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.30
eDisposition.30 - Transport Disposition
Definition
The transport disposition for an EMS event identifying whether a transport occurred and by which unit.
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
4230001Transport by This EMS Unit (This Crew Only)
4230003Transport by This EMS Unit, with a Member of Another Crew
4230005Transport by Another EMS Unit/Agency
4230007Transport by Another EMS Unit/Agency, with a Member of This Crew
4230009Patient Refused Transport
4230011Non-Patient Transport (Not Otherwise Listed)
4230013No Transport
Data Element Comment
Grouped with Patient and Incident Dispositions. Provides a rapid filter for transport or no transport for incident evaluation,
business entry rules and Schematron rules.
Version 3 Changes Implemented
Element added with the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Transport Disposition is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Transport Disposition has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_e030WarningPatient Arrived at Destination Date/Time should be recorded when Transport Disposition is
"Transport by This EMS Unit...".
nemSch_e036WarningDestination Patient Transfer of Care Date/Time should be recorded when Transport Disposition
is "Transport by This EMS Unit...".
nemSch_e113WarningCardiac Rhythm on Arrival at Destination should be recorded when Transport Disposition is
"Transport by This EMS Unit..." and Cardiac Arrest is "Yes...".
nemSch_e160WarningDestination State should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e161WarningDestination County should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e163WarningDestination ZIP Code should be recorded when Transport Disposition is "Transport by This EMS
Unit...".

nemSch_e164WarningEMS Transport Method should be recorded when Transport Disposition is "Transport by This
EMS Unit...".
nemSch_e165WarningEMS Transport Method should not be recorded when Transport Disposition is "Patient Refused
Transport" or "No Transport".
nemSch_e166WarningTransport Mode from Scene should be recorded when Transport Disposition is "Transport by
This EMS Unit...".
nemSch_e167WarningTransport Mode from Scene should not be recorded when Transport Disposition is "Patient
Refused Transport" or "No Transport".
nemSch_e169WarningReason for Choosing Destination should be recorded when Transport Disposition is "Transport
by This EMS Unit...".
nemSch_e170WarningType of Destination should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e182WarningUnit Disposition should be "Patient Contact Made" when Transport Disposition is a value other
than "Non-Patient Transport (Not Otherwise Listed)" or "No Transport".
nemSch_e186WarningTransport Disposition should be recorded when Unit Disposition is "Patient Contact Made".