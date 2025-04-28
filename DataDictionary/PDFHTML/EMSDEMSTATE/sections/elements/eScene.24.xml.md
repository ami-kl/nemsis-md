

7701003 - Not Recorded7701001 - Not Applicable
eScene.24
eScene.24 - First Other EMS or Public Safety Agency at Scene to Provide Patient Care
Definition
When there are multiple other EMS Agencies or Public Safety Agencies at the scene, this element
documents the other EMS or public safety agency that was first to provide care to the patient.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageOptional
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced Survival (CARES), eScene.24 is
used to populate CARES data element #16 Fire/First Responder as defined by CARES in the CARES Data Dictionary: 
.https://vendors.mycares.net/
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen First Other EMS or Public Safety Agency at Scene to Provide Patient Care is empty, it
should have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the
element) or a Pertinent Negative (if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_e002ErrorWhen First Other EMS or Public Safety Agency at Scene to Provide Patient Care has a Not
Value (Not Applicable, Not Recorded, or Not Reporting), it should be empty.