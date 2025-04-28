

eDispatch.06
eDispatch.06 - Unit Dispatched CAD Record ID
Definition
The unique ID assigned by the CAD system for the specific unit response.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
3
maxLength
50
Data Element Comment
The Unit Dispatched CAD Record ID is populated from a CAD system. This information will not be known to the EMS
professional. 
Use Case: Some CAD systems may use the Unit Dispatched CAD Record ID as the Patient Care Report Number
(eRecord.01). This may also be a GUID from a CAD system. A GUID for the CAD push to remain unique as updates are sent
from CAD. This could be a stream and unique to the record or patient depending on the capabilities of the CAD system. How
the Unit Dispatched CAD Record ID is created could vary as it could be a concatenation of multiple elements or a true GUID.