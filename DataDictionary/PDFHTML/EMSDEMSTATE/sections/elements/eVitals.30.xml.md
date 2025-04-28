

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.30
eVitals.30 - Stroke Scale Type
Definition
The type of stroke scale used.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Stroke
Attributes
NOT Values (NV)
Code List
CodeDescription
3330001Cincinnati Prehospital Stroke Scale (CPSS)
3330004Los Angeles Prehospital Stroke Screen (LAPSS)
3330005Massachusetts Stroke Scale (MSS)
3330007Miami Emergency Neurologic Deficit Exam (MEND)
3330009NIH Stroke Scale (NIHSS)
3330011Other Stroke Scale Type
3330013FAST
3330015Boston Stroke Scale (BOSS)
3330017Ontario Prehospital Stroke Scale (OPSS)
3330019Melbourne Ambulance Stroke Screen (MASS)
3330021Rapid Arterial oCclusion Evaluation (RACE)
3330023Los Angeles Motor Score (LAMS)
3330025Vision, Aphasia, Neglect (VAN)
3330027FAST-ED
3330029BEFAST
Data Element Comment
Version 3 Changes Implemented
Added to include additional detail on the stroke scale used.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Stroke Scale Type is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Stroke Scale Type has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.