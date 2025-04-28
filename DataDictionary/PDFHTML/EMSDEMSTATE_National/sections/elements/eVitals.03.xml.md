

8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.03
eVitals.03 - Cardiac Rhythm / Electrocardiography (ECG)
Definition
The cardiac rhythm / ECG and other electrocardiography findings of the patient as interpreted by EMS
personnel.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_03
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Cardiac ArrestSTEMI
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
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
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Cardiac Rhythm / Electrocardiography (ECG) is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Cardiac Rhythm / Electrocardiography (ECG) has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e008ErrorWhen Cardiac Rhythm / Electrocardiography (ECG) has a Pertinent Negative, it should be
empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Cardiac Rhythm / Electrocardiography (ECG) has a Not Value, no other value should be
recorded.
nemSch_e010WarningWhen Cardiac Rhythm / Electrocardiography (ECG) has a Pertinent Negative, no other value
should be recorded.
nemSch_e087WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".
nemSch_e173WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".