

stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.04
eAirway.04 - Airway Device Placement Confirmed Method
Definition
The method used to confirm the airway device placement.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
4004001Auscultation
4004003Bulb/Syringe Aspiration
4004005Colorimetric ETCO2
4004007Condensation in Tube
4004009Digital (Numeric) ETCO2
4004011Direct Re-Visualization of Tube in Place
4004013Endotracheal Tube Whistle (BAAM, etc.)
4004015Other
4004017Visualization of Vocal Cords
4004019Waveform ETCO2
4004021Chest Rise
Data Element Comment
If the invasive airway is confirmed via multiple methods each method should be documented individually by time, method, and
type of individual.
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Airway Device Placement Confirmed Method is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Airway Device Placement Confirmed Method has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e009WarningWhen Airway Device Placement Confirmed Method has a Not Value, no other value should be
recorded.