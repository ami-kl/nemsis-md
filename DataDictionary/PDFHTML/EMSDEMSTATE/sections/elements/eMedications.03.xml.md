

9924005 - SNOMED-CT9924003 - RxNorm
8801027 - Order Criteria Not Met
8801023 - Unable to Complete8801019 - Refused8801009 - Medication Already Taken
8801007 - Medication Allergy8801003 - Denied By Order8801001 - Contraindication Noted
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.03
eMedications.03 - Medication Administered
Definition
The medication administered to the patient.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE18_03
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code Type
Constraints
Data Type
string
minLength
2
maxLength
9
Data Element Comment
List of medications based on RxNorm (RXCUI) code and SNOMED-CT codes for blood products. 
Reference the NEMSIS Suggested Lists at:  https://nemsis.org/technical-resources/version-3/version-3-resources/
RxNorm 
Website -  http://www.nlm.nih.gov/research/umls/rxnorm/docs/rxnormfiles.html
Product - RxNorm Full Monthly Release 
SNOMED-CT 
Website:  http://www.nlm.nih.gov/research/umls/Snomed/snomed_main.html
Product: Product - UMLS Metathesaurus. 
Allowable SNOMED-CT codes are: 
116762002 Administration of blood product 
116795008 Transfusion of cryoprecipitate 
116861002 Transfusion of fresh frozen plasma 
116865006 Administration of albumin 
180208003 Intravenous blood transfusion of platelets 
33389009 Transfusion of whole blood 
71493000 Transfusion of packed red blood cells
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Administered is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Administered has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e006ErrorWhen Medication Administered has a Pertinent Negative, it should have a value and it should

not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e142WarningMedication Administered should be recorded when a medication is administered.
nemSch_e143ErrorMedication Administered should be a code of between 2 and 7 digits when Code Type is
"RxNorm".
nemSch_e144ErrorMedication Administered should be a SNOMED code specifically allowed in the data dictionary
when Code Type is "SNOMED".
nemSch_e145ErrorMedication Administered should be an RxNorm code of between 2 and 7 digits or a SNOMED
code specifically allowed in the data dictionary.