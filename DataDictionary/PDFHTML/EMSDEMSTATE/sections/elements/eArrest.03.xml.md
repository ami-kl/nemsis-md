

stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.03
eArrest.03 - Resuscitation Attempted By EMS
Definition
Indication of an attempt to resuscitate the patient who is in cardiac arrest (attempted, not attempted due to
DNR, etc.) by any EMS.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_03
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
3003001Attempted Defibrillation
3003003Attempted Ventilation
3003005Initiated Chest Compressions
3003007Not Attempted-Considered Futile
3003009Not Attempted-DNR Orders
3003011Not Attempted-Signs of Circulation
Data Element Comment
This element is a component of the Utstein Cardiac Arrest Criteria.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Resuscitation Attempted By EMS is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Resuscitation Attempted By EMS has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Resuscitation Attempted By EMS has a Not Value, no other value should be recorded.
nemSch_e095WarningResuscitation Attempted By EMS should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e096WarningResuscitation Attempted By EMS should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e097WarningResuscitation Attempted By EMS should not contain both "Attempted/Initiated..." and "Not
Attempted...".
nemSch_e098WarningResuscitation Attempted By EMS should contain "Initiated Chest Compressions" when Type of
CPR Provided contains "Compressions...".
nemSch_e099WarningResuscitation Attempted By EMS should contain "Attempted Ventilation" when Type of CPR
Provided contains "Ventilation..." or "Compressions-Intermittent with Ventilation".
nemSch_e106WarningType of CPR Provided should contain "Compressions..." when Resuscitation Attempted By EMS
contains "Initiated Chest Compressions".

nemSch_e107WarningType of CPR Provided should contain "Ventilation..." or "Compressions-Intermittent with
Ventilation" when Resuscitation Attempted By EMS contains "Attempted Ventilation".
nemSch_e117WarningWho First Initiated CPR should be recorded when Resuscitation Attempted By EMS is
"Attempted..." or "Initiated...".