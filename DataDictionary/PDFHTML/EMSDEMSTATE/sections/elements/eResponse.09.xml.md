

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.09
eResponse.09 - Type of Response Delay
Definition
The response delays, if any, of the EMS unit associated with the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_07
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
2209001Crowd
2209003Directions/Unable to Locate
2209005Distance
2209007Diversion (Different Incident)
2209009HazMat
2209011None/No Delay
2209013Other
2209015Rendezvous Transport Unavailable
2209017Route Obstruction (e.g., Train)
2209019Scene Safety (Not Secure for EMS)
2209021Staff Delay
2209023Traffic
2209025Vehicle Crash Involving this Unit
2209027Vehicle Failure of this Unit
2209029Weather
2209031Mechanical Issue-Unit, Equipment, etc.
2209033Flight Planning
2209035Out of Service Area Response
Data Element Comment
Rendezvous Transport Unavailable added for situations where there is a wait for an EMS Transport Unit, a Ferry, Air Medical,
etc. to return to service. 
A response delay is any time delay that occurs from the time the unit is notified by dispatch (eTimes.03) to the time the unit
arrived on scene (eTimes.06).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Response Delay is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Response Delay has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Type of Response Delay has a Not Value, no other value should be recorded.
nemSch_e013WarningWhen Type of Response Delay is "None/No Delay", no other value should be recorded.

