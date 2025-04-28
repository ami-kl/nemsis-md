

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.24
eResponse.24 - Additional Response Mode Descriptors
Definition
The documentation of response mode techniques used for this EMS response.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
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
2224001Intersection Navigation-Against Normal Light Patterns
2224003Intersection Navigation-With Automated Light Changing Technology
2224005Intersection Navigation-With Normal Light Patterns
2224007Scheduled
2224009Speed-Enhanced per Local Policy
2224011Speed-Normal Traffic
2224013Unscheduled
2224015Lights and Sirens
2224017Lights and No Sirens
2224019No Lights or Sirens
2224021Initial No Lights or Sirens, Upgraded to Lights and Sirens
2224023Initial Lights and Sirens, Downgraded to No Lights or Sirens
Data Element Comment
Descriptors have been added to better describe the EMS Response. This includes information on whether the EMS event was
schedule or unscheduled.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Additional Response Mode Descriptors is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Additional Response Mode Descriptors has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_e009WarningWhen Additional Response Mode Descriptors has a Not Value, no other value should be
recorded.