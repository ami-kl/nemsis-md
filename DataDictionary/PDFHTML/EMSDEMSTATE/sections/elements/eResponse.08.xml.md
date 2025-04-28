

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.08
eResponse.08 - Type of Dispatch Delay
Definition
The dispatch delays, if any, associated with the dispatch of the EMS unit to the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_06
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
2208001Caller (Uncooperative)
2208003Diversion/Failure (of previous unit)
2208005High Call Volume
2208007Language Barrier
2208009Incomplete Address Information Provided
2208011No EMS Vehicles (Units) Available
2208013None/No Delay
2208015Other
2208017Technical Failure (Computer, Phone etc.)
2208019Communication Specialist-Assignment Error
2208021No Receiving MD, Bed, Hospital
2208023Specialty Team Delay
Data Element Comment
A dispatch delay is any time delay that occurs from the time of PSAP call (eTimes.01) to the time the unit is notified by
dispatch (eTimes.03).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Dispatch Delay is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Dispatch Delay has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Type of Dispatch Delay has a Not Value, no other value should be recorded.
nemSch_e012WarningWhen Type of Dispatch Delay is "None/No Delay", no other value should be recorded.