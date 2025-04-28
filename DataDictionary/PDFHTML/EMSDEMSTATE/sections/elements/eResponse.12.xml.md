

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.12
eResponse.12 - Type of Turn-Around Delay
Definition
The turn-around delays, if any, of EMS unit associated with the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_10
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Response
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2212001Clean-up
2212003Decontamination
2212005Distance
2212007Documentation
2212009ED Overcrowding / Transfer of Care
2212011Equipment Failure
2212013Equipment/Supply Replenishment
2212015None/No Delay
2212017Other
2212019Rendezvous Transport Unavailable
2212021Route Obstruction (e.g., Train)
2212023Staff Delay
2212025Traffic
2212027Vehicle Crash of this Unit
2212029Vehicle Failure of this Unit
2212031Weather
2212033EMS Crew Accompanies Patient for Facility Procedure
Data Element Comment
Rendezvous Transport Unavailable added for situations where there is a wait for an EMS Transport Unit, a Ferry, Air Medical,
etc. to return to service. 
If a patient is being transported by the unit, turn-around delay is any time delay that occurs from the time the patient arrived at
the destination (eTimes.11) until the time the unit is back in service (eTimes.13) or unit back at the home location (eTimes.15)
[whichever is the greater of the two times]. 
If no patient is being transported by the unit, turn-around delay is any time delay that occurs from the time the unit arrived on
scene (eTimes.06) until the unit is back in service (eTimes.13) or the unit back at the home location (eTimes.15) [whichever is
the greater of the two times].
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Turn-Around Delay is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Turn-Around Delay has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.

nemSch_e009WarningWhen Type of Turn-Around Delay has a Not Value, no other value should be recorded.
nemSch_e016WarningWhen Type of Turn-Around Delay is "None/No Delay", no other value should be recorded.