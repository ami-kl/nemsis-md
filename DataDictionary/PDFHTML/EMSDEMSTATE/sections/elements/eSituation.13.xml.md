

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.13
eSituation.13 - Initial Patient Acuity
Definition
The acuity of the patient's condition upon this EMS unit's arrival at scene.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2813001Critical (Red)
2813003Emergent (Yellow)
2813005Lower Acuity (Green)
2813007Dead without Resuscitation Efforts (Black)
2813009Non-Acute/Routine
Data Element Comment
Definitions related to "Critical, Emergent, and Lower Acuity" can be found in the National EMS Core Content document from
NHTSA EMS (DOT HS 809-898 July 2005) at 
 https://www.ems.gov/assets/National_EMS_Core_Content.pdf
Dead without Resuscitation Efforts would be appropriate if resuscitation was initiated by non-EMS personnel but discontinued
immediately upon evaluation by first arriving EMS personnel. 
"Non-Acute/Routine" added for use with patients with no clinical issues-such as refusal for a lift assist-or for routine transfers.
Version 3 Changes Implemented
With the release of V3.5.0 additional values were added to meet the needs of EMS.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Initial Patient Acuity is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Initial Patient Acuity has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e084WarningInitial Patient Acuity should be recorded when Type of Service Requested is "Emergency
Response (Primary Response Area)" and Patient Evaluation/Care is "Patient Evaluated and
Care Provided".