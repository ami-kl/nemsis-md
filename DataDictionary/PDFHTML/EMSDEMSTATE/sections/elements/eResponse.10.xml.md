

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.10
eResponse.10 - Type of Scene Delay
Definition
The scene delays, if any, of the EMS unit associated with the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_08
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
2210001Awaiting Air Unit
2210003Awaiting Ground Unit
2210005Crowd
2210007Directions/Unable to Locate
2210009Distance
2210011Extrication
2210013HazMat
2210015Language Barrier
2210017None/No Delay
2210019Other
2210021Patient Access
2210023Safety-Crew/Staging
2210025Safety-Patient
2210027Staff Delay
2210029Traffic
2210031Triage/Multiple Patients
2210033Vehicle Crash Involving this Unit
2210035Vehicle Failure of this Unit
2210037Weather
2210039Mechanical Issue-Unit, Equipment, etc.
Data Element Comment
A scene delay is any time delay that occurs from the time the unit arrived on scene (eTimes.06) to the time the unit left the
scene (eTimes.09).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Scene Delay is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Scene Delay has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Type of Scene Delay has a Not Value, no other value should be recorded.
nemSch_e014WarningWhen Type of Scene Delay is "None/No Delay", no other value should be recorded.