

8801023 - Unable to Complete8801019 - Refused
eHistory.18
eHistory.18 - Pregnancy
Definition
Indication of the possibility by the patient's history of current pregnancy.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE12_20
Is NillableYes
UsageOptional
Recurrence0 : 1
Attributes
Pertinent Negatives (PN)
Code List
CodeDescription
3118001No
3118003Possible, Unconfirmed
3118005Yes, Confirmed 12 to 20 Weeks
3118007Yes, Confirmed Greater Than 20 Weeks
3118009Yes, Confirmed Less Than 12 Weeks
3118011Yes, Weeks Unknown
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Pregnancy is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e008ErrorWhen Pregnancy has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).