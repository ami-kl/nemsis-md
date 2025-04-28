

8801023 - Unable to Complete
8801021 - Unresponsive8801019 - Refused8801015 - None Reported
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eHistory.12
eHistory.12 - Current Medications
Definition
The medications the patient currently takes.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE12_14
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
string
minLength
2
maxLength
9
Data Element Comment
List of medications based on RxNorm (RXCUI) code. 
Reference the NEMSIS Suggested Lists at:  https://nemsis.org/technical-resources/version-3/version-3-resource-repository/
RxNorm 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus 
Website -  http://www.nlm.nih.gov/research/umls/rxnorm/docs/rxnormfiles.html
Product - RxNorm Full Monthly Release
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Current Medications is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Current Medications has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Current Medications has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).