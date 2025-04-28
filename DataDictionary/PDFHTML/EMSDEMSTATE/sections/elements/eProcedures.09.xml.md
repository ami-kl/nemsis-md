

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eProcedures.09
eProcedures.09 - Procedure Crew Members ID
Definition
The statewide assigned ID number of the EMS crew member performing the procedure on the patient.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_09
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
For an incident that occurs in multiple states, the certification ID number the EMS agency would typically use is based on the
EMS agency's state license specific to each EMS professional. If the incident needs to be reported to each state, then the
EMS Agency Number for each state should be submitted as well as the certification ID numbers for each EMS professional on
the unit.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Procedure Crew Members ID is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure Crew Members ID has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.