

stringData Type: 2minLength: 255maxLength: 
8801021 - Unresponsive
8801023 - Unable to Complete8801019 - Refused8801015 - None Reported
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eHistory.08
eHistory.08 - Medical/Surgical History
Definition
The patient's pre-existing medical and surgery history of the patient.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE12_10
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Constraints
Pattern
([A-QRSTUZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,3})?)|[0-9A-HJ-NP-Z]{3,7}
Data Element Comment
The Medical/Surgical History pattern has been extended to include ICD-10-CM: Diagnosis Codes and ICD-10-PCS: Procedural
Health Intervention Codes. 
ICD-10-CM: Diagnosis Codes. 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus 
Please reference the NEMSIS Suggested Lists at: 
 https://nemsis.org/technical-resources/version-3/version-3-resource-repository/
ICD-10-PCS has a seven character alphanumeric code structure. Each character contains up to 34 possible values. Each
value represents a specific option for the general character definition (e.g., stomach is one of the values for the body part
character). 
The ten digits 0-9 and the 24 letters A-H,J-N and P-Z may be used in each character. The letters O and I are not used in order
to avoid confusion with the digits 0 and 1. There are no decimals in ICD-10-PCS. 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medical/Surgical History is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medical/Surgical History has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Medical/Surgical History has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Medical/Surgical History has a Not Value, no other value should be recorded.
nemSch_e010WarningWhen Medical/Surgical History has a Pertinent Negative, no other value should be recorded.