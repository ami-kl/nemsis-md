

8801027 - Order Criteria Not Met8801023 - Unable to Complete
8801019 - Refused8801003 - Denied By Order8801001 - Contraindication Noted
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.03
eProcedures.03 - Procedure
Definition
The procedure performed on the patient.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE19_03
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
maxInclusive
999999999999999999
minInclusive
100000
Data Element Comment
Procedures which are recorded as a Vital Sign do not have to be documented in the Procedure Section. 
Code list is represented in SNOMEDCT. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
SNOMEDCT 
Website: http://www.nlm.nih.gov/research/umls/Snomed/snomed_main.html 
Product: Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Procedure is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e007ErrorWhen Procedure has a Pertinent Negative, it should have a value and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e157WarningProcedure should be recorded when a procedure is performed.