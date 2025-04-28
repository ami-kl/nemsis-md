

stringData Type: 2minLength: 255maxLength: 
9924003 - RxNorm9924001 - ICD-10
8801021 - Unresponsive
8801023 - Unable to Complete8801019 - Refused8801013 - No Known Drug Allergy
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eHistory.06
eHistory.06 - Medication Allergies
Definition
The patient's medication allergies.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE12_08
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code Type
CorrelationID
Constraints
Pattern
(Z88\.[0-9])|([a-zA-Z0-9]{2,7})
Data Element Comment
The list of medication allergies is based on RxNorm (RXCUI) Codes. In addition, a specific list of ICD-10 CM codes can be
used for medication groups. 
Reference the NEMSIS Suggested Lists at:  https://nemsis.org/technical-resources/version-3/version-3-resource-repository/
Code list is represented in two separate UMLS datasets: 
1) ICD-10 Codes. 
2) RxNorm 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus 
Website -  http://www.nlm.nih.gov/research/umls/rxnorm/docs/rxnormfiles.html
Product - RxNorm Full Monthly Release
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Allergies is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Allergies has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Medication Allergies has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Medication Allergies has a Not Value, no other value should be recorded.
nemSch_e010WarningWhen Medication Allergies has a Pertinent Negative, no other value should be recorded.