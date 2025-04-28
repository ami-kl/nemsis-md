

stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eInjury.07
eInjury.07 - Use of Occupant Safety Equipment
Definition
Safety equipment in use by the patient at the time of the injury.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE10_08
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2907001Child Booster Seat
2907003Eye Protection
2907005Helmet Worn
2907007Infant Car Seat Forward Facing
2907009Infant Car Seat Rear Facing
2907015None
2907017Other
2907019Personal Floatation Device
2907021Protective Clothing
2907023Protective Non-Clothing Gear
2907027Shoulder and Lap Belt Used
2907029Lap Belt Only Used
2907031Shoulder Belt Only Used
2907033Unable to Determine
Data Element Comment
MMUCC P7 data element used as baseline information. Data element expanded for added definition in non-vehicular settings.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Use of Occupant Safety Equipment is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Use of Occupant Safety Equipment has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e009WarningWhen Use of Occupant Safety Equipment has a Not Value, no other value should be recorded.