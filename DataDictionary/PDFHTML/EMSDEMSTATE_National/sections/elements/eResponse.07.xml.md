

StateNational
eResponse.07
eResponse.07 - Unit Transport and Equipment Capability
Definition
The transport and equipment capabilities of the EMS Unit which responded to this specific EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_05
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
2207011Air Transport-Helicopter
2207013Air Transport-Fixed Wing
2207015Ground Transport (ALS Equipped)
2207017Ground Transport (BLS Equipped)
2207019Ground Transport (Critical Care Equipped)
2207021Non-Transport-Medical Treatment (ALS Equipped)
2207023Non-Transport-Medical Treatment (BLS Equipped)
2207025Wheel Chair Van/Ambulette
2207027Non-Transport-No Medical Equipment
Data Element Comment
Element relabeled from "Primary Role of Unit" to "Unit Transport and Equipment Capability" to better reflect its new defined
purpose and allow the deprecation of eResponse.15 "Level of Care of This Unit". V3.4.0 Non-Transport values deprecated as
these are types of service and were moved to eResponse.05 "Type of Service Requested". Values have been added to better
capture transport capability and available equipment. These values should be tied to the capabilities and role of the unit and
not reflect the level of providers responding to an event. 
Supervisor clarified to Administrative Only. If the Supervisor is responding to assist, that would be considered Non-Transport.
Transport separated into Air and Ground. In Version 2 there was no way to identify Air Transport.
Version 3 Changes Implemented
With the release of V3.5.0 values were deprecated, added, and relabeled to meet the needs of EMS.