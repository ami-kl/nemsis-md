

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.23
eDisposition.23 - Hospital Capability
Definition
The primary hospital capability associated with the patient's condition for this transport (e.g., Trauma,
STEMI, Peds, etc.).
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
9908001Behavioral Health
9908003Burn Center
9908005Critical Access Hospital
9908007Hospital (General)
9908009Neonatal Center
9908011Pediatric Center
9908019Rehab Center
9908021Trauma Center Level 1
9908023Trauma Center Level 2
9908025Trauma Center Level 3
9908027Trauma Center Level 4
9908029Trauma Center Level 5
9908031Cardiac-STEMI/PCI Capable
9908033Cardiac-STEMI/PCI Capable (24/7)
9908035Cardiac-STEMI/Non-PCI Capable
9908037Stroke-Acute Stroke Ready Hospital (ASRH)
9908039Stroke-Primary Stroke Center (PSC)
9908041Stroke-Thrombectomy-Capable Stroke Center (TSC)
9908043Stroke-Comprehensive Stroke Center (CSC)
9908045Cancer Center
9908047Labor and Delivery
Data Element Comment
To be documented when eDisposition.21 (Type of Destination) is 1) Hospital-Emergency Department, 2)
Hospital-Non-Emergency Department Bed, or 3) Freestanding Emergency Department. 
Stroke Center classifications based on Join Commission stroke certification: 
https://www.jointcommission.org/facts_about_joint_commission_stroke_certification/
Version 3 Changes Implemented
Added to aid in determining if patients are transported to the appropriate hospital based on provider impression, assessment,
and treatment.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Hospital Capability is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Hospital Capability has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Hospital Capability has a Not Value, no other value should be recorded.

nemSch_e171WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Arrest is "Yes...".
nemSch_e172WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Stroke Scale Result is "Positive".
nemSch_e173WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".