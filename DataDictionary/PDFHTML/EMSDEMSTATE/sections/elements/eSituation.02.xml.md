

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.02
eSituation.02 - Possible Injury
Definition
Indication whether or not there was an injury.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_04
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9922001No
9922003Unknown
9922005Yes
Data Element Comment
This data element provides documentation to classify the EMS Reason for Encounter as either injury or non-injury related
based on mechanism and not on actual injury. eSituation.02 (Possible Injury), eSituation.09 (Primary Symptom), eSituation.07
(Chief Complaint Anatomic Location), and eSituation.08 (Chief Complaint Organ System) are grouped together to form the
EMS Reason for Encounter.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Possible Injury is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Possible Injury has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e076WarningPossible Injury should be recorded when Type of Service Requested is "Emergency Response
(Primary Response Area)" and Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e077WarningPossible Injury should be "Yes" when a symptom or impression is injury-related.
nemSch_e089WarningCause of Injury should be recorded when Patient Evaluation/Care is "Patient Evaluated and
Care Provided" and Possible Injury is "Yes".
nemSch_e090WarningCause of Injury should only be recorded when Possible Injury is "Yes".
nemSch_e091WarningTrauma Triage Criteria (High Risk for Serious Injury) should only be recorded when Possible
Injury is "Yes".
nemSch_e092WarningTrauma Triage Criteria (Moderate Risk for Serious Injury) should only be recorded when
Possible Injury is "Yes".