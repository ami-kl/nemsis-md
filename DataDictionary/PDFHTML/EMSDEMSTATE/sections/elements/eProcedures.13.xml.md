

7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eProcedures.13
eProcedures.13 - Vascular Access Location
Definition
The location of the vascular access site attempt on the patient, if applicable.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_12
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
3913001Antecubital-Left
3913003Antecubital-Right
3913005External Jugular-Left
3913007External Jugular-Right
3913009Femoral-Left IV
3913011Femoral-Right IV
3913013Foot-Right
3913015Foot-Left
3913017Forearm-Left
3913019Forearm-Right
3913021Hand-Left
3913023Hand-Right
3913025Internal Jugular-Left
3913027Internal Jugular-Right
3913029IO-Iliac Crest-Left
3913031IO-Iliac Crest-Right
3913033IO-Femoral-Left Distal
3913035IO-Femoral-Right Distal
3913037IO-Humeral-Left
3913039IO-Humeral-Right
3913041IO-Tibia-Left Distal
3913043IO-Sternum
3913045IO-Tibia-Right Distal
3913047IO-Tibia-Left Proximal
3913049IO-Tibia-Right Proximal
3913051Lower Extremity-Left
3913053Lower Extremity-Right
3913055Other Peripheral
3913057Other Central (PICC, Portacath, etc.)
3913059Scalp
3913061Subclavian-Left
3913063Subclavian-Right
3913065Umbilical
3913067Venous Cutdown-Left Lower Extremity
3913069Venous Cutdown-Right Lower Extremity
3913071Upper Arm-Left
3913073Upper Arm-Right
3913075Radial-Left
3913077Radial-Right
3913079Wrist-Left
3913081Wrist-Right
Data Element Comment
This is now associated with the Date/Time of the procedure and therefore changed to single choice. This allows the location to

be documented with each procedure and attempt. If the vascular access has been established prior to EMS, this should be
documented as such.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Vascular Access Location is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Vascular Access Location has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.