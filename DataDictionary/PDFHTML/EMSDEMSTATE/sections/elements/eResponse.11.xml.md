

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.11
eResponse.11 - Type of Transport Delay
Definition
The transport delays, if any, of the EMS unit associated with the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_09
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2211001Crowd
2211003Directions/Unable to Locate
2211005Distance
2211007Diversion
2211009HazMat
2211011None/No Delay
2211013Other
2211015Rendezvous Transport Unavailable
2211017Route Obstruction (e.g., Train)
2211019Safety
2211021Staff Delay
2211023Traffic
2211025Vehicle Crash Involving this Unit
2211027Vehicle Failure of this Unit
2211029Weather
2211031Patient Condition Change (e.g., Unit Stopped)
Data Element Comment
Rendezvous Transport Unavailable added for situations where there is a wait for an EMS Transport Unit, a Ferry, Air Medical,
etc. 
A transport delay is any time delay that occurs from the time the unit left the scene (eTimes.09) to the time the patient arrived
at the destination (eTimes.10).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Transport Delay is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Transport Delay has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Type of Transport Delay has a Not Value, no other value should be recorded.
nemSch_e015WarningWhen Type of Transport Delay is "None/No Delay", no other value should be recorded.