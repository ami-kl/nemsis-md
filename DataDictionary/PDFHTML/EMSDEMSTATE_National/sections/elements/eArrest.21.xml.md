

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.21
eArrest.21 - Who First Applied the AED
Definition
Documentation of who first applied the AED for this EMS event.
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
3021001Bystander
3021003Family Member
3021005Healthcare Provider (non-911 Responder)
3021007First Responder (EMS)
3021009First Responder (Law Enforcement)
3021011First Responder (non-EMS Fire)
3021013EMS Responder (transport EMS)
Data Element Comment
Bystanders are defined as persons who are not responding as part of an organized emergency response system to a cardiac
arrest. Physicians, nurses, and paramedics may be described as preforming bystander CPR if they are not part of the
emergency response system involved in the victim's resuscitation. Friends and acquaintances are considered bystanders. 
Family members are defined as the patient's relatives. 
Healthcare Provider (non-911 Responder) includes physicians, nurses, paramedics, and other types of healthcare
professionals who are not part of the organized emergency response system. 
First Responders are defined as personnel who are dispatched through the 911 system, respond as part of an organized
emergency response system, and have the capability and/or training to provide emergency medical care, but are not the
designated transporters of the patient. 
First Responder (EMS) is defined as EMS personnel who are part of an EMS response agency, respond as part of an
organized emergency response system, but are not the designated transporter of the patient. For example, First Responser
(EMS) includes EMS personnel who arrive by quick response EMS units, fire apparatus that is part of an EMS response
agency, and supervisor/administrative vehicles operated by the transport EMS agency. 
First Responder (Law Enforcement) is defined as public safety officers who are not part of an EMS response agency and act
in an organized, official capacity to enforce the law. 
First Responder (non-EMS Fire) is defined as fire department personnel who are not part of an EMS response agency and
are not the designated transporter of the patient. 
EMS Responder (transport) is defined as EMS personnel who are the designated transporter of the patient. 
For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced Survival (CARES), eArrest.21 is the
equivalent of CARES data element #27 Who First Applied the AED as defined by CARES in the CARES Data Dictionary: 
.https://vendors.mycares.net/
Associated Validation Rules
Rule IDLevelMessage

nemSch_e001ErrorWhen Who First Applied the AED is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Who First Applied the AED has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e119WarningWho First Applied the AED should be recorded when AED Use Prior to EMS Arrival is "Yes...".
nemSch_e120WarningWho First Applied the AED should only be recorded when Cardiac Arrest is "Yes...".