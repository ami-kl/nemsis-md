

StateNational
eResponse.05
eResponse.05 - Type of Service Requested
Definition
The type of service or category of service requested of the EMS Agency responding for this specific EMS
event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_04
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
2205001Emergency Response (Primary Response Area)
2205003Emergency Response (Intercept)
2205009Emergency Response (Mutual Aid)
2205005Hospital-to-Hospital Transfer
2205015Hospital to Non-Hospital Facility Transfer
2205017Non-Hospital Facility to Non-Hospital Facility Transfer
2205019Non-Hospital Facility to Hospital Transfer
2205007Other Routine Medical Transport
2205011Public Assistance
2205013Standby
2205021Support Services
2205023Non-Patient Care Rescue/Extrication
2205025Crew Transport Only
2205027Transport of Organs or Body Parts
2205029Mortuary Services
2205031Mobile Integrated Health Care Encounter
2205033Evaluation for Special Referral/Intake Programs
2205035Administrative Operations
Data Element Comment
Values for "911 Response (Scene)", "Intercept", and "Mutual Aid" have been relabeled to start with "Emergency Response" to
more easily identify these options. "Interfacility Transport" was relabeled to "Hospital-to-Hospital Transfer" to be more
accurate; "Medical Transport" was relabeled to "Other Routine Medical Transport" to cover any other medical transports such
as transports to and from dialysis, doctor appointments, return home, or nursing homes. Values added to consolidate types of
service previously captured in "Primary Role of Unit" and eDisposition.12 as found in V3.4.0. Additional values added to reflect
emerging service types.
Version 3 Changes Implemented
With the release of v3.5.0 values were added to meet the needs of EMS
Associated Validation Rules
Rule IDLevelMessage
nemSch_e075WarningDate/Time of Symptom Onset should be recorded when Type of Service Requested is
"Emergency Response (Primary Response Area)" and Patient Evaluation/Care is "Patient
Evaluated and Care Provided".
nemSch_e076WarningPossible Injury should be recorded when Type of Service Requested is "Emergency Response
(Primary Response Area)" and Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e080WarningPrimary Symptom should be recorded when Type of Service Requested is "Emergency
Response (Primary Response Area)" and Patient Evaluation/Care is "Patient Evaluated and
Care Provided".

nemSch_e082WarningProvider's Primary Impression should be recorded when Type of Service Requested is
"Emergency Response (Primary Response Area)" and Patient Evaluation/Care is "Patient
Evaluated and Care Provided".
nemSch_e084WarningInitial Patient Acuity should be recorded when Type of Service Requested is "Emergency
Response (Primary Response Area)" and Patient Evaluation/Care is "Patient Evaluated and
Care Provided".
nemSch_e088WarningReason for Interfacility Transfer/Medical Transport should only be recorded when Type of
Service Requested is "... Transfer" or "Other Routine Medical Transport".