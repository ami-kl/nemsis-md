

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.28
eDisposition.28 - Patient Evaluation/Care
Definition
The patient disposition for an EMS event identifying whether a patient was evaluated and care or services
were provided.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
4228001Patient Evaluated and Care Provided
4228003Patient Evaluated and Refused Care
4228005Patient Evaluated, No Care Required
4228007Patient Refused Evaluation/Care
4228009Patient Support Services Provided
Data Element Comment
Grouped with Incident and Transport Dispositions. Who provided care or services is defined in Incident Disposition.
Version 3 Changes Implemented
Element added with the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient Evaluation/Care is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Patient Evaluation/Care has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e057WarningPatient's Home County should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided".
nemSch_e059WarningPatient's Home State should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided".
nemSch_e060WarningPatient's Home ZIP Code should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided".
nemSch_e062WarningRace should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e063WarningAge should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e064WarningAge Units should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
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
nemSch_e085WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e086WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Stroke Scale Result is "Positive".
nemSch_e087WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".
nemSch_e089WarningCause of Injury should be recorded when Patient Evaluation/Care is "Patient Evaluated and
Care Provided" and Possible Injury is "Yes".
nemSch_e093WarningCardiac Arrest Etiology should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e095WarningResuscitation Attempted By EMS should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e100WarningArrest Witnessed By should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e103WarningAED Use Prior to EMS Arrival should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes, Prior to Any EMS Arrival (includes
Transport EMS & Medical First Responders)".
nemSch_e108WarningAny Return of Spontaneous Circulation should be recorded when Patient Evaluation/Care is
"Patient Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e115WarningEnd of EMS Cardiac Arrest Event should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e168WarningAcuity Upon EMS Release of Patient should be recorded when Patient Evaluation/Care is
"Patient Evaluated and Care Provided".
nemSch_e180WarningUnit Disposition should be "Patient Contact Made" when Patient Evaluation/Care is "Patient
Evaluated..." or "Patient Refused Evaluation/Care".
nemSch_e183WarningPatient Evaluation/Care should be recorded when Unit Disposition is "Patient Contact Made".
nemSch_e184WarningPatient Evaluation/Care should be "Patient Evaluated and Care Provided" when Crew
Disposition contains "... Primary Care..." or "Provided Care Supporting Primary EMS Crew".
nemSch_e187WarningLevel of Care Provided per Protocol should be recorded (with a value other than "No Care
Provided") when Patient Evaluation/Care is "Patient Evaluated and Care Provided".
nemSch_e193WarningSex should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care Provided".