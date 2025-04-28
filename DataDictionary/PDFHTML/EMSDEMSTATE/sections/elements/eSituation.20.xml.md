

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.20
eSituation.20 - Reason for Interfacility Transfer/Medical Transport
Definition
The general categories of the reason for an interfacility transfer/medical transport.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
2820001Cardiac Specialty
2820003Convenience Transfer (Patient Request)
2820005Diagnostic Testing
2820007Dialysis
2820009Drug and/or Alcohol Rehabilitation Care
2820011Extended Care
2820013Maternal/Neonatal
2820015Medical Specialty Care (Other, Not Listed)
2820017Neurological Specialty Care
2820019Palliative/Hospice Care (Home or Facility)
2820021Pediatric Specialty Care
2820023Psychiatric/Behavioral Care
2820025Physical Rehabilitation Care
2820027Return to Home/Residence
2820029Surgical Specialty Care (Other, Not Listed)
2820031Trauma/Orthopedic Specialty Care
Data Element Comment
This supports and works in combination with eSituation.19 Justification for Transfer or Encounter to provide defined
categories for an interfacility transfer or other medical transport. This documentation provides support for reimbursement and
a means for regions and states to evaluate transfer patterns and types.
Version 3 Changes Implemented
Element added with the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Reason for Interfacility Transfer/Medical Transport is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Reason for Interfacility Transfer/Medical Transport has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e088WarningReason for Interfacility Transfer/Medical Transport should only be recorded when Type of
Service Requested is "... Transfer" or "Other Routine Medical Transport".