

8801023 - Unable to Complete
ePatient.12
ePatient.12 - Social Security Number
Definition
The patient's social security number.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE06_10
Is NillableYes
UsageOptional
Recurrence0 : 1
Attributes
Pertinent Negatives (PN)
Constraints
Pattern
[0-9]{9}
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Social Security Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e008ErrorWhen Social Security Number has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).