

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.19
eDisposition.19 - Acuity Upon EMS Release of Patient
Definition
The acuity of the patient's condition after this EMS unit's release of the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_15
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
4219001Critical (Red)
4219003Emergent (Yellow)
4219005Lower Acuity (Green)
4219007Dead without Resuscitation Efforts (Black)
4219009Dead with Resuscitation Efforts (Black)
4219011Non-Acute/Routine
Data Element Comment
Definitions related to "Critical, Emergent, and Lower Acuity" can be found in the National EMS Core Content document from
NHTSA EMS (DOT HS 809-898 July 2005) at 
 https://www.ems.gov/assets/National_EMS_Core_Content.pdf
Dead without Resuscitation Efforts would be appropriate if resuscitation was initiated by non-EMS personnel but discontinued
immediately upon evaluation by first arriving EMS personnel. 
"Non-Acute/Routine" added for use with patients with no clinical issues-such as a refusal for a lift assist-or for routine
transfers. "Dead with Resuscitation Efforts (Black)" added for EMS units that arrived and provided resuscitation to a critical
patient, but who was deceased at the end of the event (such as in a cardiac arrest).
Version 3 Changes Implemented
With the release of v3.5.0 additional values were added to meet the needs of EMS.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Acuity Upon EMS Release of Patient is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Acuity Upon EMS Release of Patient has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e168WarningAcuity Upon EMS Release of Patient should be recorded when Patient Evaluation/Care is
"Patient Evaluated and Care Provided".