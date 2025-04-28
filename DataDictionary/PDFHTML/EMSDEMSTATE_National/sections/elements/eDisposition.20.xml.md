

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.20
eDisposition.20 - Reason for Choosing Destination
Definition
The reason(s) this EMS unit delivered or transferred the patient to the destination.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_16
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Cardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
4220001Closest Facility
4220003Diversion
4220005Family Choice
4220007Insurance Status/Requirement
4220009Law Enforcement Choice
4220011On-Line/On-Scene Medical Direction
4220013Other
4220015Patient's Choice
4220017Patient's Physician's Choice
4220019Protocol
4220021Regional Specialty Center
Data Element Comment
Required if the patient was transported. This NEMSIS data element has no relationship to the 5010 CMS claim file data
element. Please refer to ePayment.44 Ambulance Transport Reason Code for billing purposes.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Reason for Choosing Destination is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Reason for Choosing Destination has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Reason for Choosing Destination has a Not Value, no other value should be recorded.
nemSch_e169WarningReason for Choosing Destination should be recorded when Transport Disposition is "Transport
by This EMS Unit...".