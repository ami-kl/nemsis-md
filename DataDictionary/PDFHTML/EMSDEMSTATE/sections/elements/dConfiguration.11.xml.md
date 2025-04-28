

stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dConfiguration.11
dConfiguration.11 - EMS Agency Specialty Service Capability
Definition
Special training or services provided by the EMS Agency and available to the EMS service area/community.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
1211001Air Rescue
1211003CBRNE
1211005Community Health Medicine
1211007Disaster Medical Assistance Team (DMAT)
1211009Disaster Mortuary (DMORT)
1211011Dive Rescue
1211013Farm Rescue
1211015High Angle Rescue
1211017Machinery Disentanglement
1211019None
1211021Ski / Snow Rescue
1211023Tactical EMS
1211025Trench / Confined Space Rescue
1211027Urban Search and Rescue (USAR)
1211029Vehicle Extrication
1211031Veterinary Medical Assistance Team (VMAT)
1211033Water or Ice Related Rescue (Incl Swift Water)
1211035Wilderness Search and Rescue
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Agency Specialty Service Capability is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted
(if the element is optional).
nemSch_d002ErrorWhen EMS Agency Specialty Service Capability has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_d003WarningWhen EMS Agency Specialty Service Capability has a Not Value, no other value should be
recorded.