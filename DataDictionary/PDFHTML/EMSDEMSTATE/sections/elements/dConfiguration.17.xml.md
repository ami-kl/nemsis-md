

stringData Type: 2minLength: 255maxLength: 
dConfiguration.17
dConfiguration.17 - Dispatch Center (CAD) Name or ID
Definition
The name or ID of the dispatch center (Primary or Secondary Service Answering Point - PSAP) that
dispatches the EMS agency.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
This element can be used to identify the dispatch center (Primary or Secondary Service Answering Point - PSAP) that
dispatches the EMS agency. If the EMS agency is able to populate the Patient Care Report (PCR) with CAD specific details
(times, incident address information, crew information, EMD, etc.) the name or ID of the dispatch center should be
documented. Information in dConfiguration.17 may be used to populate eDispatch.04 - Computer Aided Dispatch (CAD)
Name or ID if a CAD integration exists.
Version 3 Changes Implemented
Added to the dataset to assist in identifying the CAD / dispatch center providing information to the EMS agency and ePCR
when there are multiple dispatch centers sending resources to the same EMS incident.