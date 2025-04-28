

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.01
eArrest.01 - Cardiac Arrest
Definition
Indication of the presence of a cardiac arrest at any time during this EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3001001No
3001003Yes, Prior to Any EMS Arrival (includes Transport EMS & Medical First Responders)
3001005Yes, After Any EMS Arrival (includes Transport EMS & Medical First Responders)
Data Element Comment
This element is a component of the Utstein Cardiac Arrest Criteria. 
If this EMS event is for an interfacility transfer of a patient with a recent history of a cardiac arrest with ROSC, and who does
not experience another cardiac arrest during transport, then do not document Cardiac Arrest (eArrest.01) with "Yes, Prior to
Any EMS Arrival (includes Transport EMS & Medical First Responders)". 
EMS is defined as Emergency Medical Services personnel and Medical First Responder personnel who respond to a medical
emergency in an official capacity as part of an organized medical response team. By this definition, physicians, nurses, or
paramedics who witness a cardiac arrest and initiate CPR, but are not part of the organized medical response team are
characterized as bystanders and are not part of the EMS system. 
Medical First Responders are defined as personnel who are dispatched through the 911 system, respond in an official
capacity, have the capability and/or training to provide emergency medical care, but are not the designated transporter of the
patient. Thus, law enforcement officers who respond in an official capacity to a cardiac arrest, have the capability and/or
training to provide emergency medical care (e.g., carry AEDs in their patrol vehicles, hold EMR licensure, are CPR certified,
etc.) are considered Medical First Responders for the purposes of this data element. 
Responders dispatched through the 911 system with no capability of providing emergency medical care are not considered
Medical First Responders. For example, towing and wrecking responding to a vehicle crash, or law enforcement officers who
do not provide any emergency medical care would not be considered Medical First Responders. 
For States and Local agencies that participate in the Cardiac Arrest Registry for Enhanced Survival (CARES), “Any EMS
Arrival” includes 911 Responders (First Responder or EMS) as defined by CARES in the CARES Data Dictionary: 
. https://vendors.mycares.net/
This NEMSIS data element is used to answer CARES data element #20 Arrest After Arrival of 911 Responder. 
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Cardiac Arrest is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Cardiac Arrest has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it

should be empty.
nemSch_e085WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e093WarningCardiac Arrest Etiology should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e094WarningCardiac Arrest Etiology should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e095WarningResuscitation Attempted By EMS should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e096WarningResuscitation Attempted By EMS should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e100WarningArrest Witnessed By should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e101WarningArrest Witnessed By should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e103WarningAED Use Prior to EMS Arrival should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes, Prior to Any EMS Arrival (includes
Transport EMS & Medical First Responders)".
nemSch_e104WarningAED Use Prior to EMS Arrival should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e105WarningType of CPR Provided should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e108WarningAny Return of Spontaneous Circulation should be recorded when Patient Evaluation/Care is
"Patient Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e109WarningAny Return of Spontaneous Circulation should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e111WarningDate/Time of Cardiac Arrest should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e112WarningReason CPR/Resuscitation Discontinued should only be recorded when Cardiac Arrest is
"Yes...".
nemSch_e113WarningCardiac Rhythm on Arrival at Destination should be recorded when Transport Disposition is
"Transport by This EMS Unit..." and Cardiac Arrest is "Yes...".
nemSch_e114WarningCardiac Rhythm on Arrival at Destination should only be recorded when Cardiac Arrest is
"Yes...".
nemSch_e115WarningEnd of EMS Cardiac Arrest Event should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e116WarningEnd of EMS Cardiac Arrest Event should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e118WarningWho First Initiated CPR should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e120WarningWho First Applied the AED should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e123WarningWho First Defibrillated the Patient should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e171WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Arrest is "Yes...".