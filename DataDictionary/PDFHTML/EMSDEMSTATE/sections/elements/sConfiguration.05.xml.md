

9924005 - SNOMED-CT9924003 - RxNorm
7701003 - Not Recorded7701001 - Not Applicable
StateNational
sConfiguration.05
sConfiguration.05 - Medications Permitted by the State
Definition
Medications permitted by the state for the certification/licensure level listed in sConfiguration.04.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code Type
Constraints
Data Type
string
minLength
2
maxLength
9
Data Element Comment
Used to populate dConfiguration.09 EMS Agency Medications 
List of medications based on RxNorm (RXCUI) code and SNOMED-CT codes for blood products.. List of medications based
on RxNorm (RXCUI) code. 
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
nemSch_s001ErrorWhen Medications Permitted by the State is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_s002ErrorWhen Medications Permitted by the State has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_s003WarningWhen Medications Permitted by the State has a Not Value, no other value should be recorded.

nemSch_s022WarningMedications Permitted by the State should be unique (the same medication should not be listed
more than once for a particular level).
nemSch_s023ErrorMedications Permitted by the State should be a code of between 2 and 7 digits when Code Type
is "RxNorm".
nemSch_s024ErrorMedications Permitted by the State should be a SNOMED code specifically allowed in the data
dictionary when Code Type is "SNOMED".
nemSch_s025ErrorMedications Permitted by the State should be an RxNorm code of between 2 and 7 digits or a
SNOMED code specifically allowed in the data dictionary.