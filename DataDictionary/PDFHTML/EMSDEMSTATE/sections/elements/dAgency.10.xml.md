

stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.10
dAgency.10 - Other Types of Service
Definition
The other service type(s) which are provided by the agency.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_06
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
9920001911 Response (Scene) with Transport Capability
9920003911 Response (Scene) without Transport Capability
9920005Air Medical
9920007ALS Intercept
9920011Hazmat
9920013Medical Transport (Convalescent, Interfacility Transfer Hospital and Nursing Home)
9920015Rescue
9920017Community Paramedicine
9920019Critical Care (Ground)
Data Element Comment
If no other services are provided beyond the Primary Service Type, Not Applicable should be used. This should include all of
the types of services not listed in (dAgency.09) Primary Type of Service.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Other Types of Service is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Other Types of Service has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen Other Types of Service has a Not Value, no other value should be recorded.