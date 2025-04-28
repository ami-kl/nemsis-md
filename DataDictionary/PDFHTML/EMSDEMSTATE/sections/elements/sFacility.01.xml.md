

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.01
sFacility.01 - Type of Facility
Definition
The type of facility (healthcare or other) that the EMS agency transports patients to or from.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_15
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
1701001Assisted Living Facility
1701003Clinic
1701005Hospital
1701007Nursing Home
1701009Other
1701011Urgent Care
1701013Physical Rehabilitation Facility
1701015Mental Health Facility
1701017Dialysis Center
1701019Diagnostic Services
1701021Freestanding Emergency Department
1701023Morgue/Mortuary
1701025Police/Jail
1701027Other EMS Responder (air)
1701029Other EMS Responder (ground)
1701031Other Recurring Care Center
1701033Drug and/or Alcohol Rehabilitation Facility
1701035Skilled Nursing Facility
Data Element Comment
Used to populate dFacility.01 Type of Facility.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Type of Facility is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Type of Facility has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_s028WarningType of Facility, Facility Location Code, Facility Street Address, Facility City, and Facility State
should be a unique combination for each facility.