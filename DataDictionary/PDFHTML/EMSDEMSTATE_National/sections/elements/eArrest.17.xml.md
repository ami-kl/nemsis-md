

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.17
eArrest.17 - Cardiac Rhythm on Arrival at Destination
Definition
The patient's cardiac rhythm upon delivery or transfer to the destination.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_11
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
9901001Agonal/Idioventricular
9901003Asystole
9901005Artifact
9901007Atrial Fibrillation
9901009Atrial Flutter
9901011AV Block-1st Degree
9901013AV Block-2nd Degree-Type 1
9901015AV Block-2nd Degree-Type 2
9901017AV Block-3rd Degree
9901019Junctional
9901021Left Bundle Branch Block
9901023Non-STEMI Anterior Ischemia
9901025Non-STEMI Inferior Ischemia
9901027Non-STEMI Lateral Ischemia
9901029Non-STEMI Posterior Ischemia
9901030Non-STEMI Septal Ischemia
9901031Other
9901033Paced Rhythm
9901035PEA
9901037Premature Atrial Contractions
9901039Premature Ventricular Contractions
9901041Right Bundle Branch Block
9901043Sinus Arrhythmia
9901045Sinus Bradycardia
9901047Sinus Rhythm
9901049Sinus Tachycardia
9901051STEMI Anterior Ischemia
9901053STEMI Inferior Ischemia
9901055STEMI Lateral Ischemia
9901057STEMI Posterior Ischemia
9901058STEMI Septal Ischemia
9901059Supraventricular Tachycardia
9901061Torsades De Points
9901063Unknown AED Non-Shockable Rhythm
9901065Unknown AED Shockable Rhythm
9901067Ventricular Fibrillation
9901069Ventricular Tachycardia (With Pulse)
9901071Ventricular Tachycardia (Pulseless)
Data Element Comment
This element needs to be documented when the patient has been in cardiac or respiratory arrest and transported to a

healthcare facility to show the change in patient condition, if any. The cardiac rhythm list has been updated to be the same for
eVitals.03 (Cardiac Rhythm Electrocardiography (ECG)). They are using the common type: CardiacRhythm. ST segment
changes consistent (or not consistent) with STEMI criteria should be documented as Ischemia in the appropriate location
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Cardiac Rhythm on Arrival at Destination is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Cardiac Rhythm on Arrival at Destination has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_e009WarningWhen Cardiac Rhythm on Arrival at Destination has a Not Value, no other value should be
recorded.
nemSch_e113WarningCardiac Rhythm on Arrival at Destination should be recorded when Transport Disposition is
"Transport by This EMS Unit..." and Cardiac Arrest is "Yes...".
nemSch_e114WarningCardiac Rhythm on Arrival at Destination should only be recorded when Cardiac Arrest is
"Yes...".