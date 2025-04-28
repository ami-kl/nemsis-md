

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDispatch.02
eDispatch.02 - EMD Performed
Definition
Indication of whether Emergency Medical Dispatch was performed for this EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE03_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2302001No
2302003Yes, With Pre-Arrival Instructions
2302005Yes, Without Pre-Arrival Instructions
2302007Yes, Unknown if Pre-Arrival Instructions Given
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen EMD Performed is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen EMD Performed has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.