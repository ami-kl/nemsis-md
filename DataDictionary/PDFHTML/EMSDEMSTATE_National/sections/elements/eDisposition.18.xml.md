

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.18
eDisposition.18 - Additional Transport Mode Descriptors
Definition
The documentation of transport mode techniques for this EMS response.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
Code List
CodeDescription
4218001Intersection Navigation-Against Normal Light Patterns
4218003Intersection Navigation-With Automated Light Changing Technology
4218005Intersection Navigation-With Normal Light Patterns
4218007Speed-Enhanced per Local Policy
4218009Speed-Normal Traffic
4218011Lights and Sirens
4218013Lights and No Sirens
4218015No Lights or Sirens
4218017Initial No Lights or Sirens, Upgraded to Lights and Sirens
4218019Initial Lights and Sirens, Downgraded to No Lights or Sirens
Data Element Comment
Information now split between eDisposition.17 (Transport Mode from Scene) and eDisposition.18 (Additional Transport Mode
Descriptors). Element eDisposition.18 (Additional Transport Mode Descriptors) has been added to document the use of lights
and sirens or other descriptive information.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Additional Transport Mode Descriptors is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Additional Transport Mode Descriptors has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e009WarningWhen Additional Transport Mode Descriptors has a Not Value, no other value should be
recorded.