

 - 7701003Not Recorded - 7701001Not Applicable
StateNational
 ePatient.13(DEPRECATED)
Deprecated
 -  ePatient.13Gender(DEPRECATED)
Definition
 The patient's gender.(DEPRECATED)
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementDEPRECATED
Is NillableYes
UsageRequired
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9906001Female (DEPRECATED)
9906003Male (DEPRECATED)
9906007Female-to-Male, Transgender Male (DEPRECATED)
9906009Male-to-Female, Transgender Female (DEPRECATED)
9906011Other, neither exclusively male or female (DEPRECATED)
9906005Unknown (Unable to Determine) (DEPRECATED)
Data Element Comment
Deprecated Comment
The NEMSIS Program is funded by the National Highway Traffic Safety Administration and this element was modified to
comply with President Trump’s Executive Orders.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Gender (DEPRECATED) is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Gender (DEPRECATED) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.