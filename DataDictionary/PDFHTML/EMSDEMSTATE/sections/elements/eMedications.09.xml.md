

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eMedications.09
eMedications.09 - Medication Crew (Healthcare Professionals) ID
Definition
The statewide assigned ID number of the EMS crew member giving the treatment to the patient.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_09
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
How should the state ID for an EMS professional be record when working on an event in 2 states. The ID used would typically
be based on the EMS agency's state license specific to each EMS professional. Used for eProcedures.09 (Procedure Crew
Members ID) as well.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Crew (Healthcare Professionals) ID is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Crew (Healthcare Professionals) ID has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.