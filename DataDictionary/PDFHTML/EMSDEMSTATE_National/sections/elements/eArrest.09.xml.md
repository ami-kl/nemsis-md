

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.09
eArrest.09 - Type of CPR Provided
Definition
Documentation of the type/technique of CPR used by EMS.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3009001Compressions-Manual
3009003Compressions-External Band Type Device
3009005Compressions-External Plunger Type Device
3009007Compressions-External Thumper Type Device
3009009Compressions-Intermittent with Ventilation
3009011Compressions-Other Device
3009021Compressions-Hands Only CPR (DEPRECATED)
3009013Ventilation-Bag Valve Mask
3009015Ventilation-Impedance Threshold Device
3009017Ventilation-Mouth to Mouth
3009019Ventilation-Pocket Mask
3009023Ventilation-with OPA/NPA
3009025Ventilation-Advanced Airway Device
3009027Ventilation-Passive Ventilation with Oxygen
Data Element Comment
Added to capture special CPR techniques.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of CPR Provided is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of CPR Provided has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_e009WarningWhen Type of CPR Provided has a Not Value, no other value should be recorded.
nemSch_e098WarningResuscitation Attempted By EMS should contain "Initiated Chest Compressions" when Type of
CPR Provided contains "Compressions...".
nemSch_e099WarningResuscitation Attempted By EMS should contain "Attempted Ventilation" when Type of CPR
Provided contains "Ventilation..." or "Compressions-Intermittent with Ventilation".
nemSch_e105WarningType of CPR Provided should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e106WarningType of CPR Provided should contain "Compressions..." when Resuscitation Attempted By EMS
contains "Initiated Chest Compressions".
nemSch_e107WarningType of CPR Provided should contain "Ventilation..." or "Compressions-Intermittent with

Ventilation" when Resuscitation Attempted By EMS contains "Attempted Ventilation".