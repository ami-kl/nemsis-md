

9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
stringData Type: 2minLength: 255maxLength: 
8801023 - Unable to Complete
ePatient.18
ePatient.18 - Patient's Phone Number
Definition
The patient's phone number.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE06_17
Is NillableYes
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
This element contains an attribute to define what type of phone number is being documented (e.g., Fax, Home, Mobile, Pager,
and Work).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Phone Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e008ErrorWhen Patient's Phone Number has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e010WarningWhen Patient's Phone Number has a Pertinent Negative, no other value should be recorded.