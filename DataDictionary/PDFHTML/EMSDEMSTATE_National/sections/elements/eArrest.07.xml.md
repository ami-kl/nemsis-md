

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.07
eArrest.07 - AED Use Prior to EMS Arrival
Definition
Documentation of AED use Prior to EMS Arrival.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3007001No
3007003Yes, Applied without Defibrillation
3007005Yes, With Defibrillation
Data Element Comment
This element is a component of the Utstein Cardiac Arrest Criteria.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen AED Use Prior to EMS Arrival is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen AED Use Prior to EMS Arrival has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e103WarningAED Use Prior to EMS Arrival should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes, Prior to Any EMS Arrival (includes
Transport EMS & Medical First Responders)".
nemSch_e104WarningAED Use Prior to EMS Arrival should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e119WarningWho First Applied the AED should be recorded when AED Use Prior to EMS Arrival is "Yes...".
nemSch_e122WarningWho First Defibrillated the Patient should be recorded when AED Use Prior to EMS Arrival is
"Yes, With Defibrillation".