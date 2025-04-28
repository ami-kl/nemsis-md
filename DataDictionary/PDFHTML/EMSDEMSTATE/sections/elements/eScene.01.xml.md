

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.01
eScene.01 - First EMS Unit on Scene
Definition
Documentation that this EMS Unit was the first EMS Unit among all EMS Agencies on the Scene.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Added to improve the evaluation of Response Times when multiple EMS units are responding to the same scene.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen First EMS Unit on Scene is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen First EMS Unit on Scene has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.