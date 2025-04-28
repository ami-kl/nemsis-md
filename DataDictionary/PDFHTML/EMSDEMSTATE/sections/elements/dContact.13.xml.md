

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.13
dContact.13 - Agency Medical Director Degree
Definition
The medical school degree type of the EMS Medical Director.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
1113001Doctor of Medicine
1113003Doctor of Osteopathy
Data Element Comment
The Medical Director Information has been merged into Section dContact. This data element is now associated with the
Medical Director and Assistant Medical Director Contacts in Section dContact.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Medical Director Degree is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Medical Director Degree has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.