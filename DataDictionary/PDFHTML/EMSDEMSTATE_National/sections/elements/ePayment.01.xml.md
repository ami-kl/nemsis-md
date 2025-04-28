

7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePayment.01
ePayment.01 - Primary Method of Payment
Definition
The primary method of payment or type of insurance associated with this EMS encounter.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE07_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2601001Insurance
2601003Medicaid
2601005Medicare
2601007Not Billed (for any reason)
2601009Other Government
2601011Self Pay
2601013Workers Compensation
2601015Payment by Facility
2601017Contracted Payment
2601019Community Network
2601021No Insurance Identified
2601023Other Payment Option
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Primary Method of Payment is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Primary Method of Payment has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.