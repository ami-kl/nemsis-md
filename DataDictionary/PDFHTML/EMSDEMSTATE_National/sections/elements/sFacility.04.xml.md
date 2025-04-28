

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.04
sFacility.04 - Hospital Designations
Definition
The designation(s) associated with the hospital (e.g. Trauma, STEMI, Peds, etc).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
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
Used to populate dFacility.04 Hospital Designations.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Hospital Designations is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen Hospital Designations has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_s003WarningWhen Hospital Designations has a Not Value, no other value should be recorded.
nemSch_s029WarningHospital Designations should be unique (the same designation should not be listed more than
once).