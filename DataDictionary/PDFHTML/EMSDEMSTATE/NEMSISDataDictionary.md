

NEMSIS
Data Dictionary
NHTSA v3.5.1
Build 250403 Critical Patch 1
EMS Data Standard
Version Date: April 03, 2025
Funded by
National Highway Traffic Safety Administration (NHTSA)
Office of Emergency Medical Services
www.NEMSIS.org

NEMSIS Data Dictionary Version 3.5.1
Overview
The NEMSIS data dictionary was developed through a collaborative effort with the EMS industry including:
web-based reviews, public comment periods, focus groups, industry dialogue, topic focused projects, and
consensus. The National EMS Information System Version 3 represents a major revision from Version 2 released
in 2005. Adopting a broad perspective, the initiative to move to a 3rd version of the NEMSIS data dictionary was
fueled by the need to improve data quality, enhance our ability to assess EMS performance, augment the
flexibility of the standard for state adoption and, to move the NEMSIS standard into the Health Level 7 (HL7)
organization for approval as an American National Standards Institute (ANSI) standard.
The charts below outline the composition of the NEMSIS data standard into three data sets, EMS (ePCR),
Demographic (Agency), and StateDataSet (SDS). They also show how the standard has changed from the
previous version (v3.5.0) to the current version (v3.5.1).
Composition of the NEMSIS Version 3.5.1 Standard
UsageEMSDataSetDEMDataSetStateDataSetTotal
Mandatory21251157
Required130410144
Recommended614410115
Optional2378316336
Total44915647652
Changes from v3.5.0 to v3.5.1
Overall Changes
NewUpdatedDeprecated
Total14743
EMS
Elements
9632
DEM
Elements
581
StateDataSet
Elements
030
Published: 04/03/2025www.NEMSIS.orgPage i

Changes in National Elements
v3.5.0v3.5.1
Total (excluding SDS,
eOutcome)
1558
Mandatory322
Required1236
Published: 04/03/2025www.NEMSIS.orgPage ii

NEMSIS Version 3.5.1 Data Dictionary Content
**Note: The numbers to the right of the content listed below represent the location for each element on the Sample Page of the Data
Dictionary (page vi).
Data Element Number 
(1)
The NEMSIS Version 3 element numbering system has been revised to improve the information that
can be derived from just the data element number. An example of a data element number is
dAgency.01.
The data element number begins with either a "d" representing the demographic (agency)
section or an "e" representing the EMS PCR section.
A one word descriptor for each section is now included in the data element number.
A period separates the section (e.g. dAgency) from the data element number (e.g. 01).
National and State Element Indicator   
(2)(5)(6)
National = Yes, is an indication that the data element is required to be collected at the local EMS
agency level and submitted to the state
State = Yes, is an indication that the data element is recommended to be collected at the State level.
Data Element Name 
(3)
The name for the data element.
Data Element Definition 
(4)
The definition for the data element.
Version 2 Number 
(7)
The NEMSIS Version 2.2.1 Data Element Number.
If the Data Element is new to Version 3.5.1, the Version 2 Number will be blank.
Data Structure Information
Recurrence 
(12)
Indication that the data element can have more than one value.
Represented by two characters separated by a colon. The configuration includes:
0:1 = element is not required and can occur only once
0:M = element is not required and can repeat multiple times
1:1 = element is required and can occur only once
1:M = element is required and can repeat multiple times
Usage 
(8)
Indication of when the data element is expected to be collected.
Mandatory = Must be completed and does not allow for NOT values
Required = Must be completed and allows NOT values
Recommended = Does not need to be completed and allows NOT values
Optional = Does not need to be completed and does not allow for NOT values
NOT Value Characteristics 
(10)
Indication that the data element can have NOT values.
NOT Values are used (where permitted) to document that a data element was not applicable,
not completed, or not collected by the state.
NOT Values are documented as an attribute of an element. It allows the documentation of
NOT value when a real value is not documented.
Please reference the NEMSIS White Paper describing the use of NOT Values, Pertinent
Negatives, and Nill: 
https://nemsis.org/media/nemsis_v3/master/UsageGuides/NEMSISv3_AttributeUsage.pdf
NOT Values Accepted 
(14)
Indication of which of the following three NOT values is acceptable.
Not all data elements accept NOT values.
NOT Values have been condensed in Version 3.
Not Applicable = The data element is not applicable or pertinent.
Published: 04/03/2025www.NEMSIS.orgPage iii

Not Recorded = The data element is considered applicable, but was left blank. The
software should auto-populate it with "Not Recorded".
Not Reporting = The data element is not collected by the EMS agency or state. This
NOT value does not apply to National elements where Usage is specified as
"Required".
Pertinent Negative Values (PN)  
(9)(14)
A list of Pertinent Negative Values which can be associated with a data element.
Not all data elements accept Pertinent Negative Values.
Pertinent Negative Values are documented as "an attribute" of an element. It allows the
documentation of pertinent negative value in addition to the documentation of a "real" value.
Please reference the NEMSIS White Paper describing the use of NOT Values, Pertinent
Negatives, and Nill: 
https://nemsis.org/media/nemsis_v3/master/UsageGuides/NEMSISv3_AttributeUsage.pdf
Example of use:
Example #1 - Aspirin Administration:
If the medication Aspirin is part of the agency protocol for Chest Pain but was not
administered by the responding crew, the reason why should be documented.
This is done through the use of Pertinent Negative Values. If the patient took the
Aspirin prior to the EMS arrival on scene, the value "Medication Already Taken"
should be documented in addition to "Aspirin".
Is Nillable 
(11)
Indication that the element can accept a "blank" value.
If the element is left "blank" the software must submit an appropriate value of one of the two
attributes: Pertinent Negative or NOT Values.
Associated Performance Measure Initiatives 
(13)
Indication that the data element has value in describing, defining, or measuring EMS from a
performance perspective. Performance Measures can be associated with EMS service delivery,
patient care, or both. The following service delivery or time dependent illness/injury performance
measure topics have been included in NEMSIS Version 3:
Airway - Airway Management
Cardiac Arrest - Out of Hospital Cardiac Arrest
Pediatric - Acute Pediatric Care
Response - EMS Response Time
STEMI - ST Elevation Myocardial Infarction (STEMI)
Stroke - Acute Stroke Care
Trauma - Acute Injury/Trauma Care
Attributes 
(14)
An attribute provides extra information within an element.
For information related to the first three attributes please see the NEMSIS document 'How to Utilize
NEMSIS V3 "NOT values/pertinent negatives/nillable':
 https://nemsis.org/media/nemsis_v3/master/UsageGuides/NEMSISv3_AttributeUsage.pdf
The following are possible attributes:
PN (Pertinent Negative)
8801001 - Contraindication Noted
8801003 - Denied By Order
8801005 - Exam Finding Not Present
8801007 - Medication Allergy
8801009 - Medication Already Taken
8801013 - No Known Drug Allergy
8801015 - None Reported
8801017 - Not Performed by EMS
8801019 - Refused
8801021 - Unresponsive
8801023 - Unable to Complete
8801025 - Not Immunized
Published: 04/03/2025www.NEMSIS.orgPage iv

8801027 - Order Criteria Not Met
8801029 - Approximate
8801031 - Symptom Not Present
NV (Not Value)
7701001 - Not Applicable
7701003 - Not Recorded
7701005 - Not Reporting
Nillable xsi:nil="true"
Code Type
9924001 = ICD-10
9924003 = RxNorm
9924005 = SNOMED-CT
CorrelationID
Data Type = String
minLength = 0
maxLength = 255
DistanceUnit
9921001 - Kilometers
9921003 - Miles
EmailAddressType
9904001 - Personal
9904003 - Work
nemsisCode
Data Type = String
nemsisElement
Data Type = String
nemsisValueDescription
Data Type = String
PhoneNumberType
9913001 - Fax
9913003 - Home
9913005 - Mobile
9913007 - Pager
9913009 - Work
ProcedureGroupCorrelationID
Date Type = CorrelationID
StreetAddress2
Data Type = String
minLength = 1
maxLength = 255
TimeStamp
Data Type = DateTime
minValue = 1950-01-01T00:00:00-00:00
maxValue = 2050-01-01T00:00:00-00:00
UUID
Published: 04/03/2025www.NEMSIS.orgPage v

UUIDs must be generated using the IETF RFC 4122 standard.
RFC 4122 defines 4 algorithms for UUID generation, any of these four can be used.
UUIDs must be represented in canonical form, matching the following regular
expression:
[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[1-5][a-fA-F0-9]{3}-[89abAB][a-fA-F0-9]{3}-[a-fA-F0-9]{12}
VelocityUnit
9921001 - Kilometers per Hour
9921003 - Miles per Hour
Code List 
(16)
A list of values associated with the data element. Not all data elements have predefined value sets.
Codes for each value:
The codes are based on a 7-digit number, in a 2-2-3 pattern (without dashes).
The first set of two numbers represent the data section
The second set of two numbers represent the element number
The last set is a 3-digit number for each value beginning at 001; The codes increase in
increments of two (2).
Codes are typically sequential (by two) and alphabetical. Some ordering is provided in an
effort to present information based on workflow.
Several values and codes reference external standards such as ICD-10, RxNorm, SNOMED,
etc. NEMSIS will assist in providing a recommended list of EMS specific values and codes
from these larger standards for most elements using these external standards.
Data Element Editorial Comments 
(17)
Comments are provided to describe additions, changes, clarifications, or provide additional insight
into the data element.
Version 3 Changes Implemented 
(18)
Comments providing insight into specific Version 3 changes such as new or revised data elements.
Element Deprecated
(19)
Elements that are signified as "deprecated" will be removed from a future version of the NEMSIS
standard. Their use should now be avoided, but will be supported until they are removed from the
standard.
Associated Validation Rules 
(20)
A list of national Schematron validation rules associated with the element. Additional validation rules
may be implemented at the state or local level.
Published: 04/03/2025www.NEMSIS.orgPage vi

Published: 04/03/2025www.NEMSIS.orgPage vii

Published: 04/03/2025www.NEMSIS.orgPage vii

Table of Contents

EMSDataSet1
EMSDataSet Grouping2

DEMDataSet4
DEMDataSet Grouping5

StateDataSet6
StateDataSet Grouping7
dAgency.01 - EMS Agency Unique State ID8
dAgency.02 - EMS Agency Number9
dAgency.04 - EMS Agency State10

eCustomConfiguration11
eCustomConfiguration Grouping12
eCustomConfiguration.01 - Custom Data Element Title13
eCustomConfiguration.02 - Custom Definition14
eCustomConfiguration.03 - Custom Data Type15
eCustomConfiguration.04 - Custom Data Element Recurrence16
eCustomConfiguration.05 - Custom Data Element Usage17
eCustomConfiguration.06 - Custom Data Element Potential Values18
eCustomConfiguration.07 - Custom Data Element Potential NOT Values (NV)19
eCustomConfiguration.08 - Custom Data Element Potential Pertinent Negative Values (PN)20
eCustomConfiguration.09 - Custom Data Element Grouping ID21

eRecord22
eRecord Grouping23
eRecord.01 - Patient Care Report Number24
eRecord.02 - Software Creator25
eRecord.03 - Software Name26
eRecord.04 - Software Version27

eResponse28
eResponse Grouping29
eResponse.01 - EMS Agency Number30
eResponse.02 - EMS Agency Name31
eResponse.03 - Incident Number32
eResponse.04 - EMS Response Number33
eResponse.05 - Type of Service Requested34
eResponse.06 - Standby Purpose36
eResponse.07 - Unit Transport and Equipment Capability37
eResponse.08 - Type of Dispatch Delay38
eResponse.09 - Type of Response Delay39
eResponse.10 - Type of Scene Delay41
eResponse.11 - Type of Transport Delay42
eResponse.12 - Type of Turn-Around Delay43
eResponse.13 - EMS Vehicle (Unit) Number45
eResponse.14 - EMS Unit Call Sign46

eResponse.16 - Vehicle Dispatch Location47
eResponse.17 - Vehicle Dispatch GPS Location48
eResponse.18 - Vehicle Dispatch Location US National Grid Coordinates49
eResponse.19 - Beginning Odometer Reading of Responding Vehicle50
eResponse.20 - On-Scene Odometer Reading of Responding Vehicle51
eResponse.21 - Patient Destination Odometer Reading of Responding Vehicle52
eResponse.22 - Ending Odometer Reading of Responding Vehicle53
eResponse.23 - Response Mode to Scene54
eResponse.24 - Additional Response Mode Descriptors55

eDispatch56
eDispatch Grouping57
eDispatch.01 - Dispatch Reason58
eDispatch.02 - EMD Performed60
eDispatch.03 - EMD Determinant Code61
eDispatch.04 - Dispatch Center Name or ID62
eDispatch.05 - Dispatch Priority (Patient Acuity)63
eDispatch.06 - Unit Dispatched CAD Record ID64

eCrew65
eCrew Grouping66
eCrew.01 - Crew Member ID67
eCrew.02 - Crew Member Level68
eCrew.03 - Crew Member Response Role69

eTimes70
eTimes Grouping71
eTimes.01 - PSAP Call Date/Time72
eTimes.02 - Dispatch Notified Date/Time74
eTimes.03 - Unit Notified by Dispatch Date/Time75
eTimes.04 - Dispatch Acknowledged Date/Time77
eTimes.05 - Unit En Route Date/Time78
eTimes.06 - Unit Arrived on Scene Date/Time80
eTimes.07 - Arrived at Patient Date/Time82
eTimes.08 - Transfer of EMS Patient Care Date/Time84
eTimes.09 - Unit Left Scene Date/Time86
eTimes.10 - Arrival at Destination Landing Area Date/Time88
eTimes.11 - Patient Arrived at Destination Date/Time89
eTimes.12 - Destination Patient Transfer of Care Date/Time91
eTimes.13 - Unit Back in Service Date/Time93
eTimes.14 - Unit Canceled Date/Time95
eTimes.15 - Unit Back at Home Location Date/Time96
eTimes.16 - EMS Call Completed Date/Time97
eTimes.17 - Unit Arrived at Staging Area Date/Time98

ePatient99
ePatient Grouping100
ePatient.01 - EMS Patient ID101
ePatient.02 - Last Name102
ePatient.03 - First Name103

ePatient.04 - Middle Initial/Name104
ePatient.23 - Name Suffix105
ePatient.05 - Patient's Home Address106
ePatient.06 - Patient's Home City107
ePatient.07 - Patient's Home County108
ePatient.08 - Patient's Home State109
ePatient.09 - Patient's Home ZIP Code110
ePatient.10 - Patient's Country of Residence111
ePatient.11 - Patient Home Census Tract112
ePatient.12 - Social Security Number113
ePatient.13 - Gender (DEPRECATED)114
ePatient.14 - Race115
ePatient.15 - Age116
ePatient.16 - Age Units117
ePatient.17 - Date of Birth118
ePatient.18 - Patient's Phone Number119
ePatient.19 - Patient's Email Address120
ePatient.20 - State Issuing Driver's License121
ePatient.21 - Driver's License Number122
ePatient.22 - Alternate Home Residence123
ePatient.24 - Patient's Preferred Language(s)124
ePatient.25 - Sex126

ePayment127
ePayment Grouping128
ePayment.01 - Primary Method of Payment130
ePayment.02 - Physician Certification Statement131
ePayment.03 - Date Physician Certification Statement Signed132
ePayment.04 - Reason for Physician Certification Statement133
ePayment.05 - Healthcare Provider Type Signing Physician Certification Statement134
ePayment.06 - Last Name of Individual Signing Physician Certification Statement135
ePayment.07 - First Name of Individual Signing Physician Certification Statement136
ePayment.08 - Patient Resides in Service Area137
ePayment.09 - Insurance Company ID138
ePayment.10 - Insurance Company Name139
ePayment.11 - Insurance Company Billing Priority140
ePayment.12 - Insurance Company Address141
ePayment.13 - Insurance Company City142
ePayment.14 - Insurance Company State143
ePayment.15 - Insurance Company ZIP Code144
ePayment.16 - Insurance Company Country145
ePayment.17 - Insurance Group ID146
ePayment.18 - Insurance Policy ID Number147
ePayment.19 - Last Name of the Insured148
ePayment.20 - First Name of the Insured149
ePayment.21 - Middle Initial/Name of the Insured150
ePayment.22 - Relationship to the Insured151
ePayment.58 - Insurance Group Name152
ePayment.59 - Insurance Company Phone Number153
ePayment.60 - Date of Birth of the Insured154
ePayment.23 - Closest Relative/Guardian Last Name155

ePayment.24 - Closest Relative/ Guardian First Name156
ePayment.25 - Closest Relative/ Guardian Middle Initial/Name157
ePayment.26 - Closest Relative/ Guardian Street Address158
ePayment.27 - Closest Relative/ Guardian City159
ePayment.28 - Closest Relative/ Guardian State160
ePayment.29 - Closest Relative/ Guardian ZIP Code161
ePayment.30 - Closest Relative/ Guardian Country162
ePayment.31 - Closest Relative/ Guardian Phone Number163
ePayment.32 - Closest Relative/ Guardian Relationship164
ePayment.33 - Patient's Employer165
ePayment.34 - Patient's Employer's Address166
ePayment.35 - Patient's Employer's City167
ePayment.36 - Patient's Employer's State168
ePayment.37 - Patient's Employer's ZIP Code169
ePayment.38 - Patient's Employer's Country170
ePayment.39 - Patient's Employer's Primary Phone Number171
ePayment.40 - Response Urgency172
ePayment.41 - Patient Transport Assessment173
ePayment.42 - Specialty Care Transport Care Provider174
ePayment.44 - Ambulance Transport Reason Code175
ePayment.45 - Round Trip Purpose Description176
ePayment.46 - Stretcher Purpose Description177
ePayment.47 - Ambulance Conditions Indicator178
ePayment.48 - Mileage to Closest Hospital Facility179
ePayment.49 - ALS Assessment Performed and Warranted180
ePayment.50 - CMS Service Level181
ePayment.51 - EMS Condition Code182
ePayment.52 - CMS Transportation Indicator183
ePayment.53 - Transport Authorization Code184
ePayment.54 - Prior Authorization Code Payer185
ePayment.55 - Supply Item Used Name186
ePayment.56 - Number of Supply Item(s) Used187
ePayment.57 - Payer Type188

eScene189
eScene Grouping190
eScene.01 - First EMS Unit on Scene191
eScene.02 - Other EMS or Public Safety Agencies at Scene192
eScene.03 - Other EMS or Public Safety Agency ID Number193
eScene.04 - Type of Other Service at Scene194
eScene.24 - First Other EMS or Public Safety Agency at Scene to Provide Patient Care195
eScene.25 - Transferred Patient/Care To/From Agency196
eScene.05 - Date/Time Initial Responder Arrived on Scene197
eScene.06 - Number of Patients at Scene198
eScene.07 - Mass Casualty Incident199
eScene.08 - Triage Classification for MCI Patient200
eScene.09 - Incident Location Type201
eScene.10 - Incident Facility Code202
eScene.11 - Scene GPS Location203
eScene.12 - Scene US National Grid Coordinates204
eScene.13 - Incident Facility or Location Name205

eScene.14 - Mile Post or Major Roadway206
eScene.15 - Incident Street Address207
eScene.16 - Incident Apartment, Suite, or Room208
eScene.17 - Incident City209
eScene.18 - Incident State210
eScene.19 - Incident ZIP Code211
eScene.20 - Scene Cross Street or Directions212
eScene.21 - Incident County213
eScene.22 - Incident Country214
eScene.23 - Incident Census Tract215

eSituation216
eSituation Grouping217
eSituation.01 - Date/Time of Symptom Onset218
eSituation.02 - Possible Injury220
eSituation.03 - Complaint Type221
eSituation.04 - Complaint222
eSituation.05 - Duration of Complaint223
eSituation.06 - Time Units of Duration of Complaint224
eSituation.07 - Chief Complaint Anatomic Location225
eSituation.08 - Chief Complaint Organ System226
eSituation.09 - Primary Symptom227
eSituation.10 - Other Associated Symptoms228
eSituation.11 - Provider's Primary Impression229
eSituation.12 - Provider's Secondary Impressions230
eSituation.13 - Initial Patient Acuity231
eSituation.14 - Work-Related Illness/Injury232
eSituation.15 - Patient's Occupational Industry233
eSituation.16 - Patient's Occupation234
eSituation.17 - Patient Activity235
eSituation.18 - Date/Time Last Known Well236
eSituation.19 - Justification for Transfer or Encounter238
eSituation.20 - Reason for Interfacility Transfer/Medical Transport239

eInjury240
eInjury Grouping241
eInjury.01 - Cause of Injury243
eInjury.02 - Mechanism of Injury244
eInjury.03 - Trauma Triage Criteria (High Risk for Serious Injury)245
eInjury.04 - Trauma Triage Criteria (Moderate Risk for Serious Injury)247
eInjury.05 - Main Area of the Vehicle Impacted by the Collision249
eInjury.06 - Location of Patient in Vehicle250
eInjury.07 - Use of Occupant Safety Equipment251
eInjury.08 - Airbag Deployment252
eInjury.09 - Height of Fall (feet)253
eInjury.10 - OSHA Personal Protective Equipment Used254
eInjury.11 - ACN System/Company Providing ACN Data255
eInjury.12 - ACN Incident ID256
eInjury.13 - ACN Call Back Phone Number257
eInjury.14 - Date/Time of ACN Incident258

eInjury.15 - ACN Incident Location259
eInjury.16 - ACN Incident Vehicle Body Type260
eInjury.17 - ACN Incident Vehicle Manufacturer261
eInjury.18 - ACN Incident Vehicle Make262
eInjury.19 - ACN Incident Vehicle Model263
eInjury.20 - ACN Incident Vehicle Model Year264
eInjury.21 - ACN Incident Multiple Impacts265
eInjury.22 - ACN Incident Delta Velocity266
eInjury.23 - ACN High Probability of Injury267
eInjury.24 - ACN Incident PDOF268
eInjury.25 - ACN Incident Rollover269
eInjury.26 - ACN Vehicle Seat Location270
eInjury.27 - Seat Occupied271
eInjury.28 - ACN Incident Seatbelt Use272
eInjury.29 - ACN Incident Airbag Deployed273

eArrest274
eArrest Grouping275
eArrest.01 - Cardiac Arrest276
eArrest.02 - Cardiac Arrest Etiology278
eArrest.03 - Resuscitation Attempted By EMS279
eArrest.04 - Arrest Witnessed By281
eArrest.07 - AED Use Prior to EMS Arrival282
eArrest.09 - Type of CPR Provided283
eArrest.10 - Therapeutic Hypothermia by EMS285
eArrest.11 - First Monitored Arrest Rhythm of the Patient286
eArrest.12 - Any Return of Spontaneous Circulation287
eArrest.13 - Neurological Outcome at Hospital Discharge288
eArrest.14 - Date/Time of Cardiac Arrest289
eArrest.15 - Date/Time Resuscitation Discontinued291
eArrest.16 - Reason CPR/Resuscitation Discontinued293
eArrest.17 - Cardiac Rhythm on Arrival at Destination294
eArrest.18 - End of EMS Cardiac Arrest Event296
eArrest.19 - Date/Time of Initial CPR297
eArrest.20 - Who First Initiated CPR298
eArrest.21 - Who First Applied the AED300
eArrest.22 - Who First Defibrillated the Patient302

eHistory304
eHistory Grouping305
eHistory.01 - Barriers to Patient Care306
eHistory.02 - Last Name of Patient's Practitioner307
eHistory.03 - First Name of Patient's Practitioner308
eHistory.04 - Middle Name/Initial of Patient's Practitioner309
eHistory.05 - Advance Directives310
eHistory.06 - Medication Allergies311
eHistory.07 - Environmental/Food Allergies312
eHistory.08 - Medical/Surgical History313
eHistory.09 - Medical History Obtained From314
eHistory.10 - The Patient's Type of Immunization315

eHistory.11 - Immunization Year316
eHistory.12 - Current Medications317
eHistory.13 - Current Medication Dose318
eHistory.14 - Current Medication Dosage Unit319
eHistory.15 - Current Medication Administration Route320
eHistory.20 - Current Medication Frequency321
eHistory.16 - Presence of Emergency Information Form322
eHistory.17 - Alcohol/Drug Use Indicators323
eHistory.18 - Pregnancy324
eHistory.19 - Last Oral Intake325

eNarrative326
eNarrative Grouping327
eNarrative.01 - Patient Care Report Narrative328

eVitals329
eVitals Grouping330
eVitals.01 - Date/Time Vital Signs Taken332
eVitals.02 - Obtained Prior to this Unit's EMS Care334
eVitals.03 - Cardiac Rhythm / Electrocardiography (ECG)335
eVitals.04 - ECG Type337
eVitals.05 - Method of ECG Interpretation338
eVitals.06 - SBP (Systolic Blood Pressure)339
eVitals.07 - DBP (Diastolic Blood Pressure)340
eVitals.08 - Method of Blood Pressure Measurement341
eVitals.09 - Mean Arterial Pressure342
eVitals.10 - Heart Rate343
eVitals.11 - Method of Heart Rate Measurement344
eVitals.12 - Pulse Oximetry345
eVitals.13 - Pulse Rhythm346
eVitals.14 - Respiratory Rate347
eVitals.15 - Respiratory Effort348
eVitals.16 - End Tidal Carbon Dioxide (ETCO2)349
eVitals.17 - Carbon Monoxide (CO)350
eVitals.18 - Blood Glucose Level351
eVitals.19 - Glasgow Coma Score-Eye352
eVitals.20 - Glasgow Coma Score-Verbal353
eVitals.21 - Glasgow Coma Score-Motor354
eVitals.22 - Glasgow Coma Score-Qualifier355
eVitals.23 - Total Glasgow Coma Score356
eVitals.24 - Temperature357
eVitals.25 - Temperature Method358
eVitals.26 - Level of Responsiveness (AVPU)359
eVitals.27 - Pain Scale Score360
eVitals.28 - Pain Scale Type361
eVitals.29 - Stroke Scale Result362
eVitals.30 - Stroke Scale Type363
eVitals.34 - Stroke Scale Score364
eVitals.31 - Reperfusion Checklist365
eVitals.32 - APGAR366

eVitals.33 - Revised Trauma Score367

eLabs368
eLabs Grouping369
eLabs.01 - Date/Time of Laboratory or Imaging Result370
eLabs.02 - Study/Result Prior to this Unit's EMS Care371
eLabs.03 - Laboratory Result Type372
eLabs.04 - Laboratory Result374
eLabs.05 - Imaging Study Type375
eLabs.06 - Imaging Study Results376
eLabs.07 - Imaging Study File or Waveform Graphic Type377
eLabs.08 - Imaging Study File or Waveform Graphic378

eExam379
eExam Grouping380
eExam.01 - Estimated Body Weight in Kilograms382
eExam.02 - Length Based Tape Measure383
eExam.03 - Date/Time of Assessment384
eExam.04 - Skin Assessment385
eExam.05 - Head Assessment386
eExam.06 - Face Assessment387
eExam.07 - Neck Assessment388
eExam.09 - Heart Assessment389
eExam.10 - Abdominal Assessment Finding Location390
eExam.11 - Abdomen Assessment391
eExam.12 - Pelvis/Genitourinary Assessment392
eExam.13 - Back and Spine Assessment Finding Location393
eExam.14 - Back and Spine Assessment394
eExam.15 - Extremity Assessment Finding Location395
eExam.16 - Extremities Assessment397
eExam.17 - Eye Assessment Finding Location399
eExam.18 - Eye Assessment400
eExam.22 - Lung Assessment Finding Location401
eExam.23 - Lung Assessment402
eExam.24 - Chest Assessment Finding Location403
eExam.25 - Chest Assessment404
eExam.19 - Mental Status Assessment405
eExam.20 - Neurological Assessment406
eExam.21 - Stroke/CVA Symptoms Resolved407

eProtocols408
eProtocols Grouping409
eProtocols.01 - Protocols Used410
eProtocols.02 - Protocol Age Category413

eMedications414
eMedications Grouping415
eMedications.01 - Date/Time Medication Administered416
eMedications.02 - Medication Administered Prior to this Unit's EMS Care418
eMedications.03 - Medication Administered420

eMedications.04 - Medication Administered Route422
eMedications.05 - Medication Dosage424
eMedications.06 - Medication Dosage Units425
eMedications.07 - Response to Medication426
eMedications.08 - Medication Complication427
eMedications.09 - Medication Crew (Healthcare Professionals) ID428
eMedications.10 - Role/Type of Person Administering Medication429
eMedications.11 - Medication Authorization431
eMedications.12 - Medication Authorizing Physician432
eMedications.13 - Medication Administered by Another Unit433

eProcedures434
eProcedures Grouping435
eProcedures.01 - Date/Time Procedure Performed436
eProcedures.02 - Procedure Performed Prior to this Unit's EMS Care438
eProcedures.03 - Procedure439
eProcedures.04 - Size of Procedure Equipment440
eProcedures.05 - Number of Procedure Attempts441
eProcedures.06 - Procedure Successful442
eProcedures.07 - Procedure Complication443
eProcedures.08 - Response to Procedure445
eProcedures.09 - Procedure Crew Members ID446
eProcedures.10 - Role/Type of Person Performing the Procedure447
eProcedures.11 - Procedure Authorization449
eProcedures.12 - Procedure Authorizing Physician450
eProcedures.13 - Vascular Access Location451
eProcedures.14 - Airway Placement Technique453
eProcedures.15 - Procedure Performed by Another Unit454

eAirway455
eAirway Grouping456
eAirway.01 - Indications for Invasive Airway457
eAirway.02 - Date/Time Airway Device Placement Confirmation458
eAirway.03 - Airway Device Being Confirmed460
eAirway.04 - Airway Device Placement Confirmed Method461
eAirway.05 - Tube Depth462
eAirway.06 - Type of Individual Confirming Airway Device Placement463
eAirway.07 - Crew Member ID464
eAirway.08 - Airway Complications Encountered465
eAirway.09 - Suspected Reasons for Failed Airway Management466
eAirway.10 - Date/Time Decision to Manage the Patient with an Invasive Airway467
eAirway.11 - Date/Time Invasive Airway Placement Attempts Abandoned468

eDevice469
eDevice Grouping470
eDevice.01 - Medical Device Serial Number471
eDevice.02 - Date/Time of Event (per Medical Device)472
eDevice.03 - Medical Device Event Type473
eDevice.04 - Medical Device Waveform Graphic Type474
eDevice.05 - Medical Device Waveform Graphic475

eDevice.06 - Medical Device Mode (Manual, AED, Pacing, CO2, O2, etc)476
eDevice.07 - Medical Device ECG Lead477
eDevice.08 - Medical Device ECG Interpretation478
eDevice.09 - Type of Shock479
eDevice.10 - Shock or Pacing Energy480
eDevice.11 - Total Number of Shocks Delivered481
eDevice.12 - Pacing Rate482

eDisposition483
eDisposition Grouping484
eDisposition.01 - Destination/Transferred To, Name486
eDisposition.02 - Destination/Transferred To, Code487
eDisposition.03 - Destination Street Address488
eDisposition.04 - Destination City489
eDisposition.05 - Destination State490
eDisposition.06 - Destination County491
eDisposition.07 - Destination ZIP Code492
eDisposition.08 - Destination Country493
eDisposition.09 - Destination GPS Location494
eDisposition.10 - Destination Location US National Grid Coordinates495
eDisposition.11 - Number of Patients Transported in this EMS Unit496
eDisposition.27 - Unit Disposition497
eDisposition.28 - Patient Evaluation/Care499
eDisposition.29 - Crew Disposition501
eDisposition.30 - Transport Disposition502
eDisposition.31 - Reason for Refusal/Release504
eDisposition.13 - How Patient Was Moved to Ambulance505
eDisposition.14 - Position of Patient During Transport506
eDisposition.15 - How Patient Was Moved From Ambulance507
eDisposition.16 - EMS Transport Method508
eDisposition.17 - Transport Mode from Scene509
eDisposition.18 - Additional Transport Mode Descriptors510
eDisposition.19 - Acuity Upon EMS Release of Patient511
eDisposition.20 - Reason for Choosing Destination512
eDisposition.21 - Type of Destination513
eDisposition.22 - Hospital In-Patient Destination515
eDisposition.23 - Hospital Capability516
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation518
eDisposition.25 - Date/Time of Destination Prearrival Alert or Activation519
eDisposition.26 - Disposition Instructions Provided521
eDisposition.32 - Level of Care Provided per Protocol522

eOutcome523
eOutcome Grouping524
eOutcome.01 - Emergency Department Disposition525
eOutcome.02 - Hospital Disposition527
eOutcome.03 - External Report ID/Number Type529
eOutcome.04 - External Report ID/Number530
eOutcome.05 - Other Report Registry Type531
eOutcome.09 - Emergency Department Procedures532

eOutcome.19 - Date/Time Emergency Department Procedure Performed533
eOutcome.10 - Emergency Department Diagnosis535
eOutcome.11 - Date/Time of Hospital Admission536
eOutcome.12 - Hospital Procedures538
eOutcome.20 - Date/Time Hospital Procedure Performed539
eOutcome.13 - Hospital Diagnosis541
eOutcome.16 - Date/Time of Hospital Discharge542
eOutcome.18 - Date/Time of Emergency Department Admission544
eOutcome.21 - Injury Severity Score545

eCustomResults546
eCustomResults Grouping547
eCustomResults.01 - Custom Data Element Result548
eCustomResults.02 - Custom Element ID Referenced549
eCustomResults.03 - CorrelationID of PatientCareReport Element or Group550

eOther551
eOther Grouping552
eOther.01 - Review Requested553
eOther.02 - Potential System of Care/Specialty/Registry Patient554
eOther.03 - Personal Protective Equipment Used555
eOther.04 - EMS Professional (Crew Member) ID556
eOther.05 - Suspected EMS Work Related Exposure, Injury, or Death557
eOther.06 - The Type of Work-Related Injury, Death or Suspected Exposure558
eOther.07 - Natural, Suspected, Intentional, or Unintentional Disaster559
eOther.08 - Crew Member Completing this Report560
eOther.09 - External Electronic Document Type561
eOther.10 - File Attachment Type562
eOther.11 - File Attachment Image563
eOther.22 - File Attachment Name564
eOther.12 - Type of Person Signing565
eOther.13 - Signature Reason566
eOther.14 - Type Of Patient Representative567
eOther.15 - Signature Status568
eOther.16 - Signature File Name569
eOther.17 - Signature File Type570
eOther.18 - Signature Graphic571
eOther.19 - Date/Time of Signature572
eOther.20 - Signature Last Name573
eOther.21 - Signature First Name574

dCustomConfiguration575
dCustomConfiguration Grouping576
dCustomConfiguration.01 - Custom Data Element Title577
dCustomConfiguration.02 - Custom Definition578
dCustomConfiguration.03 - Custom Data Type579
dCustomConfiguration.04 - Custom Data Element Recurrence580
dCustomConfiguration.05 - Custom Data Element Usage581
dCustomConfiguration.06 - Custom Data Element Potential Values582
dCustomConfiguration.07 - Custom Data Element Potential NOT Values (NV)583

dCustomConfiguration.08 - Custom Data Element Potential Pertinent Negative Values (PN)584
dCustomConfiguration.09 - Custom Data Element Grouping ID585

dRecord586
dRecord Grouping587
dRecord.01 - Software Creator588
dRecord.02 - Software Name589
dRecord.03 - Software Version590

dAgency591
dAgency Grouping592
dAgency.01 - EMS Agency Unique State ID594
dAgency.02 - EMS Agency Number595
dAgency.03 - EMS Agency Name596
dAgency.04 - EMS Agency State597
dAgency.05 - EMS Agency Service Area States598
dAgency.06 - EMS Agency Service Area County(ies)599
dAgency.07 - EMS Agency Census Tracts600
dAgency.08 - EMS Agency Service Area ZIP Codes601
dAgency.09 - Primary Type of Service602
dAgency.10 - Other Types of Service603
dAgency.11 - Level of Service604
dAgency.12 - Organization Status605
dAgency.13 - Organizational Type606
dAgency.14 - EMS Agency Organizational Tax Status607
dAgency.15 - Statistical Calendar Year608
dAgency.16 - Total Primary Service Area Size609
dAgency.17 - Total Service Area Population610
dAgency.18 - 911 EMS Call Center Volume per Year611
dAgency.19 - EMS Dispatch Volume per Year612
dAgency.20 - EMS Patient Transport Volume per Year613
dAgency.21 - EMS Patient Contact Volume per Year614
dAgency.22 - EMS Billable Calls per Year615
dAgency.23 - EMS Agency Time Zone616
dAgency.24 - EMS Agency Daylight Savings Time Use617
dAgency.25 - National Provider Identifier618
dAgency.26 - Fire Department ID Number619
dAgency.27 - Licensed Agency620

dContact621
dContact Grouping622
dContact.01 - Agency Contact Type623
dContact.02 - Agency Contact Last Name624
dContact.03 - Agency Contact First Name625
dContact.04 - Agency Contact Middle Name/Initial626
dContact.05 - Agency Contact Address627
dContact.06 - Agency Contact City628
dContact.07 - Agency Contact State629
dContact.08 - Agency Contact ZIP Code630
dContact.09 - Agency Contact Country631

dContact.10 - Agency Contact Phone Number632
dContact.11 - Agency Contact Email Address633
dContact.12 - EMS Agency Contact Web Address634
dContact.13 - Agency Medical Director Degree635
dContact.14 - Agency Medical Director Board Certification Type636
dContact.15 - Medical Director Compensation637
dContact.16 - EMS Medical Director Board Certified/Eligible638

dConfiguration639
dConfiguration Grouping640
dConfiguration.01 - State Associated with this Configuration641
dConfiguration.06 - EMS Certification Levels Permitted to Perform Each Procedure642
dConfiguration.07 - EMS Agency Procedures643
dConfiguration.08 - EMS Certification Levels Permitted to Administer Each Medication644
dConfiguration.09 - EMS Agency Medications645
dConfiguration.10 - EMS Agency Protocols646
dConfiguration.11 - EMS Agency Specialty Service Capability649
dConfiguration.12 - Billing Status650
dConfiguration.13 - Emergency Medical Dispatch (EMD) Provided to EMS Agency Service Area651
dConfiguration.14 - EMD Vendor652
dConfiguration.15 - Patient Monitoring Capability(ies)653
dConfiguration.16 - Crew Call Sign654
dConfiguration.17 - Dispatch Center (CAD) Name or ID655

dLocation656
dLocation Grouping657
dLocation.01 - EMS Location Type658
dLocation.02 - EMS Location Name659
dLocation.03 - EMS Location Number660
dLocation.04 - EMS Location GPS661
dLocation.05 - EMS Location US National Grid Coordinates662
dLocation.06 - EMS Location Address663
dLocation.07 - EMS Location City664
dLocation.08 - EMS Location State665
dLocation.09 - EMS Station or Location ZIP Code666
dLocation.10 - EMS Location County667
dLocation.11 - EMS Location Country668
dLocation.12 - EMS Location Phone Number669

dVehicle670
dVehicle Grouping671
dVehicle.01 - Unit/Vehicle Number672
dVehicle.02 - Vehicle Identification Number673
dVehicle.03 - EMS Unit Call Sign674
dVehicle.04 - Vehicle Type675
dVehicle.05 - Crew State Certification/Licensure Levels676
dVehicle.06 - Number of Each EMS Personnel Level on Normal 911 Ambulance Response677
dVehicle.07 - Number of Each EMS Personnel Level on Normal 911 Response (Non-Transport) Vehicle678
dVehicle.08 - Number of Each EMS Personnel Level on Normal Medical (Non-911) Transport Ambulance679
dVehicle.09 - Vehicle Initial Cost680

dVehicle.10 - Vehicle Model Year681
dVehicle.11 - Year Miles/Kilometers Hours Accrued682
dVehicle.12 - Annual Vehicle Hours683
dVehicle.13 - Annual Vehicle Miles/Kilometers684

dPersonnel685
dPersonnel Grouping686
dPersonnel.01 - EMS Personnel's Last Name688
dPersonnel.02 - EMS Personnel's First Name689
dPersonnel.03 - EMS Personnel's Middle Name/Initial690
dPersonnel.04 - EMS Personnel's Mailing Address691
dPersonnel.05 - EMS Personnel's City of Residence692
dPersonnel.06 - EMS Personnel's State693
dPersonnel.07 - EMS Personnel's ZIP Code694
dPersonnel.08 - EMS Personnel's Country695
dPersonnel.09 - EMS Personnel's Phone Number696
dPersonnel.10 - EMS Personnel's Email Address697
dPersonnel.11 - EMS Personnel's Date of Birth698
dPersonnel.12 - EMS Personnel's Gender (DEPRECATED)699
dPersonnel.13 - EMS Personnel's Race700
dPersonnel.14 - EMS Personnel's Citizenship701
dPersonnel.15 - EMS Personnel's Highest Educational Degree702
dPersonnel.16 - EMS Personnel's Degree Subject/Field of Study703
dPersonnel.17 - EMS Personnel's Motor Vehicle License Type704
dPersonnel.18 - EMS Personnel's Immunization Status705
dPersonnel.19 - EMS Personnel's Immunization Year706
dPersonnel.20 - EMS Personnel's Foreign Language Ability707
dPersonnel.21 - EMS Personnel's Agency ID Number709
dPersonnel.22 - EMS Personnel's State of Licensure710
dPersonnel.23 - EMS Personnel's State's Licensure ID Number711
dPersonnel.24 - EMS Personnel's State EMS Certification Licensure Level712
dPersonnel.25 - EMS Personnel's State EMS Current Certification Date713
dPersonnel.26 - EMS Personnel's Initial State's Licensure Issue Date714
dPersonnel.27 - EMS Personnel's Current State's Licensure Expiration Date715
dPersonnel.28 - EMS Personnel's National Registry Number716
dPersonnel.29 - EMS Personnel's National Registry Certification Level717
dPersonnel.30 - EMS Personnel's Current National Registry Expiration Date718
dPersonnel.31 - EMS Personnel's Employment Status719
dPersonnel.32 - EMS Personnel's Employment Status Date720
dPersonnel.33 - EMS Personnel's Hire Date721
dPersonnel.34 - EMS Personnel's Primary EMS Job Role722
dPersonnel.35 - EMS Personnel's Other Job Responsibilities723
dPersonnel.36 - EMS Personnel's Total Length of Service in Years724
dPersonnel.37 - EMS Personnel's Date Length of Service Documented725
dPersonnel.38 - EMS Personnel's Practice Level726
dPersonnel.39 - Date of Personnel's Certification or Licensure for Agency727
dPersonnel.40 - EMS Personnel's Sex728

dDevice729
dDevice Grouping730

dDevice.01 - Medical Device Serial Number731
dDevice.02 - Medical Device Name or ID732
dDevice.03 - Medical Device Type733
dDevice.04 - Medical Device Manufacturer734
dDevice.05 - Medical Device Model Number735
dDevice.06 - Medical Device Purchase Date736

dFacility737
dFacility Grouping738
dFacility.01 - Type of Facility739
dFacility.02 - Facility Name740
dFacility.03 - Facility Location Code741
dFacility.04 - Hospital Designations742
dFacility.05 - Facility National Provider Identifier743
dFacility.06 - Facility Room, Suite, or Apartment744
dFacility.07 - Facility Street Address745
dFacility.08 - Facility City746
dFacility.09 - Facility State747
dFacility.10 - Facility ZIP Code748
dFacility.11 - Facility County749
dFacility.12 - Facility Country750
dFacility.13 - Facility GPS Location751
dFacility.14 - Facility US National Grid Coordinates752
dFacility.15 - Facility Phone Number753

dCustomResults754
dCustomResults Grouping755
dCustomResults.01 - Custom Data Element Result756
dCustomResults.02 - Custom Element ID Referenced757
dCustomResults.03 - CorrelationID of DemographicReport Element or Group758

sState759
sState Grouping760
sState.01 - State761

seCustomConfiguration762
seCustomConfiguration Grouping763
seCustomConfiguration.01 - Patient Care Report Custom Data Element Title764
seCustomConfiguration.02 - Patient Care Report Custom Definition765
seCustomConfiguration.03 - Patient Care Report Custom Data Type766
seCustomConfiguration.04 - Patient Care Report Custom Data Element Recurrence767
seCustomConfiguration.05 - Patient Care Report Custom Data Element Usage768
seCustomConfiguration.06 - Patient Care Report Custom Data Element Potential Values769
seCustomConfiguration.07 - Patient Care Report Custom Data Element Potential NOT Values (NV)770
seCustomConfiguration.08 - Patient Care Report Custom Data Element Potential Pertinent Negative Values
(PN)
771
seCustomConfiguration.09 - Patient Care Report Custom Data Element Grouping ID772

sdCustomConfiguration773
sdCustomConfiguration Grouping774

sdCustomConfiguration.01 - Agency Demographic Custom Data Element Title775
sdCustomConfiguration.02 - Agency Demographic Custom Definition776
sdCustomConfiguration.03 - Agency Demographic Custom Data Type777
sdCustomConfiguration.04 - Agency Demographic Custom Data Element Recurrence778
sdCustomConfiguration.05 - Agency Demographic Custom Data Element Usage779
sdCustomConfiguration.06 - Agency Demographic Custom Data Element Potential Values780
sdCustomConfiguration.07 - Agency Demographic Custom Data Element Potential NOT Values (NV)781
sdCustomConfiguration.08 - Agency Demographic Custom Data Element Potential Pertinent Negative Values
(PN)
782
sdCustomConfiguration.09 - Agency Demographic Custom Data Element Grouping ID783

sSoftware784
sSoftware Grouping785
sSoftware.01 - Software Creator786
sSoftware.02 - Software Name787
sSoftware.03 - Software Version788

sElement789
sElement Grouping790
sElement.01 - State Collected Element791

sConfiguration792
sConfiguration Grouping793
sConfiguration.01 - State Certification/Licensure Levels794
sConfiguration.02 - EMS Certification Levels Permitted to Perform Each Procedure795
sConfiguration.03 - Procedures Permitted by the State796
sConfiguration.04 - EMS Certification Levels Permitted to Administer Each Medication797
sConfiguration.05 - Medications Permitted by the State798
sConfiguration.06 - Protocols Permitted by the State800

sAgency803
sAgency Grouping804
sAgency.01 - EMS Agency Unique State ID805
sAgency.02 - EMS Agency Number806
sAgency.03 - EMS Agency Name807

sFacility808
sFacility Grouping809
sFacility.01 - Type of Facility810
sFacility.02 - Facility Name811
sFacility.03 - Facility Location Code812
sFacility.04 - Hospital Designations813
sFacility.05 - Facility National Provider Identifier814
sFacility.06 - Facility Room, Suite, or Apartment815
sFacility.07 - Facility Street Address816
sFacility.08 - Facility City817
sFacility.09 - Facility State818
sFacility.10 - Facility ZIP Code819
sFacility.11 - Facility County820
sFacility.12 - Facility Country821

sFacility.13 - Facility GPS Location822
sFacility.14 - Facility US National Grid Coordinates823
sFacility.15 - Facility Phone Number824

 
EMSDataSet
Published: 04/03/2025www.NEMSIS.orgPage 1

 
eOther
0 : 1
eCustomResults
0 : 1
eOutcome
1 : 1
eDisposition
1 : 1
eDevice
0 : 1
eAirway
0 : 1
eProcedures
1 : 1
eMedications
1 : 1
eProtocols
1 : 1
eExam
0 : 1
eLabs
0 : 1
eVitals
1 : 1
eNarrative
0 : 1
eHistory
1 : 1
eArrest
1 : 1
eInjury
1 : 1
eSituation
1 : 1
eScene
1 : 1
ePayment
1 : 1
ePatient
1 : 1
eTimes
1 : 1
eCrew
0 : 1
eDispatch
1 : 1
eResponse
1 : 1
eRecord
1 : 1
U
PatientCareReport
1 : M
eCustomConfiguration
0 : 1
MSN
dAgency.04 - EMS Agency State
1 : 1
MSN
dAgency.02 - EMS Agency Number
1 : 1
MSN
dAgency.01 - EMS Agency Unique State ID
1 : 1
DemographicGroup
1 : 1
Header
1 : M
Legend
Dataset Level:NNationalSState
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
EMSDataSet
Published: 04/03/2025www.NEMSIS.orgPage 2

 
EMSDataSet
Published: 04/03/2025www.NEMSIS.orgPage 3

 
DEMDataSet
Published: 04/03/2025www.NEMSIS.orgPage 4

 
dCustomResults
0 : 1
dFacility
0 : 1
dDevice
0 : 1
dPersonnel
0 : 1
dVehicle
0 : 1
dLocation
0 : 1
dConfiguration
1 : 1
dContact
0 : 1
dAgency
1 : 1
dRecord
0 : 1
T
DemographicReport
1 : M
dCustomConfiguration
0 : 1
Legend
Dataset Level:NNationalSState
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
DEMDataSet
DEMDataSet
Associated Validation Rules
Rule IDLevelMessage
nemSch_d004ErrorThe timestamp of the DemographicReport should not be in the future (the current time according
to this system is (value)).
Published: 04/03/2025www.NEMSIS.orgPage 5

 
StateDataSet
Published: 04/03/2025www.NEMSIS.orgPage 6

 
sFacility
0 : 1
sAgency
0 : 1
sConfiguration
1 : 1
sElement
1 : 1
sSoftware
1 : 1
sdCustomConfiguration
0 : 1
seCustomConfiguration
0 : 1
sState
1 : 1
Legend
Dataset Level:NNationalSState
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
StateDataSet
StateDataSet
Associated Validation Rules
Rule IDLevelMessage
nemSch_s004ErrorThe timestamp of the StateDataSet should not be in the future (the current time according to this
system is (value)).
Published: 04/03/2025www.NEMSIS.orgPage 7

 
StateNational
dAgency.01
dAgency.01 - EMS Agency Unique State ID
Definition
The unique ID assigned to the EMS Agency which is associated with all state licensure numbers and
information.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
This may be the EMS Agency Name or a unique number assigned by the state EMS office. This is required to document
multiple license types and numbers associated with the same EMS Agency.
Published: 04/03/2025www.NEMSIS.orgPage 8
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dAgency.02
dAgency.02 - EMS Agency Number
Definition
The state-assigned provider number of the responding agency
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_01
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Data Type
string
minLength
1
maxLength
15
Data Element Comment
This is the primary identifier for the entire Demographic Section. Each of the Demographic sections must be associated with
an EMS Agency Number. An EMS Agency can have more than one Agency Number within a state. This reflects the ability for
an EMS Agency to have a different number for each service type or location (based on state implementation). The EMS
Agency Number in dAgency.02 can be used to auto-populate eResponse.01 EMS Agency Number in the EMS Event section.
Published: 04/03/2025www.NEMSIS.orgPage 9
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dAgency.04
dAgency.04 - EMS Agency State
Definition
The state/territory which assigned the EMS agency number.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_03
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Pattern
[0-9]{2}
Data Element Comment
This has been clarified to reflect that it is the state associated with the EMS Agency number listed in dAgency.02 – EMS
Agency Number. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_d010WarningThere should be a configuration group where State Associated with this Configuration is the state
recorded in EMS Agency State.
nemSch_d012WarningEMS Certification Levels Permitted to Perform Each Procedure, within the configuration group for
the state recorded in EMS Agency State, should include the level recorded in Level of Service.
nemSch_d013WarningEMS Certification Levels Permitted to Administer Each Medication, within the configuration group
for the state recorded in EMS Agency State, should include the level recorded in Level of Service.
Published: 04/03/2025www.NEMSIS.orgPage 10
NEMSIS Version 3.5.1.250403CP1

 
eCustomConfiguration
Published: 04/03/2025www.NEMSIS.orgPage 11

 
O
eCustomConfiguration.09 - Custom Data Element Grouping ID
0 : 1
O
eCustomConfiguration.08 - Custom Data Element Potential Pertinent Negative Values
(PN)
0 : M
O
eCustomConfiguration.07 - Custom Data Element Potential NOT Values (NV)
0 : M
O
eCustomConfiguration.06 - Custom Data Element Potential Values
0 : M
M
eCustomConfiguration.05 - Custom Data Element Usage
1 : 1
M
eCustomConfiguration.04 - Custom Data Element Recurrence
1 : 1
M
eCustomConfiguration.03 - Custom Data Type
1 : 1
M
eCustomConfiguration.02 - Custom Definition
1 : 1
M
eCustomConfiguration.01 - Custom Data Element Title
1 : 1
I
eCustomConfiguration.CustomGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eCustomConfiguration
eCustomConfiguration
Published: 04/03/2025www.NEMSIS.orgPage 12

 
anySimpleTypeData Type: preservewhiteSpace: 
eCustomConfiguration.01
eCustomConfiguration.01 - Custom Data Element Title
Definition
This is the title of the custom data element created to collect information that is not defined formally in
NEMSIS Version 3.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Attributes
nemsisElement
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
This is grouped with all data elements in this section and can have multiple instances.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 13
NEMSIS Version 3.5.1.250403CP1

 
eCustomConfiguration.02
eCustomConfiguration.02 - Custom Definition
Definition
The definition of the custom element and how it should be used.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 14
NEMSIS Version 3.5.1.250403CP1

 
eCustomConfiguration.03
eCustomConfiguration.03 - Custom Data Type
Definition
The data type of the custom element.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9902001Binary
9902003Date/Time
9902005Integer/Number
9902007Other
9902009Text/String
9902011Boolean
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 15
NEMSIS Version 3.5.1.250403CP1

 
eCustomConfiguration.04
eCustomConfiguration.04 - Custom Data Element Recurrence
Definition
Indication if the data element will accept multiple values.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 16
NEMSIS Version 3.5.1.250403CP1

 
eCustomConfiguration.05
eCustomConfiguration.05 - Custom Data Element Usage
Definition
The Usage (Mandatory, Required, Recommended or Optional) for the Custom Data Element.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9903001Mandatory
9903003Required
9903005Recommended
9903007Optional
Data Element Comment
Mandatory = Must be completed and will not accept null values 
Required = Must be completed but will accept null values 
Recommended = Not required but if collected will accept null values 
Optional = Not required but if collected, it cannot be a null value.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 17
NEMSIS Version 3.5.1.250403CP1

 
anySimpleTypeData Type: preservewhiteSpace: 
anySimpleTypeData Type: preservewhiteSpace: 
eCustomConfiguration.06
eCustomConfiguration.06 - Custom Data Element Potential Values
Definition
The values which are associated with the Custom Data Element. Values would be the choices provided to
the user when they document the Custom Data Element.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
nemsisCode
customValueDescription
Constraints
Data Type
string
minLength
1
maxLength
100
Data Element Comment
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 18
NEMSIS Version 3.5.1.250403CP1

 
eCustomConfiguration.07
eCustomConfiguration.07 - Custom Data Element Potential NOT Values (NV)
Definition
NOT Values (NV) associated with the custom element.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Code List
CodeDescription
7701001Not Applicable
7701003Not Recorded
7701005Not Reporting
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 19
NEMSIS Version 3.5.1.250403CP1

 
eCustomConfiguration.08
eCustomConfiguration.08 - Custom Data Element Potential Pertinent Negative Values (PN)
Definition
Pertinent Negative Values (PN) associated with the custom element.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Code List
CodeDescription
8801001Contraindication Noted
8801003Denied By Order
8801005Exam Finding Not Present
8801007Medication Allergy
8801009Medication Already Taken
8801013No Known Drug Allergy
8801015None Reported
8801017Not Performed by EMS
8801019Refused
8801021Unresponsive
8801023Unable to Complete
8801025Not Immunized
8801027Order Criteria Not Met
8801029Approximate
8801031Symptom Not Present
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 20
NEMSIS Version 3.5.1.250403CP1

 
eCustomConfiguration.09
eCustomConfiguration.09 - Custom Data Element Grouping ID
Definition
ID for custom element grouping.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 21
NEMSIS Version 3.5.1.250403CP1

 
eRecord
Published: 04/03/2025www.NEMSIS.orgPage 22

 
MSN
eRecord.04 - Software Version
1 : 1
MSN
eRecord.03 - Software Name
1 : 1
MSN
eRecord.02 - Software Creator
1 : 1
eRecord.SoftwareApplicationGroup
1 : 1
MSN
eRecord.01 - Patient Care Report Number
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eRecord
eRecord
Published: 04/03/2025www.NEMSIS.orgPage 23

 
StateNational
eRecord.01
eRecord.01 - Patient Care Report Number
Definition
The unique number automatically assigned by the EMS agency for each Patient Care Report (PCR). This
should be a unique number for the EMS agency for all of time.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE01_01
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Data Type
string
minLength
3
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 24
NEMSIS Version 3.5.1.250403CP1

 
StateNational
eRecord.02
eRecord.02 - Software Creator
Definition
The name of the vendor, manufacturer, and developer who designed the application that created this
record.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE01_02
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
This is required to document the software used to generate the Patient Care Report. This is not the last software which
aggregated/stored the Patient Care Report after it was sent from another software.
Published: 04/03/2025www.NEMSIS.orgPage 25
NEMSIS Version 3.5.1.250403CP1

 
StateNational
eRecord.03
eRecord.03 - Software Name
Definition
The name of the application used to create this record.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE01_03
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
This is the EMS Agency's software, not the state or other level software which electronically received the data from the local
EMS Agency.
Published: 04/03/2025www.NEMSIS.orgPage 26
NEMSIS Version 3.5.1.250403CP1

 
StateNational
eRecord.04
eRecord.04 - Software Version
Definition
The version of the application used to create this record.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE01_04
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 27
NEMSIS Version 3.5.1.250403CP1

 
eResponse
Published: 04/03/2025www.NEMSIS.orgPage 28

 
CN, LRSN
eResponse.24 - Additional Response Mode Descriptors
1 : M
MSN
eResponse.23 - Response Mode to Scene
1 : 1
OS
eResponse.22 - Ending Odometer Reading of Responding Vehicle
0 : 1
OS
eResponse.21 - Patient Destination Odometer Reading of Responding Vehicle
0 : 1
OS
eResponse.20 - On-Scene Odometer Reading of Responding Vehicle
0 : 1
OS
eResponse.19 - Beginning Odometer Reading of Responding Vehicle
0 : 1
O
eResponse.18 - Vehicle Dispatch Location US National Grid Coordinates
0 : 1
O
eResponse.17 - Vehicle Dispatch GPS Location
0 : 1
O
eResponse.16 - Vehicle Dispatch Location
0 : 1
MSN
eResponse.14 - EMS Unit Call Sign
1 : 1
MSN
eResponse.13 - EMS Vehicle (Unit) Number
1 : 1
CN, LRSN
eResponse.12 - Type of Turn-Around Delay
1 : M
CN, LRSN
eResponse.11 - Type of Transport Delay
1 : M
CN, LRSN
eResponse.10 - Type of Scene Delay
1 : M
CN, LRSN
eResponse.09 - Type of Response Delay
1 : M
CN, LRSN
eResponse.08 - Type of Dispatch Delay
1 : M
MSN
eResponse.07 - Unit Transport and Equipment Capability
1 : 1
O
eResponse.06 - Standby Purpose
0 : 1
MSN
eResponse.05 - Type of Service Requested
1 : 1
eResponse.ServiceGroup
1 : 1
N, LRSN
eResponse.04 - EMS Response Number
1 : 1
N, LRSN
eResponse.03 - Incident Number
1 : 1
N, LES
eResponse.02 - EMS Agency Name
0 : 1
MSN
eResponse.01 - EMS Agency Number
1 : 1
eResponse.AgencyGroup
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eResponse
eResponse
Published: 04/03/2025www.NEMSIS.orgPage 29

 
StateNational
eResponse.01
eResponse.01 - EMS Agency Number
Definition
The state-assigned provider number of the responding agency.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_01
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Data Type
string
minLength
1
maxLength
15
Data Element Comment
The EMS Agency Number in eResponse.01 can auto-populate from dAgency.02 EMS Agency Number in the demographic
section.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e011WarningEMS Agency Number in the patient care report should match EMS Agency Number in the
agency demographic information.
Published: 04/03/2025www.NEMSIS.orgPage 30
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eResponse.02
eResponse.02 - EMS Agency Name
Definition
The EMS agency's name.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Added to better identify the EMS Agency associated with the EMS event.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen EMS Agency Name is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen EMS Agency Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 31
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.03
eResponse.03 - Incident Number
Definition
The incident number assigned by the 911 Dispatch System.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
3
maxLength
50
Data Element Comment
This number can be used to associate multiple EMS responses, dispatch information, and other information to the same EMS
event or patient.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident Number is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident Number has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 32
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.04
eResponse.04 - EMS Response Number
Definition
The internal EMS response number which is unique for each EMS Vehicle's (Unit) response to an incident
within an EMS Agency.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_03
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
3
maxLength
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen EMS Response Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen EMS Response Number has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 33
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 34
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e082WarningProvider's Primary Impression should be recorded when Type of Service Requested is
"Emergency Response (Primary Response Area)" and Patient Evaluation/Care is "Patient
Evaluated and Care Provided".
nemSch_e084WarningInitial Patient Acuity should be recorded when Type of Service Requested is "Emergency
Response (Primary Response Area)" and Patient Evaluation/Care is "Patient Evaluated and
Care Provided".
nemSch_e088WarningReason for Interfacility Transfer/Medical Transport should only be recorded when Type of
Service Requested is "... Transfer" or "Other Routine Medical Transport".
Published: 04/03/2025www.NEMSIS.orgPage 35

 
eResponse.06
eResponse.06 - Standby Purpose
Definition
The main reason the EMS Unit is on Standby as the Primary Type of Service for the EMS event.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2206001Disaster Event-Drill/Exercise
2206003Disaster Event-Live Staging
2206005Education
2206007EMS Staging-Improve Coverage
2206009Fire Support-Rehab
2206011Fire Support-Standby
2206013Mass Gathering-Concert/Entertainment Event
2206015Mass Gathering-Fair/Community Event
2206017Mass Gathering-Sporting Event
2206019Other
2206021Public Safety Support
Data Element Comment
Added to document the reason for "Standby" when populated in eResponse.05 (Type of Service Requested). This information
will assist in administrative analysis of EMS service delivery, special event coverage, etc.
Published: 04/03/2025www.NEMSIS.orgPage 36
NEMSIS Version 3.5.1.250403CP1

 
StateNational
eResponse.07
eResponse.07 - Unit Transport and Equipment Capability
Definition
The transport and equipment capabilities of the EMS Unit which responded to this specific EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_05
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
2207011Air Transport-Helicopter
2207013Air Transport-Fixed Wing
2207015Ground Transport (ALS Equipped)
2207017Ground Transport (BLS Equipped)
2207019Ground Transport (Critical Care Equipped)
2207021Non-Transport-Medical Treatment (ALS Equipped)
2207023Non-Transport-Medical Treatment (BLS Equipped)
2207025Wheel Chair Van/Ambulette
2207027Non-Transport-No Medical Equipment
Data Element Comment
Element relabeled from "Primary Role of Unit" to "Unit Transport and Equipment Capability" to better reflect its new defined
purpose and allow the deprecation of eResponse.15 "Level of Care of This Unit". V3.4.0 Non-Transport values deprecated as
these are types of service and were moved to eResponse.05 "Type of Service Requested". Values have been added to better
capture transport capability and available equipment. These values should be tied to the capabilities and role of the unit and
not reflect the level of providers responding to an event. 
Supervisor clarified to Administrative Only. If the Supervisor is responding to assist, that would be considered Non-Transport.
Transport separated into Air and Ground. In Version 2 there was no way to identify Air Transport.
Version 3 Changes Implemented
With the release of V3.5.0 values were deprecated, added, and relabeled to meet the needs of EMS.
Published: 04/03/2025www.NEMSIS.orgPage 37
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.08
eResponse.08 - Type of Dispatch Delay
Definition
The dispatch delays, if any, associated with the dispatch of the EMS unit to the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_06
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2208001Caller (Uncooperative)
2208003Diversion/Failure (of previous unit)
2208005High Call Volume
2208007Language Barrier
2208009Incomplete Address Information Provided
2208011No EMS Vehicles (Units) Available
2208013None/No Delay
2208015Other
2208017Technical Failure (Computer, Phone etc.)
2208019Communication Specialist-Assignment Error
2208021No Receiving MD, Bed, Hospital
2208023Specialty Team Delay
Data Element Comment
A dispatch delay is any time delay that occurs from the time of PSAP call (eTimes.01) to the time the unit is notified by
dispatch (eTimes.03).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Dispatch Delay is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Dispatch Delay has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Type of Dispatch Delay has a Not Value, no other value should be recorded.
nemSch_e012WarningWhen Type of Dispatch Delay is "None/No Delay", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 38
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.09
eResponse.09 - Type of Response Delay
Definition
The response delays, if any, of the EMS unit associated with the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_07
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2209001Crowd
2209003Directions/Unable to Locate
2209005Distance
2209007Diversion (Different Incident)
2209009HazMat
2209011None/No Delay
2209013Other
2209015Rendezvous Transport Unavailable
2209017Route Obstruction (e.g., Train)
2209019Scene Safety (Not Secure for EMS)
2209021Staff Delay
2209023Traffic
2209025Vehicle Crash Involving this Unit
2209027Vehicle Failure of this Unit
2209029Weather
2209031Mechanical Issue-Unit, Equipment, etc.
2209033Flight Planning
2209035Out of Service Area Response
Data Element Comment
Rendezvous Transport Unavailable added for situations where there is a wait for an EMS Transport Unit, a Ferry, Air Medical,
etc. to return to service. 
A response delay is any time delay that occurs from the time the unit is notified by dispatch (eTimes.03) to the time the unit
arrived on scene (eTimes.06).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Response Delay is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Response Delay has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Type of Response Delay has a Not Value, no other value should be recorded.
nemSch_e013WarningWhen Type of Response Delay is "None/No Delay", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 39
NEMSIS Version 3.5.1.250403CP1

 
Published: 04/03/2025www.NEMSIS.orgPage 40

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.10
eResponse.10 - Type of Scene Delay
Definition
The scene delays, if any, of the EMS unit associated with the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_08
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2210001Awaiting Air Unit
2210003Awaiting Ground Unit
2210005Crowd
2210007Directions/Unable to Locate
2210009Distance
2210011Extrication
2210013HazMat
2210015Language Barrier
2210017None/No Delay
2210019Other
2210021Patient Access
2210023Safety-Crew/Staging
2210025Safety-Patient
2210027Staff Delay
2210029Traffic
2210031Triage/Multiple Patients
2210033Vehicle Crash Involving this Unit
2210035Vehicle Failure of this Unit
2210037Weather
2210039Mechanical Issue-Unit, Equipment, etc.
Data Element Comment
A scene delay is any time delay that occurs from the time the unit arrived on scene (eTimes.06) to the time the unit left the
scene (eTimes.09).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Scene Delay is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Scene Delay has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Type of Scene Delay has a Not Value, no other value should be recorded.
nemSch_e014WarningWhen Type of Scene Delay is "None/No Delay", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 41
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.11
eResponse.11 - Type of Transport Delay
Definition
The transport delays, if any, of the EMS unit associated with the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_09
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2211001Crowd
2211003Directions/Unable to Locate
2211005Distance
2211007Diversion
2211009HazMat
2211011None/No Delay
2211013Other
2211015Rendezvous Transport Unavailable
2211017Route Obstruction (e.g., Train)
2211019Safety
2211021Staff Delay
2211023Traffic
2211025Vehicle Crash Involving this Unit
2211027Vehicle Failure of this Unit
2211029Weather
2211031Patient Condition Change (e.g., Unit Stopped)
Data Element Comment
Rendezvous Transport Unavailable added for situations where there is a wait for an EMS Transport Unit, a Ferry, Air Medical,
etc. 
A transport delay is any time delay that occurs from the time the unit left the scene (eTimes.09) to the time the patient arrived
at the destination (eTimes.10).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Transport Delay is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Transport Delay has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Type of Transport Delay has a Not Value, no other value should be recorded.
nemSch_e015WarningWhen Type of Transport Delay is "None/No Delay", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 42
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.12
eResponse.12 - Type of Turn-Around Delay
Definition
The turn-around delays, if any, of EMS unit associated with the EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE02_10
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Response
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2212001Clean-up
2212003Decontamination
2212005Distance
2212007Documentation
2212009ED Overcrowding / Transfer of Care
2212011Equipment Failure
2212013Equipment/Supply Replenishment
2212015None/No Delay
2212017Other
2212019Rendezvous Transport Unavailable
2212021Route Obstruction (e.g., Train)
2212023Staff Delay
2212025Traffic
2212027Vehicle Crash of this Unit
2212029Vehicle Failure of this Unit
2212031Weather
2212033EMS Crew Accompanies Patient for Facility Procedure
Data Element Comment
Rendezvous Transport Unavailable added for situations where there is a wait for an EMS Transport Unit, a Ferry, Air Medical,
etc. to return to service. 
If a patient is being transported by the unit, turn-around delay is any time delay that occurs from the time the patient arrived at
the destination (eTimes.11) until the time the unit is back in service (eTimes.13) or unit back at the home location (eTimes.15)
[whichever is the greater of the two times]. 
If no patient is being transported by the unit, turn-around delay is any time delay that occurs from the time the unit arrived on
scene (eTimes.06) until the unit is back in service (eTimes.13) or the unit back at the home location (eTimes.15) [whichever is
the greater of the two times].
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Turn-Around Delay is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Turn-Around Delay has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 43
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e009WarningWhen Type of Turn-Around Delay has a Not Value, no other value should be recorded.
nemSch_e016WarningWhen Type of Turn-Around Delay is "None/No Delay", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 44

 
StateNational
eResponse.13
eResponse.13 - EMS Vehicle (Unit) Number
Definition
The unique physical vehicle number of the responding unit.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_11
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
1
maxLength
25
Data Element Comment
This is recommended to be the State Vehicle Permit Number if unique to the vehicle. If the vehicle is not licensed by the state,
this should be a unique number only associated with a specific vehicle. This element should be populated from dVehicle.01 -
Unit/Vehicle Number.
Published: 04/03/2025www.NEMSIS.orgPage 45
NEMSIS Version 3.5.1.250403CP1

 
StateNational
eResponse.14
eResponse.14 - EMS Unit Call Sign
Definition
The EMS unit number used to dispatch and communicate with the unit. This may be the same as the EMS
Unit/Vehicle Number in many agencies.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_12
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
"This element could be populated from a list created in dVehicle.03 EMS Unit Call Sign or dConfiguration.16 (Crew Call Sign).
Published: 04/03/2025www.NEMSIS.orgPage 46
NEMSIS Version 3.5.1.250403CP1

 
eResponse.16
eResponse.16 - Vehicle Dispatch Location
Definition
The geographic location of the EMS unit or crew at the time of dispatch.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE02_13
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
This element can be populated from dLocation.02 EMS Location Name or dFacility information. Depending on the information
the EMS Agency or State is interested in knowing the following elements can be utilized: 
1. dLocation.02 EMS Location Name 
2. dFacility.02 Facility Name 
3. dFacility.03 Facility Code
Published: 04/03/2025www.NEMSIS.orgPage 47
NEMSIS Version 3.5.1.250403CP1

 
eResponse.17
eResponse.17 - Vehicle Dispatch GPS Location
Definition
The GPS coordinates associated with the EMS unit at the time of dispatch documented in decimal degrees.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE02_15
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Response
Constraints
Pattern
(\+|-)?(90(\.[0]{1,6})?|([1-8][0-9]|[0-9])(\.[0-9]{1,6})?),(\+|-)?(180(\.[0]{1,6})?|(1[0-7][0-9]|[1-9][0-9]|[0-9])(\.[0-9]{1,6})?)
Data Element Comment
The pattern for GPS location is in the format "," where: latitudelongitude
-  has a minimum of -90 and a maximum of 90 with up to 6 decimal places latitude
-  has a minimum of -180 and a maximum of 180 with up to 6 decimal placeslongitude
Published: 04/03/2025www.NEMSIS.orgPage 48
NEMSIS Version 3.5.1.250403CP1

 
eResponse.18
eResponse.18 - Vehicle Dispatch Location US National Grid Coordinates
Definition
The US National Grid Coordinates for the EMS Vehicle's Dispatch Location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
([1-9]|[1-5][0-9]|60)[C-HJ-NP-X][A-HJ-NP-Z][A-HJ-NP-V]([0-9][0-9]){4,5}
Data Element Comment
Standard found at www.fgdc.gov/usng. Used by the EMS components of US Governmental entities such as national parks and
military agencies.
Published: 04/03/2025www.NEMSIS.orgPage 49
NEMSIS Version 3.5.1.250403CP1

 
State
eResponse.19
eResponse.19 - Beginning Odometer Reading of Responding Vehicle
Definition
The mileage (counter or odometer reading) of the vehicle at the beginning of the call (when the wheels
begin moving). If EMS vehicle/unit is via water or air travel document the number in "hours" as it relates to
the documentation of Boat, Fixed Wing, or Rotor Craft in eDisposition.16 (EMS Transport Method).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_16
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
decimal
fractionDigits
2
totalDigits
8
Data Element Comment
If a mileage counter is being used instead of an odometer, this value would be 0.
Published: 04/03/2025www.NEMSIS.orgPage 50
NEMSIS Version 3.5.1.250403CP1

 
State
eResponse.20
eResponse.20 - On-Scene Odometer Reading of Responding Vehicle
Definition
The mileage (counter or odometer reading) of the vehicle when it arrives at the scene. If EMS vehicle/unit is
via water or air travel document the number in "hours" as it relates to the documentation of Boat, Fixed
Wing, or Rotor Craft in eDisposition.16 (EMS Transport Method).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_17
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
decimal
fractionDigits
2
totalDigits
8
Data Element Comment
If using a counter, this is the mileage traveled from dispatch to the scene starting from 0.
Published: 04/03/2025www.NEMSIS.orgPage 51
NEMSIS Version 3.5.1.250403CP1

 
State
eResponse.21
eResponse.21 - Patient Destination Odometer Reading of Responding Vehicle
Definition
The mileage (counter or odometer reading) of the vehicle when it arrives at the patient's destination. If EMS
vehicle/unit is via water or air travel document the number in "hours" as it relates to the documentation of
Boat, Fixed Wing, or Rotor Craft in eDisposition.16 (EMS Transport Method).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_18
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
decimal
fractionDigits
2
totalDigits
8
Data Element Comment
If using a counter, this is the mileage traveled from dispatch to the patient's transport destination starting from 0.
Published: 04/03/2025www.NEMSIS.orgPage 52
NEMSIS Version 3.5.1.250403CP1

 
State
eResponse.22
eResponse.22 - Ending Odometer Reading of Responding Vehicle
Definition
If using a counter, this is the mileage traveled beginning with dispatch through the transport of the patient to
their destination and ending when back in service, starting from 0. If EMS vehicle/unit is via water or air
travel document the number in "hours" as it relates to the documentation of boat, Fixed Wing, or Rotor Craft
in eDisposition.16.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_19
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
decimal
fractionDigits
2
totalDigits
8
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 53
NEMSIS Version 3.5.1.250403CP1

 
StateNational
eResponse.23
eResponse.23 - Response Mode to Scene
Definition
The indication whether the response was emergent or non-emergent. An emergent response is an
immediate response.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE02_20
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
2223001Emergent (Immediate Response)
2223003Emergent Downgraded to Non-Emergent
2223005Non-Emergent
2223007Non-Emergent Upgraded to Emergent
Data Element Comment
Information now split between eResponse.23 (Response Mode to Scene) and eResponse.24 (Additional Response Mode
Descriptors)
Published: 04/03/2025www.NEMSIS.orgPage 54
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eResponse.24
eResponse.24 - Additional Response Mode Descriptors
Definition
The documentation of response mode techniques used for this EMS response.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2224001Intersection Navigation-Against Normal Light Patterns
2224003Intersection Navigation-With Automated Light Changing Technology
2224005Intersection Navigation-With Normal Light Patterns
2224007Scheduled
2224009Speed-Enhanced per Local Policy
2224011Speed-Normal Traffic
2224013Unscheduled
2224015Lights and Sirens
2224017Lights and No Sirens
2224019No Lights or Sirens
2224021Initial No Lights or Sirens, Upgraded to Lights and Sirens
2224023Initial Lights and Sirens, Downgraded to No Lights or Sirens
Data Element Comment
Descriptors have been added to better describe the EMS Response. This includes information on whether the EMS event was
schedule or unscheduled.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Additional Response Mode Descriptors is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Additional Response Mode Descriptors has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_e009WarningWhen Additional Response Mode Descriptors has a Not Value, no other value should be
recorded.
Published: 04/03/2025www.NEMSIS.orgPage 55
NEMSIS Version 3.5.1.250403CP1

 
eDispatch
Published: 04/03/2025www.NEMSIS.orgPage 56

 
O
eDispatch.06 - Unit Dispatched CAD Record ID
0 : 1
O
eDispatch.05 - Dispatch Priority (Patient Acuity)
0 : 1
O
eDispatch.04 - Dispatch Center Name or ID
0 : 1
O
eDispatch.03 - EMD Determinant Code
0 : 1
N, LRSN
eDispatch.02 - EMD Performed
1 : 1
MSN
eDispatch.01 - Dispatch Reason
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eDispatch
eDispatch
Published: 04/03/2025www.NEMSIS.orgPage 57

 
StateNational
eDispatch.01
eDispatch.01 - Dispatch Reason
Definition
The dispatch reason reported to the responding unit.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE03_01
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
2301001Abdominal Pain/Problems
2301003Allergic Reaction/Stings
2301005Animal Bite
2301007Assault
2301009Automated Crash Notification
2301011Back Pain (Non-Traumatic)
2301013Breathing Problem
2301015Burns/Explosion
2301017Carbon Monoxide/Hazmat/Inhalation/CBRN
2301019Cardiac Arrest/Death
2301021Chest Pain (Non-Traumatic)
2301023Choking
2301025Convulsions/Seizure
2301027Diabetic Problem
2301029Electrocution/Lightning
2301031Eye Problem/Injury
2301033Falls
2301035Fire
2301037Headache
2301039Healthcare Professional/Admission
2301041Heart Problems/AICD
2301043Heat/Cold Exposure
2301045Hemorrhage/Laceration
2301047Industrial Accident/Inaccessible Incident/Other Entrapments (Non-Vehicle)
2301049Medical Alarm
2301051No Other Appropriate Choice
2301053Overdose/Poisoning/Ingestion
2301055Pandemic/Epidemic/Outbreak
2301057Pregnancy/Childbirth/Miscarriage
2301059Psychiatric Problem/Abnormal Behavior/Suicide Attempt
2301061Sick Person
2301063Stab/Gunshot Wound/Penetrating Trauma
2301065Standby
2301067Stroke/CVA
2301069Traffic/Transportation Incident
2301071Transfer/Interfacility/Palliative Care
2301073Traumatic Injury
2301075Well Person Check
2301077Unconscious/Fainting/Near-Fainting
2301079Unknown Problem/Person Down
2301081Drowning/Diving/SCUBA Accident
2301083Airmedical Transport
2301085Altered Mental Status
2301087Intercept
2301089Nausea
Published: 04/03/2025www.NEMSIS.orgPage 58
NEMSIS Version 3.5.1.250403CP1

 
2301091Vomiting
2301093Hanging/Strangulation/Asphyxiation
2301095Intoxicated Subject
2301097EMS Requested by Law Enforcement
2301099Active Shooter
Data Element Comment
Added Pandemic/Epidemic/Outbreak. 
Added Automated Crash Notification 
Added Healthcare Professional Admission 
Added Transfer/Interfacility/Palliative Care 
- Other entries expanded based on current national EMD Dispatch List
Published: 04/03/2025www.NEMSIS.orgPage 59

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDispatch.02
eDispatch.02 - EMD Performed
Definition
Indication of whether Emergency Medical Dispatch was performed for this EMS event.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE03_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2302001No
2302003Yes, With Pre-Arrival Instructions
2302005Yes, Without Pre-Arrival Instructions
2302007Yes, Unknown if Pre-Arrival Instructions Given
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen EMD Performed is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen EMD Performed has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 60
NEMSIS Version 3.5.1.250403CP1

 
eDispatch.03
eDispatch.03 - EMD Determinant Code
Definition
The EMD determinant code reported by dispatch, consisting of the card number, dispatch level, and
dispatch mode.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE03_03
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Data Type
string
minLength
1
maxLength
10
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 61
NEMSIS Version 3.5.1.250403CP1

 
eDispatch.04
eDispatch.04 - Dispatch Center Name or ID
Definition
The name or ID of the dispatch center providing electronic data to the PCR for the EMS agency, if
applicable.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
This element can be used to identify the dispatch center (Primary or Secondary Public Safety Answering Point - PSAP) that
dispatches the EMS agency. If the EMS agency is able to populate the Patient Care Report (PCR) with CAD specific details
(times, incident address information, crew information, EMD, etc.) the name or ID of the dispatch center should be
documented.
Version 3 Changes Implemented
Added to the dataset to assist in identifying the CAD / dispatch center providing information to the EMS agency and ePCR
when there are multiple dispatch centers sending resources to the same EMS incident.
Published: 04/03/2025www.NEMSIS.orgPage 62
NEMSIS Version 3.5.1.250403CP1

 
eDispatch.05
eDispatch.05 - Dispatch Priority (Patient Acuity)
Definition
The actual, apparent, or potential acuity of the patient's condition as determined through information
obtained during the EMD process.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2305001Critical
2305003Emergent
2305005Lower Acuity
2305007Non-Acute [e.g., Scheduled Transfer or Standby]
Data Element Comment
The use of acuity values vary by EMS agency. Some systems may utilize fewer than four levels and some more. The use of
four levels is to capture the majority and allow for the inclusion of the NHTSA National EMS Core Content definitions for
patient acuity, specifically: Critical, Emergent, and Lower Acuity. 
Provided below is an example application only. This example bears no relationship to any particular federal, state, or agency
billing requirement. 
For EMS Agencies and CAD / EMD systems utilizing Alpha-Echo, Omega levels for determining the priority level for dispatch
of the EMS unit, the recommended mapping is: 
Echo = CriticalCharlie = EmergentAlpha = Lower Acuity
Delta = CriticalBravo = EmergentOmega = Non-Acute
Patient Acuity definitions related to "Critical, Emergent, and Lower Acuity" can be found in the National EMS Core Content
document from NHTSA EMS at  https://www.ems.gov/assets/National_EMS_Core_Content.pdf
For Air Medical Transports the most appropriate values choices should be limited to two: Emergent and Non-Acute.
Published: 04/03/2025www.NEMSIS.orgPage 63
NEMSIS Version 3.5.1.250403CP1

 
eDispatch.06
eDispatch.06 - Unit Dispatched CAD Record ID
Definition
The unique ID assigned by the CAD system for the specific unit response.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
3
maxLength
50
Data Element Comment
The Unit Dispatched CAD Record ID is populated from a CAD system. This information will not be known to the EMS
professional. 
Use Case: Some CAD systems may use the Unit Dispatched CAD Record ID as the Patient Care Report Number
(eRecord.01). This may also be a GUID from a CAD system. A GUID for the CAD push to remain unique as updates are sent
from CAD. This could be a stream and unique to the record or patient depending on the capabilities of the CAD system. How
the Unit Dispatched CAD Record ID is created could vary as it could be a concatenation of multiple elements or a true GUID.
Published: 04/03/2025www.NEMSIS.orgPage 64
NEMSIS Version 3.5.1.250403CP1

 
eCrew
Published: 04/03/2025www.NEMSIS.orgPage 65

 
CN, LES
eCrew.03 - Crew Member Response Role
0 : M
N, LES
eCrew.02 - Crew Member Level
0 : 1
N, LES
eCrew.01 - Crew Member ID
0 : 1
C
eCrew.CrewGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eCrew
eCrew
Published: 04/03/2025www.NEMSIS.orgPage 66

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eCrew.01
eCrew.01 - Crew Member ID
Definition
The state certification/licensure ID number assigned to the crew member.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE04_01
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Document the state certification/licensure ID for the state where the event occurred.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Crew Member ID is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Crew Member ID has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 67
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eCrew.02
eCrew.02 - Crew Member Level
Definition
The functioning level of the crew member ID during this EMS patient encounter.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE04_03
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9925001Advanced Emergency Medical Technician (AEMT)
9925002Emergency Medical Technician - Intermediate
9925003Emergency Medical Responder (EMR)
9925005Emergency Medical Technician (EMT)
9925007Paramedic
9925023Other Healthcare Professional
9925025Other Non-Healthcare Professional
9925027Physician
9925029Respiratory Therapist
9925031Student
9925033Critical Care Paramedic
9925035Community Paramedicine
9925037Nurse Practitioner
9925039Physician Assistant
9925041Licensed Practical Nurse (LPN)
9925043Registered Nurse
Data Element Comment
The category EMT-Intermediate includes EMS professionals with an "85" or "99" certification level.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Crew Member Level is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Crew Member Level has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 68
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eCrew.03
eCrew.03 - Crew Member Response Role
Definition
The role(s) of the crew member during response, at scene treatment, and/or transport.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE04_02
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2403001Driver/Pilot-Response
2403003Driver/Pilot-Transport
2403005Other
2403007Other Patient Caregiver-At Scene
2403009Other Patient Caregiver-Transport
2403011Primary Patient Caregiver-At Scene
2403013Primary Patient Caregiver-Transport
Data Element Comment
This element has been changed to allow for multiple selections. There must be a driver for response and transport. There
must be a primary patient caregiver for scene and transport.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Crew Member Response Role is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Crew Member Response Role has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Crew Member Response Role has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 69
NEMSIS Version 3.5.1.250403CP1

 
eTimes
Published: 04/03/2025www.NEMSIS.orgPage 70

 
O
eTimes.17 - Unit Arrived at Staging Area Date/Time
0 : 1
O
eTimes.16 - EMS Call Completed Date/Time
0 : 1
O
eTimes.15 - Unit Back at Home Location Date/Time
0 : 1
OS
eTimes.14 - Unit Canceled Date/Time
0 : 1
MSN
eTimes.13 - Unit Back in Service Date/Time
1 : 1
N, LRSN
eTimes.12 - Destination Patient Transfer of Care Date/Time
1 : 1
N, LRSN
eTimes.11 - Patient Arrived at Destination Date/Time
1 : 1
O
eTimes.10 - Arrival at Destination Landing Area Date/Time
0 : 1
N, LRSN
eTimes.09 - Unit Left Scene Date/Time
1 : 1
N, LES
eTimes.08 - Transfer of EMS Patient Care Date/Time
0 : 1
N, LRSN
eTimes.07 - Arrived at Patient Date/Time
1 : 1
N, LRSN
eTimes.06 - Unit Arrived on Scene Date/Time
1 : 1
N, LRSN
eTimes.05 - Unit En Route Date/Time
1 : 1
O
eTimes.04 - Dispatch Acknowledged Date/Time
0 : 1
MSN
eTimes.03 - Unit Notified by Dispatch Date/Time
1 : 1
O
eTimes.02 - Dispatch Notified Date/Time
0 : 1
N, LRSN
eTimes.01 - PSAP Call Date/Time
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eTimes
eTimes
Published: 04/03/2025www.NEMSIS.orgPage 71

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eTimes.01
eTimes.01 - PSAP Call Date/Time
Definition
The date/time the phone rings (911 call to public safety answering point or other designated entity)
requesting EMS services.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE05_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
This date/time might be the same as Dispatch Notified Date/Time (eTimes.02). 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen PSAP Call Date/Time is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
Published: 04/03/2025www.NEMSIS.orgPage 72
NEMSIS Version 3.5.1.250403CP1

 
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen PSAP Call Date/Time has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e017WarningUnit Notified by Dispatch Date/Time should not be earlier than PSAP Call Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 73

 
eTimes.02
eTimes.02 - Dispatch Notified Date/Time
Definition
The date/time dispatch was notified by the 911 call taker (if a separate entity).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE05_03
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
This date/time might be the same as PSAP Call Date/Time (eTimes.01). 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 74
NEMSIS Version 3.5.1.250403CP1

 
StateNational
eTimes.03
eTimes.03 - Unit Notified by Dispatch Date/Time
Definition
The date/time the responding unit was notified by dispatch.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE05_04
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e017WarningUnit Notified by Dispatch Date/Time should not be earlier than PSAP Call Date/Time.
nemSch_e019WarningUnit En Route Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e021WarningUnit Arrived on Scene Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e024WarningArrived at Patient Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e026WarningUnit Left Scene Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 75
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e031WarningPatient Arrived at Destination Date/Time should not be earlier than Unit Notified by Dispatch
Date/Time.
nemSch_e037WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Notified by
Dispatch Date/Time.
nemSch_e046WarningUnit Back in Service Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e126WarningDate/Time Vital Signs Taken should not be earlier than Unit Notified by Dispatch Date/Time,
unless Obtained Prior to this Unit's EMS Care is "Yes".
nemSch_e137WarningDate/Time Medication Administered should not be earlier than Unit Notified by Dispatch
Date/Time, unless Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e152WarningDate/Time Procedure Performed should not be earlier than Unit Notified by Dispatch Date/Time,
unless Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e177WarningDate/Time of Destination Prearrival Alert or Activation should not be earlier than Unit Notified by
Dispatch Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 76

 
eTimes.04
eTimes.04 - Dispatch Acknowledged Date/Time
Definition
The date/time the dispatch was acknowledged by the EMS Unit.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
This is the end of turnout time or the beginning of response time. Added per Fire Service to better calculate NFPA 1710. 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 77
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eTimes.05
eTimes.05 - Unit En Route Date/Time
Definition
The date/time the unit responded; that is, the time the vehicle started moving.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE05_05
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Unit En Route Date/Time is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 78
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Unit En Route Date/Time has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e018WarningUnit En Route Date/Time should be recorded unless Unit Disposition is "Cancelled Prior to Arrival
at Scene".
nemSch_e019WarningUnit En Route Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e022WarningUnit Arrived on Scene Date/Time should not be earlier than Unit En Route Date/Time.
nemSch_e027WarningUnit Left Scene Date/Time should not be earlier than Unit En Route Date/Time.
nemSch_e032WarningPatient Arrived at Destination Date/Time should not be earlier than Unit En Route Date/Time.
nemSch_e038WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit En Route
Date/Time.
nemSch_e047WarningUnit Back in Service Date/Time should not be earlier than Unit En Route Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 79

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eTimes.06
eTimes.06 - Unit Arrived on Scene Date/Time
Definition
The date/time the responding unit arrived on the scene; that is, the time the vehicle stopped moving at the
scene.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE05_06
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Unit Arrived on Scene Date/Time is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 80
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Unit Arrived on Scene Date/Time has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e020WarningUnit Arrived on Scene Date/Time should be recorded unless Unit Disposition is "Cancelled Prior
to Arrival at Scene".
nemSch_e021WarningUnit Arrived on Scene Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e022WarningUnit Arrived on Scene Date/Time should not be earlier than Unit En Route Date/Time.
nemSch_e028WarningUnit Left Scene Date/Time should not be earlier than Unit Arrived on Scene Date/Time.
nemSch_e033WarningPatient Arrived at Destination Date/Time should not be earlier than Unit Arrived on Scene
Date/Time.
nemSch_e039WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Arrived on Scene
Date/Time.
nemSch_e048WarningUnit Back in Service Date/Time should not be earlier than Unit Arrived on Scene Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 81

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eTimes.07
eTimes.07 - Arrived at Patient Date/Time
Definition
The date/time the responding unit arrived at the patient's side.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE05_07
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Arrived at Patient Date/Time is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 82
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Arrived at Patient Date/Time has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e023WarningArrived at Patient Date/Time should be recorded when Unit Disposition is "Patient Contact
Made".
nemSch_e024WarningArrived at Patient Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e029WarningUnit Left Scene Date/Time should not be earlier than Arrived at Patient Date/Time.
nemSch_e034WarningPatient Arrived at Destination Date/Time should not be earlier than Arrived at Patient Date/Time.
nemSch_e040WarningDestination Patient Transfer of Care Date/Time should not be earlier than Arrived at Patient
Date/Time.
nemSch_e049WarningUnit Back in Service Date/Time should not be earlier than Arrived at Patient Date/Time.
nemSch_e127WarningDate/Time Vital Signs Taken should not be earlier than Arrived at Patient Date/Time, unless
Obtained Prior to this Unit's EMS Care is "Yes".
nemSch_e130WarningDate/Time Vital Signs Taken should not be later than Arrived at Patient Date/Time when
Obtained Prior to this Unit's EMS Care is "Yes".
nemSch_e138WarningDate/Time Medication Administered should not be earlier than Arrived at Patient Date/Time,
unless Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e141WarningDate/Time Medication Administered should not be later than Arrived at Patient Date/Time when
Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e153WarningDate/Time Procedure Performed should not be earlier than Arrived at Patient Date/Time, unless
Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e156WarningDate/Time Procedure Performed should not be later than Arrived at Patient Date/Time when
Procedure Performed Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 83

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eTimes.08
eTimes.08 - Transfer of EMS Patient Care Date/Time
Definition
The date/time the patient was transferred from this EMS agency to another EMS agency for care.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE05_08
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Transfer of EMS Patient Care Date/Time is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 84
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Transfer of EMS Patient Care Date/Time has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 85

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eTimes.09
eTimes.09 - Unit Left Scene Date/Time
Definition
The date/time the responding unit left the scene (started moving).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE05_09
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Unit Left Scene Date/Time is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 86
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Unit Left Scene Date/Time has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e025WarningUnit Left Scene Date/Time should be recorded unless Unit Disposition is "Cancelled Prior to
Arrival at Scene".
nemSch_e026WarningUnit Left Scene Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e027WarningUnit Left Scene Date/Time should not be earlier than Unit En Route Date/Time.
nemSch_e028WarningUnit Left Scene Date/Time should not be earlier than Unit Arrived on Scene Date/Time.
nemSch_e029WarningUnit Left Scene Date/Time should not be earlier than Arrived at Patient Date/Time.
nemSch_e035WarningPatient Arrived at Destination Date/Time should not be earlier than Unit Left Scene Date/Time.
nemSch_e041WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Left Scene
Date/Time.
nemSch_e050WarningUnit Back in Service Date/Time should not be earlier than Unit Left Scene Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 87

 
eTimes.10
eTimes.10 - Arrival at Destination Landing Area Date/Time
Definition
The date/time the Air Medical vehicle arrived at the destination landing area.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 88
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eTimes.11
eTimes.11 - Patient Arrived at Destination Date/Time
Definition
The date/time the responding unit arrived with the patient at the destination or transfer point.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE05_10
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient Arrived at Destination Date/Time is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 89
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Patient Arrived at Destination Date/Time has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_e030WarningPatient Arrived at Destination Date/Time should be recorded when Transport Disposition is
"Transport by This EMS Unit...".
nemSch_e031WarningPatient Arrived at Destination Date/Time should not be earlier than Unit Notified by Dispatch
Date/Time.
nemSch_e032WarningPatient Arrived at Destination Date/Time should not be earlier than Unit En Route Date/Time.
nemSch_e033WarningPatient Arrived at Destination Date/Time should not be earlier than Unit Arrived on Scene
Date/Time.
nemSch_e034WarningPatient Arrived at Destination Date/Time should not be earlier than Arrived at Patient Date/Time.
nemSch_e035WarningPatient Arrived at Destination Date/Time should not be earlier than Unit Left Scene Date/Time.
nemSch_e042WarningDestination Patient Transfer of Care Date/Time should not be earlier than Patient Arrived at
Destination Date/Time.
nemSch_e051WarningUnit Back in Service Date/Time should not be earlier than Patient Arrived at Destination
Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 90

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eTimes.12
eTimes.12 - Destination Patient Transfer of Care Date/Time
Definition
The date/time that patient care was transferred to the destination healthcare staff.
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
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
This was added to better document delays in ED transfer of care due to ED crowding or other issues beyond EMS control. 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination Patient Transfer of Care Date/Time is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
Published: 04/03/2025www.NEMSIS.orgPage 91
NEMSIS Version 3.5.1.250403CP1

 
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination Patient Transfer of Care Date/Time has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e036WarningDestination Patient Transfer of Care Date/Time should be recorded when Transport Disposition is
"Transport by This EMS Unit...".
nemSch_e037WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Notified by
Dispatch Date/Time.
nemSch_e038WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit En Route
Date/Time.
nemSch_e039WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Arrived on Scene
Date/Time.
nemSch_e040WarningDestination Patient Transfer of Care Date/Time should not be earlier than Arrived at Patient
Date/Time.
nemSch_e041WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Left Scene
Date/Time.
nemSch_e042WarningDestination Patient Transfer of Care Date/Time should not be earlier than Patient Arrived at
Destination Date/Time.
nemSch_e043WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time of Symptom
Onset.
nemSch_e044WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time Last Known
Well.
nemSch_e045WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time of Cardiac
Arrest.
nemSch_e052WarningUnit Back in Service Date/Time should not be earlier than Destination Patient Transfer of Care
Date/Time.
nemSch_e128WarningDate/Time Vital Signs Taken should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e139WarningDate/Time Medication Administered should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e154WarningDate/Time Procedure Performed should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e178WarningDate/Time of Destination Prearrival Alert or Activation should not be later than Destination Patient
Transfer of Care Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 92

 
StateNational
eTimes.13
eTimes.13 - Unit Back in Service Date/Time
Definition
The date/time the unit was back in service and available for response (finished with call, but not necessarily
back in home location).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE05_11
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
Response
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e046WarningUnit Back in Service Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e047WarningUnit Back in Service Date/Time should not be earlier than Unit En Route Date/Time.
nemSch_e048WarningUnit Back in Service Date/Time should not be earlier than Unit Arrived on Scene Date/Time.
nemSch_e049WarningUnit Back in Service Date/Time should not be earlier than Arrived at Patient Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 93
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e050WarningUnit Back in Service Date/Time should not be earlier than Unit Left Scene Date/Time.
nemSch_e051WarningUnit Back in Service Date/Time should not be earlier than Patient Arrived at Destination
Date/Time.
nemSch_e052WarningUnit Back in Service Date/Time should not be earlier than Destination Patient Transfer of Care
Date/Time.
nemSch_e053WarningUnit Back in Service Date/Time should not be earlier than Date/Time of Symptom Onset.
nemSch_e054WarningUnit Back in Service Date/Time should not be earlier than Date/Time Last Known Well.
nemSch_e055WarningUnit Back in Service Date/Time should not be earlier than Date/Time of Cardiac Arrest.
nemSch_e056WarningUnit Back in Service Date/Time should not be in the future (the current time according to this
system is (value)).
nemSch_e129WarningDate/Time Vital Signs Taken should not be later than Unit Back in Service Date/Time.
nemSch_e140WarningDate/Time Medication Administered should not be later than Unit Back in Service Date/Time.
nemSch_e155WarningDate/Time Procedure Performed should not be later than Unit Back in Service Date/Time.
nemSch_e179WarningDate/Time of Destination Prearrival Alert or Activation should not be later than Unit Back in
Service Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 94

 
State
eTimes.14
eTimes.14 - Unit Canceled Date/Time
Definition
The date/time the unit was canceled.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE05_12
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Response
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
This date/time is to be documented if the unit went en route but neither arrived on scene nor made patient contact. 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 95
NEMSIS Version 3.5.1.250403CP1

 
eTimes.15
eTimes.15 - Unit Back at Home Location Date/Time
Definition
The date/time the responding unit was back in their service area. With agencies who utilized Agency Status
Management, home location means the service area as assigned through the agency status management
protocol.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE05_13
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Response
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 96
NEMSIS Version 3.5.1.250403CP1

 
eTimes.16
eTimes.16 - EMS Call Completed Date/Time
Definition
The date/time the responding unit completed all tasks associated with the event including transfer of the
patient, and such things as cleaning and restocking.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Response
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
For many EMS agencies, this would equal Unit Back in Service Date/Time (eTimes.13) if no travel is required to be back in
service. 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 97
NEMSIS Version 3.5.1.250403CP1

 
eTimes.17
eTimes.17 - Unit Arrived at Staging Area Date/Time
Definition
The date/time the responding unit arrived at a staging area, prior to arrival on scene.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
ResponseTrauma
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
For use when the EMS Units and personnel are not allowed access to the scene until it is cleared for reasons such as safety
(e.g., shooting, hazmat, tornado, fire, etc.). 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 98
NEMSIS Version 3.5.1.250403CP1

 
ePatient
Published: 04/03/2025www.NEMSIS.orgPage 99

 
N, L, PRSN
ePatient.25 - Sex
0 : 1
CO
ePatient.24 - Patient's Preferred Language(s)
0 : M
N, LE
ePatient.22 - Alternate Home Residence
0 : 1
O
ePatient.21 - Driver's License Number
0 : 1
O
ePatient.20 - State Issuing Driver's License
0 : 1
CO
ePatient.19 - Patient's Email Address
0 : M
CL, PO
ePatient.18 - Patient's Phone Number
0 : M
N, L, PES
ePatient.17 - Date of Birth
0 : 1
N, LRSN
ePatient.16 - Age Units
1 : 1
N, L, PRSN
ePatient.15 - Age
1 : 1
ePatient.AgeGroup
1 : 1
CN, L, PRSN
ePatient.14 - Race
1 : M
N, LRSN
D
ePatient.13 - Gender (DEPRECATED)
0 : 1
L, PO
ePatient.12 - Social Security Number
0 : 1
O
ePatient.11 - Patient Home Census Tract
0 : 1
OS
ePatient.10 - Patient's Country of Residence
0 : 1
N, LRSN
ePatient.09 - Patient's Home ZIP Code
1 : 1
N, LRSN
ePatient.08 - Patient's Home State
1 : 1
N, LRSN
ePatient.07 - Patient's Home County
1 : 1
L, POS
ePatient.06 - Patient's Home City
0 : 1
L, POS
ePatient.05 - Patient's Home Address
0 : 1
O
ePatient.23 - Name Suffix
0 : 1
O
ePatient.04 - Middle Initial/Name
0 : 1
N, L, PES
ePatient.03 - First Name
0 : 1
N, L, PES
ePatient.02 - Last Name
0 : 1
ePatient.PatientNameGroup
0 : 1
O
ePatient.01 - EMS Patient ID
0 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
ePatient
ePatient
Published: 04/03/2025www.NEMSIS.orgPage 100

 
ePatient.01
ePatient.01 - EMS Patient ID
Definition
The unique ID for the patient within the Agency.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
This has been inserted to allow each patient to be tracked across multiple PCRs within an EMS Agency.
Published: 04/03/2025www.NEMSIS.orgPage 101
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
ePatient.02
ePatient.02 - Last Name
Definition
The patient's last (family) name.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE06_01
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
string
minLength
1
maxLength
60
Data Element Comment
Pertinent negatives accepted with option of "Unable to Complete" or "Refused".
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Last Name is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Last Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e008ErrorWhen Last Name has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 102
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
ePatient.03
ePatient.03 - First Name
Definition
The patient's first (given) name.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE06_02
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Pertinent negatives accepted with option of "Unable to Complete" or "Refused".
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen First Name is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen First Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e008ErrorWhen First Name has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 103
NEMSIS Version 3.5.1.250403CP1

 
ePatient.04
ePatient.04 - Middle Initial/Name
Definition
The patient's middle name, if any.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE06_03
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 104
NEMSIS Version 3.5.1.250403CP1

 
ePatient.23
ePatient.23 - Name Suffix
Definition
The patient's name component following family name that may be used to describe a person's position in a
family.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 105
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
8801023 - Unable to Complete
State
ePatient.05
ePatient.05 - Patient's Home Address
Definition
Patient's address of residence.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesNo
Version 2 ElementE06_04
Is NillableYes
UsageOptional
Recurrence0 : 1
Attributes
Pertinent Negatives (PN)
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
This is a CMS standard. According to the Medicare Claims Processing Manual, Chapter 15 - Ambulance, Ambulance
suppliers bill using CMS-1500 form or CMS-1450 form for institution-based ambulance providers. This standard adheres to
CMS-1500 and 1450. 
This element allows for a two line documentation of the address. For out of country addresses the second line should be used
to document, city, country, postal code and any other pertinent information.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Home Address is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e008ErrorWhen Patient's Home Address has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 106
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete
State
ePatient.06
ePatient.06 - Patient's Home City
Definition
The patient's primary city or township of residence.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesNo
Version 2 ElementE06_05
Is NillableYes
UsageOptional
Recurrence0 : 1
Attributes
Pertinent Negatives (PN)
Data Element Comment
City codes are based on GNIS Feature Class. The primary Feature Class to use is "Civil" with "Populated Place" and "Military"
code as additional options. 
Definitions for each GNIS City Feature Class can be found on the GNIS Codes website. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Home City is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e008ErrorWhen Patient's Home City has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 107
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.07
ePatient.07 - Patient's Home County
Definition
The patient's home county or parish of residence.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE06_06
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}
Data Element Comment
Based on the ANSI Code Single Choice based on the County Name but stored as the ANSI code (combined 5 digit State and
County codes) Should be required if there is a patient associated with the event. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Home County is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Patient's Home County has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_e057WarningPatient's Home County should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided".
nemSch_e058WarningPatient's Home County should belong within the Patient's Home State.
Published: 04/03/2025www.NEMSIS.orgPage 108
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.08
ePatient.08 - Patient's Home State
Definition
The state, territory, or province where the patient resides.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE06_07
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{2}
Data Element Comment
The ANSI Code Selection by text but stored as ANSI code.
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Home State is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Patient's Home State has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e058WarningPatient's Home County should belong within the Patient's Home State.
nemSch_e059WarningPatient's Home State should be recorded when Patient Evaluation/Care is "Patient Evaluated and
Care Provided".
Published: 04/03/2025www.NEMSIS.orgPage 109
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.09
ePatient.09 - Patient's Home ZIP Code
Definition
The patient's ZIP code of residence.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE06_08
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
ZIP Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Home ZIP Code is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Patient's Home ZIP Code has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e060WarningPatient's Home ZIP Code should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided".
Published: 04/03/2025www.NEMSIS.orgPage 110
NEMSIS Version 3.5.1.250403CP1

 
State
ePatient.10
ePatient.10 - Patient's Country of Residence
Definition
The country of residence of the patient.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE06_09
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
length
2
Data Element Comment
Based on the ISO Country Code.
ANSI Country Codes (ISO 3166) Website: http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm
Published: 04/03/2025www.NEMSIS.orgPage 111
NEMSIS Version 3.5.1.250403CP1

 
ePatient.11
ePatient.11 - Patient Home Census Tract
Definition
The census tract in which the patient lives.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Pattern
[0-9]{11}
Data Element Comment
This data element was added to better document the service area of the EMS Agency. Each state listed is associated with the
counties, census tracts, and ZIP codes within the EMS Agency Service Area for each state. 
The format of the census tract number must be an 11-digit number, based upon the 2010 census, using the pattern: 
2-digit State Code 3-digit County Code 6-digit Census Tract Number (no decimal) 
Example: NEMSIS TAC office (UT, Salt Lake County, Census Tract - located at 295 Chipeta Way, Salt Lake City, UT)
49035101400 
Census Tract Data Website (files and descriptions): 
https://www.census.gov/geographies/reference-files/2010/geo/relationship-files.html
Published: 04/03/2025www.NEMSIS.orgPage 112
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete
ePatient.12
ePatient.12 - Social Security Number
Definition
The patient's social security number.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE06_10
Is NillableYes
UsageOptional
Recurrence0 : 1
Attributes
Pertinent Negatives (PN)
Constraints
Pattern
[0-9]{9}
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Social Security Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e008ErrorWhen Social Security Number has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 113
NEMSIS Version 3.5.1.250403CP1

 
 - 7701003Not Recorded - 7701001Not Applicable
StateNational
 ePatient.13(DEPRECATED)
Deprecated
 -  ePatient.13Gender(DEPRECATED)
Definition
 The patient's gender.(DEPRECATED)
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementDEPRECATED
Is NillableYes
UsageRequired
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9906001Female (DEPRECATED)
9906003Male (DEPRECATED)
9906007Female-to-Male, Transgender Male (DEPRECATED)
9906009Male-to-Female, Transgender Female (DEPRECATED)
9906011Other, neither exclusively male or female (DEPRECATED)
9906005Unknown (Unable to Determine) (DEPRECATED)
Data Element Comment
Deprecated Comment
The NEMSIS Program is funded by the National Highway Traffic Safety Administration and this element was modified to
comply with President Trump’s Executive Orders.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Gender (DEPRECATED) is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Gender (DEPRECATED) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 114
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801023 - Unable to Complete8801021 - Unresponsive8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.14
ePatient.14 - Race
Definition
The patient's race as defined by the OMB (US Office of Management and Budget).
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE06_12
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
2514001American Indian or Alaska Native
2514003Asian
2514005Black or African American
2514007Hispanic or Latino
2514009Native Hawaiian or Other Pacific Islander
2514011White
2514013Middle Eastern or North African
Data Element Comment
OMB requirements are provided at: . Using single multiple choice questionhttps://www.federalregister.gov/d/2024-06469
methodology to improve the completion of ethnicity information.
Ethnicity (Version 2.2.1: E06_13) has been merged with this data element and retired.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Race is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Race has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e008ErrorWhen Race has a Pertinent Negative, it should be empty and it should not have a Not Value
(Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Race has a Not Value, no other value should be recorded.
nemSch_e010WarningWhen Race has a Pertinent Negative, no other value should be recorded.
nemSch_e062WarningRace should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
Published: 04/03/2025www.NEMSIS.orgPage 115
NEMSIS Version 3.5.1.250403CP1

 
8801029 - Approximate
7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.15
ePatient.15 - Age
Definition
The patient's age (either calculated from date of birth or best approximation) at the time of the incident.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE06_14
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
1
maxInclusive
120
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Age is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Age has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e063WarningAge should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e065WarningAge Units should be recorded when Age is recorded.
nemSch_e190ErrorWhen Age has a Pertinent Negative of "Approximate", it should have a value and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 116
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.16
ePatient.16 - Age Units
Definition
The unit used to define the patient's age.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE06_15
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2516001Days
2516003Hours
2516005Minutes
2516007Months
2516009Years
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Age Units is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Age Units has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e064WarningAge Units should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e065WarningAge Units should be recorded when Age is recorded.
Published: 04/03/2025www.NEMSIS.orgPage 117
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
ePatient.17
ePatient.17 - Date of Birth
Definition
The patient's date of birth.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE06_16
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
date
minInclusive
1890-01-01
maxInclusive
2050-01-01
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date of Birth is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Date of Birth has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_e008ErrorWhen Date of Birth has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 118
NEMSIS Version 3.5.1.250403CP1

 
9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
stringData Type: 2minLength: 255maxLength: 
8801023 - Unable to Complete
ePatient.18
ePatient.18 - Patient's Phone Number
Definition
The patient's phone number.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE06_17
Is NillableYes
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
This element contains an attribute to define what type of phone number is being documented (e.g., Fax, Home, Mobile, Pager,
and Work).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Phone Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e008ErrorWhen Patient's Phone Number has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e010WarningWhen Patient's Phone Number has a Pertinent Negative, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 119
NEMSIS Version 3.5.1.250403CP1

 
9904003 - Work9904001 - Personal
stringData Type: 2minLength: 255maxLength: 
ePatient.19
ePatient.19 - Patient's Email Address
Definition
The email address of the patient.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
EmailAddressType
Constraints
Data Type
string
minLength
3
maxLength
100
Pattern
.+@.+
Data Element Comment
Added to improve follow-up and billing communication.
Published: 04/03/2025www.NEMSIS.orgPage 120
NEMSIS Version 3.5.1.250403CP1

 
ePatient.20
ePatient.20 - State Issuing Driver's License
Definition
The state that issued the drivers license.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE06_18
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
Stored as the ANSI State Code. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 121
NEMSIS Version 3.5.1.250403CP1

 
ePatient.21
ePatient.21 - Driver's License Number
Definition
The patient's drivers license number.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE06_19
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
30
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 122
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
ePatient.22
ePatient.22 - Alternate Home Residence
Definition
Documentation of the type of patient without a home ZIP/Postal Code.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
2522001Homeless
2522003Migrant Worker
2522005Foreign Visitor
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Alternate Home Residence is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Alternate Home Residence has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 123
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
ePatient.24
ePatient.24 - Patient's Preferred Language(s)
Definition
The patient's preferred language(s).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
amhAmharic
araArabic
armArmenian
benBengali
crpCajun (Creole and Pidgins)
chiChinese
hrvCroatian
czeCzech
danDanish
dutDutch
engEnglish
finFinnish
taiFormosan
freFrench
cpfFrench Creole
gerGerman
greGreek
gujGujarati
hebHebrew
hinHindi (Urdu)
hunHungarian
iloIlocano
itlItalian
jpnJapanese
korKorean
kroKru
litLithuanian
malMalayalam
hmnMiao (Hmong)
mkhMon-Khmer (Cambodian)
navNavaho
nnoNorwegian
panPanjabi
gemPennsylvania Dutch (Germanic Other)
perPersian
polPolish
porPortuguese
rumRomanian
rusRussian
sgnSign Languages
smoSamoan
srpSerbo-Croatian
sloSlovak
spaSpanish
sweSwedish
syrSyriac
tglTagalog
Published: 04/03/2025www.NEMSIS.orgPage 124
NEMSIS Version 3.5.1.250403CP1

 
thaThai (Laotian)
turTurkish
ukrUkrainian
vieVietnamese
yidYiddish
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 125

 
8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePatient.25
ePatient.25 - Sex
Definition
The patient's sex.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
9919001Female
9919003Male
9919005Unknown
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Sex is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Sex has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e008ErrorWhen Sex has a Pertinent Negative, it should be empty and it should not have a Not Value (Not
Applicable, Not Recorded, or Not Reporting).
nemSch_e193WarningSex should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care Provided".
Published: 04/03/2025www.NEMSIS.orgPage 126
NEMSIS Version 3.5.1.250403CP1

 
ePayment
Published: 04/03/2025www.NEMSIS.orgPage 127

 
O
ePayment.25 - Closest Relative/ Guardian Middle Initial/Name
0 : 1
O
ePayment.24 - Closest Relative/ Guardian First Name
0 : 1
O
ePayment.23 - Closest Relative/Guardian Last Name
0 : 1
ePayment.ClosestRelativeGroup
0 : 1
O
ePayment.60 - Date of Birth of the Insured
0 : 1
CO
ePayment.59 - Insurance Company Phone Number
0 : M
O
ePayment.58 - Insurance Group Name
0 : 1
O
ePayment.22 - Relationship to the Insured
0 : 1
O
ePayment.21 - Middle Initial/Name of the Insured
0 : 1
O
ePayment.20 - First Name of the Insured
0 : 1
O
ePayment.19 - Last Name of the Insured
0 : 1
O
ePayment.18 - Insurance Policy ID Number
0 : 1
O
ePayment.17 - Insurance Group ID
0 : 1
O
ePayment.16 - Insurance Company Country
0 : 1
O
ePayment.15 - Insurance Company ZIP Code
0 : 1
O
ePayment.14 - Insurance Company State
0 : 1
O
ePayment.13 - Insurance Company City
0 : 1
O
ePayment.12 - Insurance Company Address
0 : 1
O
ePayment.11 - Insurance Company Billing Priority
0 : 1
O
ePayment.10 - Insurance Company Name
0 : 1
O
ePayment.09 - Insurance Company ID
0 : 1
C
ePayment.InsuranceGroup
0 : M
O
ePayment.08 - Patient Resides in Service Area
0 : 1
O
ePayment.07 - First Name of Individual Signing Physician Certification Statement
0 : 1
O
ePayment.06 - Last Name of Individual Signing Physician Certification Statement
0 : 1
O
ePayment.05 - Healthcare Provider Type Signing Physician Certification Statement
0 : 1
CO
ePayment.04 - Reason for Physician Certification Statement
0 : M
O
ePayment.03 - Date Physician Certification Statement Signed
0 : 1
O
ePayment.02 - Physician Certification Statement
0 : 1
ePayment.CertificateGroup
0 : 1
N, LRSN
ePayment.01 - Primary Method of Payment
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
ePayment
Published: 04/03/2025www.NEMSIS.orgPage 128

 
O
ePayment.57 - Payer Type
0 : 1
O
ePayment.56 - Number of Supply Item(s) Used
0 : 1
O
ePayment.55 - Supply Item Used Name
0 : 1
C
ePayment.SupplyItemGroup
0 : M
O
ePayment.54 - Prior Authorization Code Payer
0 : 1
O
ePayment.53 - Transport Authorization Code
0 : 1
CO
ePayment.52 - CMS Transportation Indicator
0 : M
CO
ePayment.51 - EMS Condition Code
0 : M
N, LRSN
ePayment.50 - CMS Service Level
1 : 1
O
ePayment.49 - ALS Assessment Performed and Warranted
0 : 1
O
ePayment.48 - Mileage to Closest Hospital Facility
0 : 1
CO
ePayment.47 - Ambulance Conditions Indicator
0 : M
O
ePayment.46 - Stretcher Purpose Description
0 : 1
O
ePayment.45 - Round Trip Purpose Description
0 : 1
CO
ePayment.44 - Ambulance Transport Reason Code
0 : M
CO
ePayment.42 - Specialty Care Transport Care Provider
0 : M
CO
ePayment.41 - Patient Transport Assessment
0 : M
O
ePayment.40 - Response Urgency
0 : 1
O
ePayment.39 - Patient's Employer's Primary Phone Number
0 : 1
O
ePayment.38 - Patient's Employer's Country
0 : 1
O
ePayment.37 - Patient's Employer's ZIP Code
0 : 1
O
ePayment.36 - Patient's Employer's State
0 : 1
O
ePayment.35 - Patient's Employer's City
0 : 1
O
ePayment.34 - Patient's Employer's Address
0 : 1
O
ePayment.33 - Patient's Employer
0 : 1
ePayment.EmployerGroup
0 : 1
O
ePayment.32 - Closest Relative/ Guardian Relationship
0 : 1
CO
ePayment.31 - Closest Relative/ Guardian Phone Number
0 : M
O
ePayment.30 - Closest Relative/ Guardian Country
0 : 1
O
ePayment.29 - Closest Relative/ Guardian ZIP Code
0 : 1
O
ePayment.28 - Closest Relative/ Guardian State
0 : 1
O
ePayment.27 - Closest Relative/ Guardian City
0 : 1
O
ePayment.26 - Closest Relative/ Guardian Street Address
0 : 1
ePayment
Published: 04/03/2025www.NEMSIS.orgPage 129

 
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
Published: 04/03/2025www.NEMSIS.orgPage 130
NEMSIS Version 3.5.1.250403CP1

 
ePayment.02
ePayment.02 - Physician Certification Statement
Definition
Indication of whether a physician certification statement (PCS) is available documenting the medical
necessity or the EMS encounter.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_02
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9922001No
9922003Unknown
9922005Yes
Data Element Comment
Data Element Name changed from Certificate of Medical Necessity to Physician Certification Statement. The PCS statement
and documentation of medical necessity is a requirement of the Centers for Medicare & Medicaid Services. The
circumstances are defined in 42 CFR 410.40 (d)(2) and (d)(3). http://www.cms.gov/ 
A PCS is required for the following non-emergency transport: 
1) Non-Emergency Repetitive Scheduled 
2) Non Emergency Non-Repetitive-Scheduled 
3) Non Emergency Services - Non Scheduled - Under direct care of a physician
Published: 04/03/2025www.NEMSIS.orgPage 131
NEMSIS Version 3.5.1.250403CP1

 
ePayment.03
ePayment.03 - Date Physician Certification Statement Signed
Definition
The date the Physician Certification Statement was signed.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
Added to assist in billing documentation. Associated with ePayment.02: Physician Certification Statement. 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 132
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
ePayment.04
ePayment.04 - Reason for Physician Certification Statement
Definition
The reason for EMS transport noted on the Physician Certification Statement.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
2604001Bed Confined
2604003Cardiac/Hemodynamic monitoring required during transport
2604005Confused, combative, lethargic, comatose
2604007Contractures
2604009Danger to self or others-monitoring
2604011Danger to self or others-seclusion (flight risk)
2604013DVT requires elevation of lower extremity
2604015IV medications/fluids required during transport
2604017Moderate to severe pain on movement
2604019Morbid Obesity requires additional personnel/equipment to handle
2604021Non-healing fractures
2604023Orthopedic device (backboard, halo, use of pins in traction, etc.) requiring special handling in transit
2604025Restraints (Physical or Chemical) anticipated or used during transport
2604027Risk of falling off wheelchair or stretcher while in motion (not related to obesity)
2604029Severe Muscular weakness and de-conditioned state precludes any significant physical activity
2604031Special handling en route-Isolation
2604033Third Party assistance/attendant required to apply, administer, or regulate or adjust oxygen en route
2604035Unable to maintain erect sitting position in a chair for time needed to transport, due to moderate muscular
weakness and de-conditioning.
2604037Unable to sit in chair or wheelchair due to Grade II or greater decubitus ulcers on buttocks.
Data Element Comment
Added to assist in billing documentation.
Published: 04/03/2025www.NEMSIS.orgPage 133
NEMSIS Version 3.5.1.250403CP1

 
ePayment.05
ePayment.05 - Healthcare Provider Type Signing Physician Certification Statement
Definition
The type of healthcare provider who signed the Physician Certification Statement.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2605001Clinical Nurse Specialist
2605003Discharge Planner
2605005Physician (MD or DO)
2605007Physician Assistant
2605009Registered Nurse
2605011Registered Nurse Practitioner
2605013Licensed Practical Nurse (LPN)
2605015Case Manager
2605017Social Worker
Data Element Comment
CMS defines the individual signing the PCS as a person who has personal knowledge of the beneficiary's condition at the time
the ambulance transport is ordered or the service is furnished.
Published: 04/03/2025www.NEMSIS.orgPage 134
NEMSIS Version 3.5.1.250403CP1

 
ePayment.06
ePayment.06 - Last Name of Individual Signing Physician Certification Statement
Definition
The last name of the healthcare provider who signed the Physician Certification Statement.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
60
Data Element Comment
Added to assist in billing documentation.
Published: 04/03/2025www.NEMSIS.orgPage 135
NEMSIS Version 3.5.1.250403CP1

 
ePayment.07
ePayment.07 - First Name of Individual Signing Physician Certification Statement
Definition
The first name of the healthcare provider who signed the Physician Certification Statement.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Added to assist in billing documentation.
Published: 04/03/2025www.NEMSIS.orgPage 136
NEMSIS Version 3.5.1.250403CP1

 
ePayment.08
ePayment.08 - Patient Resides in Service Area
Definition
An indication of whether the patient's current residence is within the EMS agency service area.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2608001Resident Within EMS Service Area
2608003Not a Resident Within EMS Service Area
Data Element Comment
Added to assist in billing documentation.
Published: 04/03/2025www.NEMSIS.orgPage 137
NEMSIS Version 3.5.1.250403CP1

 
ePayment.09
ePayment.09 - Insurance Company ID
Definition
The ID Number of the patient's insurance company.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_03
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
60
Data Element Comment
This element should be used as the Health Plan ID (HPID) field in X12. It is currently under development for X12 and will be a
future release. To align with USCDI, consider using the Issuer Identification Number (IIN) or Processor Control Number
(PCN).
Published: 04/03/2025www.NEMSIS.orgPage 138
NEMSIS Version 3.5.1.250403CP1

 
ePayment.10
ePayment.10 - Insurance Company Name
Definition
The name of the patient's insurance company.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
60
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 139
NEMSIS Version 3.5.1.250403CP1

 
ePayment.11
ePayment.11 - Insurance Company Billing Priority
Definition
The billing priority or order for the insurance company.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2611001Other
2611003Primary
2611005Secondary
2611007Tertiary
2611009Payer Responsibility Four
2611011Payer Responsibility Five
2611013Payer Responsibility Six
2611015Payer Responsibility Seven
2611017Payer Responsibility Eight
2611019Payer Responsibility Nine
2611021Payer Responsibility Ten
2611023Payer Responsibility Eleven
2611025Unknown
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 140
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
ePayment.12
ePayment.12 - Insurance Company Address
Definition
The mailing address of the Insurance Company.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_05
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 141
NEMSIS Version 3.5.1.250403CP1

 
ePayment.13
ePayment.13 - Insurance Company City
Definition
The insurance company's city or township used for mailing purposes.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_06
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
30
Data Element Comment
The city elements within the ePayment section have been updated to allow free text. This is important for mailing address
purposes to submit claims and identify the correct payer.
Published: 04/03/2025www.NEMSIS.orgPage 142
NEMSIS Version 3.5.1.250403CP1

 
ePayment.14
ePayment.14 - Insurance Company State
Definition
The insurance company's state, territory, or province, or District of Columbia.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_07
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
Based on the ANSI State Code.
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 143
NEMSIS Version 3.5.1.250403CP1

 
ePayment.15
ePayment.15 - Insurance Company ZIP Code
Definition
The insurance company's ZIP Code.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_08
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
ZIP Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Published: 04/03/2025www.NEMSIS.orgPage 144
NEMSIS Version 3.5.1.250403CP1

 
ePayment.16
ePayment.16 - Insurance Company Country
Definition
The insurance company's country.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
length
2
Data Element Comment
Based on the ISO Country Code.
ANSI Country Codes (ISO 3166) Website: https://www.iso.org/iso-3166-country-codes.html
Version 3 Changes Implemented
Added to better document international addresses.
Published: 04/03/2025www.NEMSIS.orgPage 145
NEMSIS Version 3.5.1.250403CP1

 
ePayment.17
ePayment.17 - Insurance Group ID
Definition
The ID number of the patient's insurance group.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_09
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
30
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 146
NEMSIS Version 3.5.1.250403CP1

 
ePayment.18
ePayment.18 - Insurance Policy ID Number
Definition
The ID number of the patient's insurance policy.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_10
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
30
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 147
NEMSIS Version 3.5.1.250403CP1

 
ePayment.19
ePayment.19 - Last Name of the Insured
Definition
The last (family) name of the person insured by the insurance company.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_11
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
60
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 148
NEMSIS Version 3.5.1.250403CP1

 
ePayment.20
ePayment.20 - First Name of the Insured
Definition
The first (given) name of the person insured by the insurance company.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_12
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 149
NEMSIS Version 3.5.1.250403CP1

 
ePayment.21
ePayment.21 - Middle Initial/Name of the Insured
Definition
The middle name, if any, of the person insured by the insurance company.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_13
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 150
NEMSIS Version 3.5.1.250403CP1

 
ePayment.22
ePayment.22 - Relationship to the Insured
Definition
The relationship of the patient to the primary insured person.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_14
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2622001Self
2622003Spouse
2622005Child/Dependent
2622009Cadaver Donor
2622011Employee
2622013Life/Domestic Partner
2622015Organ Donor
2622017Unknown
2622019Other Relationship
Data Element Comment
Descriptors are consistent with X12 Loop 2000C PAT01, Specifies the patient's relationship to the person insured.
Published: 04/03/2025www.NEMSIS.orgPage 151
NEMSIS Version 3.5.1.250403CP1

 
ePayment.58
ePayment.58 - Insurance Group Name
Definition
The name of the patient's insurance group.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
30
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 152
NEMSIS Version 3.5.1.250403CP1

 
9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
stringData Type: 2minLength: 255maxLength: 
ePayment.59
ePayment.59 - Insurance Company Phone Number
Definition
The phone number for the patient's insurance company.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 153
NEMSIS Version 3.5.1.250403CP1

 
ePayment.60
ePayment.60 - Date of Birth of the Insured
Definition
The date of birth of the person insured by the insurance company.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
date
minInclusive
1890-01-01
maxInclusive
2050-01-01
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 154
NEMSIS Version 3.5.1.250403CP1

 
ePayment.23
ePayment.23 - Closest Relative/Guardian Last Name
Definition
The last (family) name of the patient's closest relative or guardian.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_18
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
60
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 155
NEMSIS Version 3.5.1.250403CP1

 
ePayment.24
ePayment.24 - Closest Relative/ Guardian First Name
Definition
The first (given) name of the patient's closest relative or guardian.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_19
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 156
NEMSIS Version 3.5.1.250403CP1

 
ePayment.25
ePayment.25 - Closest Relative/ Guardian Middle Initial/Name
Definition
The middle name/initial, if any, of the closest patient's relative or guardian.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_20
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 157
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
ePayment.26
ePayment.26 - Closest Relative/ Guardian Street Address
Definition
The street address of the residence of the patient's closest relative or guardian.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_21
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
This element allows for a two line documentation of the address. For out of country addresses the second line should be used
to document, city, country, postal code and any other pertinent information.
Published: 04/03/2025www.NEMSIS.orgPage 158
NEMSIS Version 3.5.1.250403CP1

 
ePayment.27
ePayment.27 - Closest Relative/ Guardian City
Definition
The primary city or township of residence of the patient's closest relative or guardian.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_22
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
30
Data Element Comment
The city elements within the ePayment section have been updated to allow free text. This is important for mailing address
purposes to submit claims and identify the correct payer.
Published: 04/03/2025www.NEMSIS.orgPage 159
NEMSIS Version 3.5.1.250403CP1

 
ePayment.28
ePayment.28 - Closest Relative/ Guardian State
Definition
The state of residence of the patient's closest relative or guardian.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_23
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
Based on ANSI State Code.
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 160
NEMSIS Version 3.5.1.250403CP1

 
ePayment.29
ePayment.29 - Closest Relative/ Guardian ZIP Code
Definition
The ZIP Code of the residence of the patient's closest relative or guardian.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_24
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
ZIP Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Published: 04/03/2025www.NEMSIS.orgPage 161
NEMSIS Version 3.5.1.250403CP1

 
ePayment.30
ePayment.30 - Closest Relative/ Guardian Country
Definition
The country of residence of the patient's closest relative or guardian.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
length
2
Data Element Comment
Based on the ISO Country Code.
ANSI Country Codes (ISO 3166) Website: https://www.iso.org/iso-3166-country-codes.html
Version 3 Changes Implemented
Added to improve international compatibility.
Published: 04/03/2025www.NEMSIS.orgPage 162
NEMSIS Version 3.5.1.250403CP1

 
9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
stringData Type: 2minLength: 255maxLength: 
ePayment.31
ePayment.31 - Closest Relative/ Guardian Phone Number
Definition
The phone number of the patient's closest relative or guardian.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_25
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 163
NEMSIS Version 3.5.1.250403CP1

 
ePayment.32
ePayment.32 - Closest Relative/ Guardian Relationship
Definition
The relationship of the patient's closest relative or guardian.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_26
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2632001Appointed Guardian
2632003Child/Dependent
2632005Father
2632007Mother
2632009Other (Non-Relative)
2632011Other (Relative)
2632013Sibling
2632015Spouse
2632017Employee
2632019Life/Domestic Partner
2632021Unknown
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 164
NEMSIS Version 3.5.1.250403CP1

 
ePayment.33
ePayment.33 - Patient's Employer
Definition
The patient's employer's name.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_27
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
60
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 165
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
ePayment.34
ePayment.34 - Patient's Employer's Address
Definition
The street address of the patient's employer.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_28
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
This element allows for a two line documentation of the address. For out of country addresses the second line should be used
to document, city, country, postal code and any other pertinent information.
Published: 04/03/2025www.NEMSIS.orgPage 166
NEMSIS Version 3.5.1.250403CP1

 
ePayment.35
ePayment.35 - Patient's Employer's City
Definition
The city or township of the patient's employer used for mailing purposes.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_29
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
30
Data Element Comment
The city elements within the ePayment section have been updated to allow free text. This is important for mailing address
purposes to submit claims and identify the correct payer.
Published: 04/03/2025www.NEMSIS.orgPage 167
NEMSIS Version 3.5.1.250403CP1

 
ePayment.36
ePayment.36 - Patient's Employer's State
Definition
The state of the patient's employer.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_30
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
Based on ANSI State Code.
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 168
NEMSIS Version 3.5.1.250403CP1

 
ePayment.37
ePayment.37 - Patient's Employer's ZIP Code
Definition
The ZIP Code of the patient's employer.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_31
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
ZIP Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Published: 04/03/2025www.NEMSIS.orgPage 169
NEMSIS Version 3.5.1.250403CP1

 
ePayment.38
ePayment.38 - Patient's Employer's Country
Definition
The country of the patient's employer.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
length
2
Data Element Comment
Based on the ISO Country Code.
ANSI Country Codes (ISO 3166) Website: https://www.iso.org/iso-3166-country-codes.html
Version 3 Changes Implemented
Added to improve international compatibility.
Published: 04/03/2025www.NEMSIS.orgPage 170
NEMSIS Version 3.5.1.250403CP1

 
9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
ePayment.39
ePayment.39 - Patient's Employer's Primary Phone Number
Definition
The employer's primary phone number.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_32
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 171
NEMSIS Version 3.5.1.250403CP1

 
ePayment.40
ePayment.40 - Response Urgency
Definition
The urgency in which the EMS agency began to mobilize resources for this EMS encounter.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_33
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2640001Immediate
2640003Non-Immediate
Data Element Comment
This is for billing documentation.
Published: 04/03/2025www.NEMSIS.orgPage 172
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
ePayment.41
ePayment.41 - Patient Transport Assessment
Definition
Documentation of the patient's transport need based on mobility and/or physical capability.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
2641001Unable to sit without assistance
2641003Unable to stand without assistance
2641005Unable to walk without assistance
Data Element Comment
Added to better justify the medical necessity of the transport. Based on CMS 42 CFR Ch IV (10-1-02 Edition) & 410.40 (d)
medical necessity requirement (1)
Published: 04/03/2025www.NEMSIS.orgPage 173
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
ePayment.42
ePayment.42 - Specialty Care Transport Care Provider
Definition
Documentation to show the patient care provided to the patient met the Specialty Care Transport Base Rate
requirements.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
2642001Advanced EMT-Paramedic
2642003Nurse
2642005Nurse Practitioner
2642007Physician (MD, DO)
2642009Physician Assistant
2642011Emergency Medical Responder (EMR)
2642013Emergency Medical Technician (EMT)
2643014Emergency Medical Technician - Intermediate
2642015Advanced Emergency Medical Technician (AEMT)
2642017Paramedic
2642027Other Healthcare Professional
2642029Other Non-Healthcare Professional
2642031Respiratory Therapist
2642033Student
2642035Critical Care Paramedic
2642037Community Paramedicine
2642039Registered Nurse
Data Element Comment
Added to improve Specialty Care Transport billing justification. In accordance with CMS requirements Specialty Care
Transport (SCT): ""Additional training" means the specific additional training that a State requires a paramedic to complete in
order to qualify to furnish specialty care to a critically ill or injured patient during an SCT."
Published: 04/03/2025www.NEMSIS.orgPage 174
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
ePayment.44
ePayment.44 - Ambulance Transport Reason Code
Definition
The CMS Ambulance Transport Reason Code for the transport.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
APatient was transported to the nearest facility for care of symptoms, complaints, or both
BPatient was transported for the benefit of a preferred physician
CPatient was transported for the nearness of family members
DPatient was transported for the care of a specialist or for availability of equipment
EPatient was transferred to a Rehabilitation Facility
Data Element Comment
Added to improve billing with electronic claims using the ASC X12 Standard. The Ambulance Transport Code values are
those determined by US Dept of HHS for the "Code indicating the type of ambulance transport". The Accredited Standards
Committee X12 organization maintains the standard. See the X12 website http://www.x12.org or United States Health
Information Knowledgebase website for more information:
https://ushik.ahrq.gov/ViewItemDetails?system=sdo&itemKey=133080000
Published: 04/03/2025www.NEMSIS.orgPage 175
NEMSIS Version 3.5.1.250403CP1

 
ePayment.45
ePayment.45 - Round Trip Purpose Description
Definition
Free text description providing the purpose of the round trip EMS transport based on CR109 field for CMS.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
80
Data Element Comment
Added to improve billing documentation for CMS X12 based transactions. 
Ambulance providers can use this field to provide additional information regarding the circumstances of a round trip transport
or for other medical necessity documentation.
Version 3 Changes Implemented
Added to improve billing with electronic claims using X12
Published: 04/03/2025www.NEMSIS.orgPage 176
NEMSIS Version 3.5.1.250403CP1

 
ePayment.46
ePayment.46 - Stretcher Purpose Description
Definition
Free Text Documentation providing the reason for use of a stretcher in the EMS patient transport.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
80
Data Element Comment
Added to improve billing using CMS X12 transactions based on CR110. Documentation of Stretcher Purpose Description
(ePayment.46) is required when needed to justify use of a stretcher. (X12 - Loop 2300 CR110).
Published: 04/03/2025www.NEMSIS.orgPage 177
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
ePayment.47
ePayment.47 - Ambulance Conditions Indicator
Definition
Documentation of the CRC03 through CRC07 requirements for CMS billing using X12 transactions.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
01Patient was admitted to a hospital
04Patient was moved by stretcher
05Patient was unconscious or in shock
06Patient was transported in an emergency situation
07Patient had to be physically restrained
08Patient had visible hemorrhaging
09Ambulance service was medically necessary
12Patient is confined to a bed or chair (Use code 12 to indicate patient was bedridden during transport.)
Data Element Comment
Added to improve billing documentation and justification.
Version 3 Changes Implemented
Added to improve billing with electronic claims using X12. The Codes and Descriptors updated Sept 2013 to meet the X12
5010 standard.
Published: 04/03/2025www.NEMSIS.orgPage 178
NEMSIS Version 3.5.1.250403CP1

 
ePayment.48
ePayment.48 - Mileage to Closest Hospital Facility
Definition
The mileage to the closest hospital facility from the scene. Documented only if the patient was transported
to a facility farther away than the closest hospital.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
decimal
fractionDigits
2
minInclusive
1
maxInclusive
1000
Data Element Comment
Added to clarify billing mileage when the patient is not taken to the closest facility.
Version 3 Changes Implemented
Added for improved billing documentation.
Published: 04/03/2025www.NEMSIS.orgPage 179
NEMSIS Version 3.5.1.250403CP1

 
ePayment.49
ePayment.49 - ALS Assessment Performed and Warranted
Definition
Documentation that the patient required an ALS assessment and it was performed.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Added to improve billing justification
Version 3 Changes Implemented
Added to improve billing justification
Published: 04/03/2025www.NEMSIS.orgPage 180
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
ePayment.50
ePayment.50 - CMS Service Level
Definition
The CMS service level for this EMS encounter.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE07_34
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2650001ALS, Level 1
2650003ALS, Level 1 Emergency
2650005ALS, Level 2
2650007BLS
2650009BLS, Emergency
2650011Fixed Wing (Airplane)
2650013Paramedic Intercept
2650015Specialty Care Transport
2650017Rotary Wing (Helicopter)
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen CMS Service Level is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen CMS Service Level has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 181
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
ePayment.51
ePayment.51 - EMS Condition Code
Definition
The condition code associated with the CMS EMS negotiated rule-making process.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_35
Is NillableNo
UsageOptional
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
CorrelationID
Constraints
Pattern
[A-Z][0-9][0-9A-Z]((\.[0-9A-Z]{1,4})?)
Data Element Comment
Code list is represented in ICD-10-CM Codes: 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Published: 04/03/2025www.NEMSIS.orgPage 182
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
ePayment.52
ePayment.52 - CMS Transportation Indicator
Definition
The CMS Ambulance Fee Schedule Transportation and Air Medical Transportation Indicators are used to
better describe why it was necessary for the patient to be transported in a particular way or circumstance.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_37
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
C1Interfacility Transport (Requires Higher level of care)
C2Interfacility Transport (service not available)
C3Emergency Trauma Dispatch Condition Code (Major Incident or Mechanism of Injury)
C4Medically Necessary Transport (Facility on Divert or Services Unavailable)
C5BLS Transport of ALS Patient (ALS not available)
C6ALS Response (Based on Dispatch Info) to BLS Patient (Condition)
C7IV Medications required en route (ALS)
D1Long Distance-patient's condition requires rapid transportation over a long distance
D2Rare Circumstances, Traffic Patterns Precludes Ground Transport
D3Time to the closest appropriate hospital due to the patient's condition precludes ground transport; maximize
clinical benefits
D4Pick up Point not Accessible by Ground Transport
Data Element Comment
Name changed from Condition Code Modifier to CMS Transportation Indicator
Version 3 Changes Implemented
Name changed from Condition Code Modifier to CMS Transportation Indicator
Published: 04/03/2025www.NEMSIS.orgPage 183
NEMSIS Version 3.5.1.250403CP1

 
ePayment.53
ePayment.53 - Transport Authorization Code
Definition
Prior authorization code provided by the insurance carrier/payer.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Version 3 Changes Implemented
Added to improve billing documentation.
Published: 04/03/2025www.NEMSIS.orgPage 184
NEMSIS Version 3.5.1.250403CP1

 
ePayment.54
ePayment.54 - Prior Authorization Code Payer
Definition
The Payer who has provided the Prior Authorization Code.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
Added to document Prior Authorization Codes for an EMS Transport.
Version 3 Changes Implemented
Added to improve billing documentation.
Published: 04/03/2025www.NEMSIS.orgPage 185
NEMSIS Version 3.5.1.250403CP1

 
ePayment.55
ePayment.55 - Supply Item Used Name
Definition
The name of the supply used on the patient by the EMS Crew during the EMS event.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
80
Data Element Comment
Added to track EMS supplies for billing. The list of supplies would be created by the EMS Agency. There is no master list of
supply items defined.
Version 3 Changes Implemented
Added to track EMS supplies for billing.
Published: 04/03/2025www.NEMSIS.orgPage 186
NEMSIS Version 3.5.1.250403CP1

 
ePayment.56
ePayment.56 - Number of Supply Item(s) Used
Definition
The number of the specific supply item used on the patient by the EMS Crew during the EMS event.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
100,000,000
Data Element Comment
Associated with ePayment.55 (Supply Item Used Name). Used to better track supply items for billing.
Version 3 Changes Implemented
Added to track EMS supplies for billing.
Published: 04/03/2025www.NEMSIS.orgPage 187
NEMSIS Version 3.5.1.250403CP1

 
ePayment.57
ePayment.57 - Payer Type
Definition
Payer type according to X12 standard.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
11Other Non-Federal Programs
12Preferred Provider Organization (PPO)
13Point of Service (POS)
14Exclusive Provider Organization (EPO)
15Indemnity Insurance
16Health Maintenance Organization (HMO) Medicare Risk
17Dental Maintenance Organization
AMAutomobile Medical
BLBlue Cross/Blue Shield
CHChampus
CICommercial Insurance Co.
DSDisability
FIFederal Employees Program
HMHealth Maintenance Organization
LMLiability Medical
MAMedicare Part A
MBMedicare Part B
MCMedicaid
OFOther Federal Program
TVTitle V
VAVeteran Affairs Plan
WCWorkers' Compensation Health Claim
ZZMutually Defined
Data Element Comment
This element should only be used if Insurance, Medicare, Medicaid, Workers Compensation, or Other Government are
selected in ePayment.01 - Primary Method of Payment.
Published: 04/03/2025www.NEMSIS.orgPage 188
NEMSIS Version 3.5.1.250403CP1

 
eScene
Published: 04/03/2025www.NEMSIS.orgPage 189

 
O
eScene.23 - Incident Census Tract
0 : 1
O
eScene.22 - Incident Country
0 : 1
N, LRSN
eScene.21 - Incident County
1 : 1
N, LES
eScene.20 - Scene Cross Street or Directions
0 : 1
N, LRSN
eScene.19 - Incident ZIP Code
1 : 1
N, LRSN
eScene.18 - Incident State
1 : 1
N, LES
eScene.17 - Incident City
0 : 1
N, LES
eScene.16 - Incident Apartment, Suite, or Room
0 : 1
N, LES
eScene.15 - Incident Street Address
0 : 1
N, LES
eScene.14 - Mile Post or Major Roadway
0 : 1
OS
eScene.13 - Incident Facility or Location Name
0 : 1
OS
eScene.12 - Scene US National Grid Coordinates
0 : 1
OS
eScene.11 - Scene GPS Location
0 : 1
N, LES
eScene.10 - Incident Facility Code
0 : 1
N, LRSN
eScene.09 - Incident Location Type
1 : 1
N, LRSN
eScene.08 - Triage Classification for MCI Patient
1 : 1
N, LRSN
eScene.07 - Mass Casualty Incident
1 : 1
N, LRSN
eScene.06 - Number of Patients at Scene
1 : 1
O
eScene.05 - Date/Time Initial Responder Arrived on Scene
0 : 1
N, LES
eScene.25 - Transferred Patient/Care To/From Agency
0 : 1
N, LO
eScene.24 - First Other EMS or Public Safety Agency at Scene to Provide Patient
Care
0 : 1
O
eScene.04 - Type of Other Service at Scene
0 : 1
O
eScene.03 - Other EMS or Public Safety Agency ID Number
0 : 1
O
eScene.02 - Other EMS or Public Safety Agencies at Scene
0 : 1
C
eScene.ResponderGroup
0 : M
N, LRSN
eScene.01 - First EMS Unit on Scene
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eScene
eScene
Published: 04/03/2025www.NEMSIS.orgPage 190

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.01
eScene.01 - First EMS Unit on Scene
Definition
Documentation that this EMS Unit was the first EMS Unit among all EMS Agencies on the Scene.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Added to improve the evaluation of Response Times when multiple EMS units are responding to the same scene.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen First EMS Unit on Scene is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen First EMS Unit on Scene has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 191
NEMSIS Version 3.5.1.250403CP1

 
eScene.02
eScene.02 - Other EMS or Public Safety Agencies at Scene
Definition
The name(s) of other EMS or public safety agencies at the scene.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE08_01
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced Survival (CARES), eScene.02 and
eScene.03 are used to populate CARES data element #16 Fire/First Responder as defined by CARES in the CARES Data
Dictionary: .https://vendors.mycares.net/
Published: 04/03/2025www.NEMSIS.orgPage 192
NEMSIS Version 3.5.1.250403CP1

 
eScene.03
eScene.03 - Other EMS or Public Safety Agency ID Number
Definition
The ID number for the EMS Agency or Other Public Safety listed in eScene.02.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
25
Data Element Comment
The ID should be the state ID (license number) for the EMS agency or ID number for the law enforcement. This may be an ID
assigned by the state or created by the EMS agency. 
For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced Survival (CARES), eScene.02 and
eScene.03 are used to populate CARES data element #16 Fire/First Responder as defined by CARES in the CARES Data
Dictionary: .https://vendors.mycares.net/
Published: 04/03/2025www.NEMSIS.orgPage 193
NEMSIS Version 3.5.1.250403CP1

 
eScene.04
eScene.04 - Type of Other Service at Scene
Definition
The type of public safety or EMS service associated with Other Agencies on Scene.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE08_02
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2704001EMS Mutual Aid
2704003Fire
2704005First Responder
2704007Hazmat
2704009Law Enforcement
2704011Other
2704013Other EMS Agency
2704015Other Health Care Provider
2704017Rescue
2704019Utilities
Data Element Comment
Associated with each Other Service in eScene.02
Published: 04/03/2025www.NEMSIS.orgPage 194
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
eScene.24
eScene.24 - First Other EMS or Public Safety Agency at Scene to Provide Patient Care
Definition
When there are multiple other EMS Agencies or Public Safety Agencies at the scene, this element
documents the other EMS or public safety agency that was first to provide care to the patient.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageOptional
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced Survival (CARES), eScene.24 is
used to populate CARES data element #16 Fire/First Responder as defined by CARES in the CARES Data Dictionary: 
.https://vendors.mycares.net/
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen First Other EMS or Public Safety Agency at Scene to Provide Patient Care is empty, it
should have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the
element) or a Pertinent Negative (if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_e002ErrorWhen First Other EMS or Public Safety Agency at Scene to Provide Patient Care has a Not
Value (Not Applicable, Not Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 195
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
State
eScene.25
eScene.25 - Transferred Patient/Care To/From Agency
Definition
Whether primary responsibility for the care of the patient was transferred in the field to or from the EMS
agency listed in eScene.02.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
2725001Transferred Patient to Agency
2725003Received Patient from Agency
2725005No Transfer of Patient/Care To/From Agency
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Transferred Patient/Care To/From Agency is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Transferred Patient/Care To/From Agency has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 196
NEMSIS Version 3.5.1.250403CP1

 
eScene.05
eScene.05 - Date/Time Initial Responder Arrived on Scene
Definition
The time that the initial responder arrived on the scene, if applicable.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE08_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestSTEMITrauma
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 197
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.06
eScene.06 - Number of Patients at Scene
Definition
Indicator of how many total patients were at the scene.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_05
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
2707001Multiple
2707003None
2707005Single
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Number of Patients at Scene is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Number of Patients at Scene has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e067WarningNumber of Patients at Scene should be "Multiple" or "Single" when Unit Disposition is "Patient
Contact Made".
nemSch_e068WarningNumber of Patients at Scene should be "Multiple" when Mass Casualty Incident is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 198
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.07
eScene.07 - Mass Casualty Incident
Definition
Indicator if this event would be considered a mass casualty incident (overwhelmed existing EMS resources).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_06
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Mass Casualty Incident is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Mass Casualty Incident has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e068WarningNumber of Patients at Scene should be "Multiple" when Mass Casualty Incident is "Yes".
nemSch_e069WarningTriage Classification for MCI Patient should be recorded when Mass Casualty Incident is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 199
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.08
eScene.08 - Triage Classification for MCI Patient
Definition
The color associated with the initial triage assessment/classification of the MCI patient.
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
2708001Red - Immediate
2708003Yellow - Delayed
2708005Green - Minimal (Minor)
2708007Gray - Expectant
2708009Black - Deceased
Data Element Comment
This element is documented when eScene.07 (Mass Casualty Incident) = Yes. 
Examples of triage systems include START and SALT. 
Adapted from: SALT mass casualty triage: concept endorsed by the American College of Emergency Physicians, American College of
Surgeons Committee on Trauma, American Trauma Society, National Association of EMS Physicians, National Disaster Life Support
Education Consortium, and State and Territorial Injury Prevention Directors Association. Disaster Med Public Health Prep. 2008
Dec;2(4):245-6.
START reference: Benson M, Koenig KL, Schultz CH. Disaster triage: START, then SAVE-a new method of dynamic triage for victims of
a catastrophic earthquake. Prehospital Disaster Med. 1996; Apr-Jun; 11(2): 117-24
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Triage Classification for MCI Patient is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Triage Classification for MCI Patient has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e069WarningTriage Classification for MCI Patient should be recorded when Mass Casualty Incident is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 200
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.09
eScene.09 - Incident Location Type
Definition
The kind of location where the incident happened.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_07
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
Y92\.[0-9]{1,3}
Data Element Comment
Code list is represented in ICD-10-CM. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
ICD-10-CM 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident Location Type is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident Location Type has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_e070WarningIncident Location Type should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".
Published: 04/03/2025www.NEMSIS.orgPage 201
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eScene.10
eScene.10 - Incident Facility Code
Definition
The state, regulatory, or other unique number (code) associated with the facility if the Incident is a
Healthcare Facility.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_08
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
This may be populated from a list created within dFacility.03 (Facility Location Code) or dFacility.05 (Facility National Provider
Identifier).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident Facility Code is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident Facility Code has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 202
NEMSIS Version 3.5.1.250403CP1

 
State
eScene.11
eScene.11 - Scene GPS Location
Definition
The GPS coordinates associated with the Scene.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE08_10
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Pattern
(\+|-)?(90(\.[0]{1,6})?|([1-8][0-9]|[0-9])(\.[0-9]{1,6})?),(\+|-)?(180(\.[0]{1,6})?|(1[0-7][0-9]|[1-9][0-9]|[0-9])(\.[0-9]{1,6})?)
Data Element Comment
The pattern for GPS location is in the format "," where: latitudelongitude
-  has a minimum of -90 and a maximum of 90 with up to 6 decimal places latitude
-  has a minimum of -180 and a maximum of 180 with up to 6 decimal placeslongitude
Published: 04/03/2025www.NEMSIS.orgPage 203
NEMSIS Version 3.5.1.250403CP1

 
State
eScene.12
eScene.12 - Scene US National Grid Coordinates
Definition
The US National Grid Coordinates for the Scene.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
([1-9]|[1-5][0-9]|60)[C-HJ-NP-X][A-HJ-NP-Z][A-HJ-NP-V]([0-9][0-9]){4,5}
Data Element Comment
Standard found at www.fgdc.gov/usng
Published: 04/03/2025www.NEMSIS.orgPage 204
NEMSIS Version 3.5.1.250403CP1

 
State
eScene.13
eScene.13 - Incident Facility or Location Name
Definition
The name of the facility, business, building, etc. associated with the scene of the EMS event.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
This element may be populated from a list created within dFacility.02 (Facility Name).
Published: 04/03/2025www.NEMSIS.orgPage 205
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eScene.14
eScene.14 - Mile Post or Major Roadway
Definition
The mile post or major roadway associated with the incident locations.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
maxLength
35
minLength
1
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Mile Post or Major Roadway is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Mile Post or Major Roadway has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 206
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eScene.15
eScene.15 - Incident Street Address
Definition
The street address where the patient was found, or, if no patient, the address to which the unit responded.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_11
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident Street Address is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident Street Address has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 207
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eScene.16
eScene.16 - Incident Apartment, Suite, or Room
Definition
The number of the specific apartment, suite, or room where the incident occurred.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
15
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident Apartment, Suite, or Room is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident Apartment, Suite, or Room has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 208
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eScene.17
eScene.17 - Incident City
Definition
The city or township (if applicable) where the patient was found or to which the unit responded (or best
approximation).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_12
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Data Element Comment
City codes are based on GNIS Feature Class. The primary Feature Class to use is "Civil" with "Populated Place" and "Military"
code as additional options. 
Definitions for each GNIS City Feature Class can be found on the GNIS Codes website. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident City is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident City has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
Published: 04/03/2025www.NEMSIS.orgPage 209
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.18
eScene.18 - Incident State
Definition
The state, territory, or province where the patient was found or to which the unit responded (or best
approximation).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_14
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{2}
Data Element Comment
Based on the ANSI State Code.
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident State is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident State has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_e071WarningIncident State should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at Scene".
nemSch_e074WarningIncident County should belong within the Incident State.
Published: 04/03/2025www.NEMSIS.orgPage 210
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.19
eScene.19 - Incident ZIP Code
Definition
The ZIP code of the incident location.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_15
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
ZIP Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident ZIP Code is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident ZIP Code has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e072WarningIncident ZIP Code should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".
Published: 04/03/2025www.NEMSIS.orgPage 211
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eScene.20
eScene.20 - Scene Cross Street or Directions
Definition
The nearest cross street to the incident address or directions from a recognized landmark or the second
street name of an intersection.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Version 3 Changes Implemented
Added to better locate/document the scene (incident) location.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Scene Cross Street or Directions is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Scene Cross Street or Directions has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 212
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eScene.21
eScene.21 - Incident County
Definition
The county or parish where the patient was found or to which the unit responded (or best approximation).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE08_13
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}
Data Element Comment
Based on the ANSI Code Single Choice based on the County Name but stored as the ANSI code (combined 5 digit State and
County codes) Should be required if there is a patient associated with the event. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Incident County is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Incident County has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e073WarningIncident County should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".
nemSch_e074WarningIncident County should belong within the Incident State.
Published: 04/03/2025www.NEMSIS.orgPage 213
NEMSIS Version 3.5.1.250403CP1

 
eScene.22
eScene.22 - Incident Country
Definition
The country of the incident location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
length
2
Data Element Comment
Based on the ISO Country Code.
ANSI Country Codes (ISO 3166) Website: https://www.iso.org/iso-3166-country-codes.html
Version 3 Changes Implemented
Added for international compatibility.
Published: 04/03/2025www.NEMSIS.orgPage 214
NEMSIS Version 3.5.1.250403CP1

 
eScene.23
eScene.23 - Incident Census Tract
Definition
The census tract in which the incident occurred.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Pattern
[0-9]{11}
Data Element Comment
This data element was added to better document the service area of the EMS Agency. Each state listed is associated with the
counties, census tracts, and ZIP codes within the EMS Agency Service Area for each state. 
The format of the census tract number must be an 11-digit number, based upon the 2010 census, using the pattern: 
2-digit State Code 3-digit County Code 6-digit Census Tract Number (no decimal) 
Example: NEMSIS TAC office (UT, Salt Lake County, Census Tract - located at 295 Chipeta Way, Salt Lake City, UT)
49035101400 
Census Tract Data Website (files and descriptions): 
https://www.census.gov/geographies/reference-files/2010/geo/relationship-files.html
Version 3 Changes Implemented
Added to improve the ability to use census and other demographic information within EMS research.
Published: 04/03/2025www.NEMSIS.orgPage 215
NEMSIS Version 3.5.1.250403CP1

 
eSituation
Published: 04/03/2025www.NEMSIS.orgPage 216

 
N, LRSN
eSituation.20 - Reason for Interfacility Transfer/Medical Transport
1 : 1
N, LES
eSituation.19 - Justification for Transfer or Encounter
0 : 1
N, L, PRSN
eSituation.18 - Date/Time Last Known Well
1 : 1
CN, LES
eSituation.17 - Patient Activity
0 : M
O
eSituation.16 - Patient's Occupation
0 : 1
O
eSituation.15 - Patient's Occupational Industry
0 : 1
N, LES
eSituation.14 - Work-Related Illness/Injury
0 : 1
eSituation.WorkRelatedGroup
0 : 1
N, LRSN
eSituation.13 - Initial Patient Acuity
1 : 1
CN, LRSN
eSituation.12 - Provider's Secondary Impressions
1 : M
N, LRSN
eSituation.11 - Provider's Primary Impression
1 : 1
CN, L, PRSN
eSituation.10 - Other Associated Symptoms
1 : M
N, LRSN
eSituation.09 - Primary Symptom
1 : 1
N, LRSN
eSituation.08 - Chief Complaint Organ System
1 : 1
N, LRSN
eSituation.07 - Chief Complaint Anatomic Location
1 : 1
N, LES
eSituation.06 - Time Units of Duration of Complaint
0 : 1
N, LES
eSituation.05 - Duration of Complaint
0 : 1
N, LES
eSituation.04 - Complaint
0 : 1
N, LES
eSituation.03 - Complaint Type
0 : 1
C
eSituation.PatientComplaintGroup
0 : M
N, LRSN
eSituation.02 - Possible Injury
1 : 1
N, L, PRSN
eSituation.01 - Date/Time of Symptom Onset
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eSituation
eSituation
Published: 04/03/2025www.NEMSIS.orgPage 217

 
8801029 - Approximate8801023 - Unable to Complete
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.01
eSituation.01 - Date/Time of Symptom Onset
Definition
The date and time the symptom began (or was discovered) as it relates to this EMS event. This is described
or estimated by the patient, family, and/or healthcare professionals.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE05_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better define the EMS patient event.
Associated Validation Rules
Published: 04/03/2025www.NEMSIS.orgPage 218
NEMSIS Version 3.5.1.250403CP1

 
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time of Symptom Onset is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Date/Time of Symptom Onset has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e003ErrorWhen Date/Time of Symptom Onset has a Pertinent Negative of "Unable to Complete", it should
be empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e004ErrorWhen Date/Time of Symptom Onset has a Pertinent Negative of "Approximate", it should have a
value and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e043WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time of Symptom
Onset.
nemSch_e053WarningUnit Back in Service Date/Time should not be earlier than Date/Time of Symptom Onset.
nemSch_e075WarningDate/Time of Symptom Onset should be recorded when Type of Service Requested is
"Emergency Response (Primary Response Area)" and Patient Evaluation/Care is "Patient
Evaluated and Care Provided".
Published: 04/03/2025www.NEMSIS.orgPage 219

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.02
eSituation.02 - Possible Injury
Definition
Indication whether or not there was an injury.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_04
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9922001No
9922003Unknown
9922005Yes
Data Element Comment
This data element provides documentation to classify the EMS Reason for Encounter as either injury or non-injury related
based on mechanism and not on actual injury. eSituation.02 (Possible Injury), eSituation.09 (Primary Symptom), eSituation.07
(Chief Complaint Anatomic Location), and eSituation.08 (Chief Complaint Organ System) are grouped together to form the
EMS Reason for Encounter.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Possible Injury is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Possible Injury has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e076WarningPossible Injury should be recorded when Type of Service Requested is "Emergency Response
(Primary Response Area)" and Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e077WarningPossible Injury should be "Yes" when a symptom or impression is injury-related.
nemSch_e089WarningCause of Injury should be recorded when Patient Evaluation/Care is "Patient Evaluated and
Care Provided" and Possible Injury is "Yes".
nemSch_e090WarningCause of Injury should only be recorded when Possible Injury is "Yes".
nemSch_e091WarningTrauma Triage Criteria (High Risk for Serious Injury) should only be recorded when Possible
Injury is "Yes".
nemSch_e092WarningTrauma Triage Criteria (Moderate Risk for Serious Injury) should only be recorded when
Possible Injury is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 220
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.03
eSituation.03 - Complaint Type
Definition
The type of patient healthcare complaint being documented.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2803001Chief (Primary)
2803003Other
2803005Secondary
Data Element Comment
This was added to group complaints in a more efficient manner
Version 3 Changes Implemented
Added to improve data integrity.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Complaint Type is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Complaint Type has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 221
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.04
eSituation.04 - Complaint
Definition
The statement of the problem by the patient or the history provider.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_05
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Complaint is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Complaint has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
Published: 04/03/2025www.NEMSIS.orgPage 222
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.05
eSituation.05 - Duration of Complaint
Definition
The duration of the complaint.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_06
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
integer
minInclusive
1
maxInclusive
365
Data Element Comment
Associated with eSituation.06 (Time Units of Duration of the Complaint).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Duration of Complaint is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Duration of Complaint has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 223
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.06
eSituation.06 - Time Units of Duration of Complaint
Definition
The time units of the duration of the patient's complaint.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_07
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2806001Seconds
2806003Minutes
2806005Hours
2806007Days
2806009Weeks
2806011Months
2806013Years
Data Element Comment
Associated with eSituation.05 (Duration of the Complaint).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Time Units of Duration of Complaint is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Time Units of Duration of Complaint has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 224
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.07
eSituation.07 - Chief Complaint Anatomic Location
Definition
The primary anatomic location of the chief complaint as identified by EMS personnel.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_11
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2807001Abdomen
2807003Back
2807005Chest
2807007Extremity-Lower
2807009Extremity-Upper
2807011General/Global
2807013Genitalia
2807015Head
2807017Neck
Data Element Comment
eSituation.02 (Possible Injury), eSituation.09 (Primary Symptom), eSituation.07 (Chief Complaint Anatomic Location), and
eSituation.08 (Chief Complaint Organ System) are grouped together to form the EMS Reason for Encounter.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Chief Complaint Anatomic Location is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Chief Complaint Anatomic Location has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 225
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.08
eSituation.08 - Chief Complaint Organ System
Definition
The primary organ system of the patient injured or medically affected.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_12
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
2808001Behavioral/Psychiatric
2808003Cardiovascular
2808005CNS/Neuro
2808007Endocrine/Metabolic
2808009GI
2808011Global/General
2808013Lymphatic/Immune
2808015Musculoskeletal/Skin
2808017Reproductive
2808019Pulmonary
2808021Renal
Data Element Comment
Altered to follow the anatomical organ systems as defined by general anatomy. Added Lymphatic/Immune; Merged Skin with
Muscular-Skeletal. Changed OB/Gyn to Reproductive.
Retained non-organ system designations for Global/General and Behavioral/Psychiatric.
eSituation.02 (Possible Injury), eSituation.09 (Primary Symptom), eSituation.07 (Chief Complaint Anatomic Location), and
eSituation.08 (Chief Complaint Organ System) are grouped together to form the EMS Reason for Encounter.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Chief Complaint Organ System is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Chief Complaint Organ System has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 226
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.09
eSituation.09 - Primary Symptom
Definition
The primary sign and symptom present in the patient or observed by EMS personnel.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_13
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
(R[0-6][0-9](\.[0-9]{1,4})?|(R73\.9)|(R99))|([A-QSTUZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,4})?)
Data Element Comment
eSituation.02 (Possible Injury), eSituation.09 (Primary Symptom), eSituation.07 (Chief Complaint Anatomic Location), and
eSituation.08 (Chief Complaint Organ System) are grouped together to form the EMS Reason for Encounter. 
Code list is represented in ICD-10-CM Diagnosis Codes. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
ICD-10-CM 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Primary Symptom is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Primary Symptom has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e077WarningPossible Injury should be "Yes" when a symptom or impression is injury-related.
nemSch_e080WarningPrimary Symptom should be recorded when Type of Service Requested is "Emergency
Response (Primary Response Area)" and Patient Evaluation/Care is "Patient Evaluated and Care
Provided".
nemSch_e081WarningOther Associated Symptoms should only be recorded when Primary Symptom is recorded.
Published: 04/03/2025www.NEMSIS.orgPage 227
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801031 - Symptom Not Present
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.10
eSituation.10 - Other Associated Symptoms
Definition
Other symptoms identified by the patient or observed by EMS personnel.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE09_14
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Constraints
Pattern
(R[0-6][0-9](\.[0-9]{1,4})?|(R73\.9)|(R99))|([A-QSTUZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,4})?)
Data Element Comment
Code list is represented in ICD-10-CM. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
ICD-10-CM 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Other Associated Symptoms is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Other Associated Symptoms has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e005ErrorWhen Other Associated Symptoms has a Pertinent Negative, it should have a value and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Other Associated Symptoms has a Not Value, no other value should be recorded.
nemSch_e077WarningPossible Injury should be "Yes" when a symptom or impression is injury-related.
nemSch_e081WarningOther Associated Symptoms should only be recorded when Primary Symptom is recorded.
Published: 04/03/2025www.NEMSIS.orgPage 228
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.11
eSituation.11 - Provider's Primary Impression
Definition
The EMS personnel's impression of the patient's primary problem or most significant condition which led to
the management given to the patient (treatments, medications, or procedures).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_15
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
(R[0-6][0-9](\.[0-9]{1,4})?|(R73\.9)|(R99))|([A-QSTUZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,4})?)
Data Element Comment
Code list is represented in ICD-10-CM. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
ICD-10-CM 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Provider's Primary Impression is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Provider's Primary Impression has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e077WarningPossible Injury should be "Yes" when a symptom or impression is injury-related.
nemSch_e082WarningProvider's Primary Impression should be recorded when Type of Service Requested is
"Emergency Response (Primary Response Area)" and Patient Evaluation/Care is "Patient
Evaluated and Care Provided".
nemSch_e083WarningProvider's Secondary Impressions should only be recorded when Provider's Primary Impression
is recorded.
Published: 04/03/2025www.NEMSIS.orgPage 229
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.12
eSituation.12 - Provider's Secondary Impressions
Definition
The EMS personnel's impression of the patient's secondary problem or most significant condition which led
to the management given to the patient (treatments, medications, or procedures).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE09_16
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
(R[0-6][0-9](\.[0-9]{1,4})?|(R73\.9)|(R99))|([A-QSTUZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,4})?)
Data Element Comment
Code list is represented in ICD-10-CM. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
ICD-10-CM 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Provider's Secondary Impressions is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Provider's Secondary Impressions has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Provider's Secondary Impressions has a Not Value, no other value should be recorded.
nemSch_e077WarningPossible Injury should be "Yes" when a symptom or impression is injury-related.
nemSch_e083WarningProvider's Secondary Impressions should only be recorded when Provider's Primary Impression
is recorded.
Published: 04/03/2025www.NEMSIS.orgPage 230
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 231
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.14
eSituation.14 - Work-Related Illness/Injury
Definition
Indication of whether or not the illness or injury is work related.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE07_15
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9922001No
9922003Unknown
9922005Yes
Data Element Comment
Moved from Version 2.2.1 E07_15 to allow more complete documentation of work related illness and injury.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Work-Related Illness/Injury is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Work-Related Illness/Injury has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 232
NEMSIS Version 3.5.1.250403CP1

 
eSituation.15
eSituation.15 - Patient's Occupational Industry
Definition
The occupational industry of the patient's work.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_16
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2815001Accommodation and Food Services
2815003Administrative and Support and Waste Management and Remediation Services
2815005Agriculture, Forestry, Fishing and Hunting
2815007Arts, Entertainment, and Recreation
2815009Construction
2815011Educational Services
2815013Finance and Insurance
2815015Health Care and Social Assistance
2815017Information
2815019Management of Companies and Enterprises
2815021Manufacturing
2815023Mining, Quarrying, and Oil and Gas Extraction
2815025Other Services (except Public Administration)
2815027Professional, Scientific, and Technical Services
2815029Public Administration
2815031Real Estate and Rental and Leasing
2815033Retail Trade
2815035Transportation and Warehousing
2815037Utilities
2815039Wholesale Trade
Data Element Comment
From the North American Industry Classification System (NAICS) from US Bureau of Labor Statistics 
(https://www.census.gov/naics/?58967?yearbck=2022).
Published: 04/03/2025www.NEMSIS.orgPage 233
NEMSIS Version 3.5.1.250403CP1

 
eSituation.16
eSituation.16 - Patient's Occupation
Definition
The occupation of the patient.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE07_17
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2816001Architecture and Engineering Occupations
2816003Arts, Design, Entertainment, Sports, and Media Occupations
2816005Building and Grounds Cleaning and Maintenance Occupations
2816007Business and Financial Operations Occupations
2816009Community and Social Services Occupations
2816011Computer and Mathematical Occupations
2816013Construction and Extraction Occupations
2816015Educational Instruction and Library Occupations
2816017Farming, Fishing and Forestry Occupations
2816019Food Preparation and Serving Related Occupations
2816021Healthcare Practitioners and Technical Occupations
2816023Healthcare Support Occupations
2816025Installation, Maintenance, and Repair Occupations
2816027Legal Occupations
2816029Life, Physical, and Social Science Occupations
2816031Management Occupations
2816033Military Specific Occupations
2816035Office and Administrative Support Occupations
2816037Personal Care and Service Occupations
2816039Production Occupations
2816041Protective Service Occupations
2816043Sales and Related Occupations
2816045Transportation and Material Moving Occupations
Data Element Comment
Based on the Standard Occupational Classification of the US Bureau of Labor Statistics 
(https://www.bls.gov/soc/2018/soc_structure_2018.pdf)
Version 3 Changes Implemented
Added to better describe work related injury.
Published: 04/03/2025www.NEMSIS.orgPage 234
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.17
eSituation.17 - Patient Activity
Definition
The activity the patient was involved in at the time the patient experienced the onset of symptoms or
experienced an injury.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
Y93\.[A-Za-z0-9]{1,4}
Data Element Comment
Code list is represented in ICD-10-CM. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
Code list is represented in ICD-10 Codes. 
Website - http://uts.nlm.nih.gov 
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient Activity is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Patient Activity has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_e009WarningWhen Patient Activity has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 235
NEMSIS Version 3.5.1.250403CP1

 
8801029 - Approximate8801023 - Unable to Complete
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.18
eSituation.18 - Date/Time Last Known Well
Definition
The estimated date and time the patient was last known to be well or in their usual state of health. This is
described or estimated by the patient, family, and/or bystanders.
National ElementYesPertinent Negatives (PN)Yes
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
Pertinent Negatives (PN)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
For stroke related events, this is the date and time the patient was last seen normal. For cardiac or respiratory arrest related
events, this is the date and time the patient was last known to have a pulse or when interaction was had with the patient. For
drowning related events, this is the date and time the patient was last seen. For injury or trauma related events, this is the date
and time the patient was injured.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time Last Known Well is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Date/Time Last Known Well has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e044WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time Last Known
Well.
nemSch_e054WarningUnit Back in Service Date/Time should not be earlier than Date/Time Last Known Well.
nemSch_e085WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e086WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Stroke Scale Result is "Positive".
nemSch_e087WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".
nemSch_e188ErrorWhen Date/Time Last Known Well has a Pertinent Negative of "Unable to Complete", it should be
empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e191ErrorWhen Date/Time Last Known Well has a Pertinent Negative of "Approximate", it should have a
Published: 04/03/2025www.NEMSIS.orgPage 236
NEMSIS Version 3.5.1.250403CP1

 
value and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 237

 
7701003 - Not Recorded7701001 - Not Applicable
State
eSituation.19
eSituation.19 - Justification for Transfer or Encounter
Definition
The ordering physician or medical provider diagnosis or stated reason for a hospital-to-hospital transfer,
other medical transport, or Mobile Integrated Healthcare encounter.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
This is the diagnosis or reason for transfer, or medical transport or Integrated Healthcare Encounter provided by the ordering
physician or medical provider. Hospital-to-hospital transfers and medical transports are based on the ordering medical
provider, and not the EMS provider's impression. The text of the reason or diagnosis would be entered here rather than using
the patient complaint field (as the patient may still have complaints to document), eSituation.11 Provider's Primary Impression
or eSituation.12 Provider's Secondary Impressions.
This element should only be documented when eResponse.05 Type of Service Requested is a transfer, Other Routine
Medical Transport, or Mobile Integrated Health Care Encounter.
Version 3 Changes Implemented
This element is being added with the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Justification for Transfer or Encounter is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Justification for Transfer or Encounter has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 238
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.20
eSituation.20 - Reason for Interfacility Transfer/Medical Transport
Definition
The general categories of the reason for an interfacility transfer/medical transport.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
2820001Cardiac Specialty
2820003Convenience Transfer (Patient Request)
2820005Diagnostic Testing
2820007Dialysis
2820009Drug and/or Alcohol Rehabilitation Care
2820011Extended Care
2820013Maternal/Neonatal
2820015Medical Specialty Care (Other, Not Listed)
2820017Neurological Specialty Care
2820019Palliative/Hospice Care (Home or Facility)
2820021Pediatric Specialty Care
2820023Psychiatric/Behavioral Care
2820025Physical Rehabilitation Care
2820027Return to Home/Residence
2820029Surgical Specialty Care (Other, Not Listed)
2820031Trauma/Orthopedic Specialty Care
Data Element Comment
This supports and works in combination with eSituation.19 Justification for Transfer or Encounter to provide defined
categories for an interfacility transfer or other medical transport. This documentation provides support for reimbursement and
a means for regions and states to evaluate transfer patterns and types.
Version 3 Changes Implemented
Element added with the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Reason for Interfacility Transfer/Medical Transport is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Reason for Interfacility Transfer/Medical Transport has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e088WarningReason for Interfacility Transfer/Medical Transport should only be recorded when Type of
Service Requested is "... Transfer" or "Other Routine Medical Transport".
Published: 04/03/2025www.NEMSIS.orgPage 239
NEMSIS Version 3.5.1.250403CP1

 
eInjury
Published: 04/03/2025www.NEMSIS.orgPage 240

 
O
eInjury.29 - ACN Incident Airbag Deployed
0 : 1
O
eInjury.28 - ACN Incident Seatbelt Use
0 : 1
O
eInjury.27 - Seat Occupied
0 : 1
O
eInjury.26 - ACN Vehicle Seat Location
0 : 1
C
eInjury.SeatGroup
0 : M
O
eInjury.25 - ACN Incident Rollover
0 : 1
O
eInjury.24 - ACN Incident PDOF
0 : 1
O
eInjury.23 - ACN High Probability of Injury
0 : 1
CO
eInjury.22 - ACN Incident Delta Velocity
0 : M
O
eInjury.21 - ACN Incident Multiple Impacts
0 : 1
O
eInjury.20 - ACN Incident Vehicle Model Year
0 : 1
O
eInjury.19 - ACN Incident Vehicle Model
0 : 1
O
eInjury.18 - ACN Incident Vehicle Make
0 : 1
O
eInjury.17 - ACN Incident Vehicle Manufacturer
0 : 1
O
eInjury.16 - ACN Incident Vehicle Body Type
0 : 1
O
eInjury.15 - ACN Incident Location
0 : 1
O
eInjury.14 - Date/Time of ACN Incident
0 : 1
CO
eInjury.13 - ACN Call Back Phone Number
0 : M
O
eInjury.12 - ACN Incident ID
0 : 1
O
eInjury.11 - ACN System/Company Providing ACN Data
0 : 1
eInjury.CollisionGroup
0 : 1
CO
eInjury.10 - OSHA Personal Protective Equipment Used
0 : M
OS
eInjury.09 - Height of Fall (feet)
0 : 1
COS
eInjury.08 - Airbag Deployment
0 : M
CN, LES
eInjury.07 - Use of Occupant Safety Equipment
0 : M
OS
eInjury.06 - Location of Patient in Vehicle
0 : 1
OS
eInjury.05 - Main Area of the Vehicle Impacted by the Collision
0 : 1
CN, L, PRSN
eInjury.04 - Trauma Triage Criteria (Moderate Risk for Serious Injury)
1 : M
CN, L, PRSN
eInjury.03 - Trauma Triage Criteria (High Risk for Serious Injury)
1 : M
CN, LES
eInjury.02 - Mechanism of Injury
0 : M
CN, LRSN
eInjury.01 - Cause of Injury
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eInjury
Published: 04/03/2025www.NEMSIS.orgPage 241

 
eInjury
Published: 04/03/2025www.NEMSIS.orgPage 242

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eInjury.01
eInjury.01 - Cause of Injury
Definition
The category of the reported/suspected external cause of the injury.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE10_01
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
([TV-Y][0-9]{2})((\.[0-9A-Z]{1,4})?)
Data Element Comment
Suggested code list is represented in ICD-10-CM. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
Code list is represented in ICD-10 Codes. 
Website - http://uts.nlm.nih.gov 
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Cause of Injury is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Cause of Injury has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Cause of Injury has a Not Value, no other value should be recorded.
nemSch_e089WarningCause of Injury should be recorded when Patient Evaluation/Care is "Patient Evaluated and Care
Provided" and Possible Injury is "Yes".
nemSch_e090WarningCause of Injury should only be recorded when Possible Injury is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 243
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eInjury.02
eInjury.02 - Mechanism of Injury
Definition
The mechanism of the event which caused the injury.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE10_03
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2902001Blunt
2902003Burn
2902005Other
2902007Penetrating
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Mechanism of Injury is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Mechanism of Injury has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Mechanism of Injury has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 244
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801015 - None Reported
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eInjury.03
eInjury.03 - Trauma Triage Criteria (High Risk for Serious Injury)
Definition
Trauma triage criteria for the red boxes (Injury Patterns and Mental Status and Vital Signs) in the 2021 ACS
National Guideline for the Field Triage of Injured Patients.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
2903001Amputation proximal to wrist or ankle
2903003Crushed, degloved, mangled, or pulseless extremity
2903005Chest wall instability, deformity, or suspected flail chest
2903007Glasgow Coma Score <= 13 (DEPRECATED)
2903009Skull deformity, suspected skull fracture
2903011Paralysis (DEPRECATED)
2903013Suspected pelvic fracture
2903015Penetrating injuries to head, neck, torso, and proximal extremities
2903017Respiratory Rate <10 or >29 breaths per minute (<20 in infants aged <1 year) or need for ventilatory support 
(DEPRECATED)
2903019Systolic Blood Pressure <90 mmHg (DEPRECATED)
2903021Suspected fracture of two or more proximal long bones
2903023Active bleeding requiring a tourniquet or wound packing with continuous pressure
2903025Age >= 10 years: HR > SBP
2903027Age >= 65 years: SBP < 110 mmHg
2903029Age 0-9 years: SBP < 70mm Hg + (2 x age in years)
2903031Age 10-64 years: SBP < 90 mmHg
2903033Respiratory distress or need for respiratory support
2903035Room-air pulse oximetry < 90%
2903037RR < 10 or > 29 breaths/min
2903039Suspected spinal injury with new motor or sensory loss
2903041Unable to follow commands (motor GCS < 6)
Data Element Comment
2021 National Guidelines for the Field Triage of Injured Patients - Red Criteria (i.e., Injury Patterns, Mental Status & Vital
Signs)
Version 3 Changes Implemented
Revised to represent the 2021 National Guidelines for the Field Triage of Injured Patients - Red Criteria. Website: 
https://www.facs.org/quality-programs/trauma/systems/field-triage-guidelines/
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Trauma Triage Criteria (High Risk for Serious Injury) is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Published: 04/03/2025www.NEMSIS.orgPage 245
NEMSIS Version 3.5.1.250403CP1

 
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Trauma Triage Criteria (High Risk for Serious Injury) has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e008ErrorWhen Trauma Triage Criteria (High Risk for Serious Injury) has a Pertinent Negative, it should
be empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Trauma Triage Criteria (High Risk for Serious Injury) has a Not Value, no other value
should be recorded.
nemSch_e010WarningWhen Trauma Triage Criteria (High Risk for Serious Injury) has a Pertinent Negative, no other
value should be recorded.
nemSch_e091WarningTrauma Triage Criteria (High Risk for Serious Injury) should only be recorded when Possible
Injury is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 246

 
stringData Type: 2minLength: 255maxLength: 
8801015 - None Reported
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eInjury.04
eInjury.04 - Trauma Triage Criteria (Moderate Risk for Serious Injury)
Definition
Trauma triage criteria for the yellow boxes (Mechanism of Injury and EMS Judgment) in the 2021 ACS
National Guideline for the Field Triage of Injured Patients.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE10_04
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
2904001Pedestrian/bicycle rider thrown, run over, or with significant impact
2904003Fall Adults: > 20 ft. (one story is equal to 10 ft.) (DEPRECATED)
2904005Fall Children: > 10 ft. or 2-3 times the height of the child (DEPRECATED)
2904007Auto Crash: Death in passenger compartment
2904009Auto Crash: Partial or complete ejection
2904011Auto Crash: Significant intrusion (including roof): >12 inches occupant site; >18 inches any site; need for
extrication
2904013Auto Crash: Vehicle telemetry data consistent with severe injury
2904015Motorcycle Crash > 20 MPH (DEPRECATED)
2904017SBP < 110 for age > 65 (DEPRECATED)
2904019Anticoagulant use
2904021Pregnancy > 20 weeks
2904023Other EMS judgment
2904025Burn, without other trauma (DEPRECATED)
2904027Burns in conjunction with trauma
2904029Auto Crash: Child (age 0-9 years) unrestrained or in unsecured child safety seat
2904031Fall from height > 10 feet (all ages)
2904033Low-level falls in young children (age <= 5 years) or older adults (age >= 65 years) with significant head impact
2904035Rider separated from transport vehicle with significant impact (eg, motorcycle, ATV, horse, etc.)
2904037Special, high-resource healthcare needs
2904039Suspicion of child abuse
Data Element Comment
2021 National Guidelines for the Field Triage of Injured Patients - Yellow Criteria (i.e., Mechanism of Injury and EMS
Judgment)
Version 3 Changes Implemented
Revised to represent the 2021 National Guidelines for the Field Triage of Injured Patients - Yellow Criteria. Website: 
https://www.facs.org/quality-programs/trauma/systems/field-triage-guidelines
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) is empty, it should have a Not
Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 247
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) has a Not Value (Not
Applicable, Not Recorded, or Not Reporting), it should be empty.
nemSch_e008ErrorWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) has a Pertinent Negative, it
should be empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not
Reporting).
nemSch_e009WarningWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) has a Not Value, no other value
should be recorded.
nemSch_e010WarningWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) has a Pertinent Negative, no
other value should be recorded.
nemSch_e092WarningTrauma Triage Criteria (Moderate Risk for Serious Injury) should only be recorded when
Possible Injury is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 248

 
State
eInjury.05
eInjury.05 - Main Area of the Vehicle Impacted by the Collision
Definition
The area or location of initial impact on the vehicle based on 12-point clock diagram.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE10_05
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
1
maxInclusive
12
Data Element Comment
The front of the vehicle is 12, passenger (right) side is 3, rear is 6, etc.
Based on MMUCC via areas(s) of impact & FARS coding manual clock diagram.
Published: 04/03/2025www.NEMSIS.orgPage 249
NEMSIS Version 3.5.1.250403CP1

 
State
eInjury.06
eInjury.06 - Location of Patient in Vehicle
Definition
The seat row location of the vehicle at the time of the crash with the front seat numbered as 1.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE10_06
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2906001Front Seat-Left Side (or motorcycle driver)
2906003Front Seat-Middle
2906005Front Seat-Right Side
2906007Passenger in other enclosed passenger or cargo area (non-trailing unit such as a bus, etc.)
2906009Passenger in unenclosed passenger or cargo area (non-trailing unit such as a pickup, etc.)
2906011Riding on Vehicle Exterior (non-trailing unit)
2906013Second Seat-Left Side (or motorcycle passenger)
2906015Second Seat-Middle
2906017Second Seat-Right Side
2906019Sleeper Section of Cab (truck)
2906021Third Row-Left Side (or motorcycle passenger)
2906023Third Row-Middle
2906025Third Row-Right Side
2906027Trailing Unit
2906029Unknown
Data Element Comment
MMUCC P6 data element
Published: 04/03/2025www.NEMSIS.orgPage 250
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eInjury.07
eInjury.07 - Use of Occupant Safety Equipment
Definition
Safety equipment in use by the patient at the time of the injury.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE10_08
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
2907001Child Booster Seat
2907003Eye Protection
2907005Helmet Worn
2907007Infant Car Seat Forward Facing
2907009Infant Car Seat Rear Facing
2907015None
2907017Other
2907019Personal Floatation Device
2907021Protective Clothing
2907023Protective Non-Clothing Gear
2907027Shoulder and Lap Belt Used
2907029Lap Belt Only Used
2907031Shoulder Belt Only Used
2907033Unable to Determine
Data Element Comment
MMUCC P7 data element used as baseline information. Data element expanded for added definition in non-vehicular settings.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Use of Occupant Safety Equipment is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Use of Occupant Safety Equipment has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e009WarningWhen Use of Occupant Safety Equipment has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 251
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
State
eInjury.08
eInjury.08 - Airbag Deployment
Definition
Indication of Airbag Deployment.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE10_09
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
2908001Airbag Deployed Front
2908003Airbag Deployed Side
2908005Airbag Deployed Other (knee, air belt, etc.)
2908007No Airbag Deployed
2908009No Airbag Present
Data Element Comment
MMUCC P8 data element baseline was used for this element.
Published: 04/03/2025www.NEMSIS.orgPage 252
NEMSIS Version 3.5.1.250403CP1

 
State
eInjury.09
eInjury.09 - Height of Fall (feet)
Definition
The distance in feet the patient fell, measured from the lowest point of the patient to the ground.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE10_10
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
0
maxInclusive
10000
Data Element Comment
Classify same level falls as 0 feet
Published: 04/03/2025www.NEMSIS.orgPage 253
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eInjury.10
eInjury.10 - OSHA Personal Protective Equipment Used
Definition
Documentation of the use of OSHA required protective equipment used by the patient at the time of injury.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
2910001Eye and Face Protection
2910003Foot Protection
2910005Head Protection
2910007Hearing Protection
2910009Respiratory Protection
2910011Safety Belts, lifelines, and lanyards
2910013Safety Nets
Data Element Comment
Version 3 Changes Implemented
Added to better document personal protection equipment used by the patient associated with an injury.
Published: 04/03/2025www.NEMSIS.orgPage 254
NEMSIS Version 3.5.1.250403CP1

 
eInjury.11
eInjury.11 - ACN System/Company Providing ACN Data
Definition
The agency providing the Automated Collision Notification (ACN) Data.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
30
Data Element Comment
Based on Vehicular Emergency Data Set: Provider Name. Vehicular Emergency Data Set (VEDS) Recommendations.
Version 3.0 Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN) Joint APCO/NENA Data
Standardization Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 255
NEMSIS Version 3.5.1.250403CP1

 
eInjury.12
eInjury.12 - ACN Incident ID
Definition
The Automated Collision Notification Incident ID.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Based on Vehicular Emergency Data Set: Incident ID. Vehicular Emergency Data Set (VEDS) Recommendations. Version 3.0
Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint APCO/NENA Data Standardization
Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 256
NEMSIS Version 3.5.1.250403CP1

 
9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
stringData Type: 2minLength: 255maxLength: 
eInjury.13
eInjury.13 - ACN Call Back Phone Number
Definition
The Automated Collision Notification Call Back Phone Number (US Only).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
Based on Vehicular Emergency Data Set: Call Back Number. Vehicular Emergency Data Set (VEDS) Recommendations.
Version 3.0 Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint APCO/NENA Data
Standardization Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 257
NEMSIS Version 3.5.1.250403CP1

 
eInjury.14
eInjury.14 - Date/Time of ACN Incident
Definition
The Automated Collision Notification Incident Date and Time.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
Based on Vehicular Emergency Data Set: Incident Date and Time. Vehicular Emergency Data Set (VEDS) Recommendations.
Version 3.0 Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint APCO/NENA Data
Standardization Working Group. 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 258
NEMSIS Version 3.5.1.250403CP1

 
eInjury.15
eInjury.15 - ACN Incident Location
Definition
The Automated Collision Notification GPS Location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
(\+|-)?(90(\.[0]{1,6})?|([1-8][0-9]|[0-9])(\.[0-9]{1,6})?),(\+|-)?(180(\.[0]{1,6})?|(1[0-7][0-9]|[1-9][0-9]|[0-9])(\.[0-9]{1,6})?)
Data Element Comment
Based on Vehicular Emergency Data Set: Location (combining Latitude and Longitude). Vehicular Emergency Data Set
(VEDS) Recommendations. Version 3.0 Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint
APCO/NENA Data Standardization Working Group. The pattern for GPS location is in the format "," where: latitudelongitude
-  has a minimum of -90 and a maximum of 90 with up to 6 decimal places latitude
-  has a minimum of -180 and a maximum of 180 with up to 6 decimal placeslongitude
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 259
NEMSIS Version 3.5.1.250403CP1

 
eInjury.16
eInjury.16 - ACN Incident Vehicle Body Type
Definition
The Automated Collision Notification Vehicle Body Type.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Based on Vehicular Emergency Data Set: Body Type. Vehicular Emergency Data Set (VEDS) Recommendations. Version 3.0
Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint APCO/NENA Data Standardization
Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 260
NEMSIS Version 3.5.1.250403CP1

 
eInjury.17
eInjury.17 - ACN Incident Vehicle Manufacturer
Definition
The Automated Collision Notification Vehicle Manufacturer (e.g., General Motors, Ford, BMW, etc.).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Based on Vehicular Emergency Data Set: Manufacturer. Vehicular Emergency Data Set (VEDS) Recommendations. Version
3.0 Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint APCO/NENA Data Standardization
Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 261
NEMSIS Version 3.5.1.250403CP1

 
eInjury.18
eInjury.18 - ACN Incident Vehicle Make
Definition
The Automated Collision Notification Vehicle Make (e.g., Cadillac, Ford, BMW, etc.).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Based on Vehicular Emergency Data Set: Make. Vehicular Emergency Data Set (VEDS) Recommendations. Version 3.0
Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint APCO/NENA Data Standardization
Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 262
NEMSIS Version 3.5.1.250403CP1

 
eInjury.19
eInjury.19 - ACN Incident Vehicle Model
Definition
The Automated Collision Notification Vehicle Model (e.g., Escalade, Taurus, X6M, etc.).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
100
Data Element Comment
Based on Vehicular Emergency Data Set: Model. Vehicular Emergency Data Set (VEDS) Recommendations. Version 3.0
Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint APCO/NENA Data Standardization
Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 263
NEMSIS Version 3.5.1.250403CP1

 
eInjury.20
eInjury.20 - ACN Incident Vehicle Model Year
Definition
The Automated Collision Notification Vehicle Model Year (e.g., 2010).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
1900
maxInclusive
2050
Data Element Comment
Based on Vehicular Emergency Data Set: Year. Vehicular Emergency Data Set (VEDS) Recommendations. Version 3.0
Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint APCO/NENA Data Standardization
Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 264
NEMSIS Version 3.5.1.250403CP1

 
eInjury.21
eInjury.21 - ACN Incident Multiple Impacts
Definition
The Automated Collision Notification Indication of Multiple Impacts associated with the collision.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Based on Vehicular Emergency Data Set: Multiple Impacts. Vehicular Emergency Data Set (VEDS) Recommendations.
Version 3.0 Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint APCO/NENA Data
Standardization Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 265
NEMSIS Version 3.5.1.250403CP1

 
9921003 - Miles per Hour9921001 - Kilometers per Hour
stringData Type: 2minLength: 255maxLength: 
integerData Type: 1minInclusive: 
eInjury.22
eInjury.22 - ACN Incident Delta Velocity
Definition
The Automated Collision Notification Delta Velocity (Delta V) force associated with the crash.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
DeltaVelocityOrdinal
CorrelationID
VelocityUnit
Constraints
Data Type
integer
minInclusive
0
maxInclusive
999
Data Element Comment
Based on Vehicular Emergency Data Set: Delta Velocity. The force of impact based on the change in velocity over the
duration of the crash pulse. Vehicular Emergency Data Set (VEDS) Recommendations. Version 3.0 Prepared: (February
2011) by the Advanced Automatic Crash Notification (AACN)Joint APCO/NENA Data Standardization Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 266
NEMSIS Version 3.5.1.250403CP1

 
eInjury.23
eInjury.23 - ACN High Probability of Injury
Definition
The Automated Collision Notification of the High Probability of Injury.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Trauma
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 267
NEMSIS Version 3.5.1.250403CP1

 
eInjury.24
eInjury.24 - ACN Incident PDOF
Definition
The Automated Collision Notification Principal Direction of Force (PDOF).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
1
maxInclusive
12
Data Element Comment
Based on Vehicular Emergency Data Set: PDOF. Principal direction of the force of the impact to nearest o'clock reading.
Values are 1 through 12 (e.g., 12=Frontal collision, 3=passenger side (right) collision, etc.). Vehicular Emergency Data Set
(VEDS) Recommendations. Version 3.0 Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)
Joint APCO/NENA Data Standardization Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 268
NEMSIS Version 3.5.1.250403CP1

 
eInjury.25
eInjury.25 - ACN Incident Rollover
Definition
The Automated Collision Notification Indication that the Vehicle Rolled Over.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
YYes
NNo
Data Element Comment
Based on Vehicular Emergency Data Set: Rollover. Indicates if the vehicle rolled over during the collision/event (e.g.,
True=Rollover, False=No Rollover). Vehicular Emergency Data Set (VEDS) Recommendations. Version 3.0 Prepared:
(February 2011) by the Advanced Automatic Crash Notification (AACN) Joint APCO/NENA Data Standardization Working
Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 269
NEMSIS Version 3.5.1.250403CP1

 
eInjury.26
eInjury.26 - ACN Vehicle Seat Location
Definition
The Automated Collision Notification Indication of the Occupant(s) Seat Location(s) within the vehicle.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
2926001Driver Front Seat
2926003Front Row Middle Seat
2926005Passenger Front Seat
2926007Second Row Left Seat
2926009Second Row Middle Seat
2926011Second Row Right Seat
2926013Third Row Left Seat
2926015Third Row Middle Seat
2926017Third Row Right Seat
Data Element Comment
Based on Vehicular Emergency Data Set: Seat - Multiple entry for each seats data. Indicates seatbelt and seat sensor data
for individual seat position in the vehicle. These elements come from passenger vehicle. Vehicular Emergency Data Set
(VEDS) Recommendations. Version 3.0 Prepared: (February 2011) by the Advanced Automatic Crash Notification
(AACN)Joint APCO/NENA Data Standardization Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 270
NEMSIS Version 3.5.1.250403CP1

 
eInjury.27
eInjury.27 - Seat Occupied
Definition
Indication if seat is occupied based on seat sensor data.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
YYes
NNo
Data Element Comment
Based on Vehicular Emergency Data Set: Occupied - Associated with each seat. Vehicular Emergency Data Set (VEDS)
Recommendations. Version 3.0 Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint
APCO/NENA Data Standardization Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 271
NEMSIS Version 3.5.1.250403CP1

 
eInjury.28
eInjury.28 - ACN Incident Seatbelt Use
Definition
The Automated Collision Notification Indication of Seatbelt use by the occupant(s).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
YYes
NNo
Data Element Comment
Based on Vehicular Emergency Data Set: Belt Fastened - Associated with each Seat. Vehicular Emergency Data Set (VEDS)
Recommendations. Version 3.0 Prepared: (February 2011) by the Advanced Automatic Crash Notification (AACN)Joint
APCO/NENA Data Standardization Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 272
NEMSIS Version 3.5.1.250403CP1

 
eInjury.29
eInjury.29 - ACN Incident Airbag Deployed
Definition
The Automated Collision Notification Indication of Airbag Deployment.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
YYes
NNo
Data Element Comment
Based on Vehicular Emergency Data Set: Deployed - Associated with each seat. Indicates if airbag is deployed. Vehicular
Emergency Data Set (VEDS) Recommendations. Version 3.0 Prepared: (February 2011) by the Advanced Automatic Crash
Notification (AACN)Joint APCO/NENA Data Standardization Working Group.
Version 3 Changes Implemented
Added to better incorporate advanced automated collision notification information.
Published: 04/03/2025www.NEMSIS.orgPage 273
NEMSIS Version 3.5.1.250403CP1

 
eArrest
Published: 04/03/2025www.NEMSIS.orgPage 274

 
N, LRSN
eArrest.22 - Who First Defibrillated the Patient
1 : 1
N, LRSN
eArrest.21 - Who First Applied the AED
1 : 1
N, LRSN
eArrest.20 - Who First Initiated CPR
1 : 1
O
eArrest.19 - Date/Time of Initial CPR
0 : 1
N, LRSN
eArrest.18 - End of EMS Cardiac Arrest Event
1 : 1
CN, LRSN
eArrest.17 - Cardiac Rhythm on Arrival at Destination
1 : M
N, LRSN
eArrest.16 - Reason CPR/Resuscitation Discontinued
1 : 1
N, LES
eArrest.15 - Date/Time Resuscitation Discontinued
0 : 1
N, L, PRSN
eArrest.14 - Date/Time of Cardiac Arrest
1 : 1
O
eArrest.13 - Neurological Outcome at Hospital Discharge
0 : 1
CN, LRSN
eArrest.12 - Any Return of Spontaneous Circulation
1 : M
N, LRSN
eArrest.11 - First Monitored Arrest Rhythm of the Patient
1 : 1
O
eArrest.10 - Therapeutic Hypothermia by EMS
0 : 1
CN, LRSN
eArrest.09 - Type of CPR Provided
1 : M
N, LRSN
eArrest.07 - AED Use Prior to EMS Arrival
1 : 1
CN, LRSN
eArrest.04 - Arrest Witnessed By
1 : M
CN, LRSN
eArrest.03 - Resuscitation Attempted By EMS
1 : M
N, LRSN
eArrest.02 - Cardiac Arrest Etiology
1 : 1
N, LRSN
eArrest.01 - Cardiac Arrest
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eArrest
eArrest
Published: 04/03/2025www.NEMSIS.orgPage 275

 
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
Published: 04/03/2025www.NEMSIS.orgPage 276
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 277

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.02
eArrest.02 - Cardiac Arrest Etiology
Definition
Indication of the etiology or cause of the cardiac arrest (classified as cardiac, non-cardiac, etc.).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3002001Cardiac (Presumed)
3002003Drowning/Submersion
3002005Drug Overdose
3002007Electrocution
3002009Exsanguination-Medical (Non-Traumatic)
3002011Other
3002013Respiratory/Asphyxia
3002015Traumatic Cause
Data Element Comment
This element is a component of the Utstein Cardiac Arrest Criteria.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Cardiac Arrest Etiology is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Cardiac Arrest Etiology has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e093WarningCardiac Arrest Etiology should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e094WarningCardiac Arrest Etiology should only be recorded when Cardiac Arrest is "Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 278
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 279
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e107WarningType of CPR Provided should contain "Ventilation..." or "Compressions-Intermittent with
Ventilation" when Resuscitation Attempted By EMS contains "Attempted Ventilation".
nemSch_e117WarningWho First Initiated CPR should be recorded when Resuscitation Attempted By EMS is
"Attempted..." or "Initiated...".
Published: 04/03/2025www.NEMSIS.orgPage 280

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.04
eArrest.04 - Arrest Witnessed By
Definition
Indication of who the cardiac arrest was witnessed by.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_04
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
3004001Not Witnessed
3004003Witnessed by Family Member
3004005Witnessed by Healthcare Provider
3004007Witnessed by Bystander
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Arrest Witnessed By is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Arrest Witnessed By has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Arrest Witnessed By has a Not Value, no other value should be recorded.
nemSch_e100WarningArrest Witnessed By should be recorded when Patient Evaluation/Care is "Patient Evaluated
and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e101WarningArrest Witnessed By should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e102WarningWhen Arrest Witnessed By is "Not Witnessed", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 281
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 282
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.09
eArrest.09 - Type of CPR Provided
Definition
Documentation of the type/technique of CPR used by EMS.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
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
3009001Compressions-Manual
3009003Compressions-External Band Type Device
3009005Compressions-External Plunger Type Device
3009007Compressions-External Thumper Type Device
3009009Compressions-Intermittent with Ventilation
3009011Compressions-Other Device
3009021Compressions-Hands Only CPR (DEPRECATED)
3009013Ventilation-Bag Valve Mask
3009015Ventilation-Impedance Threshold Device
3009017Ventilation-Mouth to Mouth
3009019Ventilation-Pocket Mask
3009023Ventilation-with OPA/NPA
3009025Ventilation-Advanced Airway Device
3009027Ventilation-Passive Ventilation with Oxygen
Data Element Comment
Added to capture special CPR techniques.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of CPR Provided is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of CPR Provided has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_e009WarningWhen Type of CPR Provided has a Not Value, no other value should be recorded.
nemSch_e098WarningResuscitation Attempted By EMS should contain "Initiated Chest Compressions" when Type of
CPR Provided contains "Compressions...".
nemSch_e099WarningResuscitation Attempted By EMS should contain "Attempted Ventilation" when Type of CPR
Provided contains "Ventilation..." or "Compressions-Intermittent with Ventilation".
nemSch_e105WarningType of CPR Provided should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e106WarningType of CPR Provided should contain "Compressions..." when Resuscitation Attempted By EMS
Published: 04/03/2025www.NEMSIS.orgPage 283
NEMSIS Version 3.5.1.250403CP1

 
contains "Initiated Chest Compressions".
nemSch_e107WarningType of CPR Provided should contain "Ventilation..." or "Compressions-Intermittent with
Ventilation" when Resuscitation Attempted By EMS contains "Attempted Ventilation".
Published: 04/03/2025www.NEMSIS.orgPage 284

 
eArrest.10
eArrest.10 - Therapeutic Hypothermia by EMS
Definition
Documentation of EMS initiation of Therapeutic Hypothermia.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced Survival (CARES), eArrest.10 is the
equivalent of CARES data element #32: Was Hypothermia Care Provided in the Field as defined by CARES in the CARES
Data Dictionary: .https://vendors.mycares.net/
Published: 04/03/2025www.NEMSIS.orgPage 285
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.11
eArrest.11 - First Monitored Arrest Rhythm of the Patient
Definition
Documentation of what the first monitored arrest rhythm which was noted.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_05
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3011001Asystole
3011005PEA
3011007Unknown AED Non-Shockable Rhythm
3011009Unknown AED Shockable Rhythm
3011011Ventricular Fibrillation
3011013Ventricular Tachycardia-Pulseless
Data Element Comment
Added term "Arrest" to title to clarify this is the arrest rhythm. 
Values "Other" and "Normal Sinus Rhythm" removed since they are not Cardiac Arrest Rhythms. 
Value "Ventricular Tachycardia" has been changed to "Ventricular Tachycardia-Pulseless".
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen First Monitored Arrest Rhythm of the Patient is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen First Monitored Arrest Rhythm of the Patient has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 286
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.12
eArrest.12 - Any Return of Spontaneous Circulation
Definition
Indication whether or not there was any return of spontaneous circulation.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_06
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
3012001No
3012003Yes, At Arrival at the ED
3012005Yes, Prior to Arrival at the ED
3012007Yes, Sustained for 20 consecutive minutes
Data Element Comment
This element needs to be documented when the patient has been in cardiac arrest and transported to a healthcare facility to
show the change in patient condition, if any. 
Any ROSC is defined as any brief (approximately >30 seconds) restoration of spontaneous circulation that provides evidence
of more than an occasional gasp, occasional fleeting palpable pulse, or arterial waveform.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Any Return of Spontaneous Circulation is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Any Return of Spontaneous Circulation has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_e009WarningWhen Any Return of Spontaneous Circulation has a Not Value, no other value should be
recorded.
nemSch_e108WarningAny Return of Spontaneous Circulation should be recorded when Patient Evaluation/Care is
"Patient Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e109WarningAny Return of Spontaneous Circulation should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e110WarningWhen Any Return of Spontaneous Circulation is "No", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 287
NEMSIS Version 3.5.1.250403CP1

 
eArrest.13
eArrest.13 - Neurological Outcome at Hospital Discharge
Definition
The level of cerebral performance of the patient at the time of discharge from the Hospital.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE11_07
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Code List
CodeDescription
3013001CPC 1 Good Cerebral Performance
3013003CPC 2 Moderate Cerebral Disability
3013005CPC 3 Severe Cerebral Disability
3013007CPC 4 Coma or Vegetative State
Data Element Comment
1 = Good Cerebral Performance: Conscious, Alert, able to work and lead a normal life.
2 = Moderate Cerebral Disability: Conscious and able to function independently (dress, travel, prepare food) may have
hemiplegia, seizures, or permanent memory or mental changes.
3 = Severe Cerebral Disability: Conscious, dependent on others for daily support, functions only in an institution or at home
with exceptional family effort.
4 = Coma or vegetative state: any degree of coma without the presence of all brain death criteria. Unawareness, even if
appears awake (vegetative state) without interaction with environment; may have spontaneous eye opening and sleep/awake
cycles. Cerebral unresponsiveness.
Published: 04/03/2025www.NEMSIS.orgPage 288
NEMSIS Version 3.5.1.250403CP1

 
8801029 - Approximate8801023 - Unable to Complete
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.14
eArrest.14 - Date/Time of Cardiac Arrest
Definition
The date/time of the cardiac arrest (if not known, please estimate).
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE11_08
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
Changed from estimated time prior to EMS arrival to date/time of cardiac arrest. 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
Published: 04/03/2025www.NEMSIS.orgPage 289
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e001ErrorWhen Date/Time of Cardiac Arrest is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Date/Time of Cardiac Arrest has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e045WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time of Cardiac
Arrest.
nemSch_e055WarningUnit Back in Service Date/Time should not be earlier than Date/Time of Cardiac Arrest.
nemSch_e111WarningDate/Time of Cardiac Arrest should only be recorded when Cardiac Arrest is "Yes...".
nemSch_e189ErrorWhen Date/Time of Cardiac Arrest has a Pertinent Negative of "Unable to Complete", it should be
empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e192ErrorWhen Date/Time of Cardiac Arrest has a Pertinent Negative of "Approximate", it should have a
value and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 290

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eArrest.15
eArrest.15 - Date/Time Resuscitation Discontinued
Definition
The date/time resuscitation was discontinued.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_09
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time Resuscitation Discontinued is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 291
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time Resuscitation Discontinued has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 292

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.16
eArrest.16 - Reason CPR/Resuscitation Discontinued
Definition
The reason that CPR or the resuscitation efforts were discontinued.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_10
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Attributes
NOT Values (NV)
Code List
CodeDescription
3016001DNR
3016003Medical Control Order
3016005Obvious Signs of Death
3016007Physically Unable to Perform
3016009Protocol/Policy Requirements Completed
3016011Return of Spontaneous Circulation (pulse or BP noted)
Data Element Comment
Added Resuscitation to Title to allow better documentation of disposition.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Reason CPR/Resuscitation Discontinued is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Reason CPR/Resuscitation Discontinued has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_e112WarningReason CPR/Resuscitation Discontinued should only be recorded when Cardiac Arrest is
"Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 293
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.17
eArrest.17 - Cardiac Rhythm on Arrival at Destination
Definition
The patient's cardiac rhythm upon delivery or transfer to the destination.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE11_11
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
9901001Agonal/Idioventricular
9901003Asystole
9901005Artifact
9901007Atrial Fibrillation
9901009Atrial Flutter
9901011AV Block-1st Degree
9901013AV Block-2nd Degree-Type 1
9901015AV Block-2nd Degree-Type 2
9901017AV Block-3rd Degree
9901019Junctional
9901021Left Bundle Branch Block
9901023Non-STEMI Anterior Ischemia
9901025Non-STEMI Inferior Ischemia
9901027Non-STEMI Lateral Ischemia
9901029Non-STEMI Posterior Ischemia
9901030Non-STEMI Septal Ischemia
9901031Other
9901033Paced Rhythm
9901035PEA
9901037Premature Atrial Contractions
9901039Premature Ventricular Contractions
9901041Right Bundle Branch Block
9901043Sinus Arrhythmia
9901045Sinus Bradycardia
9901047Sinus Rhythm
9901049Sinus Tachycardia
9901051STEMI Anterior Ischemia
9901053STEMI Inferior Ischemia
9901055STEMI Lateral Ischemia
9901057STEMI Posterior Ischemia
9901058STEMI Septal Ischemia
9901059Supraventricular Tachycardia
9901061Torsades De Points
9901063Unknown AED Non-Shockable Rhythm
9901065Unknown AED Shockable Rhythm
9901067Ventricular Fibrillation
9901069Ventricular Tachycardia (With Pulse)
9901071Ventricular Tachycardia (Pulseless)
Published: 04/03/2025www.NEMSIS.orgPage 294
NEMSIS Version 3.5.1.250403CP1

 
Data Element Comment
This element needs to be documented when the patient has been in cardiac or respiratory arrest and transported to a
healthcare facility to show the change in patient condition, if any. The cardiac rhythm list has been updated to be the same for
eVitals.03 (Cardiac Rhythm Electrocardiography (ECG)). They are using the common type: CardiacRhythm. ST segment
changes consistent (or not consistent) with STEMI criteria should be documented as Ischemia in the appropriate location
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Cardiac Rhythm on Arrival at Destination is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Cardiac Rhythm on Arrival at Destination has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_e009WarningWhen Cardiac Rhythm on Arrival at Destination has a Not Value, no other value should be
recorded.
nemSch_e113WarningCardiac Rhythm on Arrival at Destination should be recorded when Transport Disposition is
"Transport by This EMS Unit..." and Cardiac Arrest is "Yes...".
nemSch_e114WarningCardiac Rhythm on Arrival at Destination should only be recorded when Cardiac Arrest is
"Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 295

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.18
eArrest.18 - End of EMS Cardiac Arrest Event
Definition
The patient's outcome at the end of the EMS event.
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
3018001Expired in ED
3018003Expired in the Field
3018005Ongoing Resuscitation in ED
3018007ROSC in the Field
3018009ROSC in the ED
3018011Ongoing Resuscitation by Other EMS
Data Element Comment
Added to better identify the outcome of EMS cardiac arrest patients.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen End of EMS Cardiac Arrest Event is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen End of EMS Cardiac Arrest Event has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e115WarningEnd of EMS Cardiac Arrest Event should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Arrest is "Yes...".
nemSch_e116WarningEnd of EMS Cardiac Arrest Event should only be recorded when Cardiac Arrest is "Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 296
NEMSIS Version 3.5.1.250403CP1

 
eArrest.19
eArrest.19 - Date/Time of Initial CPR
Definition
The initial date and time that CPR was started by anyone.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 297
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.20
eArrest.20 - Who First Initiated CPR
Definition
Who first initiated CPR for this EMS event.
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
3020001Bystander
3020003Family Member
3020005Healthcare Provider (non-911 Responder)
3020007First Responder (EMS)
3020009First Responder (Law Enforcement)
3020011First Responder (non-EMS Fire)
3020013EMS Responder (transport EMS)
Data Element Comment
Bystanders are defined as persons who are not responding as part of an organized emergency response system to a cardiac
arrest. Physicians, nurses, and paramedics may be described as performing bystander CPR if they are not part of the
emergency response system involved in the victim's resuscitation. Friends and acquaintances are considered bystanders. 
Family members are defined as the patient's relatives. 
Healthcare Provider (non-911 Responder) includes physicians, nurses, paramedics, and other types of healthcare
professionals who are not part of the organized emergency response system. 
First Responders are defined as personnel who are dispatched through the 911 system, respond as part of an organized
emergency response system, and have the capability and/or training to provide emergency medical care, but are not the
designated transporters of the patient. 
First Responder (EMS) is defined as EMS personnel who are part of an EMS response agency, respond as part of an
organized emergency response system, but are not the designated transporter of the patient. For example, First Responder
(EMS) includes EMS personnel who arrive by quick response EMS units, fire apparatus that is part of an EMS response
agency, and supervisor/administrative vehicles operated by the transport EMS agency. 
First Responder (Law Enforcement) is defined as public safety officers who are not part of an EMS response agency and act
in an organized, official capacity to enforce the law. 
First Responder (non-EMS Fire) is defined as fire department personnel who are not part of an EMS response agency and
are not the designated transporter of the patient. 
EMS Responder (transport) is defined as EMS personnel who are the designated transporter of the patient. 
For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced Survival (CARES), eArrest.20 is the
equivalent of CARES data element #23 Who Initiated CPR as defined by CARES in the CARES Data Dictionary: 
.https://vendors.mycares.net/
Associated Validation Rules
Rule IDLevelMessage
Published: 04/03/2025www.NEMSIS.orgPage 298
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e001ErrorWhen Who First Initiated CPR is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Who First Initiated CPR has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e117WarningWho First Initiated CPR should be recorded when Resuscitation Attempted By EMS is
"Attempted..." or "Initiated...".
nemSch_e118WarningWho First Initiated CPR should only be recorded when Cardiac Arrest is "Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 299

 
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
Published: 04/03/2025www.NEMSIS.orgPage 300
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e001ErrorWhen Who First Applied the AED is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Who First Applied the AED has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e119WarningWho First Applied the AED should be recorded when AED Use Prior to EMS Arrival is "Yes...".
nemSch_e120WarningWho First Applied the AED should only be recorded when Cardiac Arrest is "Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 301

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eArrest.22
eArrest.22 - Who First Defibrillated the Patient
Definition
Documentation of who first defibrillated the patient.
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
3022001Bystander
3022003Family Member
3022005Healthcare Provider (non-911 Responder)
3022007First Responder (EMS)
3022009First Responder (Law Enforcement)
3022011First Responder (non-EMS Fire)
3022013EMS Responder (transport EMS)
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
For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced Survival (CARES), eArrest.22 is the
equivalent of CARES data element #28 Who First Defibrillated the Patient as defined by CARES in the CARES Data
Dictionary: .https://vendors.mycares.net/
Associated Validation Rules
Rule IDLevelMessage
Published: 04/03/2025www.NEMSIS.orgPage 302
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e001ErrorWhen Who First Defibrillated the Patient is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Who First Defibrillated the Patient has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e122WarningWho First Defibrillated the Patient should be recorded when AED Use Prior to EMS Arrival is
"Yes, With Defibrillation".
nemSch_e123WarningWho First Defibrillated the Patient should only be recorded when Cardiac Arrest is "Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 303

 
eHistory
Published: 04/03/2025www.NEMSIS.orgPage 304

 
O
eHistory.19 - Last Oral Intake
0 : 1
L, PO
eHistory.18 - Pregnancy
0 : 1
CN, L, PRSN
eHistory.17 - Alcohol/Drug Use Indicators
1 : M
O
eHistory.16 - Presence of Emergency Information Form
0 : 1
O
eHistory.20 - Current Medication Frequency
0 : 1
O
eHistory.15 - Current Medication Administration Route
0 : 1
O
eHistory.14 - Current Medication Dosage Unit
0 : 1
O
eHistory.13 - Current Medication Dose
0 : 1
N, L, PES
eHistory.12 - Current Medications
0 : 1
C
eHistory.CurrentMedsGroup
0 : M
O
eHistory.11 - Immunization Year
0 : 1
PO
eHistory.10 - The Patient's Type of Immunization
0 : 1
C
eHistory.ImmunizationsGroup
0 : M
CO
eHistory.09 - Medical History Obtained From
0 : M
CN, L, PES
eHistory.08 - Medical/Surgical History
0 : M
CO
eHistory.07 - Environmental/Food Allergies
0 : M
CN, L, PES
eHistory.06 - Medication Allergies
0 : M
CN, LES
eHistory.05 - Advance Directives
0 : M
O
eHistory.04 - Middle Name/Initial of Patient's Practitioner
0 : 1
O
eHistory.03 - First Name of Patient's Practitioner
0 : 1
O
eHistory.02 - Last Name of Patient's Practitioner
0 : 1
C
eHistory.PractitionerGroup
0 : M
CN, LRSN
eHistory.01 - Barriers to Patient Care
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eHistory
eHistory
Published: 04/03/2025www.NEMSIS.orgPage 305

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eHistory.01
eHistory.01 - Barriers to Patient Care
Definition
Indication of whether or not there were any patient specific barriers to serving the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE12_01
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
3101001Cultural, Custom, Religious
3101003Developmentally Impaired
3101005Hearing Impaired
3101007Language
3101009None Noted
3101011Obesity
3101013Physical Barrier (Unable to Access Patient)
3101015Physically Impaired
3101017Physically Restrained
3101019Psychologically Impaired
3101021Sight Impaired
3101023Speech Impaired
3101025Unattended or Unsupervised (including minors)
3101027Unconscious
3101029Uncooperative
3101031State of Emotional Distress
3101033Alcohol Use, Suspected
3101035Drug Use, Suspected
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Barriers to Patient Care is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Barriers to Patient Care has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Barriers to Patient Care has a Not Value, no other value should be recorded.
nemSch_e124WarningWhen Barriers to Patient Care is "None Noted", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 306
NEMSIS Version 3.5.1.250403CP1

 
eHistory.02
eHistory.02 - Last Name of Patient's Practitioner
Definition
The last name of the patient's practitioner.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE12_06
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
60
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 307
NEMSIS Version 3.5.1.250403CP1

 
eHistory.03
eHistory.03 - First Name of Patient's Practitioner
Definition
The first name of the patient's practitioner.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE12_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 308
NEMSIS Version 3.5.1.250403CP1

 
eHistory.04
eHistory.04 - Middle Name/Initial of Patient's Practitioner
Definition
The middle name or initial of the patient's practitioner.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE12_05
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 309
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eHistory.05
eHistory.05 - Advance Directives
Definition
The presence of a valid DNR form, living will, or document directing end of life or healthcare treatment
decisions.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE12_07
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
3105001Family/Guardian request DNR (but no documentation)
3105003Living Will
3105005None
3105007Other
3105009Other Healthcare Advanced Directive Form
3105011State EMS DNR or Medical Order Form
Data Element Comment
Advanced Directive and Do Not Resuscitate are both included in this data element.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Advance Directives is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Advance Directives has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Advance Directives has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 310
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
9924003 - RxNorm9924001 - ICD-10
8801021 - Unresponsive
8801023 - Unable to Complete8801019 - Refused8801013 - No Known Drug Allergy
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eHistory.06
eHistory.06 - Medication Allergies
Definition
The patient's medication allergies.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE12_08
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code Type
CorrelationID
Constraints
Pattern
(Z88\.[0-9])|([a-zA-Z0-9]{2,7})
Data Element Comment
The list of medication allergies is based on RxNorm (RXCUI) Codes. In addition, a specific list of ICD-10 CM codes can be
used for medication groups. 
Reference the NEMSIS Suggested Lists at:  https://nemsis.org/technical-resources/version-3/version-3-resource-repository/
Code list is represented in two separate UMLS datasets: 
1) ICD-10 Codes. 
2) RxNorm 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus 
Website -  http://www.nlm.nih.gov/research/umls/rxnorm/docs/rxnormfiles.html
Product - RxNorm Full Monthly Release
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Allergies is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Allergies has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Medication Allergies has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Medication Allergies has a Not Value, no other value should be recorded.
nemSch_e010WarningWhen Medication Allergies has a Pertinent Negative, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 311
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eHistory.07
eHistory.07 - Environmental/Food Allergies
Definition
The patient's known allergies to food or environmental agents.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE12_09
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Constraints
Data Type
integer
maxInclusive
999999999999999999
minInclusive
100000
Data Element Comment
Data Element Comment Section: 
Code list is represented in SNOMEDCT. Reference the NEMSIS Suggested Lists at: 
 https://nemsis.org/technical-resources/version-3/version-3-resource-repository/
SNOMEDCT 
Website:  http://www.nlm.nih.gov/research/umls/Snomed/snomed_main.html
Product: Product - UMLS Metathesaurus
Published: 04/03/2025www.NEMSIS.orgPage 312
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801021 - Unresponsive
8801023 - Unable to Complete8801019 - Refused8801015 - None Reported
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eHistory.08
eHistory.08 - Medical/Surgical History
Definition
The patient's pre-existing medical and surgery history of the patient.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE12_10
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Constraints
Pattern
([A-QRSTUZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,3})?)|[0-9A-HJ-NP-Z]{3,7}
Data Element Comment
The Medical/Surgical History pattern has been extended to include ICD-10-CM: Diagnosis Codes and ICD-10-PCS: Procedural
Health Intervention Codes. 
ICD-10-CM: Diagnosis Codes. 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus 
Please reference the NEMSIS Suggested Lists at: 
 https://nemsis.org/technical-resources/version-3/version-3-resource-repository/
ICD-10-PCS has a seven character alphanumeric code structure. Each character contains up to 34 possible values. Each
value represents a specific option for the general character definition (e.g., stomach is one of the values for the body part
character). 
The ten digits 0-9 and the 24 letters A-H,J-N and P-Z may be used in each character. The letters O and I are not used in order
to avoid confusion with the digits 0 and 1. There are no decimals in ICD-10-PCS. 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medical/Surgical History is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medical/Surgical History has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Medical/Surgical History has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Medical/Surgical History has a Not Value, no other value should be recorded.
nemSch_e010WarningWhen Medical/Surgical History has a Pertinent Negative, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 313
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eHistory.09
eHistory.09 - Medical History Obtained From
Definition
Type of person medical history obtained from.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE12_11
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
3109001Bystander/Other
3109003Family
3109005Health Care Personnel
3109007Patient
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 314
NEMSIS Version 3.5.1.250403CP1

 
8801025 - Not Immunized
eHistory.10
eHistory.10 - The Patient's Type of Immunization
Definition
The immunization type of the patient.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE12_12
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
Pertinent Negatives (PN)
Code List
CodeDescription
9910001Anthrax
9910003Cholera
9910005DPT / TDaP (Diphtheria, Pertussis, Tetanus)
9910007Hemophilus Influenza B
9910009Hepatitis A
9910011Hepatitis B
9910013Human Papilloma Virus (HPV)
9910015Influenza-H1N1
9910017Influenza-Other
9910019Influenza-Seasonal (In past 12 months)
9910021Lyme Disease
9910023Meningococcus
9910025MMR (Measles, Mumps, Rubella)
9910027Other-Not Listed
9910029Plague
9910031Pneumococcal (Pneumonia)
9910033Polio
9910035Rabies
9910037Rotavirus
9910039Shingles
9910041Small Pox
9910043Tetanus
9910045Tuberculosis
9910047Typhoid
9910049Varicella (Chickenpox)
9910051Yellow Fever
9910053None
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 315
NEMSIS Version 3.5.1.250403CP1

 
eHistory.11
eHistory.11 - Immunization Year
Definition
The year associated with each immunization type.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE12_13
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
1900
maxInclusive
2050
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 316
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete
8801021 - Unresponsive8801019 - Refused8801015 - None Reported
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eHistory.12
eHistory.12 - Current Medications
Definition
The medications the patient currently takes.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE12_14
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
string
minLength
2
maxLength
9
Data Element Comment
List of medications based on RxNorm (RXCUI) code. 
Reference the NEMSIS Suggested Lists at:  https://nemsis.org/technical-resources/version-3/version-3-resource-repository/
RxNorm 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus 
Website -  http://www.nlm.nih.gov/research/umls/rxnorm/docs/rxnormfiles.html
Product - RxNorm Full Monthly Release
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Current Medications is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Current Medications has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Current Medications has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 317
NEMSIS Version 3.5.1.250403CP1

 
eHistory.13
eHistory.13 - Current Medication Dose
Definition
The numeric dose or amount of the patient's current medication.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE12_15
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
decimal
totalDigits
9
fractionDigits
3
Data Element Comment
Associated with eHistory.12 (Current Medications)
Published: 04/03/2025www.NEMSIS.orgPage 318
NEMSIS Version 3.5.1.250403CP1

 
eHistory.14
eHistory.14 - Current Medication Dosage Unit
Definition
The dosage unit of the patient's current medication.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE12_16
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3114001Centimeters (cm)
3114003Grams (gms)
3114005Drops (gtts)
3114007Inches (in)
3114009International Units (IU)
3114011Keep Vein Open (kvo)
3114013Liters Per Minute (l/min [fluid])
3114015Liters (l)
3114017Liters Per Minute (LPM [gas])
3114019Micrograms (mcg)
3114021Micrograms per Kilogram per Minute (mcg/kg/min)
3114023Micrograms per Minute (mcg/min)
3114025Milliequivalents (mEq)
3114027Metered Dose (MDI)
3114029Milligrams (mg)
3114031Milligrams per Kilogram (mg/kg)
3114033Milligrams per Kilogram Per Minute (mg/kg/min)
3114035Milligrams per Minute (mg/min)
3114037Milliliters (ml)
3114039Milliliters per Hour (ml/hr)
3114041Other
3114043Puffs
3114045Units per Hour (units/hr)
3114047Micrograms per Kilogram (mcg/kg)
3114049Units
3114051Units per Kilogram per Hour (units/kg/hr)
3114053Units per Kilogram (units/kg)
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 319
NEMSIS Version 3.5.1.250403CP1

 
eHistory.15
eHistory.15 - Current Medication Administration Route
Definition
The administration route (po, SQ, etc.) of the patient's current medication.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE12_17
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9927001Blow-By
9927003Buccal
9927005Endotracheal Tube (ET)
9927007Gastrostomy Tube
9927009Inhalation
9927011Intraarterial
9927013Intradermal
9927015Intramuscular (IM)
9927017Intranasal
9927019Intraocular
9927021Intraosseous (IO)
9927023Intravenous (IV)
9927025Nasal Cannula
9927027Nasogastric
9927029Nasotracheal Tube
9927031Non-Rebreather Mask
9927033Ophthalmic
9927035Oral
9927037Other/miscellaneous
9927039Otic
9927041Re-breather mask
9927043Rectal
9927045Subcutaneous
9927047Sublingual
9927049Topical
9927051Tracheostomy
9927053Transdermal
9927055Urethral
9927057Ventimask
9927059Wound
9927061Portacath
9927063Auto Injector
9927065BVM
9927067CPAP
9927069IV Pump
9927071Nebulizer
9927073Umbilical Artery Catheter
9927075Umbilical Venous Catheter
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 320
NEMSIS Version 3.5.1.250403CP1

 
eHistory.20
eHistory.20 - Current Medication Frequency
Definition
The frequency of administration of the patient's current medication.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3120001q1h (every hour)
3120003q2h (every 2 hours)
3120005q3h (every 3 hours)
3120007q4h (every 4 hours)
3120009qid (four times a day)
3120011tid (three times a day)
3120013ac (before meals)
3120015pc (after meals)
3120017bid (twice a day)
3120019qd (every day)
3120021qd-am (every day in the morning)
3120023qd-pm (every day in the evening)
3120025hs (at bedtime)
3120027qod (every other day)
3120029prn (as needed)
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 321
NEMSIS Version 3.5.1.250403CP1

 
eHistory.16
eHistory.16 - Presence of Emergency Information Form
Definition
Indication of the presence of the Emergency Information Form associated with patient's with special
healthcare needs.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE12_18
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 322
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801023 - Unable to Complete8801015 - None Reported
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eHistory.17
eHistory.17 - Alcohol/Drug Use Indicators
Definition
Indicators for the potential use of alcohol or drugs by the patient related to the patient's current illness or
injury.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE12_19
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Trauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3117001Alcohol Containers/Paraphernalia at Scene
3117003Drug Paraphernalia at Scene
3117005Patient Admits to Alcohol Use
3117007Patient Admits to Drug Use
3117009Positive Level known from Law Enforcement or Hospital Record
3117013Physical Exam Indicates Suspected Alcohol or Drug Use
3117015Bystander/Family Reports Drug Use
3117017Bystander/Family Reports Alcohol Use
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Alcohol/Drug Use Indicators is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Alcohol/Drug Use Indicators has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Alcohol/Drug Use Indicators has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Alcohol/Drug Use Indicators has a Not Value, no other value should be recorded.
nemSch_e010WarningWhen Alcohol/Drug Use Indicators has a Pertinent Negative, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 323
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
eHistory.18
eHistory.18 - Pregnancy
Definition
Indication of the possibility by the patient's history of current pregnancy.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE12_20
Is NillableYes
UsageOptional
Recurrence0 : 1
Attributes
Pertinent Negatives (PN)
Code List
CodeDescription
3118001No
3118003Possible, Unconfirmed
3118005Yes, Confirmed 12 to 20 Weeks
3118007Yes, Confirmed Greater Than 20 Weeks
3118009Yes, Confirmed Less Than 12 Weeks
3118011Yes, Weeks Unknown
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Pregnancy is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e008ErrorWhen Pregnancy has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 324
NEMSIS Version 3.5.1.250403CP1

 
eHistory.19
eHistory.19 - Last Oral Intake
Definition
Date and Time of last oral intake.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better document last oral intake.
Published: 04/03/2025www.NEMSIS.orgPage 325
NEMSIS Version 3.5.1.250403CP1

 
eNarrative
Published: 04/03/2025www.NEMSIS.orgPage 326

 
N, LES
eNarrative.01 - Patient Care Report Narrative
0 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eNarrative
eNarrative
Published: 04/03/2025www.NEMSIS.orgPage 327

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eNarrative.01
eNarrative.01 - Patient Care Report Narrative
Definition
The narrative of the patient care report (PCR).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE13_01
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
10000
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient Care Report Narrative is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Patient Care Report Narrative has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 328
NEMSIS Version 3.5.1.250403CP1

 
eVitals
Published: 04/03/2025www.NEMSIS.orgPage 329

 
O
eVitals.25 - Temperature Method
0 : 1
N, L, PES
eVitals.24 - Temperature
0 : 1
eVitals.TemperatureGroup
0 : 1
N, L, PES
eVitals.23 - Total Glasgow Coma Score
0 : 1
CN, LRSN
eVitals.22 - Glasgow Coma Score-Qualifier
1 : M
N, L, PRSN
eVitals.21 - Glasgow Coma Score-Motor
1 : 1
N, L, PRSN
eVitals.20 - Glasgow Coma Score-Verbal
1 : 1
N, L, PRSN
eVitals.19 - Glasgow Coma Score-Eye
1 : 1
eVitals.GlasgowScoreGroup
1 : 1
N, L, PRSN
eVitals.18 - Blood Glucose Level
1 : 1
N, L, PES
eVitals.17 - Carbon Monoxide (CO)
0 : 1
N, L, PRSN
eVitals.16 - End Tidal Carbon Dioxide (ETCO2)
1 : 1
O
eVitals.15 - Respiratory Effort
0 : 1
N, L, PRSN
eVitals.14 - Respiratory Rate
1 : 1
O
eVitals.13 - Pulse Rhythm
0 : 1
N, L, PRSN
eVitals.12 - Pulse Oximetry
1 : 1
O
eVitals.11 - Method of Heart Rate Measurement
0 : 1
N, L, PRSN
eVitals.10 - Heart Rate
1 : 1
eVitals.HeartRateGroup
1 : 1
O
eVitals.09 - Mean Arterial Pressure
0 : 1
N, LES
eVitals.08 - Method of Blood Pressure Measurement
0 : 1
N, L, PES
eVitals.07 - DBP (Diastolic Blood Pressure)
0 : 1
N, L, PRSN
eVitals.06 - SBP (Systolic Blood Pressure)
1 : 1
eVitals.BloodPressureGroup
1 : 1
CN, LRSN
eVitals.05 - Method of ECG Interpretation
1 : M
N, LRSN
eVitals.04 - ECG Type
1 : 1
CN, L, PRSN
eVitals.03 - Cardiac Rhythm / Electrocardiography (ECG)
1 : M
eVitals.CardiacRhythmGroup
1 : 1
N, LRSN
eVitals.02 - Obtained Prior to this Unit's EMS Care
1 : 1
N, LRSN
eVitals.01 - Date/Time Vital Signs Taken
1 : 1
C
eVitals.VitalGroup
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eVitals
Published: 04/03/2025www.NEMSIS.orgPage 330

 
L, PO
eVitals.33 - Revised Trauma Score
0 : 1
L, PO
eVitals.32 - APGAR
0 : 1
N, L, PRSN
eVitals.31 - Reperfusion Checklist
1 : 1
N, L, PES
eVitals.34 - Stroke Scale Score
0 : 1
N, LRSN
eVitals.30 - Stroke Scale Type
1 : 1
N, L, PRSN
eVitals.29 - Stroke Scale Result
1 : 1
eVitals.StrokeScaleGroup
1 : 1
N, LES
eVitals.28 - Pain Scale Type
0 : 1
N, L, PRSN
eVitals.27 - Pain Scale Score
1 : 1
eVitals.PainScaleGroup
1 : 1
N, LRSN
eVitals.26 - Level of Responsiveness (AVPU)
1 : 1
eVitals
Published: 04/03/2025www.NEMSIS.orgPage 331

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.01
eVitals.01 - Date/Time Vital Signs Taken
Definition
The date/time vital signs were taken on the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE14_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time Vital Signs Taken is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 332
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time Vital Signs Taken has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e125WarningDate/Time Vital Signs Taken should be recorded, unless Obtained Prior to this Unit's EMS Care
is "Yes".
nemSch_e126WarningDate/Time Vital Signs Taken should not be earlier than Unit Notified by Dispatch Date/Time,
unless Obtained Prior to this Unit's EMS Care is "Yes".
nemSch_e127WarningDate/Time Vital Signs Taken should not be earlier than Arrived at Patient Date/Time, unless
Obtained Prior to this Unit's EMS Care is "Yes".
nemSch_e128WarningDate/Time Vital Signs Taken should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e129WarningDate/Time Vital Signs Taken should not be later than Unit Back in Service Date/Time.
nemSch_e130WarningDate/Time Vital Signs Taken should not be later than Arrived at Patient Date/Time when
Obtained Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 333

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.02
eVitals.02 - Obtained Prior to this Unit's EMS Care
Definition
Indicates that the information which is documented was obtained prior to the documenting EMS units care.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE14_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
This is the NEMSIS Version 3 method to document prior aid.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Obtained Prior to this Unit's EMS Care is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Obtained Prior to this Unit's EMS Care has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e125WarningDate/Time Vital Signs Taken should be recorded, unless Obtained Prior to this Unit's EMS Care
is "Yes".
nemSch_e126WarningDate/Time Vital Signs Taken should not be earlier than Unit Notified by Dispatch Date/Time,
unless Obtained Prior to this Unit's EMS Care is "Yes".
nemSch_e127WarningDate/Time Vital Signs Taken should not be earlier than Arrived at Patient Date/Time, unless
Obtained Prior to this Unit's EMS Care is "Yes".
nemSch_e128WarningDate/Time Vital Signs Taken should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e129WarningDate/Time Vital Signs Taken should not be later than Unit Back in Service Date/Time.
nemSch_e130WarningDate/Time Vital Signs Taken should not be later than Arrived at Patient Date/Time when
Obtained Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 334
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.03
eVitals.03 - Cardiac Rhythm / Electrocardiography (ECG)
Definition
The cardiac rhythm / ECG and other electrocardiography findings of the patient as interpreted by EMS
personnel.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_03
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Cardiac ArrestSTEMI
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
9901001Agonal/Idioventricular
9901003Asystole
9901005Artifact
9901007Atrial Fibrillation
9901009Atrial Flutter
9901011AV Block-1st Degree
9901013AV Block-2nd Degree-Type 1
9901015AV Block-2nd Degree-Type 2
9901017AV Block-3rd Degree
9901019Junctional
9901021Left Bundle Branch Block
9901023Non-STEMI Anterior Ischemia
9901025Non-STEMI Inferior Ischemia
9901027Non-STEMI Lateral Ischemia
9901029Non-STEMI Posterior Ischemia
9901030Non-STEMI Septal Ischemia
9901031Other
9901033Paced Rhythm
9901035PEA
9901037Premature Atrial Contractions
9901039Premature Ventricular Contractions
9901041Right Bundle Branch Block
9901043Sinus Arrhythmia
9901045Sinus Bradycardia
9901047Sinus Rhythm
9901049Sinus Tachycardia
9901051STEMI Anterior Ischemia
9901053STEMI Inferior Ischemia
9901055STEMI Lateral Ischemia
9901057STEMI Posterior Ischemia
9901058STEMI Septal Ischemia
9901059Supraventricular Tachycardia
9901061Torsades De Points
9901063Unknown AED Non-Shockable Rhythm
9901065Unknown AED Shockable Rhythm
9901067Ventricular Fibrillation
Published: 04/03/2025www.NEMSIS.orgPage 335
NEMSIS Version 3.5.1.250403CP1

 
9901069Ventricular Tachycardia (With Pulse)
9901071Ventricular Tachycardia (Pulseless)
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Cardiac Rhythm / Electrocardiography (ECG) is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Cardiac Rhythm / Electrocardiography (ECG) has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e008ErrorWhen Cardiac Rhythm / Electrocardiography (ECG) has a Pertinent Negative, it should be
empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Cardiac Rhythm / Electrocardiography (ECG) has a Not Value, no other value should be
recorded.
nemSch_e010WarningWhen Cardiac Rhythm / Electrocardiography (ECG) has a Pertinent Negative, no other value
should be recorded.
nemSch_e087WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".
nemSch_e173WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".
Published: 04/03/2025www.NEMSIS.orgPage 336

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.04
eVitals.04 - ECG Type
Definition
The type of ECG associated with the cardiac rhythm.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
STEMI
Attributes
NOT Values (NV)
Code List
CodeDescription
33040002 Lead ECG (pads or paddles)
33040013 Lead
33040034 Lead
33040055 Lead
330400712 Lead-Left Sided (Normal)
330400912 Lead-Right Sided
330401115 Lead
330401318 Lead
3304015Other
Data Element Comment
Version 3 Changes Implemented
Added to better document ECG results.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen ECG Type is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen ECG Type has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
Published: 04/03/2025www.NEMSIS.orgPage 337
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.05
eVitals.05 - Method of ECG Interpretation
Definition
The method of ECG interpretation.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
STEMI
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
3305001Computer Interpretation
3305003Manual Interpretation
3305005Transmission with No Interpretation
3305007Transmission with Remote Interpretation
Data Element Comment
"Transmission with no interpretation" may be used by EMS Agency Personnel that are not trained to interpret cardiac rhythms.
Version 3 Changes Implemented
Added to better document ECG results.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Method of ECG Interpretation is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Method of ECG Interpretation has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Method of ECG Interpretation has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 338
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused8801005 - Exam Finding Not Present
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.06
eVitals.06 - SBP (Systolic Blood Pressure)
Definition
The patient's systolic blood pressure.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_04
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
500
Data Element Comment
Required for ACS-Field Triage and other patient scoring systems.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen SBP (Systolic Blood Pressure) is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen SBP (Systolic Blood Pressure) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen SBP (Systolic Blood Pressure) has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 339
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused8801005 - Exam Finding Not Present
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.07
eVitals.07 - DBP (Diastolic Blood Pressure)
Definition
The patient's diastolic blood pressure.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_05
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Pattern
[5][0][0]|[1-4][0-9][0-9]|[0-9]|[1-9][0-9]|P|p
Data Element Comment
Diastolic blood pressure pattern allows for the following values:
1) A number 0 through 500 
2) P
3) p
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen DBP (Diastolic Blood Pressure) is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen DBP (Diastolic Blood Pressure) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen DBP (Diastolic Blood Pressure) has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 340
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.08
eVitals.08 - Method of Blood Pressure Measurement
Definition
Indication of method of blood pressure measurement.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE14_06
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
3308001Arterial Line
3308003Doppler
3308005Cuff-Automated
3308007Cuff-Manual Auscultated
3308009Cuff-Manual Palpated Only
3308011Venous Line
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Method of Blood Pressure Measurement is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Method of Blood Pressure Measurement has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 341
NEMSIS Version 3.5.1.250403CP1

 
eVitals.09
eVitals.09 - Mean Arterial Pressure
Definition
The patient's mean arterial pressure.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
1
maxInclusive
500
Data Element Comment
Version 3 Changes Implemented
Added for additional patient monitoring capability.
Published: 04/03/2025www.NEMSIS.orgPage 342
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused8801005 - Exam Finding Not Present
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.10
eVitals.10 - Heart Rate
Definition
The patient's heart rate expressed as a number per minute.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_07
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
500
Data Element Comment
Pulse Rate and Electronic Monitor Rate have been merged with an additional data element for Method of Heart Rate
Measurement.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Heart Rate is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Heart Rate has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e008ErrorWhen Heart Rate has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 343
NEMSIS Version 3.5.1.250403CP1

 
eVitals.11
eVitals.11 - Method of Heart Rate Measurement
Definition
The method in which the Heart Rate was measured. Values include auscultated, palpated, electronic
monitor.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3311001Auscultated
3311003Doppler
3311005Electronic Monitor - Cardiac
3311007Electronic Monitor - Pulse Oximeter
3311009Electronic Monitor (Other)
3311011Palpated
Data Element Comment
This data element was added when Pulse Rate and Electronic Monitor Rate were merged as EVitals.10.
Version 3 Changes Implemented
This data element was added when Pulse Rate and Electronic Monitor Rate were merged as EVitals.10.
Published: 04/03/2025www.NEMSIS.orgPage 344
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused8801005 - Exam Finding Not Present
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.12
eVitals.12 - Pulse Oximetry
Definition
The patient's oxygen saturation.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_09
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
100
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Pulse Oximetry is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Pulse Oximetry has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Pulse Oximetry has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 345
NEMSIS Version 3.5.1.250403CP1

 
eVitals.13
eVitals.13 - Pulse Rhythm
Definition
The clinical rhythm of the patient's pulse.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE14_10
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3313001Irregularly Irregular
3313003Regular
3313005Regularly Irregular
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 346
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused8801005 - Exam Finding Not Present
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.14
eVitals.14 - Respiratory Rate
Definition
The patient's respiratory rate expressed as a number per minute.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_11
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
300
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Respiratory Rate is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Respiratory Rate has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Respiratory Rate has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 347
NEMSIS Version 3.5.1.250403CP1

 
eVitals.15
eVitals.15 - Respiratory Effort
Definition
The patient's respiratory effort.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE14_12
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3315001Apneic
3315003Labored
3315005Mechanically Assisted (BVM, CPAP, etc.)
3315007Normal
3315009Rapid
3315011Shallow
3315013Weak/Agonal
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 348
NEMSIS Version 3.5.1.250403CP1

 
3340005 - kPa3340003 - Percentage3340001 - mmHg
8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.16
eVitals.16 - End Tidal Carbon Dioxide (ETCO2)
Definition
The numeric value of the patient's exhaled end tidal carbon dioxide (ETCO2) level measured as a unit of
pressure in millimeters of mercury (mmHg), percentage or, kilopascal (kPa).
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_13
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
ETCO2Type
Constraints
Data Type
decimal
totalDigits
4
fractionDigits
1
minInclusive
0
maxInclusive
760
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen End Tidal Carbon Dioxide (ETCO2) is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen End Tidal Carbon Dioxide (ETCO2) has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e008ErrorWhen End Tidal Carbon Dioxide (ETCO2) has a Pertinent Negative, it should be empty and it
should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e131WarningEnd Tidal Carbon Dioxide (ETCO2) should be no more than 100 when ETCO2 Type is
"Percentage".
nemSch_e132WarningEnd Tidal Carbon Dioxide (ETCO2) should be no more than 100 when ETCO2 Type is "kPa".
nemSch_e133WarningEnd Tidal Carbon Dioxide (ETCO2) should be an integer when ETCO2 Type is "mmHg".
nemSch_e134WarningETCO2 Type should be recorded when End Tidal Carbon Dioxide (ETCO2) is recorded.
Published: 04/03/2025www.NEMSIS.orgPage 349
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.17
eVitals.17 - Carbon Monoxide (CO)
Definition
The numeric value of the patient's carbon monoxide level measured as a percentage (%) of
carboxyhemoglobin (COHb).
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
decimal
minInclusive
0
maxInclusive
100
totalDigits
3
fractionDigits
1
Data Element Comment
Version 3 Changes Implemented
Added to allow use of new patient monitoring devices.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Carbon Monoxide (CO) is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Carbon Monoxide (CO) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Carbon Monoxide (CO) has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 350
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.18
eVitals.18 - Blood Glucose Level
Definition
The patient's blood glucose level.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_14
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
PediatricStroke
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Pattern
[2][0][0][0]|[1][0-9][0-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9]|[0-9]|High|Low
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Blood Glucose Level is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Blood Glucose Level has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Blood Glucose Level has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 351
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.19
eVitals.19 - Glasgow Coma Score-Eye
Definition
The patient's Glasgow Coma Score Eye opening response.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_15
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
1No eye movement when assessed (All Age Groups)
2Opens Eyes to painful stimulation (All Age Groups)
3Opens Eyes to verbal stimulation (All Age Groups)
4Opens Eyes spontaneously (All Age Groups)
Data Element Comment
Definitions now based on the National Trauma Data Standard (NTDS).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Glasgow Coma Score-Eye is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Glasgow Coma Score-Eye has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Glasgow Coma Score-Eye has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 352
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.20
eVitals.20 - Glasgow Coma Score-Verbal
Definition
The patient's Glasgow Coma Score Verbal response.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_16
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
1No verbal/vocal response (All Age Groups)
2Incomprehensible sounds (>2 Years); Inconsolable, agitated
3Inappropriate words (>2 Years); Inconsistently consolable, moaning
4Confused (>2 Years); Cries but is consolable, inappropriate interactions
5Oriented (>2 Years); Smiles, oriented to sounds, follows objects, interacts
Data Element Comment
Definitions now based on the National Trauma Data Standard (NTDS).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Glasgow Coma Score-Verbal is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Glasgow Coma Score-Verbal has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Glasgow Coma Score-Verbal has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 353
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.21
eVitals.21 - Glasgow Coma Score-Motor
Definition
The patient's Glasgow Coma Score Motor response.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_17
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
1No Motor Response (All Age Groups)
2Extension to pain (All Age Groups)
3Flexion to pain (All Age Groups)
4Withdrawal from pain (All Age Groups)
5Localizing pain (All Age Groups)
6Obeys commands (>2Years); Appropriate response to stimulation
Data Element Comment
Definitions now based on the National Trauma Data Standard (NTDS).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Glasgow Coma Score-Motor is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Glasgow Coma Score-Motor has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Glasgow Coma Score-Motor has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 354
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.22
eVitals.22 - Glasgow Coma Score-Qualifier
Definition
Documentation of factors which make the GCS score more meaningful.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE14_18
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
3322001Eye Obstruction Prevents Eye Assessment
3322003Initial GCS has legitimate values without interventions such as intubation and sedation
3322005Patient Chemically Paralyzed
3322007Patient Chemically Sedated
3322009Patient Intubated
Data Element Comment
Definitions now based on the National Trauma Data Standard (NTDS).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Glasgow Coma Score-Qualifier is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Glasgow Coma Score-Qualifier has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Glasgow Coma Score-Qualifier has a Not Value, no other value should be recorded.
nemSch_e135WarningWhen Glasgow Coma Score-Qualifier is "Initial GCS has legitimate values without interventions
such as intubation and sedation", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 355
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.23
eVitals.23 - Total Glasgow Coma Score
Definition
The patient's total Glasgow Coma Score.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_19
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
3
maxInclusive
15
Data Element Comment
Can be documented or calculated from EVitals.19 (GCS-Eye), EVitals.20 (GCS-Verbal), and EVitals.21 (GCS-Motor).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Total Glasgow Coma Score is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Total Glasgow Coma Score has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Total Glasgow Coma Score has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 356
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.24
eVitals.24 - Temperature
Definition
The patient's body temperature in degrees Celsius/centigrade.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_20
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Pediatric
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
decimal
totalDigits
3
fractionDigits
1
minInclusive
0
maxInclusive
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Temperature is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Temperature has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_e008ErrorWhen Temperature has a Pertinent Negative, it should be empty and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 357
NEMSIS Version 3.5.1.250403CP1

 
eVitals.25
eVitals.25 - Temperature Method
Definition
The method used to obtain the patient's body temperature.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE14_21
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3325001Axillary
3325003Central (Venous or Arterial)
3325005Esophageal
3325007Oral
3325009Rectal
3325011Temporal Artery
3325013Tympanic
3325015Urinary Catheter
3325017Skin Probe
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 358
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.26
eVitals.26 - Level of Responsiveness (AVPU)
Definition
The patient's highest level of responsiveness.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE14_22
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
3326001Alert
3326003Verbal
3326005Painful
3326007Unresponsive
Data Element Comment
Definition changed to indicate highest level of responsiveness.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Level of Responsiveness (AVPU) is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Level of Responsiveness (AVPU) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 359
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.27
eVitals.27 - Pain Scale Score
Definition
The patient's indication of pain from a scale of 0-10.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_23
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
PediatricSTEMITrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
10
Data Element Comment
The Pain Score can be obtained from several pain measurement tools or pain scale types (eVitals.28). The pain scale type
used should have a numeric value associated with each diagram as appropriate. If the pain scale type utilizes multiple
indicators/categories the total should be calculated and entered for the pain score associated with the patient assessment.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Pain Scale Score is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Pain Scale Score has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Pain Scale Score has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 360
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.28
eVitals.28 - Pain Scale Type
Definition
The type of pain scale used.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
3328001FLACC (Face, Legs, Activity, Cry, Consolability)
3328003Numeric (0-10)
3328005Other
3328007Wong-Baker (FACES)
Data Element Comment
Version 3 Changes Implemented
Added to better document the patient's pain level.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Pain Scale Type is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Pain Scale Type has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 361
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.29
eVitals.29 - Stroke Scale Result
Definition
The findings or results of the Stroke Scale Type (eVitals.30) used to assess the patient exhibiting stroke-like
symptoms.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_24
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Stroke
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
3329001Negative
3329003Non-Conclusive
3329005Positive
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Stroke Scale Result is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Stroke Scale Result has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Stroke Scale Result has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e086WarningDate/Time Last Known Well should be recorded when Patient Evaluation/Care is "Patient
Evaluated and Care Provided" and Stroke Scale Result is "Positive".
nemSch_e172WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Stroke Scale Result is "Positive".
Published: 04/03/2025www.NEMSIS.orgPage 362
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.30
eVitals.30 - Stroke Scale Type
Definition
The type of stroke scale used.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Stroke
Attributes
NOT Values (NV)
Code List
CodeDescription
3330001Cincinnati Prehospital Stroke Scale (CPSS)
3330004Los Angeles Prehospital Stroke Screen (LAPSS)
3330005Massachusetts Stroke Scale (MSS)
3330007Miami Emergency Neurologic Deficit Exam (MEND)
3330009NIH Stroke Scale (NIHSS)
3330011Other Stroke Scale Type
3330013FAST
3330015Boston Stroke Scale (BOSS)
3330017Ontario Prehospital Stroke Scale (OPSS)
3330019Melbourne Ambulance Stroke Screen (MASS)
3330021Rapid Arterial oCclusion Evaluation (RACE)
3330023Los Angeles Motor Score (LAMS)
3330025Vision, Aphasia, Neglect (VAN)
3330027FAST-ED
3330029BEFAST
Data Element Comment
Version 3 Changes Implemented
Added to include additional detail on the stroke scale used.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Stroke Scale Type is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Stroke Scale Type has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 363
NEMSIS Version 3.5.1.250403CP1

 
8801019 - Refused8801023 - Unable to Complete
7701003 - Not Recorded7701001 - Not Applicable
State
eVitals.34
eVitals.34 - Stroke Scale Score
Definition
The stroke score value associated with the stroke scale type listed in eVitals.30.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Stroke
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
42
Data Element Comment
Score associated with the stroke scale listed in eVitals.30
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Stroke Scale Score is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Stroke Scale Score has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e008ErrorWhen Stroke Scale Score has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 364
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eVitals.31
eVitals.31 - Reperfusion Checklist
Definition
The results of the patient's Reperfusion Checklist for potential Thrombolysis use.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE14_25
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
STEMIStroke
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
3331001Definite Contraindications to Thrombolytic Use
3331003No Contraindications to Thrombolytic Use
3331005Possible Contraindications to Thrombolytic Use
Data Element Comment
Name changed from Thrombolytic Screen
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Reperfusion Checklist is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Reperfusion Checklist has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_e008ErrorWhen Reperfusion Checklist has a Pertinent Negative, it should be empty and it should not have
a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 365
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete
eVitals.32
eVitals.32 - APGAR
Definition
The patient's total APGAR score (0-10).
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE14_26
Is NillableYes
UsageOptional
Recurrence0 : 1
Attributes
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
10
Data Element Comment
Recommended to be taken at 1 and 5 minutes after the infants birth
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen APGAR is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e008ErrorWhen APGAR has a Pertinent Negative, it should be empty and it should not have a Not Value
(Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 366
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
eVitals.33
eVitals.33 - Revised Trauma Score
Definition
The patient's Revised Trauma Score.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE14_27
Is NillableYes
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Trauma
Attributes
Pertinent Negatives (PN)
Constraints
Data Type
integer
minInclusive
0
maxInclusive
12
Data Element Comment
The Unweighted Revised Trauma Score is a physiological scoring system that is based on the first set of vital signs obtained
from the patient, and consists of Glasgow Coma Scale, Systolic Blood Pressure and Respiratory Rate.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Revised Trauma Score is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e008ErrorWhen Revised Trauma Score has a Pertinent Negative, it should be empty and it should not
have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 367
NEMSIS Version 3.5.1.250403CP1

 
eLabs
Published: 04/03/2025www.NEMSIS.orgPage 368

 
O
eLabs.08 - Imaging Study File or Waveform Graphic
0 : 1
O
eLabs.07 - Imaging Study File or Waveform Graphic Type
0 : 1
C
eLabs.WaveformGraphicGroup
0 : M
O
eLabs.06 - Imaging Study Results
0 : 1
O
eLabs.05 - Imaging Study Type
0 : 1
C
eLabs.LabImageGroup
0 : M
O
eLabs.04 - Laboratory Result
0 : 1
O
eLabs.03 - Laboratory Result Type
0 : 1
C
eLabs.LabResultGroup
0 : M
O
eLabs.02 - Study/Result Prior to this Unit's EMS Care
0 : 1
O
eLabs.01 - Date/Time of Laboratory or Imaging Result
0 : 1
C
eLabs.LabGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eLabs
eLabs
Published: 04/03/2025www.NEMSIS.orgPage 369

 
eLabs.01
eLabs.01 - Date/Time of Laboratory or Imaging Result
Definition
The date and time for the specific laboratory result.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better document patient care.
Published: 04/03/2025www.NEMSIS.orgPage 370
NEMSIS Version 3.5.1.250403CP1

 
eLabs.02
eLabs.02 - Study/Result Prior to this Unit's EMS Care
Definition
Indicates that the laboratory result occurred prior to this EMS units care.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Version 3 Changes Implemented
Added to better document EMS care.
Published: 04/03/2025www.NEMSIS.orgPage 371
NEMSIS Version 3.5.1.250403CP1

 
eLabs.03
eLabs.03 - Laboratory Result Type
Definition
The type of the laboratory value.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3403001Alanine Transaminase
3403003Alcohol-Blood
3403005Alcohol-Breath
3403007Alkaline Phosphatase
3403009Amylase
3403013Aspartate Transaminase
3403015B-Type Natriuretic Peptide (BNP)
3403017Base Excess
3403019Bilirubin-Direct
3403021Bilirubin-Total
3403023BUN
3403025Calcium-Ionized
3403027Calcium-Serum
3403029Carbon Dioxide-Partial Pressure
3403033Chloride
3403035Creatine Kinase
3403037Creatine Kinase-MB
3403039Creatinine
3403041Gamma Glutamyl Transpeptidase
3403043Glucose
3403045Hematocrit
3403047Hemoglobin
3403049Human Chorionic Gonadotropin-Serum
3403051Human Chorionic Gonadotropin-Urine
3403053International Normalized Ratio (INR)
3403055Lactate Dehydrogenase
3403057Lactate-Arterial
3403059Lactate-Venous
3403061Lipase
3403063Magnesium
3403065Oxygen-Partial Pressure
3403067Partial Thromboplastin Time
3403071pH-ABG
3403073pH-Venous
3403075Platelets
3403077Potassium
3403079Prothrombin Time
3403081Red Blood Cells
3403083Sodium
3403085Troponin
3403087White Blood Cells
3403089Ammonia
3403091Bicarbonate (HCO3)
3403093Carboxyhemoglobin
3403095CO2, Total (Bicarbonate)
3403097CRP (C-Reactive Protein)
3403099Dilantin
3403101Leukocytes
3403103Nitrates
3403105Phenobarbital
3403107Protein
Published: 04/03/2025www.NEMSIS.orgPage 372
NEMSIS Version 3.5.1.250403CP1

 
3403109Salicylate
3403111Specific Gravity
3403113Tylenol
3403115ACT Celite (ACTc)
3403117ACT Kaolin (ACTk)
3403119Bands
3403121Basophils
3403123Creatine Phosphokinase (CK) (DEPRECATED)
3403125Eosinophils
3403127Erythrocyte Count
3403129Erythrocyte Morphology
3403131Erythrocyte Sedimentation Rate
3403133High-Sensitivity C-reactive Protein (hs-CRP)
3403135Lymphocytes
3403137Mean Corpuscular Hemoglobin (MCH)
3403139Mean Corpuscular Hemoglobin Concentration (MCHC)
3403141Mean Corpuscular Volume (MCV)
3403143Monocytes
3403145Myoglobin
3403147Neutrophils
3403149Oxygen Saturation (SaO2)
3403151Oxygen Volume/Content (SVO2)
3403153Phosphorus (PO4)
3403155Prothromblin test time (PT/INR)
3403157Red Cell Distribution Width (RDW)
3403159Reticulocyte Count
3403161Troponin T (cTnT)
Data Element Comment
Version 3 Changes Implemented
Added to provide for the documentation of laboratory results obtained prior to or during and EMS patient encounter.
Published: 04/03/2025www.NEMSIS.orgPage 373

 
eLabs.04
eLabs.04 - Laboratory Result
Definition
The value or result of the laboratory test (Units may vary).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Version 3 Changes Implemented
Added to better document EMS care.
Published: 04/03/2025www.NEMSIS.orgPage 374
NEMSIS Version 3.5.1.250403CP1

 
eLabs.05
eLabs.05 - Imaging Study Type
Definition
The type of x-ray or imaging study.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3405001Computed Tomography (CT) Scan
3405003Magnetic Resonance Imaging (MRI)
3405005Other
3405007Positron Emission Tomography (PET) Scan
3405009Ultrasound
3405011X-ray
3405013Angiography
Data Element Comment
Version 3 Changes Implemented
Added to better describe the EMS patient care.
Published: 04/03/2025www.NEMSIS.orgPage 375
NEMSIS Version 3.5.1.250403CP1

 
eLabs.06
eLabs.06 - Imaging Study Results
Definition
The description or interpretation of the results of the imaging study.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
3
maxLength
5000
Data Element Comment
Version 3 Changes Implemented
Added to better describe the EMS Patient Care
Published: 04/03/2025www.NEMSIS.orgPage 376
NEMSIS Version 3.5.1.250403CP1

 
eLabs.07
eLabs.07 - Imaging Study File or Waveform Graphic Type
Definition
The description of the image study file or waveform graphic stored in Imaging Study File or Waveform
Graphic (eLabs.08).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestSTEMI
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
The description is defined as the extension of the file type. Examples of file name extensions include "doc", "jpeg", "tiff", etc.
For a list of additional extensions reference the following website(s): 
3D Image formats: http://www.fileinfo.com/filetypes/3d_image
Raster Image formats: http://www.fileinfo.com/filetypes/raster_image
Vector Image formats: http://www.fileinfo.com/filetypes/vector_image
Video formats: http://www.fileinfo.com/filetypes/video
Audio formats: http://www.fileinfo.com/filetypes/audio
Comparison of formats:
Image: http://en.wikipedia.org/wiki/Comparison_of_image_file_formats
Audio: http://en.wikipedia.org/wiki/Audio_file_format
Container: http://en.wikipedia.org/wiki/Comparison_of_container_formats
A general list of image formats: http://en.wikipedia.org/wiki/Image_file_formats
Mime Types: http://en.wikipedia.org/wiki/Internet_media_type
Published: 04/03/2025www.NEMSIS.orgPage 377
NEMSIS Version 3.5.1.250403CP1

 
eLabs.08
eLabs.08 - Imaging Study File or Waveform Graphic
Definition
The imaging study file.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestSTEMI
Constraints
Data Type
base64Binary
Data Element Comment
Added to allow the imaging file to be uploaded and better document patient care.
Published: 04/03/2025www.NEMSIS.orgPage 378
NEMSIS Version 3.5.1.250403CP1

 
eExam
Published: 04/03/2025www.NEMSIS.orgPage 379

 
N, L, PES
eExam.21 - Stroke/CVA Symptoms Resolved
0 : 1
CPO
eExam.20 - Neurological Assessment
0 : M
CPO
eExam.19 - Mental Status Assessment
0 : M
CPO
eExam.25 - Chest Assessment
0 : M
O
eExam.24 - Chest Assessment Finding Location
0 : 1
C
eExam.ChestGroup
0 : M
CPO
eExam.23 - Lung Assessment
0 : M
O
eExam.22 - Lung Assessment Finding Location
0 : 1
C
eExam.LungGroup
0 : M
CPO
eExam.18 - Eye Assessment
0 : M
O
eExam.17 - Eye Assessment Finding Location
0 : 1
C
eExam.EyeGroup
0 : M
CPO
eExam.16 - Extremities Assessment
0 : M
O
eExam.15 - Extremity Assessment Finding Location
0 : 1
C
eExam.ExtremityGroup
0 : M
CPO
eExam.14 - Back and Spine Assessment
0 : M
O
eExam.13 - Back and Spine Assessment Finding Location
0 : 1
C
eExam.SpineGroup
0 : M
CPO
eExam.12 - Pelvis/Genitourinary Assessment
0 : M
CPO
eExam.11 - Abdomen Assessment
0 : M
O
eExam.10 - Abdominal Assessment Finding Location
0 : 1
C
eExam.AbdomenGroup
0 : M
CPO
eExam.09 - Heart Assessment
0 : M
CPO
eExam.07 - Neck Assessment
0 : M
CPO
eExam.06 - Face Assessment
0 : M
CPO
eExam.05 - Head Assessment
0 : M
CPO
eExam.04 - Skin Assessment
0 : M
O
eExam.03 - Date/Time of Assessment
0 : 1
C
eExam.AssessmentGroup
0 : M
N, L, PES
eExam.02 - Length Based Tape Measure
0 : 1
N, L, PES
eExam.01 - Estimated Body Weight in Kilograms
0 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eExam
Published: 04/03/2025www.NEMSIS.orgPage 380

 
eExam
Published: 04/03/2025www.NEMSIS.orgPage 381

 
8801023 - Unable to Complete
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eExam.01
eExam.01 - Estimated Body Weight in Kilograms
Definition
The patient's body weight in kilograms either measured or estimated.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE16_01
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Pediatric
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
decimal
totalDigits
4
fractionDigits
1
minInclusive
0.1
maxInclusive
999.9
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Estimated Body Weight in Kilograms is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Estimated Body Weight in Kilograms has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e008ErrorWhen Estimated Body Weight in Kilograms has a Pertinent Negative, it should be empty and it
should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 382
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete8801019 - Refused
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eExam.02
eExam.02 - Length Based Tape Measure
Definition
The length-based color as taken from the tape.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE16_02
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Pediatric
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
3502001Blue
3502003Green
3502005Grey
3502007Orange
3502009Pink
3502011Purple
3502013Red
3502015White
3502017Yellow
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Length Based Tape Measure is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Length Based Tape Measure has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Length Based Tape Measure has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 383
NEMSIS Version 3.5.1.250403CP1

 
eExam.03
eExam.03 - Date/Time of Assessment
Definition
The date/time of the assessment.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE16_03
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayStrokeCardiac Arrest
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 384
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.04
eExam.04 - Skin Assessment
Definition
The assessment findings associated with the patient's skin.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_04
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3504001Clammy
3504003Cold
3504005Cyanotic
3504007Diaphoretic
3504009Dry
3504011Flushed
3504013Hot
3504015Jaundiced
3504017Lividity
3504019Mottled
3504021Normal
3504023Not Done
3504025Pale
3504027Poor Turgor
3504029Red (Erythematous)
3504031Tenting
3504033Warm
3504035Capillary Nail Bed Refill less than 2 seconds
3504037Capillary Nail Bed Refill 2-4 seconds
3504039Capillary Nail Bed Refill more than 4 seconds
Data Element Comment
Element eExam.04 - Skin Assessment represents Version 2.2.1 elements E15_01 NHTSA Injury Matrix External/Skin and
E16_04 Skin Assessment. The element value choices have been combined and expanded.
Published: 04/03/2025www.NEMSIS.orgPage 385
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.05
eExam.05 - Head Assessment
Definition
The assessment findings associated with the patient's head.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_05
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3505001Abrasion
3505003Avulsion
3505005Bleeding Controlled
3505007Bleeding Uncontrolled
3505009Burn-Blistering
3505011Burn-Charring
3505013Burn-Redness
3505015Burn-White/Waxy
3505017Decapitation
3505019Deformity
3505021Drainage
3505023Foreign Body
3505029Laceration
3505031Mass/Lesion
3505033Normal
3505035Not Done
3505037Pain
3505039Puncture/Stab Wound
3505045Gunshot Wound
3505047Crush Injury
3505049Swelling
3505051Contusion
3505053Tenderness
Data Element Comment
Element eExam.05 - Head Assessment represents Version 2.2.1 elements E15_02 NHTSA Injury Matrix Head and E16_05
Head/Face Assessment. The element value choices have been combined and expanded.
Published: 04/03/2025www.NEMSIS.orgPage 386
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.06
eExam.06 - Face Assessment
Definition
The assessment findings associated with the patient's face.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3506001Abrasion
3506003Asymmetric Smile or Droop
3506005Avulsion
3506007Bleeding Controlled
3506009Bleeding Uncontrolled
3506011Burn-Blistering
3506013Burn-Charring
3506015Burn-Redness
3506017Burn-White/Waxy
3506021Deformity
3506023Drainage
3506025Foreign Body
3506031Laceration
3506033Mass/Lesion
3506035Normal
3506037Not Done
3506039Pain
3506041Puncture/Stab Wound
3506047Gunshot Wound
3506049Crush Injury
3506051Tenderness
3506053Swelling
3506055Contusion
Data Element Comment
Element eExam.06 - Face Assessment represents Version 2.2.1 element E15_03 NHTSA Injury Matrix Face The element
value choices have been expanded.
Published: 04/03/2025www.NEMSIS.orgPage 387
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.07
eExam.07 - Neck Assessment
Definition
The assessment findings associated with the patient's neck.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_06
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3507001Abrasion
3507003Avulsion
3507005Bleeding Controlled
3507007Bleeding Uncontrolled
3507009Burn-Blistering
3507011Burn-Charring
3507013Burn-Redness
3507015Burn-White/Waxy
3507017Decapitation
3507019Foreign Body
3507025JVD
3507027Laceration
3507029Normal
3507031Not Done
3507033Pain
3507035Puncture/Stab Wound
3507037Stridor
3507039Subcutaneous Air
3507045Tracheal Deviation-Left
3507047Tracheal Deviation-Right
3507049Gunshot Wound
3507051Crush Injury
3507053Swelling
3507055Contusion
3507057Deformity
3507059Tenderness
Data Element Comment
Element eExam.07 - Neck Assessment represents Version 2.2.1 elements E15_04 NHTSA Injury Matrix Neck and E16_06
Neck Assessment. The element value choices have been combined and expanded.
Published: 04/03/2025www.NEMSIS.orgPage 388
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.09
eExam.09 - Heart Assessment
Definition
The assessment findings associated with the patient's heart.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_08
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3509001Clicks
3509003Heart Sounds Decreased
3509005Murmur-Diastolic
3509007Murmur-Systolic
3509009Normal
3509011Not Done
3509013Rubs
3509015S1
3509017S2
3509019S3
3509021S4
Data Element Comment
Element eExam.09 - Heart Assessment represents Version 2.2.1 element E16_08 Heart Assessment. The element value
choices have been expanded.
Published: 04/03/2025www.NEMSIS.orgPage 389
NEMSIS Version 3.5.1.250403CP1

 
eExam.10
eExam.10 - Abdominal Assessment Finding Location
Definition
The location of the patient's abdomen assessment findings.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3510001Generalized
3510003Left Lower Quadrant
3510005Left Upper Quadrant
3510007Periumbilical
3510009Right Lower Quadrant
3510011Right Upper Quadrant
3510013Epigastric
Data Element Comment
"Element eExam.10 - Abdominal Assessment Finding Location represents Version 2.2.1 elements E15_06 NHTSA Injury
Matrix Abdomen AND E16_09 Abdomen Left Upper Assessment, E16_10 Abdomen Left Lower Assessment,E16_11
Abdomen Right Upper Assessment, and E16_12 Abdomen Right Lower Assessment. The element value choices have been
combined and expanded."
Published: 04/03/2025www.NEMSIS.orgPage 390
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.11
eExam.11 - Abdomen Assessment
Definition
The assessment findings associated with the patient's abdomen.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_09
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3511001Abrasion
3511003Avulsion
3511005Bleeding Controlled
3511007Bleeding Uncontrolled
3511009Bowel Sounds-Absent
3511011Bowel Sounds-Present
3511013Burn-Blistering
3511015Burn-Charring
3511017Burn-Redness
3511019Burn-White/Waxy
3511021Distention
3511023Foreign Body
3511025Guarding
3511031Laceration
3511033Mass/Lesion
3511035Mass-Pulsating
3511037Normal
3511039Not Done
3511041Pain
3511043Pregnant-Palpable Uterus
3511045Puncture/Stab Wound
3511051Tenderness
3511053Gunshot Wound
3511055Crush Injury
3511057Swelling
3511059Contusion
3511061Deformity
3511063Rebound Tenderness
3511065Rigidity
Data Element Comment
"Element eExam.11 - Abdomen Assessment represents Version 2.2.1 elements E15_06 NHTSA Injury Matrix Abdomen AND
E16_09 Abdomen Left Upper Assessment, E16_10 Abdomen Left Lower Assessment,E16_11 Abdomen Right Upper
Assessment, and E16_12 Abdomen Right Lower Assessment. The element value choices have been combined and
expanded."
Published: 04/03/2025www.NEMSIS.orgPage 391
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.12
eExam.12 - Pelvis/Genitourinary Assessment
Definition
The assessment findings associated with the patient's pelvis/genitourinary.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_13
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3512001Abrasion
3512003Avulsion
3512005Bleeding Controlled
3512007Bleeding Uncontrolled
3512009Bleeding-Rectal
3512011Bleeding-Urethral
3512013Bleeding-Vaginal
3512015Burn-Blistering
3512017Burn-Charring
3512019Burn-Redness
3512021Burn-White/Waxy
3512023Deformity
3512025Foreign Body
3512027Genital Injury
3512033Laceration
3512035Mass/Lesion
3512037Normal
3512039Not Done
3512041Pain
3512043Pelvic Fracture
3512045Pelvic Instability
3512047Penile Priapism/Erection
3512049Pregnant-Crowning
3512051Puncture/Stab Wound
3512057Tenderness
3512059Gunshot Wound
3512061Crush Injury
3512063Swelling
3512065Contusion
Data Element Comment
Element eExam.12 - Pelvis/Genitourinary Assessment represents Version 2.2.1 elements E15_09 NHTSA Injury Matrix Pelvis
and E16_13 GU Assessment. The element value choices have been combined and expanded.
Published: 04/03/2025www.NEMSIS.orgPage 392
NEMSIS Version 3.5.1.250403CP1

 
eExam.13
eExam.13 - Back and Spine Assessment Finding Location
Definition
The location of the patient's back and spine assessment findings.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3513001Back-General
3513003Cervical-Left
3513005Cervical-Midline
3513007Cervical-Right
3513009Lumbar-Left
3513011Lumbar-Midline
3513013Lumbar-Right
3513015Thoracic-Left
3513017Thoracic-Midline
3513019Thoracic-Right
3513021Sacral-Left
3513023Sacral-Midline
3513025Sacral-Right
3513029Flank-Left
3513031Flank-Right
Data Element Comment
Element eExam.14 - Back and Spine Assessment represents Version 2.2.1 NHTSA Injury Matrix elements E15_07 Spine and
E15_05 Thorax AND E16_14 Back Cervical Assessment, E16_15 Back Thoracic Assessment, and E16_16 Back
Lumbar/Sacral Assessment. The element value choices have been combined and expanded.
Published: 04/03/2025www.NEMSIS.orgPage 393
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.14
eExam.14 - Back and Spine Assessment
Definition
The assessment findings associated with the patient's spine (Cervical, Thoracic, Lumbar, and Sacral) and
back exam.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_14
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3514001Abrasion
3514003Avulsion
3514005Bleeding Controlled
3514007Bleeding Uncontrolled
3514009Burn-Blistering
3514011Burn-Charring
3514013Burn-Redness
3514015Burn-White/Waxy
3514017Deformity
3514019Foreign Body
3514025Laceration
3514027Normal
3514029Not Done
3514031Pain
3514033Pain with Range of Motion
3514035Puncture/Stab Wound
3514041Tenderness Costovertebral Angle
3514043Tenderness Midline Spinous Process
3514045Tenderness Paraspinous
3514047Gunshot Wound
3514049Crush Injury
3514051Swelling
3514053Contusion
3514055Tenderness
Data Element Comment
Element eExam.14 - Back and Spine Assessment represents Version 2.2.1 NHTSA Injury Matrix elements E15_07 Spine and
E15_05 Thorax AND E16_14 Back Cervical Assessment, E16_15 Back Thoracic Assessment, and E16_16 Back
Lumbar/Sacral Assessment. The element value choices have been combined and expanded.
Published: 04/03/2025www.NEMSIS.orgPage 394
NEMSIS Version 3.5.1.250403CP1

 
eExam.15
eExam.15 - Extremity Assessment Finding Location
Definition
The location of the patient's extremity assessment findings.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3515001Ankle-Left
3515003Ankle-Right
3515005Arm-Upper-Left
3515007Arm-Upper-Right
3515009Elbow-Left
3515011Elbow-Right
3515013Finger-2nd (Index)-Left
3515015Finger-2nd (Index)-Right
3515017Finger-3rd (Middle)-Left
3515019Finger-3rd (Middle)-Right
3515021Finger-4th (Ring)-Left
3515023Finger-4th (Ring)-Right
3515025Finger-5th (Smallest)-Left
3515027Finger-5th (Smallest)-Right
3515029Foot-Dorsal-Left
3515031Foot-Dorsal-Right
3515033Foot-Plantar-Left
3515035Foot-Plantar-Right
3515037Arm-Lower-Left
3515039Arm-Lower-Right
3515041Hand-Dorsal-Left
3515043Hand-Dorsal-Right
3515045Hand-Palm-Left
3515047Hand-Palm-Right
3515049Hip-Left
3515051Hip-Right
3515053Knee-Left
3515055Knee-Right
3515057Leg-Lower-Left
3515059Leg-Lower-Right
3515061Leg-Upper-Left
3515063Leg-Upper-Right
3515065Shoulder-Left
3515067Shoulder-Right
3515069Thumb-Left
3515071Thumb-Right
3515073Toe-1st (Big)-Left
3515075Toe-1st (Big)-Right
3515077Toe-2nd-Left
3515079Toe-2nd-Right
3515081Toe-3rd-Left
3515083Toe-3rd-Right
3515085Toe-4th-Left
3515087Toe-4th-Right
3515089Toe-5th (Smallest)-Left
3515091Toe-5th (Smallest)-Right
3515093Wrist-Left
3515095Wrist-Right
3515097Arm-Whole Arm and Hand-Left
3515099Arm-Whole Arm and Hand-Right
3515101Hand-Whole Hand-Left
Published: 04/03/2025www.NEMSIS.orgPage 395
NEMSIS Version 3.5.1.250403CP1

 
3515103Hand-Whole Hand-Right
3515105Leg-Whole Leg-Left
3515107Leg-Whole Leg-Right
3515109Foot-Whole Foot-Left
3515111Foot-Whole Foot-Right
Data Element Comment
Element eExam.16 - Extremities Assessment represents Version 2.2.1 NHTSA Injury Matrix elements E15_08 Upper
Extremities and E15_10 Lower Extremities AND E16_17 Extremities-Right Upper Assessment, E16_18 Extremities-Right
Lower Assessment, E16_19 Extremities-Left Upper Assessment, and E16_20 Extremities-Left Lower Assessment. The
element value choices have been combined and expanded.
Published: 04/03/2025www.NEMSIS.orgPage 396

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.16
eExam.16 - Extremities Assessment
Definition
The assessment findings associated with the patient's extremities.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_17
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3516001Abrasion
3516003Amputation-Acute
3516005Amputation-Previous
3516007Avulsion
3516009Bleeding Controlled
3516011Bleeding Uncontrolled
3516013Burn-Blistering
3516015Burn-Charring
3516017Burn-Redness
3516019Burn-White/Waxy
3516021Clubbing (of fingers)
3516023Crush Injury
3516025Deformity
3516027Dislocation
3516029Edema
3516031Foreign Body
3516033Fracture-Closed
3516035Fracture-Open
3516041Laceration
3516043Motor Function-Abnormal/Weakness
3516045Motor Function-Absent
3516047Motor Function-Normal
3516049Normal
3516051Not Done
3516053Pain
3516055Paralysis
3516057Pulse-Abnormal
3516059Pulse-Absent
3516061Pulse-Normal
3516063Puncture/Stab Wound
3516065Sensation-Abnormal
3516067Sensation-Absent
3516069Sensation-Normal
3516075Tenderness
3516077Gunshot Wound
3516079Swelling
3516081Contusion
3516083Arm Drift
3516085Cool/Cold to Touch
3516087Cyanosis
3516089Erythema/Flushing
3516091Hot/Warm to Touch
3516093Lividity
3516095Mottled
Published: 04/03/2025www.NEMSIS.orgPage 397
NEMSIS Version 3.5.1.250403CP1

 
3516097Pale
Data Element Comment
Element eExam.16 - Extremities Assessment represents Version 2.2.1 NHTSA Injury Matrix elements E15_08 Upper
Extremities and E15_10 Lower Extremities AND E16_17 Extremities-Right Upper Assessment, E16_18 Extremities-Right
Lower Assessment, E16_19 Extremities-Left Upper Assessment, and E16_20 Extremities-Left Lower Assessment. The
element value choices have been combined and expanded.
Published: 04/03/2025www.NEMSIS.orgPage 398

 
eExam.17
eExam.17 - Eye Assessment Finding Location
Definition
The location of the patient's eye assessment findings.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3517001Bilateral
3517003Left
3517005Right
Data Element Comment
Element eExam.17 - Eye Assessment Finding Location represents Version 2.2.1 elements E16_21 Eyes-Left Assessment and
E16_22 Eyes-Right Assessment. The eye location value choices have been expanded.
Published: 04/03/2025www.NEMSIS.orgPage 399
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.18
eExam.18 - Eye Assessment
Definition
The assessment findings of the patient's eye examination.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_21
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
35180011-mm
35180032-mm
35180053-mm
35180074-mm
35180095-mm
35180116-mm
35180137-mm
35180158-mm or >
3518017Blind
3518019Cataract Present
3518021Clouded
3518023Deformity
3518025Dysconjugate Gaze
3518027Foreign Body
3518029Glaucoma Present
3518031Hyphema
3518033Jaundiced Sclera
3518035Missing
3518037Non-Reactive
3518039Not Done
3518041Non-Reactive Prosthetic
3518043Nystagmus Noted
3518045Open Globe
3518047PERRL
3518049Pupil-Irregular/Teardrop
3518051Reactive
3518053Sluggish
3518055Swelling
3518057Contusion
3518059Puncture/Stab Wound
3518061Dilated
3518063Pin Point
Data Element Comment
Element eExam.18 - Eye Assessment represents Version 2.2.1 elements E16_21 Eyes-Left Assessment and E16_22
Eyes-Right Assessment. The eye assessment value choices have been combined and expanded.
Published: 04/03/2025www.NEMSIS.orgPage 400
NEMSIS Version 3.5.1.250403CP1

 
eExam.22
eExam.22 - Lung Assessment Finding Location
Definition
The location of the patient's lung assessment findings.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3522001Left
3522003Right
3522005Bilateral
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 401
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.23
eExam.23 - Lung Assessment
Definition
The assessment findings associated with the patient's lungs.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3523001Breath Sounds-Absent
3523003Breath Sounds-Decreased
3523005Breath Sounds-Equal
3523007Breath Sounds-Normal
3523009Foreign Body
3523011Increased Respiratory Effort
3523013Normal
3523015Not Done
3523017Pain
3523019Pain with Inspiration/Expiration
3523021Rales
3523023Rhonchi
3523025Rhonchi/Wheezing
3523027Stridor
3523029Wheezing-Expiratory
3523031Wheezing-Inspiratory
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 402
NEMSIS Version 3.5.1.250403CP1

 
eExam.24
eExam.24 - Chest Assessment Finding Location
Definition
The location of the patient's chest assessment findings.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
3524001Left - Anterior
3524003Left - Posterior (DEPRECATED)
3524005Right - Anterior
3524007Right - Posterior (DEPRECATED)
3524009General - Anterior
3524011General - Posterior
3524013Left - Side
3524015Right - Side
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 403
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.25
eExam.25 - Chest Assessment
Definition
The assessment findings associated with the patient's chest.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3525001Abrasion
3525003Avulsion
3525005Accessory Muscles Used with Breathing
3525007Bleeding Controlled
3525009Bleeding Uncontrolled
3525011Burn-Blistering
3525013Burn-Charring
3525015Burn-Redness
3525017Burn-White/Waxy
3525019Crush Injury
3525021Deformity
3525023Flail Segment
3525025Implanted Device
3525027Laceration
3525029Normal
3525031Not Done
3525033Pain
3525035Pain with Inspiration/Expiration
3525037Puncture/Stab Wound
3525039Retraction
3525041Tenderness
3525043Gunshot Wound
3525045Swelling
3525047Contusion
3525049Tenderness-General (DEPRECATED)
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 404
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.19
eExam.19 - Mental Status Assessment
Definition
The assessment findings of the patient's mental status examination.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_23
Is NillableNo
UsageOptional
Recurrence0 : M
Associated Performance Measure Initiatives
Cardiac ArrestStroke
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3519001Combative
3519003Confused
3519005Hallucinations
3519007Normal Baseline for Patient
3519009Not Done
3519011Oriented-Person
3519013Oriented-Place
3519015Oriented-Event
3519017Oriented-Time
3519021Unresponsive
3519023Agitation
3519025Somnolent
3519027Stupor
3519029Altered mental status, unspecified
3519031Developmentally Impaired
3519033Disorientation, unspecified
3519035Pharmacologically Paralyzed
3519037Pharmacologically Sedated
3519039Psychologically Impaired
3519041Slowness and poor responsiveness
3519043State of emotional shock and stress, unspecified
3519045Strange and inexplicable behavior
3519047Uncooperative
3519049Unspecified coma
Data Element Comment
Element eExam.19 - Mental Status Assessment represents Version 2.2.1 element E16_23 Mental Status Assessment. The
element value choices have been expanded.
Published: 04/03/2025www.NEMSIS.orgPage 405
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801005 - Exam Finding Not Present
eExam.20
eExam.20 - Neurological Assessment
Definition
The assessment findings of the patient's neurological examination.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesNo
Version 2 ElementE16_24
Is NillableNo
UsageOptional
Recurrence0 : M
Associated Performance Measure Initiatives
Cardiac ArrestStroke
Attributes
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
3520001Aphagia
3520003Aphasia
3520005Cerebellar Function-Abnormal
3520007Cerebellar Function-Normal
3520009Decerebrate Posturing
3520011Decorticate Posturing
3520013Gait-Abnormal
3520015Gait-Normal
3520017Hemiplegia-Left
3520019Hemiplegia-Right
3520021Normal Baseline for Patient
3520023Not Done
3520026Status Seizure
3520055Other Seizures
3520027Speech Normal
3520029Speech Slurring
3520031Strength-Asymmetric
3520033Strength-Normal
3520035Strength-Symmetric
3520037Tremors
3520039Weakness-Facial Droop-Left
3520041Weakness-Facial Droop-Right
3520043Weakness-Left Sided
3520045Weakness-Right Sided
3520051Arm Drift-Left
3520053Arm Drift-Right
Data Element Comment
Element eExam.20 - Neurological Assessment represents Version 2.2.1 element E16_24 Neurological Assessment. The
element value choices have been expanded.
Published: 04/03/2025www.NEMSIS.orgPage 406
NEMSIS Version 3.5.1.250403CP1

 
8801023 - Unable to Complete
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eExam.21
eExam.21 - Stroke/CVA Symptoms Resolved
Definition
Indication if the Stroke/CVA Symptoms resolved and when.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Stroke
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
3521001No
3521003Yes-Resolved Prior to EMS Arrival
3521005Yes-Resolved in EMS Presence
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Stroke/CVA Symptoms Resolved is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Stroke/CVA Symptoms Resolved has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Stroke/CVA Symptoms Resolved has a Pertinent Negative, it should be empty and it
should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 407
NEMSIS Version 3.5.1.250403CP1

 
eProtocols
Published: 04/03/2025www.NEMSIS.orgPage 408

 
N, LES
eProtocols.02 - Protocol Age Category
0 : 1
N, LRSN
eProtocols.01 - Protocols Used
1 : 1
C
eProtocols.ProtocolGroup
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eProtocols
eProtocols
Published: 04/03/2025www.NEMSIS.orgPage 409

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProtocols.01
eProtocols.01 - Protocols Used
Definition
The protocol used by EMS personnel to direct the clinical care of the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE17_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9914001Airway
9914003Airway-Failed
9914005Airway-Obstruction/Foreign Body
9914007Airway-Rapid Sequence Induction (RSI-Paralytic)
9914009Airway-Sedation Assisted (Non-Paralytic)
9914011Cardiac Arrest-Asystole
9914013Cardiac Arrest-Hypothermia-Therapeutic
9914015Cardiac Arrest-Pulseless Electrical Activity
9914017Cardiac Arrest-Ventricular Fibrillation/ Pulseless Ventricular Tachycardia
9914019Cardiac Arrest-Post Resuscitation Care
9914021Environmental-Altitude Sickness
9914023Environmental-Cold Exposure
9914025Environmental-Frostbite/Cold Injury
9914027Environmental-Heat Exposure/Exhaustion
9914029Environmental-Heat Stroke/Hyperthermia
9914031Environmental-Hypothermia
9914033Exposure-Airway/Inhalation Irritants
9914035Exposure-Biological/Infectious
9914037Exposure-Blistering Agents
9914041Exposure-Chemicals to Eye
9914043Exposure-Cyanide
9914045Exposure-Explosive/ Blast Injury
9914047Exposure-Nerve Agents
9914049Exposure-Radiologic Agents
9914051General-Back Pain
9914053General-Behavioral/Patient Restraint
9914055General-Cardiac Arrest
9914057General-Dental Problems
9914059General-Epistaxis
9914061General-Fever
9914063General-Individualized Patient Protocol
9914065General-Indwelling Medical Devices/Equipment
9914067General-IV Access
9914069General-Medical Device Malfunction
9914071General-Pain Control
9914073General-Spinal Immobilization/Clearance
9914075General-Universal Patient Care/ Initial Patient Contact
9914077Injury-Amputation
9914079Injury-Bites and Envenomations-Land
9914081Injury-Bites and Envenomations-Marine
9914083Injury-Bleeding/ Hemorrhage Control
Published: 04/03/2025www.NEMSIS.orgPage 410
NEMSIS Version 3.5.1.250403CP1

 
9914085Injury-Burns-Thermal
9914087Injury-Cardiac Arrest
9914089Injury-Crush Syndrome
9914091Injury-Diving Emergencies
9914093Injury-Drowning/Near Drowning
9914095Injury-Electrical Injuries
9914097Injury-Extremity
9914099Injury-Eye
9914101Injury-Head
9914103Injury-Impaled Object
9914105Injury-Multisystem
9914107Injury-Spinal Cord
9914109Medical-Abdominal Pain
9914111Medical-Allergic Reaction/Anaphylaxis
9914113Medical-Altered Mental Status
9914115Medical-Bradycardia
9914117Medical-Cardiac Chest Pain
9914119Medical-Diarrhea
9914121Medical-Hyperglycemia
9914123Medical-Hypertension
9914125Medical-Hypoglycemia/Diabetic Emergency
9914127Medical-Hypotension/Shock (Non-Trauma)
9914129Medical-Influenza-Like Illness/ Upper Respiratory Infection
9914131Medical-Nausea/Vomiting
9914133Medical-Newborn/ Neonatal Resuscitation
9914135General-Overdose/Poisoning/Toxic Ingestion
9914137Medical-Pulmonary Edema/CHF
9914139Medical-Respiratory Distress/Asthma/COPD/Reactive Airway
9914141Medical-Seizure
9914143Medical-ST-Elevation Myocardial Infarction (STEMI)
9914145Medical-Stroke/TIA
9914147Medical-Supraventricular Tachycardia (Including Atrial Fibrillation)
9914149Medical-Syncope
9914151Medical-Ventricular Tachycardia (With Pulse)
9914153Not Done
9914155OB/GYN-Childbirth/Labor/Delivery
9914157OB/GYN-Eclampsia
9914159OB/GYN-Gynecologic Emergencies
9914161OB/GYN-Pregnancy Related Emergencies
9914163OB/GYN-Post-partum Hemorrhage
9914165Other
9914167Exposure-Carbon Monoxide
9914169Cardiac Arrest-Do Not Resuscitate
9914171Cardiac Arrest-Special Resuscitation Orders
9914173Exposure-Smoke Inhalation
9914175General-Community Paramedicine / Mobile Integrated Healthcare
9914177General-Exception Protocol
9914179General-Extended Care Guidelines
9914181General-Interfacility Transfers
9914183General-Law Enforcement - Blood for Legal Purposes
9914185General-Law Enforcement - Assist with Law Enforcement Activity
9914187General-Neglect or Abuse Suspected
9914189General-Refusal of Care
9914191Injury-Mass/Multiple Casualties
9914193Injury-Thoracic
9914195Medical-Adrenal Insufficiency
9914197Medical-Apparent Life Threatening Event (ALTE)
9914199Medical-Tachycardia
9914201Cardiac Arrest-Determination of Death / Withholding Resuscitative Efforts
9914203Injury-Conducted Electrical Weapon (e.g., Taser)
9914205Injury-Facial Trauma
9914207Injury-General Trauma Management
9914209Injury-Lightning/Lightning Strike
9914211Injury-SCUBA Injury/Accidents
9914213Injury-Topical Chemical Burn
9914215Medical-Beta Blocker Poisoning/Overdose
9914217Medical-Calcium Channel Blocker Poisoning/Overdose
9914219Medical-Opioid Poisoning/Overdose
9914221Medical-Respiratory Distress-Bronchiolitis
Published: 04/03/2025www.NEMSIS.orgPage 411

 
9914223Medical-Respiratory Distress-Croup
9914225Medical-Stimulant Poisoning/Overdose
Data Element Comment
Protocols are grouped into Airway, Cardiac, Environmental, Exposure, General, Injury, Medical, and OB/GYN. 
There is a new data element eProtocols.02 to indicate whether the protocol is Adult, Pediatric, or General (both). 
State and local entities can add additional protocols to the list but the additional protocols must map to these uniform codes.
The protocol code list should be derived from dConfiguration.05 and/or dConfiguration.10
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Protocols Used is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Protocols Used has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 412

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eProtocols.02
eProtocols.02 - Protocol Age Category
Definition
The age group the protocol is written to address.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
3602001Adult Only
3602003General
3602005Pediatric Only
Data Element Comment
Protocols are grouped into Airway, Environmental, Exposure, General, Injury, Medical, and OB/GYN. -There is a new data
element to indicate whether the protocol is Adult, Pediatric, or General (both).
Version 3 Changes Implemented
Added to better document protocol use.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Protocol Age Category is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Protocol Age Category has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 413
NEMSIS Version 3.5.1.250403CP1

 
eMedications
Published: 04/03/2025www.NEMSIS.orgPage 414

 
N, LES
eMedications.13 - Medication Administered by Another Unit
0 : 1
O
eMedications.12 - Medication Authorizing Physician
0 : 1
O
eMedications.11 - Medication Authorization
0 : 1
N, LRSN
eMedications.10 - Role/Type of Person Administering Medication
1 : 1
N, LES
eMedications.09 - Medication Crew (Healthcare Professionals) ID
0 : 1
CN, LRSN
eMedications.08 - Medication Complication
1 : M
N, LRSN
eMedications.07 - Response to Medication
1 : 1
N, LRSN
eMedications.06 - Medication Dosage Units
1 : 1
N, LRSN
eMedications.05 - Medication Dosage
1 : 1
eMedications.DosageGroup
1 : 1
N, L, PRSN
eMedications.04 - Medication Administered Route
1 : 1
N, L, PRSN
eMedications.03 - Medication Administered
1 : 1
N, LRSN
eMedications.02 - Medication Administered Prior to this Unit's EMS Care
1 : 1
N, LRSN
eMedications.01 - Date/Time Medication Administered
1 : 1
C
eMedications.MedicationGroup
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eMedications
eMedications
Published: 04/03/2025www.NEMSIS.orgPage 415

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.01
eMedications.01 - Date/Time Medication Administered
Definition
The date/time medication administered to the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time Medication Administered is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 416
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time Medication Administered has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e136WarningDate/Time Medication Administered should be recorded, unless Medication Administered Prior to
this Unit's EMS Care is "Yes".
nemSch_e137WarningDate/Time Medication Administered should not be earlier than Unit Notified by Dispatch
Date/Time, unless Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e138WarningDate/Time Medication Administered should not be earlier than Arrived at Patient Date/Time,
unless Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e139WarningDate/Time Medication Administered should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e140WarningDate/Time Medication Administered should not be later than Unit Back in Service Date/Time.
nemSch_e141WarningDate/Time Medication Administered should not be later than Arrived at Patient Date/Time when
Medication Administered Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 417

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.02
eMedications.02 - Medication Administered Prior to this Unit's EMS Care
Definition
Indicates that the medication administration which is documented was administered prior to this EMS units
care.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
This is the NEMSIS Version 3 method to document prior aid.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Administered Prior to this Unit's EMS Care is empty, it should have a Not
Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Administered Prior to this Unit's EMS Care has a Not Value (Not Applicable,
Not Recorded, or Not Reporting), it should be empty.
nemSch_e136WarningDate/Time Medication Administered should be recorded, unless Medication Administered Prior
to this Unit's EMS Care is "Yes".
nemSch_e137WarningDate/Time Medication Administered should not be earlier than Unit Notified by Dispatch
Date/Time, unless Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e138WarningDate/Time Medication Administered should not be earlier than Arrived at Patient Date/Time,
unless Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e139WarningDate/Time Medication Administered should not be later than Destination Patient Transfer of
Care Date/Time.
nemSch_e140WarningDate/Time Medication Administered should not be later than Unit Back in Service Date/Time.
nemSch_e141WarningDate/Time Medication Administered should not be later than Arrived at Patient Date/Time when
Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e146WarningMedication Administered Route should be recorded, unless Medication Administered Prior to this
Unit's EMS Care is "Yes".
nemSch_e147WarningMedication Dosage should be recorded, unless Medication Administered Prior to this Unit's EMS
Care is "Yes".
nemSch_e148WarningMedication Dosage Units should be recorded, unless Medication Administered Prior to this Unit's
EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 418
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e150WarningRole/Type of Person Administering Medication should be recorded, unless Medication
Administered Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 419

 
9924005 - SNOMED-CT9924003 - RxNorm
8801027 - Order Criteria Not Met
8801023 - Unable to Complete8801019 - Refused8801009 - Medication Already Taken
8801007 - Medication Allergy8801003 - Denied By Order8801001 - Contraindication Noted
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.03
eMedications.03 - Medication Administered
Definition
The medication administered to the patient.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE18_03
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code Type
Constraints
Data Type
string
minLength
2
maxLength
9
Data Element Comment
List of medications based on RxNorm (RXCUI) code and SNOMED-CT codes for blood products. 
Reference the NEMSIS Suggested Lists at:  https://nemsis.org/technical-resources/version-3/version-3-resources/
RxNorm 
Website -  http://www.nlm.nih.gov/research/umls/rxnorm/docs/rxnormfiles.html
Product - RxNorm Full Monthly Release 
SNOMED-CT 
Website:  http://www.nlm.nih.gov/research/umls/Snomed/snomed_main.html
Product: Product - UMLS Metathesaurus. 
Allowable SNOMED-CT codes are: 
116762002 Administration of blood product 
116795008 Transfusion of cryoprecipitate 
116861002 Transfusion of fresh frozen plasma 
116865006 Administration of albumin 
180208003 Intravenous blood transfusion of platelets 
33389009 Transfusion of whole blood 
71493000 Transfusion of packed red blood cells
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Administered is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Administered has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e006ErrorWhen Medication Administered has a Pertinent Negative, it should have a value and it should
Published: 04/03/2025www.NEMSIS.orgPage 420
NEMSIS Version 3.5.1.250403CP1

 
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e142WarningMedication Administered should be recorded when a medication is administered.
nemSch_e143ErrorMedication Administered should be a code of between 2 and 7 digits when Code Type is
"RxNorm".
nemSch_e144ErrorMedication Administered should be a SNOMED code specifically allowed in the data dictionary
when Code Type is "SNOMED".
nemSch_e145ErrorMedication Administered should be an RxNorm code of between 2 and 7 digits or a SNOMED
code specifically allowed in the data dictionary.
Published: 04/03/2025www.NEMSIS.orgPage 421

 
8801023 - Unable to Complete
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.04
eMedications.04 - Medication Administered Route
Definition
The route medication was administered to the patient.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE18_04
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
9927001Blow-By
9927003Buccal
9927005Endotracheal Tube (ET)
9927007Gastrostomy Tube
9927009Inhalation
9927011Intraarterial
9927013Intradermal
9927015Intramuscular (IM)
9927017Intranasal
9927019Intraocular
9927021Intraosseous (IO)
9927023Intravenous (IV)
9927025Nasal Cannula
9927027Nasogastric
9927029Nasotracheal Tube
9927031Non-Rebreather Mask
9927033Ophthalmic
9927035Oral
9927037Other/miscellaneous
9927039Otic
9927041Re-breather mask
9927043Rectal
9927045Subcutaneous
9927047Sublingual
9927049Topical
9927051Tracheostomy
9927053Transdermal
9927055Urethral
9927057Ventimask
9927059Wound
9927061Portacath
9927063Auto Injector
9927065BVM
9927067CPAP
9927069IV Pump
9927071Nebulizer
9927073Umbilical Artery Catheter
9927075Umbilical Venous Catheter
Data Element Comment
This medication route list represents a sub-group of values from the Data Elements for Emergency Department Systems
(DEEDS), pertaining to prehospital care. 
Published: 04/03/2025www.NEMSIS.orgPage 422
NEMSIS Version 3.5.1.250403CP1

 
DEEDS Version 1.0 was utilized for this list: . The listhttp://www.sciencedirect.com/science/article/pii/S0196064498703178
can be found on page 152 of 274 of the PDF document in Section 5, 5.13 Current Therapeutic Medication Route.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Administered Route is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Administered Route has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Medication Administered Route has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e146WarningMedication Administered Route should be recorded, unless Medication Administered Prior to this
Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 423

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.05
eMedications.05 - Medication Dosage
Definition
The dose or amount of the medication administered to the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_05
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
decimal
totalDigits
9
fractionDigits
3
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Dosage is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Dosage has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e147WarningMedication Dosage should be recorded, unless Medication Administered Prior to this Unit's EMS
Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 424
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.06
eMedications.06 - Medication Dosage Units
Definition
The unit of medication dosage administered to patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_06
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
3706001Grams (gms)
3706003Inches (in)
3706005International Units (IU)
3706007Keep Vein Open (kvo)
3706009Liters (l)
3706013Metered Dose (MDI)
3706015Micrograms (mcg)
3706017Micrograms per Kilogram per Minute (mcg/kg/min)
3706019Milliequivalents (mEq)
3706021Milligrams (mg)
3706023Milligrams per Kilogram Per Minute (mg/kg/min)
3706025Milliliters (ml)
3706027Milliliters per Hour (ml/hr)
3706029Other
3706031Centimeters (cm)
3706033Drops (gtts)
3706035Liters Per Minute (LPM [gas])
3706037Micrograms per Minute (mcg/min)
3706039Milligrams per Kilogram (mg/kg)
3706041Milligrams per Minute (mg/min)
3706043Puffs
3706045Units per Hour (units/hr)
3706047Micrograms per Kilogram (mcg/kg)
3706049Units
3706051Units per Kilogram per Hour (units/kg/hr)
3706053Units per Kilogram (units/kg)
3706055Milligrams per Hour (mg/hr)
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Dosage Units is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Dosage Units has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e148WarningMedication Dosage Units should be recorded, unless Medication Administered Prior to this Unit's
EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 425
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.07
eMedications.07 - Response to Medication
Definition
The patient's response to the medication.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_07
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9916001Improved
9916003Unchanged
9916005Worse
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Response to Medication is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Response to Medication has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 426
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.08
eMedications.08 - Medication Complication
Definition
Any complication (abnormal effect on the patient) associated with the administration of the medication to the
patient by EMS.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_08
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
3708001Altered Mental Status
3708003Apnea
3708005Bleeding
3708007Bradycardia
3708009Bradypnea
3708011Diarrhea
3708013Extravasation
3708015Hypertension
3708017Hyperthermia
3708019Hypotension
3708021Hypothermia
3708023Hypoxia
3708025Injury
3708029Nausea
3708031None
3708033Other
3708035Respiratory Distress
3708037Tachycardia
3708039Tachypnea
3708041Vomiting
3708043Itching
3708045Urticaria
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Complication is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Complication has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Medication Complication has a Not Value, no other value should be recorded.
nemSch_e149WarningWhen Medication Complication is "None", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 427
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eMedications.09
eMedications.09 - Medication Crew (Healthcare Professionals) ID
Definition
The statewide assigned ID number of the EMS crew member giving the treatment to the patient.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_09
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
How should the state ID for an EMS professional be record when working on an event in 2 states. The ID used would typically
be based on the EMS agency's state license specific to each EMS professional. Used for eProcedures.09 (Procedure Crew
Members ID) as well.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Crew (Healthcare Professionals) ID is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Crew (Healthcare Professionals) ID has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 428
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.10
eMedications.10 - Role/Type of Person Administering Medication
Definition
The type (level) of EMS or Healthcare Professional Administering the Medication. For medications
administered prior to EMS arrival, this may be a non-EMS healthcare professional.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9905001Advanced Emergency Medical Technician (AEMT)
9905002Emergency Medical Technician - Intermediate
9905003Emergency Medical Responder (EMR)
9905005Emergency Medical Technician (EMT)
9905007Paramedic
9905019Other Healthcare Professional
9905021Other Non-Healthcare Professional
9905025Physician
9905027Respiratory Therapist
9905029Student
9905031Critical Care Paramedic
9905033Community Paramedicine
9905035Nurse Practitioner
9905037Physician Assistant
9905039Licensed Practical Nurse (LPN)
9905041Registered Nurse
9905043Patient
9905045Lay Person
9905047Law Enforcement
9905049Family Member
9905051Fire Personnel (non EMS)
Data Element Comment
Added to document the type of healthcare professional administering the medication. This could be auto-completed from the
crew ID but is necessary to document medication administration prior to EMS arrival. State may maintain an enumerated list
but must collapse to the National Standard. 
The category EMT-Intermediate includes EMS professionals with an "85" or "99" certification level.
Version 3 Changes Implemented
Added to better document the type of healthcare professional who administered the medication.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Role/Type of Person Administering Medication is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Role/Type of Person Administering Medication has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e150WarningRole/Type of Person Administering Medication should be recorded, unless Medication
Administered Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 429
NEMSIS Version 3.5.1.250403CP1

 
Published: 04/03/2025www.NEMSIS.orgPage 430

 
eMedications.11
eMedications.11 - Medication Authorization
Definition
The type of treatment authorization obtained.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE18_10
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9918001On-Line (Remote Verbal Order)
9918003On-Scene
9918005Protocol (Standing Order)
9918007Written Orders (Patient Specific)
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 431
NEMSIS Version 3.5.1.250403CP1

 
eMedications.12
eMedications.12 - Medication Authorizing Physician
Definition
The name of the authorizing physician ordering the medication administration if the order was provided by
any manner other than protocol (standing order) in eMedications.11.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE18_11
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 432
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
State
eMedications.13
eMedications.13 - Medication Administered by Another Unit
Definition
Indicates the medication was administered by someone other than the EMS clinicians in this EMS unit. This
is not for prior to arrival medications, but for medications administered when multiple units/caregivers are on
scene simultaneously providing patient care.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Administered by Another Unit is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Administered by Another Unit has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 433
NEMSIS Version 3.5.1.250403CP1

 
eProcedures
Published: 04/03/2025www.NEMSIS.orgPage 434

 
N, LES
eProcedures.15 - Procedure Performed by Another Unit
0 : 1
CN, LES
eProcedures.14 - Airway Placement Technique
0 : M
N, LES
eProcedures.13 - Vascular Access Location
0 : 1
O
eProcedures.12 - Procedure Authorizing Physician
0 : 1
O
eProcedures.11 - Procedure Authorization
0 : 1
N, LRSN
eProcedures.10 - Role/Type of Person Performing the Procedure
1 : 1
N, LES
eProcedures.09 - Procedure Crew Members ID
0 : 1
N, LRSN
eProcedures.08 - Response to Procedure
1 : 1
CN, LRSN
eProcedures.07 - Procedure Complication
1 : M
N, LRSN
eProcedures.06 - Procedure Successful
1 : 1
N, LRSN
eProcedures.05 - Number of Procedure Attempts
1 : 1
O
eProcedures.04 - Size of Procedure Equipment
0 : 1
N, L, PRSN
eProcedures.03 - Procedure
1 : 1
N, LRSN
eProcedures.02 - Procedure Performed Prior to this Unit's EMS Care
1 : 1
N, LRSN
eProcedures.01 - Date/Time Procedure Performed
1 : 1
C
eProcedures.ProcedureGroup
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eProcedures
eProcedures
Published: 04/03/2025www.NEMSIS.orgPage 435

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.01
eProcedures.01 - Date/Time Procedure Performed
Definition
The date/time the procedure was performed on the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time Procedure Performed is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 436
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time Procedure Performed has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e151WarningDate/Time Procedure Performed should be recorded, unless Procedure Performed Prior to this
Unit's EMS Care is "Yes".
nemSch_e152WarningDate/Time Procedure Performed should not be earlier than Unit Notified by Dispatch Date/Time,
unless Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e153WarningDate/Time Procedure Performed should not be earlier than Arrived at Patient Date/Time, unless
Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e154WarningDate/Time Procedure Performed should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e155WarningDate/Time Procedure Performed should not be later than Unit Back in Service Date/Time.
nemSch_e156WarningDate/Time Procedure Performed should not be later than Arrived at Patient Date/Time when
Procedure Performed Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 437

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.02
eProcedures.02 - Procedure Performed Prior to this Unit's EMS Care
Definition
Indicates that the procedure which was performed and documented was performed prior to this EMS units
care.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
This is the NEMSIS Version 3 method to document prior aid.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Procedure Performed Prior to this Unit's EMS Care is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure Performed Prior to this Unit's EMS Care has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e151WarningDate/Time Procedure Performed should be recorded, unless Procedure Performed Prior to this
Unit's EMS Care is "Yes".
nemSch_e152WarningDate/Time Procedure Performed should not be earlier than Unit Notified by Dispatch Date/Time,
unless Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e153WarningDate/Time Procedure Performed should not be earlier than Arrived at Patient Date/Time, unless
Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e154WarningDate/Time Procedure Performed should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e155WarningDate/Time Procedure Performed should not be later than Unit Back in Service Date/Time.
nemSch_e156WarningDate/Time Procedure Performed should not be later than Arrived at Patient Date/Time when
Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e159WarningRole/Type of Person Performing the Procedure should be recorded, unless Procedure
Performed Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 438
NEMSIS Version 3.5.1.250403CP1

 
8801027 - Order Criteria Not Met8801023 - Unable to Complete
8801019 - Refused8801003 - Denied By Order8801001 - Contraindication Noted
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.03
eProcedures.03 - Procedure
Definition
The procedure performed on the patient.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE19_03
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Constraints
Data Type
integer
maxInclusive
999999999999999999
minInclusive
100000
Data Element Comment
Procedures which are recorded as a Vital Sign do not have to be documented in the Procedure Section. 
Code list is represented in SNOMEDCT. Reference the NEMSIS Suggested Lists at:
https://nemsis.org/technical-resources/version-3/version-3-resource-repository/ 
SNOMEDCT 
Website: http://www.nlm.nih.gov/research/umls/Snomed/snomed_main.html 
Product: Product - UMLS Metathesaurus
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Procedure is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should be
empty.
nemSch_e007ErrorWhen Procedure has a Pertinent Negative, it should have a value and it should not have a Not
Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e157WarningProcedure should be recorded when a procedure is performed.
Published: 04/03/2025www.NEMSIS.orgPage 439
NEMSIS Version 3.5.1.250403CP1

 
eProcedures.04
eProcedures.04 - Size of Procedure Equipment
Definition
The size of the equipment used in the procedure on the patient.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE19_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
20
Data Element Comment
Need business logic to require detail of size appropriate for the procedure.
Published: 04/03/2025www.NEMSIS.orgPage 440
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.05
eProcedures.05 - Number of Procedure Attempts
Definition
The number of attempts taken to complete a procedure or intervention regardless of success.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_05
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
integer
minInclusive
1
maxInclusive
10
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Number of Procedure Attempts is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Number of Procedure Attempts has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 441
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.06
eProcedures.06 - Procedure Successful
Definition
Indicates that this individual procedure attempt which was performed on the patient was successful.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_06
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Procedure Successful is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure Successful has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 442
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.07
eProcedures.07 - Procedure Complication
Definition
Any complication (abnormal effect on the patient) associated with the performance of the procedure on the
patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_07
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayPediatricTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
3907001Altered Mental Status
3907003Apnea
3907005Bleeding
3907007Bradypnea
3907009Diarrhea
3907011Esophageal Intubation-immediately
3907013Esophageal Intubation-other
3907015Extravasation
3907017Hypertension
3907019Hyperthermia
3907021Hypotension
3907023Hypothermia
3907025Hypoxia
3907027Injury
3907031Nausea
3907033None
3907035Other
3907039Respiratory Distress
3907041Tachycardia
3907043Tachypnea
3907045Vomiting
3907047Bradycardia
3907049Itching
3907051Urticaria
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Procedure Complication is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure Complication has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Procedure Complication has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 443
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e158WarningWhen Procedure Complication is "None", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 444

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.08
eProcedures.08 - Response to Procedure
Definition
The patient's response to the procedure.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_08
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9916001Improved
9916003Unchanged
9916005Worse
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Response to Procedure is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Response to Procedure has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 445
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eProcedures.09
eProcedures.09 - Procedure Crew Members ID
Definition
The statewide assigned ID number of the EMS crew member performing the procedure on the patient.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_09
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
For an incident that occurs in multiple states, the certification ID number the EMS agency would typically use is based on the
EMS agency's state license specific to each EMS professional. If the incident needs to be reported to each state, then the
EMS Agency Number for each state should be submitted as well as the certification ID numbers for each EMS professional on
the unit.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Procedure Crew Members ID is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure Crew Members ID has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 446
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.10
eProcedures.10 - Role/Type of Person Performing the Procedure
Definition
The type (level) of EMS or Healthcare Professional performing the procedure. For procedures performed
prior to EMS arrival, this may be a non-EMS healthcare professional.
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
9905001Advanced Emergency Medical Technician (AEMT)
9905002Emergency Medical Technician - Intermediate
9905003Emergency Medical Responder (EMR)
9905005Emergency Medical Technician (EMT)
9905007Paramedic
9905019Other Healthcare Professional
9905021Other Non-Healthcare Professional
9905025Physician
9905027Respiratory Therapist
9905029Student
9905031Critical Care Paramedic
9905033Community Paramedicine
9905035Nurse Practitioner
9905037Physician Assistant
9905039Licensed Practical Nurse (LPN)
9905041Registered Nurse
9905043Patient
9905045Lay Person
9905047Law Enforcement
9905049Family Member
9905051Fire Personnel (non EMS)
Data Element Comment
Added to document the type of healthcare professional administering the medication. This could be auto-completed from the
crew ID but is necessary to document medication administration prior to EMS arrival. State may maintain an enumerated list
but must collapse to the National Standard. 
The category EMT-Intermediate includes EMS professionals with an "85" or "99" certification level.
Version 3 Changes Implemented
Added to document the type of healthcare professional performing the procedure.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Role/Type of Person Performing the Procedure is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Role/Type of Person Performing the Procedure has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 447
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e159WarningRole/Type of Person Performing the Procedure should be recorded, unless Procedure
Performed Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 448

 
eProcedures.11
eProcedures.11 - Procedure Authorization
Definition
The type of treatment authorization obtained.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE19_10
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9918001On-Line (Remote Verbal Order)
9918003On-Scene
9918005Protocol (Standing Order)
9918007Written Orders (Patient Specific)
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 449
NEMSIS Version 3.5.1.250403CP1

 
eProcedures.12
eProcedures.12 - Procedure Authorizing Physician
Definition
The name of the authorizing physician ordering the procedure, if the order was provided by any manner
other than protocol (standing order) in eProcedures.11.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE19_11
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 450
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 451
NEMSIS Version 3.5.1.250403CP1

 
be documented with each procedure and attempt. If the vascular access has been established prior to EMS, this should be
documented as such.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Vascular Access Location is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Vascular Access Location has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 452

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
State
eProcedures.14
eProcedures.14 - Airway Placement Technique
Definition
The manner/equipment used during the placement of the advanced airway.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
3914001Blind Digital Technique
3914003Cross Finger Technique
3914005Direct Laryngoscopy
3914007Fiberoptic Laryngoscopy
3914009Indirect Laryngoscopy
3914011Video Laryngoscopy
Data Element Comment
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Airway Placement Technique is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Airway Placement Technique has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Airway Placement Technique has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 453
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
State
eProcedures.15
eProcedures.15 - Procedure Performed by Another Unit
Definition
Indicates the procedure was performed by someone other than the EMS clinicians in this EMS unit. This is
not for prior to arrival procedures, but for procedures performed when multiple units/caregivers are on scene
simultaneously providing patient care.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
This is the method to document when care is provided by others when multiple units are present at the scene.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Procedure Performed by Another Unit is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Procedure Performed by Another Unit has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 454
NEMSIS Version 3.5.1.250403CP1

 
eAirway
Published: 04/03/2025www.NEMSIS.orgPage 455

 
O
eAirway.11 - Date/Time Invasive Airway Placement Attempts Abandoned
0 : 1
O
eAirway.10 - Date/Time Decision to Manage the Patient with an Invasive Airway
0 : 1
COS
eAirway.09 - Suspected Reasons for Failed Airway Management
0 : M
CN, L, PES
eAirway.08 - Airway Complications Encountered
0 : M
N, LES
eAirway.07 - Crew Member ID
0 : 1
N, LES
eAirway.06 - Type of Individual Confirming Airway Device Placement
0 : 1
O
eAirway.05 - Tube Depth
0 : 1
CN, LES
eAirway.04 - Airway Device Placement Confirmed Method
0 : M
N, LES
eAirway.03 - Airway Device Being Confirmed
0 : 1
N, LES
eAirway.02 - Date/Time Airway Device Placement Confirmation
0 : 1
GC
eAirway.ConfirmationGroup
0 : M
CN, LES
eAirway.01 - Indications for Invasive Airway
0 : M
eAirway.AirwayGroup
0 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eAirway
eAirway
Published: 04/03/2025www.NEMSIS.orgPage 456

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.01
eAirway.01 - Indications for Invasive Airway
Definition
The clinical indication for performing invasive airway management.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
4001001Adequate Airway Reflexes/Effort, Potential for Compromise
4001003Airway Reflex Compromised
4001005Apnea or Agonal Respirations
4001007Illness Involving Airway
4001009Injury Involving Airway
4001011Other
4001013Ventilatory Effort Compromised
Data Element Comment
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Indications for Invasive Airway is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Indications for Invasive Airway has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Indications for Invasive Airway has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 457
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.02
eAirway.02 - Date/Time Airway Device Placement Confirmation
Definition
The date and time the airway device placement was confirmed.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
SAD=Supraglottic Airway Device 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
Published: 04/03/2025www.NEMSIS.orgPage 458
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e001ErrorWhen Date/Time Airway Device Placement Confirmation is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Date/Time Airway Device Placement Confirmation has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 459

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.03
eAirway.03 - Airway Device Being Confirmed
Definition
The airway device in which placement is being confirmed.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
Code List
CodeDescription
4003001Cricothyrotomy Tube
4003003Endotracheal Tube
4003005Other-Invasive Airway
4003007SAD-Combitube
4003009SAD-King
4003011SAD-LMA
4003013SAD-Other
4003015Tracheostomy Tube
Data Element Comment
Version 3 Changes Implemented
Added to better document airway management. SAD means Supraglottic Airway Device.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Airway Device Being Confirmed is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Airway Device Being Confirmed has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 460
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.04
eAirway.04 - Airway Device Placement Confirmed Method
Definition
The method used to confirm the airway device placement.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
4004001Auscultation
4004003Bulb/Syringe Aspiration
4004005Colorimetric ETCO2
4004007Condensation in Tube
4004009Digital (Numeric) ETCO2
4004011Direct Re-Visualization of Tube in Place
4004013Endotracheal Tube Whistle (BAAM, etc.)
4004015Other
4004017Visualization of Vocal Cords
4004019Waveform ETCO2
4004021Chest Rise
Data Element Comment
If the invasive airway is confirmed via multiple methods each method should be documented individually by time, method, and
type of individual.
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Airway Device Placement Confirmed Method is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Airway Device Placement Confirmed Method has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e009WarningWhen Airway Device Placement Confirmed Method has a Not Value, no other value should be
recorded.
Published: 04/03/2025www.NEMSIS.orgPage 461
NEMSIS Version 3.5.1.250403CP1

 
eAirway.05
eAirway.05 - Tube Depth
Definition
The measurement at the patient's teeth/lip of the tube depth in centimeters (cm) of the invasive airway
placed.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Airway
Constraints
Data Type
integer
minInclusive
4
maxInclusive
32
Data Element Comment
Tube Depth added to better document the initial placement of the airway device and subsequent assessments.
Published: 04/03/2025www.NEMSIS.orgPage 462
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.06
eAirway.06 - Type of Individual Confirming Airway Device Placement
Definition
The type of individual who confirmed the airway device placement.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
Code List
CodeDescription
4006001Another Person on the Same Crew
4006003Other
4006005Person Performing Intubation
4006007Receiving Air Medical/EMS Crew
4006009Receiving Hospital Team
Data Element Comment
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Individual Confirming Airway Device Placement is empty, it should have a Not
Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Individual Confirming Airway Device Placement has a Not Value (Not Applicable,
Not Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 463
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.07
eAirway.07 - Crew Member ID
Definition
The statewide assigned ID number of the EMS crew member confirming the airway placement.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Crew Member ID is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Crew Member ID has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 464
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
8801015 - None Reported
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eAirway.08
eAirway.08 - Airway Complications Encountered
Definition
The airway management complications encountered during the patient care episode.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
Airway
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
CorrelationID
Code List
CodeDescription
4008001Adverse Event from Facilitating Drugs
4008003Bradycardia (<50)
4008005Cardiac Arrest
4008007Esophageal Intubation-Delayed Detection (After Tube Secured)
4008009Esophageal Intubation-Detected in Emergency Department
4008011Failed Intubation Effort
4008013Injury or Trauma to Patient from Airway Management Effort
4008015Other
4008017Oxygen Desaturation (<90%)
4008019Patient Vomiting/Aspiration
4008021Tube Dislodged During Transport/Patient Care
4008023Tube Was Not in Correct Position when EMS Crew/Team Assumed Care of the Patient
Data Element Comment
Version 3 Changes Implemented
Added to better document airway management.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Airway Complications Encountered is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Airway Complications Encountered has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e008ErrorWhen Airway Complications Encountered has a Pertinent Negative, it should be empty and it
should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e009WarningWhen Airway Complications Encountered has a Not Value, no other value should be recorded.
nemSch_e010WarningWhen Airway Complications Encountered has a Pertinent Negative, no other value should be
recorded.
Published: 04/03/2025www.NEMSIS.orgPage 465
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
State
eAirway.09
eAirway.09 - Suspected Reasons for Failed Airway Management
Definition
The reason(s) the airway was unable to be successfully managed.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Associated Performance Measure Initiatives
Airway
Attributes
CorrelationID
Code List
CodeDescription
4009001Difficult Patient Airway Anatomy
4009003ETI Attempted, but Arrived At Destination Facility Before Accomplished
4009005Facial or Oral Trauma
4009007Inability to Expose Vocal Cords
4009009Inadequate Patient Relaxation/Presence of Protective Airway Reflexes
4009011Jaw Clenched (Trismus)
4009013Other
4009015Poor Patient Access
4009017Secretions/Blood/Vomit
4009019Unable to Position or Access Patient
Data Element Comment
Version 3 Changes Implemented
Added to better document airway management.
Published: 04/03/2025www.NEMSIS.orgPage 466
NEMSIS Version 3.5.1.250403CP1

 
eAirway.10
eAirway.10 - Date/Time Decision to Manage the Patient with an Invasive Airway
Definition
The date and time the decision was made to manage the patient's airway with an invasive airway device.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Airway
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better document airway management.
Published: 04/03/2025www.NEMSIS.orgPage 467
NEMSIS Version 3.5.1.250403CP1

 
eAirway.11
eAirway.11 - Date/Time Invasive Airway Placement Attempts Abandoned
Definition
The date and time that the invasive airway attempts were abandoned for the patient.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Airway
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better document airway management.
Published: 04/03/2025www.NEMSIS.orgPage 468
NEMSIS Version 3.5.1.250403CP1

 
eDevice
Published: 04/03/2025www.NEMSIS.orgPage 469

 
O
eDevice.12 - Pacing Rate
0 : 1
O
eDevice.11 - Total Number of Shocks Delivered
0 : 1
O
eDevice.10 - Shock or Pacing Energy
0 : 1
O
eDevice.09 - Type of Shock
0 : 1
eDevice.ShockGroup
0 : 1
O
eDevice.08 - Medical Device ECG Interpretation
0 : 1
CO
eDevice.07 - Medical Device ECG Lead
0 : M
O
eDevice.06 - Medical Device Mode (Manual, AED, Pacing, CO2, O2, etc)
0 : 1
O
eDevice.05 - Medical Device Waveform Graphic
0 : 1
O
eDevice.04 - Medical Device Waveform Graphic Type
0 : 1
eDevice.WaveformGroup
0 : 1
CO
eDevice.03 - Medical Device Event Type
0 : M
O
eDevice.02 - Date/Time of Event (per Medical Device)
0 : 1
O
eDevice.01 - Medical Device Serial Number
0 : 1
C
eDevice.DeviceGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eDevice
eDevice
Published: 04/03/2025www.NEMSIS.orgPage 470

 
eDevice.01
eDevice.01 - Medical Device Serial Number
Definition
The unique manufacturer's serial number associated with a medical device.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 471
NEMSIS Version 3.5.1.250403CP1

 
eDevice.02
eDevice.02 - Date/Time of Event (per Medical Device)
Definition
The time of the event recorded by the device's internal clock.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_01
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestSTEMI
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Published: 04/03/2025www.NEMSIS.orgPage 472
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eDevice.03
eDevice.03 - Medical Device Event Type
Definition
The type of event documented by the medical device.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_02
Is NillableNo
UsageOptional
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestSTEMI
Attributes
CorrelationID
Code List
CodeDescription
410300112-Lead ECG
4103003Analysis (Button Pressed)
4103005CO2
4103007Data Transmitted
4103009Defibrillation
4103011ECG-Monitor
4103013Heart Rate
4103015Invasive Pressure 1
4103017Invasive Pressure 2
4103019No Shock Advised
4103021Non-Invasive BP
4103023Other
4103025Pacing Electrical Capture
4103027Pacing Started
4103029Pacing Stopped
4103031Patient Connected
4103033Power On
4103035Pulse Oximetry
4103037Pulse Rate
4103039Respiratory Rate
4103041Shock Advised
4103043Sync Off
4103045Sync On
4103047Temperature 1
4103049Temperature 2
Data Element Comment
Can be displayed in the Vital Signs or Procedure Sections.
Published: 04/03/2025www.NEMSIS.orgPage 473
NEMSIS Version 3.5.1.250403CP1

 
eDevice.04
eDevice.04 - Medical Device Waveform Graphic Type
Definition
The description of the waveform file stored in Waveform Graphic (eDevice.05).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_03
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestSTEMI
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
The description is defined as the extension of the file type. Examples of file name extensions include "doc", "jpeg", "tiff", etc.
For a list of additional extensions reference the following website(s): 
3D Image formats: http://www.fileinfo.com/filetypes/3d_image
Raster Image formats: http://www.fileinfo.com/filetypes/raster_image
Vector Image formats: http://www.fileinfo.com/filetypes/vector_image
Video formats: http://www.fileinfo.com/filetypes/video
Audio formats: http://www.fileinfo.com/filetypes/audio
Comparison of formats:
Image: http://en.wikipedia.org/wiki/Comparison_of_image_file_formats
Audio: http://en.wikipedia.org/wiki/Audio_file_format
Container: http://en.wikipedia.org/wiki/Comparison_of_container_formats
A general list of image formats: http://en.wikipedia.org/wiki/Image_file_formats
Mime Types: http://en.wikipedia.org/wiki/Internet_media_type
Published: 04/03/2025www.NEMSIS.orgPage 474
NEMSIS Version 3.5.1.250403CP1

 
eDevice.05
eDevice.05 - Medical Device Waveform Graphic
Definition
The graphic waveform file.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestSTEMI
Constraints
Data Type
base64Binary
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 475
NEMSIS Version 3.5.1.250403CP1

 
eDevice.06
eDevice.06 - Medical Device Mode (Manual, AED, Pacing, CO2, O2, etc)
Definition
The mode of operation the device is operating in during the defibrillation, pacing, or rhythm analysis by the
device (if appropriate for the event).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_05
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
4106001Advisory
4106003Automated
4106005Demand
4106007Manual
4106009Mid-Stream
4106011Sensing
4106013Side-Stream
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 476
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eDevice.07
eDevice.07 - Medical Device ECG Lead
Definition
The lead or source which the medical device used to obtain the rhythm (if appropriate for the event).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_06
Is NillableNo
UsageOptional
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestSTEMI
Attributes
CorrelationID
Code List
CodeDescription
4107001I
4107003II
4107005III
4107007AVR
4107009AVL
4107011AVF
4107013Paddle
4107015Pads
4107017V1
4107019V2
4107021V3
4107023V3r
4107025V4
4107027V4r
4107029V5
4107031V5r
4107033V6
4107035V6r
4107037V7
4107039V8
4107041V9
Data Element Comment
Can be displayed in the Vital Signs or Procedure Sections.
Published: 04/03/2025www.NEMSIS.orgPage 477
NEMSIS Version 3.5.1.250403CP1

 
eDevice.08
eDevice.08 - Medical Device ECG Interpretation
Definition
The interpretation of the rhythm by the device (if appropriate for the event).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_07
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestSTEMI
Constraints
Data Type
string
minLength
1
maxLength
2000
Data Element Comment
The rhythm interpretation text imported from the device.
Published: 04/03/2025www.NEMSIS.orgPage 478
NEMSIS Version 3.5.1.250403CP1

 
eDevice.09
eDevice.09 - Type of Shock
Definition
The type of shock used by the device for the defibrillation (if appropriate for the event).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_08
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Code List
CodeDescription
4109001Biphasic
4109003Monophasic
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 479
NEMSIS Version 3.5.1.250403CP1

 
eDevice.10
eDevice.10 - Shock or Pacing Energy
Definition
The energy (in joules) used for the shock or pacing (if appropriate for the event).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_09
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Constraints
Data Type
decimal
totalDigits
5
fractionDigits
1
minInclusive
1
maxInclusive
9000
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 480
NEMSIS Version 3.5.1.250403CP1

 
eDevice.11
eDevice.11 - Total Number of Shocks Delivered
Definition
The number of times the patient was defibrillated, if the patient was defibrillated during the patient
encounter.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_10
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Cardiac Arrest
Constraints
Data Type
integer
minInclusive
1
maxInclusive
100
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 481
NEMSIS Version 3.5.1.250403CP1

 
eDevice.12
eDevice.12 - Pacing Rate
Definition
The rate the device was calibrated to pace during the event, if appropriate.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE21_11
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
1
maxInclusive
1000
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 482
NEMSIS Version 3.5.1.250403CP1

 
eDisposition
Published: 04/03/2025www.NEMSIS.orgPage 483

 
N, LRSN
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation
1 : 1
C
eDisposition.HospitalTeamActivationGroup
1 : M
CN, LRSN
eDisposition.23 - Hospital Capability
1 : M
N, LRSN
eDisposition.22 - Hospital In-Patient Destination
1 : 1
N, LRSN
eDisposition.21 - Type of Destination
1 : 1
CN, LRSN
eDisposition.20 - Reason for Choosing Destination
1 : M
N, LRSN
eDisposition.19 - Acuity Upon EMS Release of Patient
1 : 1
CN, LRSN
eDisposition.18 - Additional Transport Mode Descriptors
1 : M
N, LRSN
eDisposition.17 - Transport Mode from Scene
1 : 1
N, LRSN
eDisposition.16 - EMS Transport Method
1 : 1
CO
eDisposition.15 - How Patient Was Moved From Ambulance
0 : M
CO
eDisposition.14 - Position of Patient During Transport
0 : M
CO
eDisposition.13 - How Patient Was Moved to Ambulance
0 : M
CO
eDisposition.31 - Reason for Refusal/Release
0 : M
N, LRSN
eDisposition.30 - Transport Disposition
1 : 1
N, LRSN
eDisposition.29 - Crew Disposition
1 : 1
N, LRSN
eDisposition.28 - Patient Evaluation/Care
1 : 1
MSN
eDisposition.27 - Unit Disposition
1 : 1
eDisposition.IncidentDispositionGroup
1 : 1
N, LES
eDisposition.11 - Number of Patients Transported in this EMS Unit
0 : 1
O
eDisposition.10 - Destination Location US National Grid Coordinates
0 : 1
O
eDisposition.09 - Destination GPS Location
0 : 1
O
eDisposition.08 - Destination Country
0 : 1
N, LRSN
eDisposition.07 - Destination ZIP Code
1 : 1
N, LRSN
eDisposition.06 - Destination County
1 : 1
N, LRSN
eDisposition.05 - Destination State
1 : 1
OS
eDisposition.04 - Destination City
0 : 1
OS
eDisposition.03 - Destination Street Address
0 : 1
N, LES
eDisposition.02 - Destination/Transferred To, Code
0 : 1
N, LES
eDisposition.01 - Destination/Transferred To, Name
0 : 1
eDisposition.DestinationGroup
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eDisposition
Published: 04/03/2025www.NEMSIS.orgPage 484

 
N, LRSN
eDisposition.32 - Level of Care Provided per Protocol
1 : 1
CO
eDisposition.26 - Disposition Instructions Provided
0 : M
N, LRSN
eDisposition.25 - Date/Time of Destination Prearrival Alert or Activation
1 : 1
eDisposition
Published: 04/03/2025www.NEMSIS.orgPage 485

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eDisposition.01
eDisposition.01 - Destination/Transferred To, Name
Definition
The destination the patient was delivered or transferred to.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_01
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Recommended State data element since no national code for destination. May be populated from the list in dFacility.02
(Facility Name).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination/Transferred To, Name is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination/Transferred To, Name has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 486
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eDisposition.02
eDisposition.02 - Destination/Transferred To, Code
Definition
The code of the destination the patient was delivered or transferred to.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_02
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
May be populated from list in dFacility.03 (Facility Location Code) or dFacility.05 (Facility National Provider Identifier) if a
health care facility.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination/Transferred To, Code is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination/Transferred To, Code has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 487
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
State
eDisposition.03
eDisposition.03 - Destination Street Address
Definition
The street address of the destination the patient was delivered or transferred to.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE20_03
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
May be auto-populated if list created in dFacility.07 (Facility Street Address).
Published: 04/03/2025www.NEMSIS.orgPage 488
NEMSIS Version 3.5.1.250403CP1

 
State
eDisposition.04
eDisposition.04 - Destination City
Definition
The city of the destination the patient was delivered or transferred to (physical address).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE20_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Data Element Comment
City codes are based on GNIS Feature Class. The primary Feature Class to use is "Civil" with "Populated Place" and "Military"
code as additional options. 
Definitions for each GNIS City Feature Class can be found on the GNIS Codes website. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 489
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.05
eDisposition.05 - Destination State
Definition
The state of the destination the patient was delivered or transferred to.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_05
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{2}
Data Element Comment
Based on the ANSI Code. May be auto-populated if list created in dFacility.09 (Facility State).
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination State is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination State has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e160WarningDestination State should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e162WarningDestination County should belong within the Destination State.
Published: 04/03/2025www.NEMSIS.orgPage 490
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.06
eDisposition.06 - Destination County
Definition
The destination county in which the patient was delivered or transferred to.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_06
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}
Data Element Comment
May be auto-populated if list created in dFacility.11 (Facility County). Based on the ANSI Code Single Choice based on the
County Name but stored as the ANSI code (combined 5 digit State and County codes) Should be required if there is a patient
associated with the event. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination County is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination County has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e161WarningDestination County should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e162WarningDestination County should belong within the Destination State.
Published: 04/03/2025www.NEMSIS.orgPage 491
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.07
eDisposition.07 - Destination ZIP Code
Definition
The destination ZIP code in which the patient was delivered or transferred to.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_07
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
May be auto-populated if list created in dFacility.10 (Facility ZIP Code).
ZIP Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination ZIP Code is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination ZIP Code has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e163WarningDestination ZIP Code should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
Published: 04/03/2025www.NEMSIS.orgPage 492
NEMSIS Version 3.5.1.250403CP1

 
eDisposition.08
eDisposition.08 - Destination Country
Definition
The country of the destination.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
length
2
Data Element Comment
May be auto-populated if list created in dFacility.12 (Facility Country).
ANSI Country Codes (ISO 3166) Website: https://www.iso.org/iso-3166-country-codes.html
Version 3 Changes Implemented
Added for improved international compatibility.
Published: 04/03/2025www.NEMSIS.orgPage 493
NEMSIS Version 3.5.1.250403CP1

 
eDisposition.09
eDisposition.09 - Destination GPS Location
Definition
The destination GPS Coordinates to which the patient was delivered or transferred to.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE20_08
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
(\+|-)?(90(\.[0]{1,6})?|([1-8][0-9]|[0-9])(\.[0-9]{1,6})?),(\+|-)?(180(\.[0]{1,6})?|(1[0-7][0-9]|[1-9][0-9]|[0-9])(\.[0-9]{1,6})?)
Data Element Comment
May be auto-populated if list created in dFacility.13 (Facility GPS Location). 
The pattern for GPS location is in the format "," where: latitudelongitude
-  has a minimum of -90 and a maximum of 90 with up to 6 decimal places latitude
-  has a minimum of -180 and a maximum of 180 with up to 6 decimal placeslongitude
Published: 04/03/2025www.NEMSIS.orgPage 494
NEMSIS Version 3.5.1.250403CP1

 
eDisposition.10
eDisposition.10 - Destination Location US National Grid Coordinates
Definition
The US National Grid Coordinates for the Destination Location. This may be the Healthcare Facility US
National Grid Coordinates.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
([1-9]|[1-5][0-9]|60)[C-HJ-NP-X][A-HJ-NP-Z][A-HJ-NP-V]([0-9][0-9]){4,5}
Data Element Comment
Standard found at www.fgdc.gov/usng. 
Through programming this may be partially auto-populated if the list is created in dFacility.14 (Facility US National Grid
Coordinates).
Published: 04/03/2025www.NEMSIS.orgPage 495
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eDisposition.11
eDisposition.11 - Number of Patients Transported in this EMS Unit
Definition
The number of patients transported by this EMS crew and unit.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
100
Data Element Comment
Added to document multiple patients being transported with the same vehicle and crew.
Version 3 Changes Implemented
Added to document multiple patients being transported with the same vehicle and crew.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Number of Patients Transported in this EMS Unit is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Number of Patients Transported in this EMS Unit has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 496
NEMSIS Version 3.5.1.250403CP1

 
StateNational
eDisposition.27
eDisposition.27 - Unit Disposition
Definition
The unit disposition for an EMS event identifying whether patient contact was made by this EMS unit/crew.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
4227001Patient Contact Made
4227003Cancelled on Scene
4227005Cancelled Prior to Arrival at Scene
4227007No Patient Contact
4227009No Patient Found
4227011Non-Patient Incident (Not Otherwise Listed)
Data Element Comment
Grouped with Incident and Transport dispositions. Who provided care or services is defined in Incident Dispostion.
Version 3 Changes Implemented
Element added with the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e018WarningUnit En Route Date/Time should be recorded unless Unit Disposition is "Cancelled Prior to
Arrival at Scene".
nemSch_e020WarningUnit Arrived on Scene Date/Time should be recorded unless Unit Disposition is "Cancelled Prior
to Arrival at Scene".
nemSch_e023WarningArrived at Patient Date/Time should be recorded when Unit Disposition is "Patient Contact
Made".
nemSch_e025WarningUnit Left Scene Date/Time should be recorded unless Unit Disposition is "Cancelled Prior to
Arrival at Scene".
nemSch_e067WarningNumber of Patients at Scene should be "Multiple" or "Single" when Unit Disposition is "Patient
Contact Made".
nemSch_e070WarningIncident Location Type should be recorded unless Unit Disposition is "Cancelled Prior to Arrival
at Scene".
nemSch_e071WarningIncident State should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".
nemSch_e072WarningIncident ZIP Code should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".
nemSch_e073WarningIncident County should be recorded unless Unit Disposition is "Cancelled Prior to Arrival at
Scene".
nemSch_e180WarningUnit Disposition should be "Patient Contact Made" when Patient Evaluation/Care is "Patient
Evaluated..." or "Patient Refused Evaluation/Care".
Published: 04/03/2025www.NEMSIS.orgPage 497
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e181WarningUnit Disposition should be "Patient Contact Made" when Crew Disposition contains "... Primary
Care..." or "Provided Care Supporting Primary EMS Crew".
nemSch_e182WarningUnit Disposition should be "Patient Contact Made" when Transport Disposition is a value other
than "Non-Patient Transport (Not Otherwise Listed)" or "No Transport".
nemSch_e183WarningPatient Evaluation/Care should be recorded when Unit Disposition is "Patient Contact Made".
nemSch_e185WarningCrew Disposition should be recorded when Unit Disposition is "Patient Contact Made".
nemSch_e186WarningTransport Disposition should be recorded when Unit Disposition is "Patient Contact Made".
Published: 04/03/2025www.NEMSIS.orgPage 498

 
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
Published: 04/03/2025www.NEMSIS.orgPage 499
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 500

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.29
eDisposition.29 - Crew Disposition
Definition
The crew disposition for this EMS event identifying which crew provided primary patient care or whether
support services were required.
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
4229001Initiated and Continued Primary Care
4229003Initiated Primary Care and Transferred to Another EMS Crew
4229005Provided Care Supporting Primary EMS Crew
4229007Assumed Primary Care from Another EMS Crew
4229009Incident Support Services Provided (Including Standby)
4229011Back in Service, No Care/Support Services Required
4229013Back in Service, Care/Support Services Refused
Data Element Comment
Grouped with Patient and Transport Dispositions. Depending on context of the Value, "Unit" could be Vehicle or
Service/Agency.
Version 3 Changes Implemented
Element added with the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Crew Disposition is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Crew Disposition has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e181WarningUnit Disposition should be "Patient Contact Made" when Crew Disposition contains "... Primary
Care..." or "Provided Care Supporting Primary EMS Crew".
nemSch_e184WarningPatient Evaluation/Care should be "Patient Evaluated and Care Provided" when Crew
Disposition contains "... Primary Care..." or "Provided Care Supporting Primary EMS Crew".
nemSch_e185WarningCrew Disposition should be recorded when Unit Disposition is "Patient Contact Made".
Published: 04/03/2025www.NEMSIS.orgPage 501
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.30
eDisposition.30 - Transport Disposition
Definition
The transport disposition for an EMS event identifying whether a transport occurred and by which unit.
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
4230001Transport by This EMS Unit (This Crew Only)
4230003Transport by This EMS Unit, with a Member of Another Crew
4230005Transport by Another EMS Unit/Agency
4230007Transport by Another EMS Unit/Agency, with a Member of This Crew
4230009Patient Refused Transport
4230011Non-Patient Transport (Not Otherwise Listed)
4230013No Transport
Data Element Comment
Grouped with Patient and Incident Dispositions. Provides a rapid filter for transport or no transport for incident evaluation,
business entry rules and Schematron rules.
Version 3 Changes Implemented
Element added with the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Transport Disposition is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Transport Disposition has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_e030WarningPatient Arrived at Destination Date/Time should be recorded when Transport Disposition is
"Transport by This EMS Unit...".
nemSch_e036WarningDestination Patient Transfer of Care Date/Time should be recorded when Transport Disposition
is "Transport by This EMS Unit...".
nemSch_e113WarningCardiac Rhythm on Arrival at Destination should be recorded when Transport Disposition is
"Transport by This EMS Unit..." and Cardiac Arrest is "Yes...".
nemSch_e160WarningDestination State should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e161WarningDestination County should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e163WarningDestination ZIP Code should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
Published: 04/03/2025www.NEMSIS.orgPage 502
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e164WarningEMS Transport Method should be recorded when Transport Disposition is "Transport by This
EMS Unit...".
nemSch_e165WarningEMS Transport Method should not be recorded when Transport Disposition is "Patient Refused
Transport" or "No Transport".
nemSch_e166WarningTransport Mode from Scene should be recorded when Transport Disposition is "Transport by
This EMS Unit...".
nemSch_e167WarningTransport Mode from Scene should not be recorded when Transport Disposition is "Patient
Refused Transport" or "No Transport".
nemSch_e169WarningReason for Choosing Destination should be recorded when Transport Disposition is "Transport
by This EMS Unit...".
nemSch_e170WarningType of Destination should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e182WarningUnit Disposition should be "Patient Contact Made" when Transport Disposition is a value other
than "Non-Patient Transport (Not Otherwise Listed)" or "No Transport".
nemSch_e186WarningTransport Disposition should be recorded when Unit Disposition is "Patient Contact Made".
Published: 04/03/2025www.NEMSIS.orgPage 503

 
stringData Type: 2minLength: 255maxLength: 
eDisposition.31
eDisposition.31 - Reason for Refusal/Release
Definition
Describes reason(s) for the patient's refusal of care/transport OR the EMS clinician's decision to release the
patient.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
CorrelationID
Code List
CodeDescription
4231001Against Medical Advice
4231003Patient/Guardian Indicates Ambulance Transport is Not Necessary
4231005Released Following Protocol Guidelines
4231007Released to Law Enforcement
4231009Patient/Guardian States Intent to Transport by Other Means
4231011DNR
4231013Medical/Physician Orders for Life Sustaining Treatment
4231015Other, Not Listed
4231017Patient Elopement
Data Element Comment
This works in combination with the dispositions and signatures to provide general categories for the patient refusal. Specific
legal refusal language should be developed by the agency's legal counsel and provided to the patient or guardian upon
refusal per local policies.
Version 3 Changes Implemented
Element added with the release of v3.5.0
Published: 04/03/2025www.NEMSIS.orgPage 504
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eDisposition.13
eDisposition.13 - How Patient Was Moved to Ambulance
Definition
The method by which the patient was moved to the ambulance from the scene.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE20_11
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
9909001Assisted/Walk
9909003Backboard
9909005Chair
9909007Carried
9909009Other
9909011Stairchair
9909013Stretcher
9909015Wheelchair
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 505
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eDisposition.14
eDisposition.14 - Position of Patient During Transport
Definition
The position of the patient during transport from the scene.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE20_12
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
4214001Car Seat
4214003Fowlers (Semi-Upright Sitting)
4214005Lateral Left
4214007Lateral Right
4214009Other
4214011Prone
4214013Semi-Fowlers
4214015Sitting
4214017Supine
4214019Trendelenburg
4214021Pediatric Ambulance Restraint Device
4214023Neonatal Ambulance Restraint Device
4214025Patient's Car Seat
4214027Ambulance Integrated Car Seat
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 506
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eDisposition.15
eDisposition.15 - How Patient Was Moved From Ambulance
Definition
The method by which the patient was moved from the ambulance to the destination.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE20_13
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
9909001Assisted/Walk
9909003Backboard
9909005Chair
9909007Carried
9909009Other
9909011Stairchair
9909013Stretcher
9909015Wheelchair
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 507
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.16
eDisposition.16 - EMS Transport Method
Definition
The method of transport by this EMS Unit.
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
4216001Air Medical-Fixed Wing
4216003Air Medical-Rotor Craft
4216005Ground-Ambulance
4216007Ground-ATV or Rescue Vehicle
4216009Ground-Bariatric
4216011Ground-Other Not Listed
4216013Ground-Mass Casualty Bus/Vehicle
4216015Ground-Wheelchair Van
4216017Water-Boat
Data Element Comment
Required if the patient is transported by EMS.
Version 3 Changes Implemented
Added to better describe Air and Ground Transport methods.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen EMS Transport Method is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen EMS Transport Method has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e164WarningEMS Transport Method should be recorded when Transport Disposition is "Transport by This
EMS Unit...".
nemSch_e165WarningEMS Transport Method should not be recorded when Transport Disposition is "Patient Refused
Transport" or "No Transport".
Published: 04/03/2025www.NEMSIS.orgPage 508
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.17
eDisposition.17 - Transport Mode from Scene
Definition
Indication whether the transport was emergent or non-emergent.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_14
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
4217001Emergent (Immediate Response)
4217003Emergent Downgraded to Non-Emergent
4217005Non-Emergent
4217007Non-Emergent Upgraded to Emergent
Data Element Comment
Information now split between eDisposition.17 (Transport Mode from Scene) and eDisposition.18 (Additional Transport Mode
Descriptors). Element eDisposition.18 (Additional Transport Mode Descriptors) has been added to document the use of lights
and sirens or other descriptive information.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Transport Mode from Scene is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Transport Mode from Scene has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e166WarningTransport Mode from Scene should be recorded when Transport Disposition is "Transport by
This EMS Unit...".
nemSch_e167WarningTransport Mode from Scene should not be recorded when Transport Disposition is "Patient
Refused Transport" or "No Transport".
Published: 04/03/2025www.NEMSIS.orgPage 509
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.18
eDisposition.18 - Additional Transport Mode Descriptors
Definition
The documentation of transport mode techniques for this EMS response.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
4218001Intersection Navigation-Against Normal Light Patterns
4218003Intersection Navigation-With Automated Light Changing Technology
4218005Intersection Navigation-With Normal Light Patterns
4218007Speed-Enhanced per Local Policy
4218009Speed-Normal Traffic
4218011Lights and Sirens
4218013Lights and No Sirens
4218015No Lights or Sirens
4218017Initial No Lights or Sirens, Upgraded to Lights and Sirens
4218019Initial Lights and Sirens, Downgraded to No Lights or Sirens
Data Element Comment
Information now split between eDisposition.17 (Transport Mode from Scene) and eDisposition.18 (Additional Transport Mode
Descriptors). Element eDisposition.18 (Additional Transport Mode Descriptors) has been added to document the use of lights
and sirens or other descriptive information.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Additional Transport Mode Descriptors is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Additional Transport Mode Descriptors has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e009WarningWhen Additional Transport Mode Descriptors has a Not Value, no other value should be
recorded.
Published: 04/03/2025www.NEMSIS.orgPage 510
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 511
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.20
eDisposition.20 - Reason for Choosing Destination
Definition
The reason(s) this EMS unit delivered or transferred the patient to the destination.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_16
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
Cardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
4220001Closest Facility
4220003Diversion
4220005Family Choice
4220007Insurance Status/Requirement
4220009Law Enforcement Choice
4220011On-Line/On-Scene Medical Direction
4220013Other
4220015Patient's Choice
4220017Patient's Physician's Choice
4220019Protocol
4220021Regional Specialty Center
Data Element Comment
Required if the patient was transported. This NEMSIS data element has no relationship to the 5010 CMS claim file data
element. Please refer to ePayment.44 Ambulance Transport Reason Code for billing purposes.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Reason for Choosing Destination is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Reason for Choosing Destination has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Reason for Choosing Destination has a Not Value, no other value should be recorded.
nemSch_e169WarningReason for Choosing Destination should be recorded when Transport Disposition is "Transport
by This EMS Unit...".
Published: 04/03/2025www.NEMSIS.orgPage 512
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.21
eDisposition.21 - Type of Destination
Definition
The type of destination the patient was delivered or transferred to.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE20_17
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
4221001Home
4221003Hospital-Emergency Department
4221005Hospital-Non-Emergency Department Bed
4221007Clinic
4221009Morgue/Mortuary
4221013Other
4221015Other EMS Responder (air)
4221017Other EMS Responder (ground)
4221019Police/Jail
4221021Urgent Care
4221023Freestanding Emergency Department
4221025Dialysis Center
4221027Diagnostic Services
4221029Assisted Living Facility
4221031Mental Health Facility
4221033Nursing Home
4221035Other Recurring Care Center
4221037Physical Rehabilitation Facility
4221039Drug and/or Alcohol Rehabilitation Facility
4221041Skilled Nursing Facility
Data Element Comment
Required if Patient Transported by EMS.
Version 3 Changes Implemented
With the release of v3.5.0 additional values were added to meet the needs of EMS.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Type of Destination is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Type of Destination has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e170WarningType of Destination should be recorded when Transport Disposition is "Transport by This EMS
Unit...".
nemSch_e171WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Arrest is "Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 513
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e172WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Stroke Scale Result is "Positive".
nemSch_e173WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".
Published: 04/03/2025www.NEMSIS.orgPage 514

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.22
eDisposition.22 - Hospital In-Patient Destination
Definition
The location within the hospital that the patient was taken directly by EMS (e.g., Cath Lab, ICU, etc.).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
4222001Hospital-Burn
4222003Hospital-Cath Lab
4222005Hospital-CCU
4222007Hospital-Endoscopy
4222009Hospital-Hospice
4222011Hospital-Hyperbaric Oxygen Treatment
4222013Hospital-ICU
4222015Hospital-Labor and Delivery
4222017Hospital-Med/Surg
4222019Hospital-Mental Health
4222021Hospital-MICU
4222023Hospital-NICU
4222025Hospital-Nursery
4222027Hospital-Peds (General)
4222029Hospital-Peds ICU
4222031Hospital-OR
4222033Hospital-Orthopedic
4222035Hospital-Other
4222037Hospital-Out-Patient Bed
4222039Hospital-Radiology Services - MRI
4222041Hospital-Radiology Services - CT/PET
4222043Hospital-Radiology Services - X-Ray
4222045Hospital-Radiation
4222047Hospital-Rehab
4222049Hospital-SICU
4222051Hospital-Oncology
4222053Hospital-Outpatient Surgery
Data Element Comment
To be documented when in eDisposition.21 "Hospital-Non-Emergency Department Bed" is selected.
Version 3 Changes Implemented
Added to identify the location within the hospital that the patient was directly taken to by EMS.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Hospital In-Patient Destination is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Hospital In-Patient Destination has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 515
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.23
eDisposition.23 - Hospital Capability
Definition
The primary hospital capability associated with the patient's condition for this transport (e.g., Trauma,
STEMI, Peds, etc.).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
9908001Behavioral Health
9908003Burn Center
9908005Critical Access Hospital
9908007Hospital (General)
9908009Neonatal Center
9908011Pediatric Center
9908019Rehab Center
9908021Trauma Center Level 1
9908023Trauma Center Level 2
9908025Trauma Center Level 3
9908027Trauma Center Level 4
9908029Trauma Center Level 5
9908031Cardiac-STEMI/PCI Capable
9908033Cardiac-STEMI/PCI Capable (24/7)
9908035Cardiac-STEMI/Non-PCI Capable
9908037Stroke-Acute Stroke Ready Hospital (ASRH)
9908039Stroke-Primary Stroke Center (PSC)
9908041Stroke-Thrombectomy-Capable Stroke Center (TSC)
9908043Stroke-Comprehensive Stroke Center (CSC)
9908045Cancer Center
9908047Labor and Delivery
Data Element Comment
To be documented when eDisposition.21 (Type of Destination) is 1) Hospital-Emergency Department, 2)
Hospital-Non-Emergency Department Bed, or 3) Freestanding Emergency Department. 
Stroke Center classifications based on Join Commission stroke certification: 
https://www.jointcommission.org/facts_about_joint_commission_stroke_certification/
Version 3 Changes Implemented
Added to aid in determining if patients are transported to the appropriate hospital based on provider impression, assessment,
and treatment.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Hospital Capability is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Hospital Capability has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
Published: 04/03/2025www.NEMSIS.orgPage 516
NEMSIS Version 3.5.1.250403CP1

 
should be empty.
nemSch_e009WarningWhen Hospital Capability has a Not Value, no other value should be recorded.
nemSch_e171WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Arrest is "Yes...".
nemSch_e172WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Stroke Scale Result is "Positive".
nemSch_e173WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".
Published: 04/03/2025www.NEMSIS.orgPage 517

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.24
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation
Definition
Indication that an alert (or activation) was called by EMS to the appropriate destination healthcare facility
team. The alert (or activation) should occur prior to the EMS Unit arrival at the destination with the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
Cardiac ArrestSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
4224001No
4224003Yes-Adult Trauma
4224005Yes-Cardiac Arrest
4224007Yes-Obstetrics
4224009Yes-Other
4224011Yes-Pediatric Trauma
4224013Yes-STEMI
4224015Yes-Stroke
4224017Yes-Trauma (General)
4224019Yes-Sepsis
Data Element Comment
Version 3 Changes Implemented
Added to better document performance measure for acute time dependent illness and injury systems of care.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination Team Pre-Arrival Alert or Activation is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative
(if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination Team Pre-Arrival Alert or Activation has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e174WarningWhen Destination Team Pre-Arrival Alert or Activation is "No", no other value should be
recorded.
nemSch_e175WarningDestination Team Pre-Arrival Alert or Activation should be recorded when Date/Time of
Destination Prearrival Alert or Activation is recorded.
nemSch_e176WarningDate/Time of Destination Prearrival Alert or Activation should be recorded when Destination
Team Pre-Arrival Alert or Activation is recorded with a value other than "None".
Published: 04/03/2025www.NEMSIS.orgPage 518
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.25
eDisposition.25 - Date/Time of Destination Prearrival Alert or Activation
Definition
The Date/Time EMS alerted, notified, or activated the Destination Healthcare Facility prior to EMS arrival.
The EMS assessment identified the patient as acutely ill or injured based on exam and possibly specified
alert criteria.
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
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better document performance measure for acute time dependent illness and injury systems of care.
Associated Validation Rules
Published: 04/03/2025www.NEMSIS.orgPage 519
NEMSIS Version 3.5.1.250403CP1

 
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time of Destination Prearrival Alert or Activation is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Date/Time of Destination Prearrival Alert or Activation has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e175WarningDestination Team Pre-Arrival Alert or Activation should be recorded when Date/Time of
Destination Prearrival Alert or Activation is recorded.
nemSch_e176WarningDate/Time of Destination Prearrival Alert or Activation should be recorded when Destination
Team Pre-Arrival Alert or Activation is recorded with a value other than "None".
nemSch_e177WarningDate/Time of Destination Prearrival Alert or Activation should not be earlier than Unit Notified by
Dispatch Date/Time.
nemSch_e178WarningDate/Time of Destination Prearrival Alert or Activation should not be later than Destination Patient
Transfer of Care Date/Time.
nemSch_e179WarningDate/Time of Destination Prearrival Alert or Activation should not be later than Unit Back in
Service Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 520

 
stringData Type: 2minLength: 255maxLength: 
eDisposition.26
eDisposition.26 - Disposition Instructions Provided
Definition
Information provided to patient during disposition for patients not transported or treated.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
4226001Contact 911 or see your Doctor if problem returns
4226003Contact 911 or see your Doctor if problem worsens
4226005Other Not Listed (Described in Narrative)
4226007Problem Specific Instructions Provided
4226009See Your Doctor or the Emergency Department immediately
4226011See Your Doctor or the Emergency Department in the next 24 hours
4226013See Your Doctor or the Emergency Department in the next 4 hours
4226015See Your Doctor within the next one week
Data Element Comment
Version 3 Changes Implemented
Added to better document instructions given to patients not transported by EMS.
Published: 04/03/2025www.NEMSIS.orgPage 521
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eDisposition.32
eDisposition.32 - Level of Care Provided per Protocol
Definition
The general level of care provided to this patient as defined per provider level in local EMS protocols or
clinical guidelines.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
4232001BLS - All Levels
4232003ALS - AEMT/Intermediate
4232005ALS - Paramedic
4232007EMS and Other Health-Care Staff
4232009Critical Care
4232011Integrated Health Care
4232013No Care Provided
Data Element Comment
The level of care should be defined by the situation, medications, and procedures provided to the patient based on what is
allowed in the local EMS protocols. This definition can vary between regions; what may be allowed for BLS providers in one
region may be considered ALS care in another. This is not a reflection of the provider levels providing care, but the actual care
given-for example, BLS care provided by a paramedic would be entered as "BLS". This element benefits reviews of
performance, resource demand and utilization, and reimbursement coding.
Version 3 Changes Implemented
Element added wit the release of v3.5.0
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Level of Care Provided per Protocol is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Level of Care Provided per Protocol has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_e187WarningLevel of Care Provided per Protocol should be recorded (with a value other than "No Care
Provided") when Patient Evaluation/Care is "Patient Evaluated and Care Provided".
Published: 04/03/2025www.NEMSIS.orgPage 522
NEMSIS Version 3.5.1.250403CP1

 
eOutcome
Published: 04/03/2025www.NEMSIS.orgPage 523

 
O
eOutcome.21 - Injury Severity Score
0 : 1
N, LRSN
eOutcome.18 - Date/Time of Emergency Department Admission
1 : 1
N, LRSN
eOutcome.16 - Date/Time of Hospital Discharge
1 : 1
CN, LRSN
eOutcome.13 - Hospital Diagnosis
1 : M
N, LRSN
eOutcome.20 - Date/Time Hospital Procedure Performed
1 : 1
N, LRSN
eOutcome.12 - Hospital Procedures
1 : 1
C
eOutcome.HospitalProceduresGroup
1 : M
N, LRSN
eOutcome.11 - Date/Time of Hospital Admission
1 : 1
CN, LRSN
eOutcome.10 - Emergency Department Diagnosis
1 : M
N, LRSN
eOutcome.19 - Date/Time Emergency Department Procedure Performed
1 : 1
N, LRSN
eOutcome.09 - Emergency Department Procedures
1 : 1
C
eOutcome.EmergencyDepartmentProceduresGroup
1 : M
O
eOutcome.05 - Other Report Registry Type
0 : 1
O
eOutcome.04 - External Report ID/Number
0 : 1
O
eOutcome.03 - External Report ID/Number Type
0 : 1
C
eOutcome.ExternalDataGroup
0 : M
N, LRSN
eOutcome.02 - Hospital Disposition
1 : 1
N, LRSN
eOutcome.01 - Emergency Department Disposition
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eOutcome
eOutcome
Published: 04/03/2025www.NEMSIS.orgPage 524

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.01
eOutcome.01 - Emergency Department Disposition
Definition
The known disposition of the patient from the Emergency Department (ED).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE22_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
01Discharged to home or self care (routine discharge)
02Discharged/transferred to another short term general hospital for inpatient care
03Discharged/transferred to a skilled nursing facility (SNF)
04Discharged/transferred to an intermediate care facility (ICF)
05Discharged/transferred to another type of institution not defined elsewhere in this code list
06Discharged/transferred to home under care of organized home health service organization in anticipation of
covered skills care
07Left against medical advice or discontinued care
09Admitted as an inpatient to this hospital.
20Deceased/Expired (or did not recover - Religious Non Medical Health Care Patient)
21Discharged/transferred to court/law enforcement
30Still a patient or expected to return for outpatient services.
43Discharged/transferred to a Federal Health Care Facility (e.g., VA or federal health care facility)
50Discharged/transferred to Hospice - home.
51Discharged/transferred to Hospice - medical facility
61Discharged/transferred within this institution to a hospital based Medicare approved swing bed.
62Discharged/transferred to a inpatient rehabilitation facility including distinct part units of a hospital.
63Discharged/transferred to long term care hospitals
64Discharged/transferred to a nursing facility certified under Medicaid but not certified under Medicare
65Discharged/transferred to a psychiatric hospital or psychiatric distinct part unit of a hospital.
66Discharged/transferred to a Critical Access Hospital (CAH).
70Discharged/transferred to another type of health care institution not defined elsewhere in the code list.
Data Element Comment
The list of values and codes is based on and in compliance with the Medicare Claims Processing Manual Chapter 25
Completing and Processing the Form CMS-1450 Data Set, referencing the Uniform Bill - Form CMS-1450 (UB-04) and FL 17 -
Patient Discharge Status. 
 (see "FL 17 – Patient Dischargehttps://www.cms.gov/regulations-and-guidance/guidance/manuals/downloads/clm104c25.pdf
Status") 
Codes are available from Medicare contractors and the National Uniform Billing Committee (NUBC, ) viahttp://www.nubc.org/
the NUBC's Official UB-04 Data Specifications Manual.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Emergency Department Disposition is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 525
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Emergency Department Disposition has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 526

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.02
eOutcome.02 - Hospital Disposition
Definition
The known disposition of the patient from the hospital, if admitted.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE22_02
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
01Discharged to home or self care (routine discharge)
02Discharged/transferred to another short term general hospital for inpatient care
03Discharged/transferred to a skilled nursing facility (SNF)
04Discharged/transferred to an intermediate care facility (ICF)
05Discharged/transferred to another type of institution not defined elsewhere in this code list
06Discharged/transferred to home under care of organized home health service organization in anticipation of
covered skills care
07Left against medical advice or discontinued care
20Deceased/Expired (or did not recover - Religious Non Medical Health Care Patient)
21Discharged/transferred to court/law enforcement
30Still a patient or expected to return for outpatient services.
43Discharged/transferred to a Federal Health Care Facility (e.g., VA or federal health care facility)
50Discharged/transferred to Hospice - home.
51Discharged/transferred to Hospice - medical facility
61Discharged/transferred within this institution to a hospital based Medicare approved swing bed.
62Discharged/transferred to a inpatient rehabilitation facility including distinct part units of a hospital.
63Discharged/transferred to long term care hospitals
64Discharged/transferred to a nursing facility certified under Medicaid but not certified under Medicare
65Discharged/transferred to a psychiatric hospital or psychiatric distinct part unit of a hospital.
66Discharged/transferred to a Critical Access Hospital (CAH).
70Discharged/transferred to another type of health care institution not defined elsewhere in the code list.
Data Element Comment
The list of values and codes is based on and in compliance with the Medicare Claims Processing Manual Chapter 25
Completing and Processing the Form CMS-1450 Data Set, referencing the Uniform Bill - Form CMS-1450 (UB-04) and FL 17 -
Patient Discharge Status. 
 (see "FL 17 – Patient Dischargehttps://www.cms.gov/regulations-and-guidance/guidance/manuals/downloads/clm104c25.pdf
Status") 
Codes are available from Medicare contractors and the National Uniform Billing Committee (NUBC, ) viahttp://www.nubc.org/
the NUBC's Official UB-04 Data Specifications Manual.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Hospital Disposition is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Hospital Disposition has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
Published: 04/03/2025www.NEMSIS.orgPage 527
NEMSIS Version 3.5.1.250403CP1

 
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 528

 
eOutcome.03
eOutcome.03 - External Report ID/Number Type
Definition
The Type of External Report or Record associated with the Report/ID Number.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
4303001Disaster Tag
4303003Fire Incident Report
4303005Hospital-Receiving
4303007Hospital-Transferring
4303009Law Enforcement Report
4303011Other
4303013Other Registry
4303015Other Report
4303017Patient ID
4303019Prior EMS Patient Care Report
4303021STEMI Registry
4303023Stroke Registry
4303025Trauma Registry
Data Element Comment
This data element is a merge based on the following Version 2.2.1 elements: E22_03, E22_04, E22_05, and E22_06
Version 3 Changes Implemented
Added to allow documentation of external record and identification numbers.
Published: 04/03/2025www.NEMSIS.orgPage 529
NEMSIS Version 3.5.1.250403CP1

 
eOutcome.04
eOutcome.04 - External Report ID/Number
Definition
The ID or Number of the external report or record in eOutcome.03.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
This data element is a merge based on the following Version 2.2.1 elements: E22_03, E22_04, E22_05, and E22_06
Version 3 Changes Implemented
Added to allow documentation of external record and identification numbers.
Published: 04/03/2025www.NEMSIS.orgPage 530
NEMSIS Version 3.5.1.250403CP1

 
eOutcome.05
eOutcome.05 - Other Report Registry Type
Definition
The type of external report/registry that was documented as "other" in eOutcome.03
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
This element should be used only when other-report or other-registry is used eOutcome.03.
Published: 04/03/2025www.NEMSIS.orgPage 531
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.09
eOutcome.09 - Emergency Department Procedures
Definition
The procedures performed on the patient during the emergency department visit.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9A-HJ-NP-Z]{3,7}
Data Element Comment
ICD-10-PCS has a seven character alphanumeric code structure. Each character contains up to 34 possible values. Each
value represents a specific option for the general character definition (e.g., stomach is one of the values for the body part
character). The ten digits 0-9 and the 24 letters A-H,J-N and P-Z may be used in each character. The letters O and I are not
used in order to avoid confusion with the digits 0 and 1. 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Version 3 Changes Implemented
Added to better evaluate EMS care.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Emergency Department Procedures is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Emergency Department Procedures has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 532
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.19
eOutcome.19 - Date/Time Emergency Department Procedure Performed
Definition
The date/time the emergency department procedure was performed on the patient.
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
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time Emergency Department Procedure Performed is empty, it should have a Not
Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 533
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time Emergency Department Procedure Performed has a Not Value (Not Applicable,
Not Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 534

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.10
eOutcome.10 - Emergency Department Diagnosis
Definition
The practitioner's description of the condition or problem for which Emergency Department services were
provided.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
[A-Z][0-9][0-9A-Z]((\.[0-9A-Z]{1,4})?)
Data Element Comment
Code list is represented in ICD-10-CM: Diagnosis Codes. 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Version 3 Changes Implemented
Added to better evaluate EMS care.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Emergency Department Diagnosis is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Emergency Department Diagnosis has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e009WarningWhen Emergency Department Diagnosis has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 535
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.11
eOutcome.11 - Date/Time of Hospital Admission
Definition
The date and time the patient was admitted to the hospital.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better evaluate EMS care.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time of Hospital Admission is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 536
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time of Hospital Admission has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 537

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.12
eOutcome.12 - Hospital Procedures
Definition
Hospital Procedures performed on the patient during the hospital admission.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9A-HJ-NP-Z]{3,7}
Data Element Comment
ICD-10-PCS has a seven character alphanumeric code structure. Each character contains up to 34 possible values. Each
value represents a specific option for the general character definition (e.g., stomach is one of the values for the body part
character). The ten digits 0-9 and the 24 letters A-H,J-N and P-Z may be used in each character. The letters O and I are not
used in order to avoid confusion with the digits 0 and 1. 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Version 3 Changes Implemented
Added to better evaluate EMS care.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Hospital Procedures is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Hospital Procedures has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 538
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.20
eOutcome.20 - Date/Time Hospital Procedure Performed
Definition
The date/time the hospital procedure was performed on the patient.
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
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time Hospital Procedure Performed is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 539
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time Hospital Procedure Performed has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 540

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.13
eOutcome.13 - Hospital Diagnosis
Definition
The hospital diagnosis of the patient associated with the hospital admission.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
[A-Z][0-9][0-9A-Z]((\.[0-9A-Z]{1,4})?)
Data Element Comment
Code list is represented in ICD-10-CM: Diagnosis Codes. 
Website -  http://uts.nlm.nih.gov
Product - UMLS Metathesaurus
Version 3 Changes Implemented
Added to better evaluate EMS care.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Hospital Diagnosis is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_e002ErrorWhen Hospital Diagnosis has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e009WarningWhen Hospital Diagnosis has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 541
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.16
eOutcome.16 - Date/Time of Hospital Discharge
Definition
The date the patient was discharged from the hospital.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better measure patient outcome.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time of Hospital Discharge is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 542
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time of Hospital Discharge has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 543

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.18
eOutcome.18 - Date/Time of Emergency Department Admission
Definition
The date and time the patient was admitted to the emergency department.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time of Emergency Department Admission is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Date/Time of Emergency Department Admission has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 544
NEMSIS Version 3.5.1.250403CP1

 
eOutcome.21
eOutcome.21 - Injury Severity Score
Definition
The patient's total Injury Severity Score.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
0
maxInclusive
75
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 545
NEMSIS Version 3.5.1.250403CP1

 
eCustomResults
Published: 04/03/2025www.NEMSIS.orgPage 546

 
O
eCustomResults.03 - CorrelationID of PatientCareReport Element or Group
0 : 1
M
eCustomResults.02 - Custom Element ID Referenced
1 : 1
N, L, PM
eCustomResults.01 - Custom Data Element Result
1 : M
C
eCustomResults.ResultsGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eCustomResults
eCustomResults
Published: 04/03/2025www.NEMSIS.orgPage 547

 
8801031 - Symptom Not Present8801029 - Approximate8801027 - Order Criteria Not Met
8801025 - Not Immunized8801023 - Unable to Complete8801021 - Unresponsive
8801019 - Refused8801017 - Not Performed by EMS8801015 - None Reported
8801013 - No Known Drug Allergy8801009 - Medication Already Taken8801007 - Medication Allergy
8801005 - Exam Finding Not Present8801003 - Denied By Order8801001 - Contraindication Noted
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
eCustomResults.01
eCustomResults.01 - Custom Data Element Result
Definition
The actual value or values chosen (if values listed in eCustomConfiguration.06) or result (free text,
Date/Time, or number) documented for the Custom Data Element.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageMandatory
Recurrence1 : M
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
NV
PN
Constraints
Data Type
string
minLength
1
maxLength
100000
Data Element Comment
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 548
NEMSIS Version 3.5.1.250403CP1

 
eCustomResults.02
eCustomResults.02 - Custom Element ID Referenced
Definition
References the CustomElementID attribute for eCustomConfiguration.CustomGroup.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 549
NEMSIS Version 3.5.1.250403CP1

 
eCustomResults.03
eCustomResults.03 - CorrelationID of PatientCareReport Element or Group
Definition
References the CorrelationID attribute of an element or group in the PatientCareReport section.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 550
NEMSIS Version 3.5.1.250403CP1

 
eOther
Published: 04/03/2025www.NEMSIS.orgPage 551

 
O
eOther.21 - Signature First Name
0 : 1
O
eOther.20 - Signature Last Name
0 : 1
O
eOther.19 - Date/Time of Signature
0 : 1
O
eOther.18 - Signature Graphic
0 : 1
O
eOther.17 - Signature File Type
0 : 1
O
eOther.16 - Signature File Name
0 : 1
O
eOther.15 - Signature Status
0 : 1
O
eOther.14 - Type Of Patient Representative
0 : 1
CO
eOther.13 - Signature Reason
0 : M
O
eOther.12 - Type of Person Signing
0 : 1
C
eOther.SignatureGroup
0 : M
O
eOther.22 - File Attachment Name
0 : 1
O
eOther.11 - File Attachment Image
0 : 1
O
eOther.10 - File Attachment Type
0 : 1
O
eOther.09 - External Electronic Document Type
0 : 1
C
eOther.FileGroup
0 : M
N, LES
eOther.08 - Crew Member Completing this Report
0 : 1
CO
eOther.07 - Natural, Suspected, Intentional, or Unintentional Disaster
0 : M
CN, LES
eOther.06 - The Type of Work-Related Injury, Death or Suspected Exposure
0 : M
N, LES
eOther.05 - Suspected EMS Work Related Exposure, Injury, or Death
0 : 1
O
eOther.04 - EMS Professional (Crew Member) ID
0 : 1
CO
eOther.03 - Personal Protective Equipment Used
0 : M
C
eOther.EMSCrewMemberGroup
0 : M
CO
eOther.02 - Potential System of Care/Specialty/Registry Patient
0 : M
O
eOther.01 - Review Requested
0 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eOther
eOther
Published: 04/03/2025www.NEMSIS.orgPage 552

 
eOther.01
eOther.01 - Review Requested
Definition
Indication of whether the PCR needs review by anyone.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE23_01
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 553
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eOther.02
eOther.02 - Potential System of Care/Specialty/Registry Patient
Definition
An indication if the patient may meet the entry criteria for an injury or illness specific registry.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE23_02
Is NillableNo
UsageOptional
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
CorrelationID
Code List
CodeDescription
4502001Airway
4502003Burn
4502005Cardiac/MI
4502007CVA/Stroke
4502009Drowning
4502011Other
4502013Spinal Cord Injury
4502015STEMI/Acute Cardiac
4502017Trauma
4502019Traumatic Brain Injury
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 554
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eOther.03
eOther.03 - Personal Protective Equipment Used
Definition
The personal protective equipment which was used by EMS personnel during this EMS patient contact.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE23_03
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
4503001Eye Protection
4503003Gloves
4503005Helmet
4503007Level A Suit
4503009Level B Suit
4503011Level C Suit
4503013Level D Suit (Turn out gear)
4503015Mask-N95
4503017Mask-Surgical (Non-Fitted)
4503019Other
4503021PAPR
4503023Reflective Vest
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 555
NEMSIS Version 3.5.1.250403CP1

 
eOther.04
eOther.04 - EMS Professional (Crew Member) ID
Definition
The ID number of the EMS Crew Member associated with eOther.03, eOther.05, eOther.06.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Added to allow documentation of PPE and work related health and safety down to the individual level within each EMS crew.
Version 3 Changes Implemented
Added to better document EMS workplace health and safety issues.
Published: 04/03/2025www.NEMSIS.orgPage 556
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eOther.05
eOther.05 - Suspected EMS Work Related Exposure, Injury, or Death
Definition
Indication of an EMS work related exposure, injury, or death associated with this EMS event.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE23_05
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Associated with eOther.04 (EMS Professional (Crew Member) ID)
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Suspected EMS Work Related Exposure, Injury, or Death is empty, it should have a Not
Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent
Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Suspected EMS Work Related Exposure, Injury, or Death has a Not Value (Not
Applicable, Not Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 557
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eOther.06
eOther.06 - The Type of Work-Related Injury, Death or Suspected Exposure
Definition
The type of EMS crew member work-related injury, death, or suspected exposure related to the EMS
response.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE23_06
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
4506001Death-Cardiac Arrest
4506003Death-Injury Related
4506005Death-Other
4506007Exposure-Airborne Respiratory/Biological/Aerosolized Secretions
4506009Exposure-Body Fluid Contact to Broken Skin
4506011Exposure-Body Fluid Contact with Eye
4506013Exposure-Body Fluid Contact with Intact Skin
4506015Exposure-Body Fluid Contact with Mucosal Surface
4506017Exposure-Needle Stick with Body Fluid Injection
4506019Exposure-Needle Stick without Body Fluid Injection
4506021Exposure-Toxin/Chemical/Hazmat
4506023Injury-Lifting/Back/Musculoskeletal
4506025Injury-Other
4506027None
4506029Other
4506031Violence-Offensive, Intimidating, or Hateful Language
4506033Violence-Physical Threat, or Threatening Behavior
4506035Violence-Physical Attack or Attempt to Attack
4506037Violence-Unwelcome Sexual Attention, Remarks, Jokes or Gestures
4506039Violence-Unwanted Touching of a Sexual Nature
4506041Struck by Vehicle Along Roadway
Data Element Comment
Associated witheOther.04 (EMS Professional (Crew Member) ID).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen The Type of Work-Related Injury, Death or Suspected Exposure is empty, it should have
a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a
Pertinent Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen The Type of Work-Related Injury, Death or Suspected Exposure has a Not Value (Not
Applicable, Not Recorded, or Not Reporting), it should be empty.
nemSch_e009WarningWhen The Type of Work-Related Injury, Death or Suspected Exposure has a Not Value, no
other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 558
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eOther.07
eOther.07 - Natural, Suspected, Intentional, or Unintentional Disaster
Definition
Event caused by natural forces or Suspected and Intentional/Unintentional Disasters (terrorism).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE23_04
Is NillableNo
UsageOptional
Recurrence0 : M
Associated Performance Measure Initiatives
Trauma
Attributes
CorrelationID
Code List
CodeDescription
4507001Biologic Agent
4507003Building Failure
4507005Chemical Agent
4507007Explosive Device
4507009Fire
4507011Hostage Event
4507013Mass Gathering
4507015Mass Illness
4507017Nuclear Agent
4507019Radioactive Device
4507021Secondary Destructive Device
4507023Shooting/Sniper
4507025Vehicular
4507027Weather (Other)
4507029Earthquake
4507031Flood
4507033Land Slide
4507035Winter Storm
4507037Tornado
4507039Hurricane
Data Element Comment
Based on FEMA website
Published: 04/03/2025www.NEMSIS.orgPage 559
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eOther.08
eOther.08 - Crew Member Completing this Report
Definition
The statewide assigned ID number of the EMS crew member which completed this patient care report.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE23_10
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
If the EMS Professional has a specific ID associated with two states, the ID used would typically be based on the EMS
Agencies state license.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Crew Member Completing this Report is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if
allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Crew Member Completing this Report has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 560
NEMSIS Version 3.5.1.250403CP1

 
eOther.09
eOther.09 - External Electronic Document Type
Definition
Document type which has been electronically stored with PCR.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
4509001Other Audio Recording
4509003Billing Information
4509005Diagnostic Image (CT, X-ray, US, etc.)
4509006DNR
4509008Living Will
4509009ECG/Lab Results
4509011Guardianship/Power of Attorney
4509013Other Healthcare Record
4509015Other
4509017Patient Identification
4509019Patient Refusal Sheet
4509021Other Picture/Graphic
4509025Other Video/Movie
4509027ePCR
Data Element Comment
Added to allow an improved implementation of electronic healthcare records.
Version 3 Changes Implemented
Added to allow an improved implementation of electronic healthcare records.
Published: 04/03/2025www.NEMSIS.orgPage 561
NEMSIS Version 3.5.1.250403CP1

 
eOther.10
eOther.10 - File Attachment Type
Definition
The description of the file attachment stored in File Attachment Image (eOther.11).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
The description is defined as the extension of the file type. Examples of file name extensions include "doc", "jpeg", "tiff", etc.
For a list of additional extensions reference the following website(s): 
3D Image formats: http://www.fileinfo.com/filetypes/3d_image
Raster Image formats: http://www.fileinfo.com/filetypes/raster_image
Vector Image formats: http://www.fileinfo.com/filetypes/vector_image
Video formats: http://www.fileinfo.com/filetypes/video
Audio formats: http://www.fileinfo.com/filetypes/audio
Comparison of formats:
Image: http://en.wikipedia.org/wiki/Comparison_of_image_file_formats
Audio: http://en.wikipedia.org/wiki/Audio_file_format
Container: http://en.wikipedia.org/wiki/Comparison_of_container_formats
A general list of image formats: http://en.wikipedia.org/wiki/Image_file_formats
Mime Types: http://en.wikipedia.org/wiki/Internet_media_type
Version 3 Changes Implemented
Added to allow an improved implementation of electronic healthcare records.
Published: 04/03/2025www.NEMSIS.orgPage 562
NEMSIS Version 3.5.1.250403CP1

 
eOther.11
eOther.11 - File Attachment Image
Definition
The file that is attached electronically to the patient care report.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
base64Binary
Data Element Comment
Associated with eOther.09 (External Electronic Documents) and eOther.10 (File Attachment Type).
Version 3 Changes Implemented
Added to allow an improved implementation of electronic healthcare records.
Published: 04/03/2025www.NEMSIS.orgPage 563
NEMSIS Version 3.5.1.250403CP1

 
eOther.22
eOther.22 - File Attachment Name
Definition
The name of the attached file.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 564
NEMSIS Version 3.5.1.250403CP1

 
eOther.12
eOther.12 - Type of Person Signing
Definition
The individual's signature associated with eOther.15 (Signature Status).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
4512001EMS Crew Member (Other)
4512003EMS Primary Care Provider (for this event)
4512005Healthcare Provider
4512007Medical Director
4512009Non-Healthcare Provider
4512011Online Medical Control Healthcare Practitioner
4512013Other
4512015Patient
4512017Patient Representative
4512019Witness
Data Element Comment
Version 3 Changes Implemented
Added to better document disposition and billing information.
Published: 04/03/2025www.NEMSIS.orgPage 565
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
eOther.13
eOther.13 - Signature Reason
Definition
The reason for the individuals signature.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
4513001HIPAA acknowledgement/Release
4513003Permission to Treat
4513005Release for Billing
4513007Transfer of Patient Care
4513009Refusal of Care
4513011Controlled Substance, Administration
4513013Controlled Substance, Waste
4513015Airway Verification
4513017Patient Belongings (Receipt)
4513019Permission to Transport
4513021Refusal of Transport
4513023Other
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 566
NEMSIS Version 3.5.1.250403CP1

 
eOther.14
eOther.14 - Type Of Patient Representative
Definition
If Patient Representative is chosen as the owner of the signature, this documents the relationship of the
individual signing to the patient.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
4514001Aunt
4514003Brother
4514005Daughter
4514007Discharge Planner
4514009Domestic Partner
4514011Father
4514013Friend
4514015Grandfather
4514017Grandmother
4514019Guardian
4514021Husband
4514023Law Enforcement
4514025MD/DO
4514027Mother
4514029Nurse (RN)
4514031Nurse Practitioner (NP)
4514033Other Care Provider (Home health, hospice, etc.)
4514035Other
4514037Physician's Assistant (PA)
4514039Power of Attorney
4514041Other Relative
4514043Self
4514045Sister
4514047Son
4514049Uncle
4514051Wife
Data Element Comment
Required for Billing.
Version 3 Changes Implemented
Added to improve documentation on disposition and billing.
Published: 04/03/2025www.NEMSIS.orgPage 567
NEMSIS Version 3.5.1.250403CP1

 
eOther.15
eOther.15 - Signature Status
Definition
Indication that the signature for the Type of Person Signing and Signature Reason has been collected or
attempted to be collected.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
4515001Not Signed - Crew Called out to another call
4515003Not Signed - Deceased
4515005Not Signed - Due to Distress Level
4515007Not Signed - Equipment Failure
4515009Not Signed - In Law Enforcement Custody
4515011Not Signed - Language Barrier
4515013Not Signed - Mental Status/Impaired
4515015Not Signed - Minor/Child
4515017Not Signed - Physical Impairment of Extremities
4515019Not Signed - Refused
4515021Not Signed - Transferred Care/No Access to Obtain Signature
4515023Not Signed - Unconscious
4515025Not Signed -Visually Impaired
4515027Physical Signature/Paper Copy Obtained
4515031Signed
4515033Signed-Not Patient
4515035Not Signed-Illiterate (Unable to Read)
4515037Not Signed-Restrained
4515039Not Signed-Combative or Uncooperative
Data Element Comment
Version 3 Changes Implemented
Added to better document disposition and billing.
Published: 04/03/2025www.NEMSIS.orgPage 568
NEMSIS Version 3.5.1.250403CP1

 
eOther.16
eOther.16 - Signature File Name
Definition
The name of the graphic file for the signature.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 569
NEMSIS Version 3.5.1.250403CP1

 
eOther.17
eOther.17 - Signature File Type
Definition
The description of the file attachment stored in Signature Graphic (eOther.18).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
The description is defined as the extension of the file type. Examples of file name extensions include "doc", "jpeg", "tiff", etc.
For a list of additional extensions reference the following website(s): 
3D Image formats: http://www.fileinfo.com/filetypes/3d_image
Raster Image formats: http://www.fileinfo.com/filetypes/raster_image
Vector Image formats: http://www.fileinfo.com/filetypes/vector_image
Video formats: http://www.fileinfo.com/filetypes/video
Audio formats: http://www.fileinfo.com/filetypes/audio
Comparison of formats:
Image: http://en.wikipedia.org/wiki/Comparison_of_image_file_formats
Audio: http://en.wikipedia.org/wiki/Audio_file_format
Container: http://en.wikipedia.org/wiki/Comparison_of_container_formats
A general list of image formats: http://en.wikipedia.org/wiki/Image_file_formats
Mime Types: http://en.wikipedia.org/wiki/Internet_media_type
Published: 04/03/2025www.NEMSIS.orgPage 570
NEMSIS Version 3.5.1.250403CP1

 
eOther.18
eOther.18 - Signature Graphic
Definition
The graphic file for the signature.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
base64Binary
Data Element Comment
Version 3 Changes Implemented
Added to better document disposition and billing.
Published: 04/03/2025www.NEMSIS.orgPage 571
NEMSIS Version 3.5.1.250403CP1

 
eOther.19
eOther.19 - Date/Time of Signature
Definition
The date and time the crew member, patient, patient representative, or facility representative signature was
captured.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Version 3 Changes Implemented
Added to better document disposition and billing.
Published: 04/03/2025www.NEMSIS.orgPage 572
NEMSIS Version 3.5.1.250403CP1

 
eOther.20
eOther.20 - Signature Last Name
Definition
The last name of the crew member, patient, patient representative, or facility representative associated with
the signature group.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
60
Data Element Comment
Version 3 Changes Implemented
Added to better document disposition and billing.
Published: 04/03/2025www.NEMSIS.orgPage 573
NEMSIS Version 3.5.1.250403CP1

 
eOther.21
eOther.21 - Signature First Name
Definition
The first name of the crew member, patient, patient representative, or facility representative associated with
the signature group.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Version 3 Changes Implemented
Added to better document disposition and billing.
Published: 04/03/2025www.NEMSIS.orgPage 574
NEMSIS Version 3.5.1.250403CP1

 
dCustomConfiguration
Published: 04/03/2025www.NEMSIS.orgPage 575

 
O
dCustomConfiguration.09 - Custom Data Element Grouping ID
0 : 1
O
dCustomConfiguration.08 - Custom Data Element Potential Pertinent Negative Values
(PN)
0 : M
O
dCustomConfiguration.07 - Custom Data Element Potential NOT Values (NV)
0 : M
O
dCustomConfiguration.06 - Custom Data Element Potential Values
0 : M
M
dCustomConfiguration.05 - Custom Data Element Usage
1 : 1
M
dCustomConfiguration.04 - Custom Data Element Recurrence
1 : 1
M
dCustomConfiguration.03 - Custom Data Type
1 : 1
M
dCustomConfiguration.02 - Custom Definition
1 : 1
M
dCustomConfiguration.01 - Custom Data Element Title
1 : 1
I
dCustomConfiguration.CustomGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dCustomConfiguration
dCustomConfiguration
Published: 04/03/2025www.NEMSIS.orgPage 576

 
anySimpleTypeData Type: preservewhiteSpace: 
dCustomConfiguration.01
dCustomConfiguration.01 - Custom Data Element Title
Definition
This is the title of the custom data element created to collect information that is not defined formally in
NEMSIS Version 3.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Attributes
nemsisElement
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
This is grouped with all data elements in this section and can have multiple instances.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 577
NEMSIS Version 3.5.1.250403CP1

 
dCustomConfiguration.02
dCustomConfiguration.02 - Custom Definition
Definition
The definition of the custom element and how it should be used.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 578
NEMSIS Version 3.5.1.250403CP1

 
dCustomConfiguration.03
dCustomConfiguration.03 - Custom Data Type
Definition
The data type of the custom element.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9902001Binary
9902003Date/Time
9902005Integer/Number
9902007Other
9902009Text/String
9902011Boolean
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 579
NEMSIS Version 3.5.1.250403CP1

 
dCustomConfiguration.04
dCustomConfiguration.04 - Custom Data Element Recurrence
Definition
Indication if the data element will accept multiple values.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 580
NEMSIS Version 3.5.1.250403CP1

 
dCustomConfiguration.05
dCustomConfiguration.05 - Custom Data Element Usage
Definition
The Usage (Mandatory, Required, Recommended, or Optional) for the Custom Data Element.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9903001Mandatory
9903003Required
9903005Recommended
9903007Optional
Data Element Comment
Mandatory = Must be completed and will not accept null values 
Required = Must be completed but will accept null values 
Recommended = Not required but if collected will accept null values 
Optional = Not required but if collected, it cannot be a null value.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 581
NEMSIS Version 3.5.1.250403CP1

 
anySimpleTypeData Type: preservewhiteSpace: 
anySimpleTypeData Type: preservewhiteSpace: 
dCustomConfiguration.06
dCustomConfiguration.06 - Custom Data Element Potential Values
Definition
The values which are associated with the Custom Data Element. Values would be the choices provided to
the user when they document the Custom Data Element.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
nemsisCode
customValueDescription
Constraints
Data Type
string
minLength
1
maxLength
100
Data Element Comment
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 582
NEMSIS Version 3.5.1.250403CP1

 
dCustomConfiguration.07
dCustomConfiguration.07 - Custom Data Element Potential NOT Values (NV)
Definition
NOT Values (NV) associated with the custom element.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Code List
CodeDescription
7701001Not Applicable
7701003Not Recorded
7701005Not Reporting
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 583
NEMSIS Version 3.5.1.250403CP1

 
dCustomConfiguration.08
dCustomConfiguration.08 - Custom Data Element Potential Pertinent Negative Values (PN)
Definition
Pertinent Negative Values (PN) associated with the custom element.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Code List
CodeDescription
8801001Contraindication Noted
8801003Denied By Order
8801005Exam Finding Not Present
8801007Medication Allergy
8801009Medication Already Taken
8801013No Known Drug Allergy
8801015None Reported
8801017Not Performed by EMS
8801019Refused
8801021Unresponsive
8801023Unable to Complete
8801025Not Immunized
8801027Order Criteria Not Met
8801029Approximate
8801031Symptom Not Present
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 584
NEMSIS Version 3.5.1.250403CP1

 
dCustomConfiguration.09
dCustomConfiguration.09 - Custom Data Element Grouping ID
Definition
ID for custom element grouping.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 585
NEMSIS Version 3.5.1.250403CP1

 
dRecord
Published: 04/03/2025www.NEMSIS.orgPage 586

 
N, LE
dRecord.03 - Software Version
0 : 1
N, LE
dRecord.02 - Software Name
0 : 1
N, LE
dRecord.01 - Software Creator
0 : 1
dRecord.SoftwareApplicationGroup
0 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dRecord
dRecord
Published: 04/03/2025www.NEMSIS.orgPage 587

 
7701003 - Not Recorded7701001 - Not Applicable
dRecord.01
dRecord.01 - Software Creator
Definition
The name of the vendor who designed the application that created the record for the agency listed in
dAgency02.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
This was added to document the software used to generate the Demographic XML file. This is not the last software which sent
the demographic file from another software.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Software Creator is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen Software Creator has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 588
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
dRecord.02
dRecord.02 - Software Name
Definition
The name of the application used to create the record for the agency listed in dAgency.02.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
This was added to document the software used to generate the Demographic XML file. This is not the last software which sent
the demographic file from another software.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Software Name is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen Software Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 589
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
dRecord.03
dRecord.03 - Software Version
Definition
The version of the application used to create the record for the agency listed in dAgency.02.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
This was added to document the software version used to generate the Demographic XML file. This is not the last software
which sent the demographic file from another software.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Software Version is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen Software Version has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 590
NEMSIS Version 3.5.1.250403CP1

 
dAgency
Published: 04/03/2025www.NEMSIS.orgPage 591

 
O
dAgency.27 - Licensed Agency
0 : 1
CN, LRSN
dAgency.26 - Fire Department ID Number
1 : M
CN, LRSN
dAgency.25 - National Provider Identifier
1 : M
O
dAgency.24 - EMS Agency Daylight Savings Time Use
0 : 1
O
dAgency.23 - EMS Agency Time Zone
0 : 1
N, LES
dAgency.22 - EMS Billable Calls per Year
0 : 1
N, LES
dAgency.21 - EMS Patient Contact Volume per Year
0 : 1
N, LES
dAgency.20 - EMS Patient Transport Volume per Year
0 : 1
N, LES
dAgency.19 - EMS Dispatch Volume per Year
0 : 1
N, LES
dAgency.18 - 911 EMS Call Center Volume per Year
0 : 1
N, LES
dAgency.17 - Total Service Area Population
0 : 1
N, LES
dAgency.16 - Total Primary Service Area Size
0 : 1
N, LES
dAgency.15 - Statistical Calendar Year
0 : 1
UC
dAgency.AgencyYearGroup
0 : M
MSN
dAgency.14 - EMS Agency Organizational Tax Status
1 : 1
MSN
dAgency.13 - Organizational Type
1 : 1
MSN
dAgency.12 - Organization Status
1 : 1
MSN
dAgency.11 - Level of Service
1 : 1
CN, LES
dAgency.10 - Other Types of Service
0 : M
MSN
dAgency.09 - Primary Type of Service
1 : 1
CN, LRSN
dAgency.08 - EMS Agency Service Area ZIP Codes
1 : M
CN, LRSN
dAgency.07 - EMS Agency Census Tracts
1 : M
CMSN
dAgency.06 - EMS Agency Service Area County(ies)
1 : M
MSN
dAgency.05 - EMS Agency Service Area States
1 : 1
UC
dAgency.AgencyServiceGroup
1 : M
MSN
dAgency.04 - EMS Agency State
1 : 1
N, LES
dAgency.03 - EMS Agency Name
0 : 1
MSN
dAgency.02 - EMS Agency Number
1 : 1
MSN
dAgency.01 - EMS Agency Unique State ID
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dAgency
dAgency
Associated Validation Rules
Published: 04/03/2025www.NEMSIS.orgPage 592

 
Rule IDLevelMessage
nemSch_d005ErrorUUID must be universally unique.
Published: 04/03/2025www.NEMSIS.orgPage 593

 
StateNational
dAgency.01
dAgency.01 - EMS Agency Unique State ID
Definition
The unique ID assigned to the EMS Agency which is associated with all state licensure numbers and
information.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
This may be the EMS Agency Name or a unique number assigned by the state EMS office. This is required to document
multiple license types and numbers associated with the same EMS Agency.
Published: 04/03/2025www.NEMSIS.orgPage 594
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dAgency.02
dAgency.02 - EMS Agency Number
Definition
The state-assigned provider number of the responding agency
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_01
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Data Type
string
minLength
1
maxLength
15
Data Element Comment
This is the primary identifier for the entire Demographic Section. Each of the Demographic sections must be associated with
an EMS Agency Number. An EMS Agency can have more than one Agency Number within a state. This reflects the ability for
an EMS Agency to have a different number for each service type or location (based on state implementation). The EMS
Agency Number in dAgency.02 can be used to auto-populate eResponse.01 EMS Agency Number in the EMS Event section.
Published: 04/03/2025www.NEMSIS.orgPage 595
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.03
dAgency.03 - EMS Agency Name
Definition
The formal name of the agency.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_02
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Agency Name is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen EMS Agency Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 596
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dAgency.04
dAgency.04 - EMS Agency State
Definition
The state/territory which assigned the EMS agency number.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_03
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Constraints
Pattern
[0-9]{2}
Data Element Comment
This has been clarified to reflect that it is the state associated with the EMS Agency number listed in dAgency.02 – EMS
Agency Number. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_d010WarningThere should be a configuration group where State Associated with this Configuration is the state
recorded in EMS Agency State.
nemSch_d012WarningEMS Certification Levels Permitted to Perform Each Procedure, within the configuration group for
the state recorded in EMS Agency State, should include the level recorded in Level of Service.
nemSch_d013WarningEMS Certification Levels Permitted to Administer Each Medication, within the configuration group
for the state recorded in EMS Agency State, should include the level recorded in Level of Service.
Published: 04/03/2025www.NEMSIS.orgPage 597
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dAgency.05
dAgency.05 - EMS Agency Service Area States
Definition
The states in which the EMS Agency provides services including the state associated with the EMS Agency
Number.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
Each state is captured as a group where the EMS agency provides service. The group includes dAgency.05, dAgency.06,
dAgency.07, and Agency.08. 
Element added to document all of the states in which the EMS agency provides services. Each state listed is associated with
the counties, census tracts, and ZIP codes within the EMS Agency Service Area for each state. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_d006ErrorEMS Agency Service Area County(ies) should belong to the state with which it is grouped.
nemSch_d007WarningEMS Agency Census Tracts should belong to a county recorded in EMS Agency Service Area
County(ies) in the state with which it is grouped.
Published: 04/03/2025www.NEMSIS.orgPage 598
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
StateNational
dAgency.06
dAgency.06 - EMS Agency Service Area County(ies)
Definition
The county(ies) within each state for which the agency formally provides service.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_04
Is NillableNo
UsageMandatory
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
CorrelationID
Constraints
Pattern
[0-9]{5}
Data Element Comment
Each state listed is associated with the counties, census tracts, and ZIP codes within the EMS Agency Service Area for each
state. County codes are based on ISO/ANSI codes. It is a 5-digit code based on state (2-digit) and county (3-digit). 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_d006ErrorEMS Agency Service Area County(ies) should belong to the state with which it is grouped.
nemSch_d007WarningEMS Agency Census Tracts should belong to a county recorded in EMS Agency Service Area
County(ies) in the state with which it is grouped.
Published: 04/03/2025www.NEMSIS.orgPage 599
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
dAgency.07
dAgency.07 - EMS Agency Census Tracts
Definition
The US census tracts in which the EMS agency formally provides service.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
[0-9]{11}
Data Element Comment
This data element was added to better document the service area of the EMS Agency. Each state listed is associated with the
counties, census tracts, and ZIP codes within the EMS Agency Service Area for each state. 
The format of the census tract number must be an 11-digit number, based upon the 2010 census, using the pattern: 
2-digit State Code 3-digit County Code 6-digit Census Tract Number (no decimal) 
Example: NEMSIS TAC office (UT, Salt Lake County, Census Tract - located at 295 Chipeta Way, Salt Lake City, UT)
49035101400 
Census Tract Data Website (files and descriptions): 
https://www.census.gov/geographies/reference-files/2010/geo/relationship-files.html
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Agency Census Tracts is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen EMS Agency Census Tracts has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen EMS Agency Census Tracts has a Not Value, no other value should be recorded.
nemSch_d007WarningEMS Agency Census Tracts should belong to a county recorded in EMS Agency Service Area
County(ies) in the state with which it is grouped.
Published: 04/03/2025www.NEMSIS.orgPage 600
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
dAgency.08
dAgency.08 - EMS Agency Service Area ZIP Codes
Definition
The ZIP codes for the EMS Agency's service area.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
This data element was added to better document the service area of the EMS Agency. Each state listed is associated with the
counties, census tracts, and ZIP codes within the EMS Agency Service Area for each state. 
Zip Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Agency Service Area ZIP Codes is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Agency Service Area ZIP Codes has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_d003WarningWhen EMS Agency Service Area ZIP Codes has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 601
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dAgency.09
dAgency.09 - Primary Type of Service
Definition
The primary service type provided by the agency.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_05
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
9920001911 Response (Scene) with Transport Capability
9920003911 Response (Scene) without Transport Capability
9920005Air Medical
9920007ALS Intercept
9920011Hazmat
9920013Medical Transport (Convalescent, Interfacility Transfer Hospital and Nursing Home)
9920015Rescue
9920017Community Paramedicine
9920019Critical Care (Ground)
Data Element Comment
The Primary Type of Service is associated with each of the EMS Agency Numbers.
Published: 04/03/2025www.NEMSIS.orgPage 602
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.10
dAgency.10 - Other Types of Service
Definition
The other service type(s) which are provided by the agency.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_06
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
9920001911 Response (Scene) with Transport Capability
9920003911 Response (Scene) without Transport Capability
9920005Air Medical
9920007ALS Intercept
9920011Hazmat
9920013Medical Transport (Convalescent, Interfacility Transfer Hospital and Nursing Home)
9920015Rescue
9920017Community Paramedicine
9920019Critical Care (Ground)
Data Element Comment
If no other services are provided beyond the Primary Service Type, Not Applicable should be used. This should include all of
the types of services not listed in (dAgency.09) Primary Type of Service.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Other Types of Service is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Other Types of Service has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen Other Types of Service has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 603
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dAgency.11
dAgency.11 - Level of Service
Definition
The level of service which the agency provides EMS care for every request for service (the minimum
certification level). This may be the license level granted by the state EMS office.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_07
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
9917001Advanced Emergency Medical Technician (AEMT)
9917002Emergency Medical Technician - Intermediate
9917003Emergency Medical Responder (EMR)
9917005Emergency Medical Technician (EMT)
9917007Paramedic
9917019Physician
9917021Critical Care Paramedic
9917023Community Paramedicine
9917025Nurse Practitioner
9917027Physician Assistant
9917029Licensed Practical Nurse (LPN)
9917031Registered Nurse
Data Element Comment
The Level of Service is associated with the specific EMS Agency Number (dAgency.02) for the EMS Agency. For example a
BLS licensed ambulance service (EMT-Basic) with EMT-Intermediate or EMT-Paramedic on staff, the appropriate level of
service is "EMT-Basic". This is because the care provided to patients is limited to BLS skills. 
The category EMT-Intermediate includes EMS professionals with an "85" or "99" certification level.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d012WarningEMS Certification Levels Permitted to Perform Each Procedure, within the configuration group
for the state recorded in EMS Agency State, should include the level recorded in Level of
Service.
nemSch_d013WarningEMS Certification Levels Permitted to Administer Each Medication, within the configuration
group for the state recorded in EMS Agency State, should include the level recorded in Level of
Service.
Published: 04/03/2025www.NEMSIS.orgPage 604
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dAgency.12
dAgency.12 - Organization Status
Definition
The primary organizational status of the agency. The definition of Volunteer or Non-Volunteer is based on
state or local definitions.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_09
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
1016001Mixed
1016003Non-Volunteer
1016005Volunteer
Data Element Comment
The Organizational Status is associated with the EMS Agency and the specific EMS Agency Number (dAgency.02).
Published: 04/03/2025www.NEMSIS.orgPage 605
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dAgency.13
dAgency.13 - Organizational Type
Definition
The organizational structure from which EMS services are delivered (fire, hospital, county, etc).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD01_08
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
9912001Fire Department
9912003Governmental, Non-Fire
9912005Hospital
9912007Private, Nonhospital
9912009Tribal
Data Element Comment
Organizational Type is associated with the EMS Agency and the specific EMS Agency Number (dAgency.02).
Associated Validation Rules
Rule IDLevelMessage
nemSch_d008WarningFire Department ID Number should be recorded when Organizational Type is "Fire Department".
nemSch_d009WarningFire Department ID Number should only be recorded when Organizational Type is "Fire
Department".
Published: 04/03/2025www.NEMSIS.orgPage 606
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dAgency.14
dAgency.14 - EMS Agency Organizational Tax Status
Definition
The EMS Agencies business/corporate organizational tax status.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
1018001For Profit
1018003Other (e.g., Government)
1018005Not For Profit
Data Element Comment
Associated with the EMS Agency for the specific EMS Agency Number (dAgency.02).
Published: 04/03/2025www.NEMSIS.orgPage 607
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.15
dAgency.15 - Statistical Calendar Year
Definition
The calendar year to which the information pertains for the EMS Agency and the specific EMS Agency
Number (dAgency.02).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_10
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
integer
minInclusive
1900
maxInclusive
2050
Data Element Comment
Added Calendar Year to the definition to remove confusion noted in draft comments. Will allow multiple entry to allow data to
be stored on several years. This statistical information is associated with the EMS Agency's specific EMS Agency Number
(dAgency.02) and elements dAgency.16 through dAgency.22.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Statistical Calendar Year is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Statistical Calendar Year has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 608
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701005 - Not Reporting7701001 - Not Applicable
State
dAgency.16
dAgency.16 - Total Primary Service Area Size
Definition
The total square miles in the agency's service area.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_12
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
400,000,000
Data Element Comment
This statistical information is associated with the EMS Agency's specific EMS Agency Number (dAgency.02). A value should
be associated with each with (dAgency.15) Statistical Calendar Year
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Total Primary Service Area Size is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Total Primary Service Area Size has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 609
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701005 - Not Reporting7701001 - Not Applicable
State
dAgency.17
dAgency.17 - Total Service Area Population
Definition
The total population in the agency's service area based if possible on year 2010 census data.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_13
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
400,000,000
Data Element Comment
This statistical information is associated with the EMS Agency's specific EMS Agency Number (dAgency.02). A value should
be associated with each with (dAgency.15) Statistical Calendar Year.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Total Service Area Population is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Total Service Area Population has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 610
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.18
dAgency.18 - 911 EMS Call Center Volume per Year
Definition
The number of 911 calls received by the call center during the last calendar year.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_14
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
400,000,000
Data Element Comment
This statistical information is associated with the EMS Agency's specific EMS Agency Number (dAgency.02). A value should
be associated with each with (dAgency.15) Statistical Calendar Year.
Version 3 Changes Implemented
Name Clarified with "Call Center"
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen 911 EMS Call Center Volume per Year is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen 911 EMS Call Center Volume per Year has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 611
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.19
dAgency.19 - EMS Dispatch Volume per Year
Definition
The number of EMS dispatches during the last calendar year.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_15
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
400,000,000
Data Element Comment
This statistical information is associated with the EMS Agency's specific EMS Agency Number (dAgency.02). A value should
be associated with each with (dAgency.15) Statistical Calendar Year.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Dispatch Volume per Year is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen EMS Dispatch Volume per Year has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 612
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.20
dAgency.20 - EMS Patient Transport Volume per Year
Definition
The number of EMS transports per year based on last calendar year.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_16
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
400,000,000
Data Element Comment
This statistical information is associated with the EMS Agency's specific EMS Agency Number (dAgency.02). A value should
be associated with each with (dAgency.15) Statistical Calendar Year.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Patient Transport Volume per Year is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Patient Transport Volume per Year has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 613
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.21
dAgency.21 - EMS Patient Contact Volume per Year
Definition
The number of EMS patient contacts per year based on last calendar year.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_17
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
400,000,000
Data Element Comment
This statistical information is associated with the EMS Agency's specific EMS Agency Number (dAgency.02). A value should
be associated with each with (dAgency.15) Statistical Calendar Year.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Patient Contact Volume per Year is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Patient Contact Volume per Year has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 614
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dAgency.22
dAgency.22 - EMS Billable Calls per Year
Definition
The number of EMS patient encounters which are billable based on the last calendar year.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_18
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
400,000,000
Data Element Comment
This statistical information is associated with the EMS Agency's specific EMS Agency Number (dAgency.02). A value should
be associated with each with (dAgency.15) Statistical Calendar Year.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Billable Calls per Year is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen EMS Billable Calls per Year has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 615
NEMSIS Version 3.5.1.250403CP1

 
dAgency.23
dAgency.23 - EMS Agency Time Zone
Definition
The time zone for the EMS Agency.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD01_19
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
1027001All other time zones
1027003GMT-04:00 Atlantic Time
1027005GMT-05:00 Eastern Time
1027007GMT-06:00 Central Time
1027009GMT-07:00 Mountain Time
1027011GMT-08:00 Pacific Time
1027013GMT-09:00 Alaska
1027015GMT-10:00 Hawaii
1027017GMT-11:00 Midway Island, Samoa
Data Element Comment
Associated with each of the EMS Agency Number (dAgency.02). If more than one Time Zone is located within the EMS
Agency service area, please chose the time zone covering the greatest volume of EMS events.
Published: 04/03/2025www.NEMSIS.orgPage 616
NEMSIS Version 3.5.1.250403CP1

 
dAgency.24
dAgency.24 - EMS Agency Daylight Savings Time Use
Definition
Indicate if the EMS Agency conforms to Daylight Savings Time.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD01_20
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Associated with each of the EMS Agency Number (dAgency.02). If the EMS Agency service area contains areas with
variations in Daylight Savings Time implementation, choose the response which best represents the majority of the EMS
events.
Published: 04/03/2025www.NEMSIS.orgPage 617
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
dAgency.25
dAgency.25 - National Provider Identifier
Definition
The National Provider Identifier issued by CMS.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_21
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Constraints
Data Type
string
length
10
Data Element Comment
Only EMS Agencies billing for service will have an NPI number. 
CMS (Centers for Medicare and Medicaid Services) NPI Registry lookup: 
https://npiregistry.cms.hhs.gov/
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen National Provider Identifier is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen National Provider Identifier has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen National Provider Identifier has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 618
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
dAgency.26
dAgency.26 - Fire Department ID Number
Definition
The state assigned Fire Department ID Number for EMS Agency(ies) operating within a Fire Department.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
CorrelationID
Constraints
Data Type
string
minLength
1
maxLength
20
Data Element Comment
Fire Department ID was added to better integrate Fire Department EMS Agencies and linkage to other EMS related data
systems such as NFIRS.
Version 3 Changes Implemented
Added to better associate Fire and EMS licensure and operational identifiers.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Fire Department ID Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Fire Department ID Number has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen Fire Department ID Number has a Not Value, no other value should be recorded.
nemSch_d008WarningFire Department ID Number should be recorded when Organizational Type is "Fire Department".
nemSch_d009WarningFire Department ID Number should only be recorded when Organizational Type is "Fire
Department".
Published: 04/03/2025www.NEMSIS.orgPage 619
NEMSIS Version 3.5.1.250403CP1

 
dAgency.27
dAgency.27 - Licensed Agency
Definition
Indication if the agency is licensed by the state that issued the EMS Agency Number (dAgency.02).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Associated with each of the EMS Agency Number (dAgency.02).
Published: 04/03/2025www.NEMSIS.orgPage 620
NEMSIS Version 3.5.1.250403CP1

 
dContact
Published: 04/03/2025www.NEMSIS.orgPage 621

 
O
dContact.16 - EMS Medical Director Board Certified/Eligible
0 : 1
O
dContact.15 - Medical Director Compensation
0 : 1
CN, LES
dContact.14 - Agency Medical Director Board Certification Type
0 : M
N, LES
dContact.13 - Agency Medical Director Degree
0 : 1
dContact.EMSMedicalDirectorGroup
0 : 1
N, LES
dContact.12 - EMS Agency Contact Web Address
0 : 1
CN, LES
dContact.11 - Agency Contact Email Address
0 : M
CN, LES
dContact.10 - Agency Contact Phone Number
0 : M
O
dContact.09 - Agency Contact Country
0 : 1
N, LES
dContact.08 - Agency Contact ZIP Code
0 : 1
N, LES
dContact.07 - Agency Contact State
0 : 1
N, LES
dContact.06 - Agency Contact City
0 : 1
N, LES
dContact.05 - Agency Contact Address
0 : 1
O
dContact.04 - Agency Contact Middle Name/Initial
0 : 1
N, LES
dContact.03 - Agency Contact First Name
0 : 1
N, LES
dContact.02 - Agency Contact Last Name
0 : 1
N, LES
dContact.01 - Agency Contact Type
0 : 1
UC
dContact.ContactInfoGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dContact
dContact
Associated Validation Rules
Rule IDLevelMessage
nemSch_d005ErrorUUID must be universally unique.
Published: 04/03/2025www.NEMSIS.orgPage 622

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.01
dContact.01 - Agency Contact Type
Definition
The contact type within the EMS agency.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
1101001Administrative Assistant
1101003EMS Agency Director/Chief/Lead Administrator/CEO
1101005EMS Assistant Agency Director/Chief/Administrator/CEO
1101007EMS Assistant Medical Director
1101009EMS IT/Data Specialist
1101011EMS Medical Director
1101013EMS Quality/Performance Improvement Specialist
1101015EMS Training/Education Specialist
1101017Other
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact Type is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen Agency Contact Type has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 623
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.02
dContact.02 - Agency Contact Last Name
Definition
The last name of the agency's primary contact.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_01
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
60
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact Last Name is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Contact Last Name has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 624
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.03
dContact.03 - Agency Contact First Name
Definition
The first name of the agency's primary contact.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_03
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact First Name is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Contact First Name has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 625
NEMSIS Version 3.5.1.250403CP1

 
dContact.04
dContact.04 - Agency Contact Middle Name/Initial
Definition
The middle name or initial of the agency's primary contact.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD02_02
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 626
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.05
dContact.05 - Agency Contact Address
Definition
The street address of the agency contact's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_04
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
The address for the director/chief/lead administrator/CEO/ should be the main address for the EMS agency.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact Address is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Contact Address has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 627
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.06
dContact.06 - Agency Contact City
Definition
The city of the EMS contact's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_05
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Data Element Comment
The city should be the mailing address for each contact type for the EMS agency. The EMS agency primary address
information (e.g., City) should be entered for the Agency Contact Type (dContact.05) “EMS Agency Director/Chief/Lead
Administrator/CEO”. 
City codes are based on GNIS Feature Class. The primary Feature Class to use is "Civil" with "Populated Place" and "Military"
code as additional options. 
Definitions for each GNIS City Feature Class can be found on the GNIS Codes website. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact City is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen Agency Contact City has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 628
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.07
dContact.07 - Agency Contact State
Definition
The state of the Agency contact's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_06
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{2}
Data Element Comment
The address for the director/chief/lead administrator/CEO/ should be the main address for the EMS agency. Based on the state
ANSI Code. For individuals living outside the USA full address to be entered in the address line. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact State is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen Agency Contact State has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 629
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.08
dContact.08 - Agency Contact ZIP Code
Definition
The ZIP code of the Agency's contact's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_07
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
The address for the director/chief/lead administrator/CEO/ should be the main address for the EMS agency. 
Zip Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact ZIP Code is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Contact ZIP Code has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 630
NEMSIS Version 3.5.1.250403CP1

 
dContact.09
dContact.09 - Agency Contact Country
Definition
The Country code of the Agency's contact's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
CACanada
MXMexico
USUnited States
Data Element Comment
The International Organization for Standardization (ISO) ISO 3166-1-alpha-2 code element for the country. The address for
the director/chief/lead administrator/CEO/ should be the main address for the EMS agency. For individuals living outside the
USA full address to be entered in the address line. 
ANSI Country Codes (ISO 3166): https://www.iso.org/iso-3166-country-codes.html
Published: 04/03/2025www.NEMSIS.orgPage 631
NEMSIS Version 3.5.1.250403CP1

 
9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.10
dContact.10 - Agency Contact Phone Number
Definition
Agency contact phone number.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_08
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact Phone Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Contact Phone Number has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen Agency Contact Phone Number has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 632
NEMSIS Version 3.5.1.250403CP1

 
9904003 - Work9904001 - Personal
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.11
dContact.11 - Agency Contact Email Address
Definition
The primary email address of the Agency contact.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_10
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
EmailAddressType
Constraints
Data Type
string
minLength
3
maxLength
100
Pattern
.+@.+
Data Element Comment
The address for the director/chief/lead administrator/CEO/ should be the main address for the EMS agency.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Contact Email Address is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Contact Email Address has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen Agency Contact Email Address has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 633
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.12
dContact.12 - EMS Agency Contact Web Address
Definition
The primary website address of the agency.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD02_11
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
3
maxLength
255
Data Element Comment
The EMS agency website address should be entered for the Agency Contact Type (dContact.05) "EMS Agency
Director/Chief/Lead Administrator/CEO". The EMS agency website address or other websites are optional for other contact
types (e.g., Administrative Assistant, EMS Medical Director, etc.).
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Agency Contact Web Address is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_d002ErrorWhen EMS Agency Contact Web Address has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 634
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.13
dContact.13 - Agency Medical Director Degree
Definition
The medical school degree type of the EMS Medical Director.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
1113001Doctor of Medicine
1113003Doctor of Osteopathy
Data Element Comment
The Medical Director Information has been merged into Section dContact. This data element is now associated with the
Medical Director and Assistant Medical Director Contacts in Section dContact.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Medical Director Degree is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen Agency Medical Director Degree has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 635
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dContact.14
dContact.14 - Agency Medical Director Board Certification Type
Definition
Documentation of the type of board certification of the EMS Agency Medical Director.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
1114001Allergy and Immunology
1114003Anesthesiology
1114005Colon and Rectal Surgery
1114007Dermatology
1114009Emergency Medicine
1114011Family Medicine
1114013Internal Medicine
1114015Neurological Surgery
1114017Neurology
1114019None (Not Board Certified)
1114021Obstetrics and Gynecology
1114023Ophthalmology
1114025Orthopedic Surgery
1114027Otolaryngology
1114029Pediatrics
1114031Physical Medicine and Rehabilitation
1114033Plastic Surgery
1114035Psychiatry
1114037Surgery
1114039Thoracic Surgery
1114041Urology
1114043Vascular Surgery
Data Element Comment
This is based on the American Board of Medical Specialties List of Certifications. The Medical Director Information from
Section D02 of NEMSIS Version 2.2.1 has been merged into Version 3 Section dContact.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Agency Medical Director Board Certification Type is empty, it should have a Not Value
(Not Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be
omitted (if the element is optional).
nemSch_d002ErrorWhen Agency Medical Director Board Certification Type has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_d003WarningWhen Agency Medical Director Board Certification Type has a Not Value, no other value should
be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 636
NEMSIS Version 3.5.1.250403CP1

 
dContact.15
dContact.15 - Medical Director Compensation
Definition
Indication of Medical Director's Compensation.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
1115001Compensated
1115003Non-Compensated
Data Element Comment
This element applies to the Medical Director(s) for an EMS agency (EMS Medical Director and EMS Assistant Medical
Director).
Published: 04/03/2025www.NEMSIS.orgPage 637
NEMSIS Version 3.5.1.250403CP1

 
dContact.16
dContact.16 - EMS Medical Director Board Certified/Eligible
Definition
Indication if the EMS Medical Director has advanced training through a formal fellowship or through another
practice pathway.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 638
NEMSIS Version 3.5.1.250403CP1

 
dConfiguration
Published: 04/03/2025www.NEMSIS.orgPage 639

 
CO
dConfiguration.17 - Dispatch Center (CAD) Name or ID
0 : M
CMSN
dConfiguration.16 - Crew Call Sign
1 : M
CN, LES
dConfiguration.15 - Patient Monitoring Capability(ies)
0 : M
CN, LES
dConfiguration.14 - EMD Vendor
0 : M
MSN
dConfiguration.13 - Emergency Medical Dispatch (EMD) Provided to EMS Agency
Service Area
1 : 1
O
dConfiguration.12 - Billing Status
0 : 1
CN, LES
dConfiguration.11 - EMS Agency Specialty Service Capability
0 : M
CMSN
dConfiguration.10 - EMS Agency Protocols
1 : M
CMSN
dConfiguration.09 - EMS Agency Medications
1 : M
MSN
dConfiguration.08 - EMS Certification Levels Permitted to Administer Each Medication
1 : 1
UC
dConfiguration.MedicationGroup
1 : M
CMSN
dConfiguration.07 - EMS Agency Procedures
1 : M
MSN
dConfiguration.06 - EMS Certification Levels Permitted to Perform Each Procedure
1 : 1
UC
dConfiguration.ProcedureGroup
1 : M
MSN
dConfiguration.01 - State Associated with this Configuration
1 : 1
UC
dConfiguration.ConfigurationGroup
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dConfiguration
dConfiguration
Associated Validation Rules
Rule IDLevelMessage
nemSch_d005ErrorUUID must be universally unique.
Published: 04/03/2025www.NEMSIS.orgPage 640

 
StateNational
dConfiguration.01
dConfiguration.01 - State Associated with this Configuration
Definition
The state associated with this configuration.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
Associated with the state (dAgency.04 - EMS Agency State). 
GNIS Codes Website:  http://geonames.usgs.gov/domestic/download_data.htm
The state EMS system does not need to import this information into their database. Reference the Demographic Dataset
Submission Guide for further details.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d010WarningThere should be a configuration group where State Associated with this Configuration is the state
recorded in EMS Agency State.
nemSch_d011WarningState Associated with this Configuration should be unique (the same state should not be listed
more than once).
nemSch_d012WarningEMS Certification Levels Permitted to Perform Each Procedure, within the configuration group for
the state recorded in EMS Agency State, should include the level recorded in Level of Service.
nemSch_d013WarningEMS Certification Levels Permitted to Administer Each Medication, within the configuration group
for the state recorded in EMS Agency State, should include the level recorded in Level of Service.
Published: 04/03/2025www.NEMSIS.orgPage 641
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dConfiguration.06
dConfiguration.06 - EMS Certification Levels Permitted to Perform Each Procedure
Definition
EMS certification levels which are permitted to perform the procedure listed in dConfiguration.07.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD04_05
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
9917001Advanced Emergency Medical Technician (AEMT)
9917002Emergency Medical Technician - Intermediate
9917003Emergency Medical Responder (EMR)
9917005Emergency Medical Technician (EMT)
9917007Paramedic
9917019Physician
9917021Critical Care Paramedic
9917023Community Paramedicine
9917025Nurse Practitioner
9917027Physician Assistant
9917029Licensed Practical Nurse (LPN)
9917031Registered Nurse
Data Element Comment
Using each certification level within the agency, indicate the approved procedures allowed utilizing dConfiguration.07 (EMS
Agency Procedures). 
The category EMT-Intermediate includes EMS professionals with an "85" or "99" certification level.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d012WarningEMS Certification Levels Permitted to Perform Each Procedure, within the configuration group
for the state recorded in EMS Agency State, should include the level recorded in Level of
Service.
nemSch_d013WarningEMS Certification Levels Permitted to Administer Each Medication, within the configuration
group for the state recorded in EMS Agency State, should include the level recorded in Level of
Service.
Published: 04/03/2025www.NEMSIS.orgPage 642
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
StateNational
dConfiguration.07
dConfiguration.07 - EMS Agency Procedures
Definition
A list of all procedures that the agency has implemented and available for use by any/all EMS certification
levels.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD04_04
Is NillableNo
UsageMandatory
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
CorrelationID
Constraints
Data Type
integer
maxInclusive
999999999999999999
minInclusive
100000
Data Element Comment
This is associated with the EMS Agency Number (dAgency.02) since each EMS Agency Number may have different
capabilities. Each procedure is associated with the EMS professional certification levels permitted to perform the procedure. 
EMS Agencies may identify additional SNOMEDCT procedure codes based on medical direction and their own need. If an
agency resides in a state with statewide approved procedures, they should be listed/implemented here. 
Code list is represented in SNOMEDCT: Reference the NEMSIS Suggested Lists at: 
 https://nemsis.org/technical-resources/version-3/version-3-resource-repository/
SNOMEDCT 
Website:  http://www.nlm.nih.gov/research/umls/Snomed/snomed_main.html
Product: Product - UMLS Metathesaurus
Published: 04/03/2025www.NEMSIS.orgPage 643
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dConfiguration.08
dConfiguration.08 - EMS Certification Levels Permitted to Administer Each Medication
Definition
All EMS certification levels which are permitted to administer the medications listed in dConfiguration.09
(EMS Agency Medications).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD04_07
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
9917001Advanced Emergency Medical Technician (AEMT)
9917002Emergency Medical Technician - Intermediate
9917003Emergency Medical Responder (EMR)
9917005Emergency Medical Technician (EMT)
9917007Paramedic
9917019Physician
9917021Critical Care Paramedic
9917023Community Paramedicine
9917025Nurse Practitioner
9917027Physician Assistant
9917029Licensed Practical Nurse (LPN)
9917031Registered Nurse
Data Element Comment
Using each certification level within the agency, indicate the approved medications allowed utilizing dConfiguration.09 (EMS
Agency Medications). 
The category EMT-Intermediate includes EMS professionals with an "85" or "99" certification level.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d012WarningEMS Certification Levels Permitted to Perform Each Procedure, within the configuration group
for the state recorded in EMS Agency State, should include the level recorded in Level of
Service.
nemSch_d013WarningEMS Certification Levels Permitted to Administer Each Medication, within the configuration
group for the state recorded in EMS Agency State, should include the level recorded in Level of
Service.
Published: 04/03/2025www.NEMSIS.orgPage 644
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
9924005 - SNOMED-CT9924003 - RxNorm
StateNational
dConfiguration.09
dConfiguration.09 - EMS Agency Medications
Definition
A list of all medications the agency has implemented and have available for use.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD04_06
Is NillableNo
UsageMandatory
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
Code Type
CorrelationID
Constraints
Data Type
string
minLength
2
maxLength
9
Data Element Comment
This is associated with the EMS Agency Number (dAgency.02) since each EMS Agency Number may have different
capabilities. 
List of medications based on RxNorm (RXCUI) code and SNOMED-CT codes for blood products. 
Reference the NEMSIS Suggested Lists at:  https://nemsis.org/technical-resources/version-3/version-3-resources/
RxNorm 
Website -  http://www.nlm.nih.gov/research/umls/rxnorm/docs/rxnormfiles.html
Product - RxNorm Full Monthly Release 
SNOMED-CT 
Website:  http://www.nlm.nih.gov/research/umls/Snomed/snomed_main.html
Product: Product - UMLS Metathesaurus. 
Allowable SNOMED-CT codes are: 
116762002 Administration of blood product 
116795008 Transfusion of cryoprecipitate 
116861002 Transfusion of fresh frozen plasma 
116865006 Administration of albumin 
180208003 Intravenous blood transfusion of platelets 
33389009 Transfusion of whole blood 
71493000 Transfusion of packed red blood cells
Associated Validation Rules
Rule IDLevelMessage
nemSch_d014ErrorEMS Agency Medications should be a code of between 2 and 7 digits when Code Type is
"RxNorm".
nemSch_d015ErrorEMS Agency Medications should be a SNOMED code specifically allowed in the data dictionary
when Code Type is "SNOMED".
nemSch_d016ErrorEMS Agency Medications should be an RxNorm code of between 2 and 7 digits or a SNOMED
code specifically allowed in the data dictionary.
Published: 04/03/2025www.NEMSIS.orgPage 645
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
StateNational
dConfiguration.10
dConfiguration.10 - EMS Agency Protocols
Definition
A list of all of the EMS field protocols that the agency has in place and available for use.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD04_08
Is NillableNo
UsageMandatory
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
CorrelationID
Code List
CodeDescription
9914001Airway
9914003Airway-Failed
9914005Airway-Obstruction/Foreign Body
9914007Airway-Rapid Sequence Induction (RSI-Paralytic)
9914009Airway-Sedation Assisted (Non-Paralytic)
9914011Cardiac Arrest-Asystole
9914013Cardiac Arrest-Hypothermia-Therapeutic
9914015Cardiac Arrest-Pulseless Electrical Activity
9914017Cardiac Arrest-Ventricular Fibrillation/ Pulseless Ventricular Tachycardia
9914019Cardiac Arrest-Post Resuscitation Care
9914021Environmental-Altitude Sickness
9914023Environmental-Cold Exposure
9914025Environmental-Frostbite/Cold Injury
9914027Environmental-Heat Exposure/Exhaustion
9914029Environmental-Heat Stroke/Hyperthermia
9914031Environmental-Hypothermia
9914033Exposure-Airway/Inhalation Irritants
9914035Exposure-Biological/Infectious
9914037Exposure-Blistering Agents
9914041Exposure-Chemicals to Eye
9914043Exposure-Cyanide
9914045Exposure-Explosive/ Blast Injury
9914047Exposure-Nerve Agents
9914049Exposure-Radiologic Agents
9914051General-Back Pain
9914053General-Behavioral/Patient Restraint
9914055General-Cardiac Arrest
9914057General-Dental Problems
9914059General-Epistaxis
9914061General-Fever
9914063General-Individualized Patient Protocol
9914065General-Indwelling Medical Devices/Equipment
9914067General-IV Access
9914069General-Medical Device Malfunction
9914071General-Pain Control
9914073General-Spinal Immobilization/Clearance
9914075General-Universal Patient Care/ Initial Patient Contact
9914077Injury-Amputation
9914079Injury-Bites and Envenomations-Land
9914081Injury-Bites and Envenomations-Marine
9914083Injury-Bleeding/ Hemorrhage Control
Published: 04/03/2025www.NEMSIS.orgPage 646
NEMSIS Version 3.5.1.250403CP1

 
9914085Injury-Burns-Thermal
9914087Injury-Cardiac Arrest
9914089Injury-Crush Syndrome
9914091Injury-Diving Emergencies
9914093Injury-Drowning/Near Drowning
9914095Injury-Electrical Injuries
9914097Injury-Extremity
9914099Injury-Eye
9914101Injury-Head
9914103Injury-Impaled Object
9914105Injury-Multisystem
9914107Injury-Spinal Cord
9914109Medical-Abdominal Pain
9914111Medical-Allergic Reaction/Anaphylaxis
9914113Medical-Altered Mental Status
9914115Medical-Bradycardia
9914117Medical-Cardiac Chest Pain
9914119Medical-Diarrhea
9914121Medical-Hyperglycemia
9914123Medical-Hypertension
9914125Medical-Hypoglycemia/Diabetic Emergency
9914127Medical-Hypotension/Shock (Non-Trauma)
9914129Medical-Influenza-Like Illness/ Upper Respiratory Infection
9914131Medical-Nausea/Vomiting
9914133Medical-Newborn/ Neonatal Resuscitation
9914135General-Overdose/Poisoning/Toxic Ingestion
9914137Medical-Pulmonary Edema/CHF
9914139Medical-Respiratory Distress/Asthma/COPD/Reactive Airway
9914141Medical-Seizure
9914143Medical-ST-Elevation Myocardial Infarction (STEMI)
9914145Medical-Stroke/TIA
9914147Medical-Supraventricular Tachycardia (Including Atrial Fibrillation)
9914149Medical-Syncope
9914151Medical-Ventricular Tachycardia (With Pulse)
9914153Not Done
9914155OB/GYN-Childbirth/Labor/Delivery
9914157OB/GYN-Eclampsia
9914159OB/GYN-Gynecologic Emergencies
9914161OB/GYN-Pregnancy Related Emergencies
9914163OB/GYN-Post-partum Hemorrhage
9914165Other
9914167Exposure-Carbon Monoxide
9914169Cardiac Arrest-Do Not Resuscitate
9914171Cardiac Arrest-Special Resuscitation Orders
9914173Exposure-Smoke Inhalation
9914175General-Community Paramedicine / Mobile Integrated Healthcare
9914177General-Exception Protocol
9914179General-Extended Care Guidelines
9914181General-Interfacility Transfers
9914183General-Law Enforcement - Blood for Legal Purposes
9914185General-Law Enforcement - Assist with Law Enforcement Activity
9914187General-Neglect or Abuse Suspected
9914189General-Refusal of Care
9914191Injury-Mass/Multiple Casualties
9914193Injury-Thoracic
9914195Medical-Adrenal Insufficiency
9914197Medical-Apparent Life Threatening Event (ALTE)
9914199Medical-Tachycardia
9914201Cardiac Arrest-Determination of Death / Withholding Resuscitative Efforts
9914203Injury-Conducted Electrical Weapon (e.g., Taser)
9914205Injury-Facial Trauma
9914207Injury-General Trauma Management
9914209Injury-Lightning/Lightning Strike
9914211Injury-SCUBA Injury/Accidents
9914213Injury-Topical Chemical Burn
9914215Medical-Beta Blocker Poisoning/Overdose
9914217Medical-Calcium Channel Blocker Poisoning/Overdose
9914219Medical-Opioid Poisoning/Overdose
9914221Medical-Respiratory Distress-Bronchiolitis
Published: 04/03/2025www.NEMSIS.orgPage 647

 
9914223Medical-Respiratory Distress-Croup
9914225Medical-Stimulant Poisoning/Overdose
Data Element Comment
This is associated with the EMS Agency Number (dAgency.02) since each EMS Agency Number may have different
capabilities. 
State and local entities can add additional protocols to the list but the additional protocols must map to these uniform codes. 
The list is defined by the NASEMSO State Medical Directors.
Published: 04/03/2025www.NEMSIS.orgPage 648

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dConfiguration.11
dConfiguration.11 - EMS Agency Specialty Service Capability
Definition
Special training or services provided by the EMS Agency and available to the EMS service area/community.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
1211001Air Rescue
1211003CBRNE
1211005Community Health Medicine
1211007Disaster Medical Assistance Team (DMAT)
1211009Disaster Mortuary (DMORT)
1211011Dive Rescue
1211013Farm Rescue
1211015High Angle Rescue
1211017Machinery Disentanglement
1211019None
1211021Ski / Snow Rescue
1211023Tactical EMS
1211025Trench / Confined Space Rescue
1211027Urban Search and Rescue (USAR)
1211029Vehicle Extrication
1211031Veterinary Medical Assistance Team (VMAT)
1211033Water or Ice Related Rescue (Incl Swift Water)
1211035Wilderness Search and Rescue
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Agency Specialty Service Capability is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted
(if the element is optional).
nemSch_d002ErrorWhen EMS Agency Specialty Service Capability has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
nemSch_d003WarningWhen EMS Agency Specialty Service Capability has a Not Value, no other value should be
recorded.
Published: 04/03/2025www.NEMSIS.orgPage 649
NEMSIS Version 3.5.1.250403CP1

 
dConfiguration.12
dConfiguration.12 - Billing Status
Definition
Indication of whether the EMS agency routinely bills for any segment of the patient population.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD04_10
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Billing status is associated with each EMS Agency for the specific EMS Agency Number (dAgency.02).
Published: 04/03/2025www.NEMSIS.orgPage 650
NEMSIS Version 3.5.1.250403CP1

 
StateNational
dConfiguration.13
dConfiguration.13 - Emergency Medical Dispatch (EMD) Provided to EMS Agency Service Area
Definition
Indication as to whether Emergency Medical Dispatch is provided to the EMS Agency's service area.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Code List
CodeDescription
1213001No
1213003Yes, 100% of the EMS Agency's Service Area
1213005Yes, Less than 100% of the EMS Agency's Service Area
Data Element Comment
Added to better document the implementation of Emergency Medical Dispatch. Associated with each EMS Agency and the
specific EMS Agency Number (dAgency.02).
Published: 04/03/2025www.NEMSIS.orgPage 651
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dConfiguration.14
dConfiguration.14 - EMD Vendor
Definition
The vendor or company associated with the EMD Card set and algorithms.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_17
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMD Vendor is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen EMD Vendor has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_d003WarningWhen EMD Vendor has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 652
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dConfiguration.15
dConfiguration.15 - Patient Monitoring Capability(ies)
Definition
The EMS Agency's patient monitoring capability which can be provided to any/all patients presenting to
EMS.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
1215001Capnography-Numeric
1215003Capnography-Waveform
1215005ECG-12 Lead or Greater
1215007ECG-Less than 12 Lead (Cardiac Monitor)
1215009Oximetry-Carbon Monoxide
1215011Oximetry-Oxygen
1215013Pressure Measurement-Invasive (Arterial, CVP, Swan, etc.)
1215015Pressure Measurement-Non-Invasive (Blood Pressure, etc.)
1215017Ventilator-Transport
1215019Vital Sign Monitoring
Data Element Comment
Added to identify the patient monitoring capability of the EMS Agency. Associated with each EMS Agency Number
(dAgency.02) since each EMS Agency Number may have a different capability within each EMS Agency. Other patient
monitoring capability may exist but NEMSIS Version 3 only includes these specific capabilities.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Patient Monitoring Capability(ies) is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_d002ErrorWhen Patient Monitoring Capability(ies) has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen Patient Monitoring Capability(ies) has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 653
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
StateNational
dConfiguration.16
dConfiguration.16 - Crew Call Sign
Definition
The EMS crew call sign used to dispatch and communicate with the unit. This may be the same as the EMS
Unit/Vehicle Number in many agencies.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementD04_02
Is NillableNo
UsageMandatory
Recurrence1 : M
Attributes
CorrelationID
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d017WarningCrew Call Sign should be unique (the same call sign should not be listed more than once).
Published: 04/03/2025www.NEMSIS.orgPage 654
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
dConfiguration.17
dConfiguration.17 - Dispatch Center (CAD) Name or ID
Definition
The name or ID of the dispatch center (Primary or Secondary Service Answering Point - PSAP) that
dispatches the EMS agency.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
This element can be used to identify the dispatch center (Primary or Secondary Service Answering Point - PSAP) that
dispatches the EMS agency. If the EMS agency is able to populate the Patient Care Report (PCR) with CAD specific details
(times, incident address information, crew information, EMD, etc.) the name or ID of the dispatch center should be
documented. Information in dConfiguration.17 may be used to populate eDispatch.04 - Computer Aided Dispatch (CAD)
Name or ID if a CAD integration exists.
Version 3 Changes Implemented
Added to the dataset to assist in identifying the CAD / dispatch center providing information to the EMS agency and ePCR
when there are multiple dispatch centers sending resources to the same EMS incident.
Published: 04/03/2025www.NEMSIS.orgPage 655
NEMSIS Version 3.5.1.250403CP1

 
dLocation
Published: 04/03/2025www.NEMSIS.orgPage 656

 
CO
dLocation.12 - EMS Location Phone Number
0 : M
O
dLocation.11 - EMS Location Country
0 : 1
O
dLocation.10 - EMS Location County
0 : 1
O
dLocation.09 - EMS Station or Location ZIP Code
0 : 1
O
dLocation.08 - EMS Location State
0 : 1
O
dLocation.07 - EMS Location City
0 : 1
O
dLocation.06 - EMS Location Address
0 : 1
O
dLocation.05 - EMS Location US National Grid Coordinates
0 : 1
O
dLocation.04 - EMS Location GPS
0 : 1
O
dLocation.03 - EMS Location Number
0 : 1
O
dLocation.02 - EMS Location Name
0 : 1
O
dLocation.01 - EMS Location Type
0 : 1
UC
dLocation.LocationGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dLocation
dLocation
Associated Validation Rules
Rule IDLevelMessage
nemSch_d005ErrorUUID must be universally unique.
Published: 04/03/2025www.NEMSIS.orgPage 657

 
dLocation.01
dLocation.01 - EMS Location Type
Definition
The type of EMS Location which could be a fixed station or a pre-determined staging area.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
1301001EMS Agency Headquarters
1301003EMS Staging Area
1301005EMS Station
1301007Other
Data Element Comment
This is associated with the EMS Agency associated with the EMS Agency Number (dAgency.02).
Version 3 Changes Implemented
Added to allow multiple locations to be documented for an EMS Agency.
Published: 04/03/2025www.NEMSIS.orgPage 658
NEMSIS Version 3.5.1.250403CP1

 
dLocation.02
dLocation.02 - EMS Location Name
Definition
The name of the EMS Location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD05_01
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 659
NEMSIS Version 3.5.1.250403CP1

 
dLocation.03
dLocation.03 - EMS Location Number
Definition
The ID number of the EMS Location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD05_02
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 660
NEMSIS Version 3.5.1.250403CP1

 
dLocation.04
dLocation.04 - EMS Location GPS
Definition
The GPS coordinate of the EMS location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD05_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
(\+|-)?(90(\.[0]{1,6})?|([1-8][0-9]|[0-9])(\.[0-9]{1,6})?),(\+|-)?(180(\.[0]{1,6})?|(1[0-7][0-9]|[1-9][0-9]|[0-9])(\.[0-9]{1,6})?)
Data Element Comment
The pattern for GPS location is in the format "," where: latitudelongitude
-  has a minimum of -90 and a maximum of 90 with up to 6 decimal places latitude
-  has a minimum of -180 and a maximum of 180 with up to 6 decimal placeslongitude
Published: 04/03/2025www.NEMSIS.orgPage 661
NEMSIS Version 3.5.1.250403CP1

 
dLocation.05
dLocation.05 - EMS Location US National Grid Coordinates
Definition
The US National Grid Coordinates of the EMS location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
([1-9]|[1-5][0-9]|60)[C-HJ-NP-X][A-HJ-NP-Z][A-HJ-NP-V]([0-9][0-9]){4,5}
Data Element Comment
For more information go to .www.fgdc.gov/usng
Published: 04/03/2025www.NEMSIS.orgPage 662
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
dLocation.06
dLocation.06 - EMS Location Address
Definition
The address of the EMS Location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD05_05
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 663
NEMSIS Version 3.5.1.250403CP1

 
dLocation.07
dLocation.07 - EMS Location City
Definition
The city of the EMS location type (e.g., Fixed station, sub-station, staging area, etc.).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD05_06
Is NillableNo
UsageOptional
Recurrence0 : 1
Data Element Comment
City codes are based on GNIS Feature Class. The primary Feature Class to use is "Civil" with "Populated Place" and "Military"
code as additional options. 
Definitions for each GNIS City Feature Class can be found on the GNIS Codes website. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 664
NEMSIS Version 3.5.1.250403CP1

 
dLocation.08
dLocation.08 - EMS Location State
Definition
The state of the EMS Location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD05_07
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
Based on the ANSI State Code. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 665
NEMSIS Version 3.5.1.250403CP1

 
dLocation.09
dLocation.09 - EMS Station or Location ZIP Code
Definition
The ZIP code of the EMS Location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD05_08
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
Zip Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Published: 04/03/2025www.NEMSIS.orgPage 666
NEMSIS Version 3.5.1.250403CP1

 
dLocation.10
dLocation.10 - EMS Location County
Definition
The county of the EMS Location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{5}
Data Element Comment
Based on the ANSI Code Single Choice based on the County Name but stored as the ANSI code (combined 5 digit State and
County codes). 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 667
NEMSIS Version 3.5.1.250403CP1

 
dLocation.11
dLocation.11 - EMS Location Country
Definition
The country of the EMS location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
CACanada
MXMexico
USUnited States
Data Element Comment
The International Organization for Standardization (ISO) ISO 3166-1-alpha-2 code element for the country. 
ANSI Country Codes (ISO 3166) Website: https://www.iso.org/iso-3166-country-codes.html
Version 3 Changes Implemented
Added to improve international implementations.
Published: 04/03/2025www.NEMSIS.orgPage 668
NEMSIS Version 3.5.1.250403CP1

 
9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
stringData Type: 2minLength: 255maxLength: 
dLocation.12
dLocation.12 - EMS Location Phone Number
Definition
The phone number of the EMS Location.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD05_09
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 669
NEMSIS Version 3.5.1.250403CP1

 
dVehicle
Published: 04/03/2025www.NEMSIS.orgPage 670

 
O
dVehicle.13 - Annual Vehicle Miles/Kilometers
0 : 1
O
dVehicle.12 - Annual Vehicle Hours
0 : 1
O
dVehicle.11 - Year Miles/Kilometers Hours Accrued
0 : 1
UC
dVehicle.YearGroup
0 : M
N, LES
dVehicle.10 - Vehicle Model Year
0 : 1
O
dVehicle.09 - Vehicle Initial Cost
0 : 1
O
dVehicle.08 - Number of Each EMS Personnel Level on Normal Medical (Non-911)
Transport Ambulance
0 : 1
O
dVehicle.07 - Number of Each EMS Personnel Level on Normal 911 Response
(Non-Transport) Vehicle
0 : 1
O
dVehicle.06 - Number of Each EMS Personnel Level on Normal 911 Ambulance
Response
0 : 1
O
dVehicle.05 - Crew State Certification/Licensure Levels
0 : 1
UC
dVehicle.VehicleCertificationLevelsGroup
0 : M
N, LES
dVehicle.04 - Vehicle Type
0 : 1
O
dVehicle.03 - EMS Unit Call Sign
0 : 1
O
dVehicle.02 - Vehicle Identification Number
0 : 1
N, LES
dVehicle.01 - Unit/Vehicle Number
0 : 1
UC
dVehicle.VehicleGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dVehicle
dVehicle
Associated Validation Rules
Rule IDLevelMessage
nemSch_d005ErrorUUID must be universally unique.
Published: 04/03/2025www.NEMSIS.orgPage 671

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dVehicle.01
dVehicle.01 - Unit/Vehicle Number
Definition
The unique ID number for the unit which is specific for each vehicle. This ID number may be the state's
vehicle's permit number.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD06_01
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
25
Data Element Comment
This element can be used in EMS PCR documentation to document the vehicle. This element should be used to populate
eResponse.13 (EMS Vehicle (Unit) Number).
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Unit/Vehicle Number is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen Unit/Vehicle Number has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 672
NEMSIS Version 3.5.1.250403CP1

 
dVehicle.02
dVehicle.02 - Vehicle Identification Number
Definition
The manufacturer's VIN associated with the vehicle.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
17
maxLength
17
Data Element Comment
Consider VIN standard ISO-3779 and ISO-3780.
Published: 04/03/2025www.NEMSIS.orgPage 673
NEMSIS Version 3.5.1.250403CP1

 
dVehicle.03
dVehicle.03 - EMS Unit Call Sign
Definition
The EMS unit number used to dispatch and communicate with the unit. This may be the same as the EMS
Unit/Vehicle Number in many agencies.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 674
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dVehicle.04
dVehicle.04 - Vehicle Type
Definition
The vehicle type of the unit (ambulance, fire, truck, etc.).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD06_03
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
1404001Ambulance
1404003ATV
1404005Bicycle
1404007Fire Apparatus
1404009Fixed Wing
1404011Motorcycle
1404013Other
1404015Personal Vehicle
1404017Quick Response Vehicle (Non-Transport Vehicle other than Fire Apparatus)
1404019Rescue
1404021Rotor Craft
1404023Snow Vehicle
1404025Watercraft
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Vehicle Type is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen Vehicle Type has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
Published: 04/03/2025www.NEMSIS.orgPage 675
NEMSIS Version 3.5.1.250403CP1

 
dVehicle.05
dVehicle.05 - Crew State Certification/Licensure Levels
Definition
The certification/licensure level of the ambulance by the state or the certification/licensure level at which the
vehicle is most commonly staffed.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD06_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9917001Advanced Emergency Medical Technician (AEMT)
9917002Emergency Medical Technician - Intermediate
9917003Emergency Medical Responder (EMR)
9917005Emergency Medical Technician (EMT)
9917007Paramedic
9917019Physician
9917021Critical Care Paramedic
9917023Community Paramedicine
9917025Nurse Practitioner
9917027Physician Assistant
9917029Licensed Practical Nurse (LPN)
9917031Registered Nurse
Data Element Comment
The category Emergency Medical Technician - Intermediate includes EMS professionals with an "85" or "99" certification level.
Published: 04/03/2025www.NEMSIS.orgPage 676
NEMSIS Version 3.5.1.250403CP1

 
dVehicle.06
dVehicle.06 - Number of Each EMS Personnel Level on Normal 911 Ambulance Response
Definition
The number of each personnel level associated with the vehicle crew.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD06_05
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
12
Data Element Comment
Indicate the number of each of the following EMS Personnel levels on the crew. Associated with each Certification/Licensure
Level in dVehicle.05 (Crew State Certification/Licensure Levels).
Published: 04/03/2025www.NEMSIS.orgPage 677
NEMSIS Version 3.5.1.250403CP1

 
dVehicle.07
dVehicle.07 - Number of Each EMS Personnel Level on Normal 911 Response (Non-Transport) Vehicle
Definition
The number of each personnel level for your EMS Agency's Medical (Non-911) Non-Transport Ambulance.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
12
Data Element Comment
Indicate the number of each of the following EMS Personnel levels on the crew. Associated with each Certification/Licensure
Level in dVehicle.05 (Crew State Certification/Licensure Levels).
Published: 04/03/2025www.NEMSIS.orgPage 678
NEMSIS Version 3.5.1.250403CP1

 
dVehicle.08
dVehicle.08 - Number of Each EMS Personnel Level on Normal Medical (Non-911) Transport Ambulance
Definition
The number of each personnel level for your EMS Agency's Medical (Non-911) Transport Ambulance.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
12
Data Element Comment
Indicate the number of each of the following EMS Personnel levels on the crew. Associated with each Certification/Licensure
Level in dVehicle.05(Crew State Certification/Licensure Levels).
Published: 04/03/2025www.NEMSIS.orgPage 679
NEMSIS Version 3.5.1.250403CP1

 
dVehicle.09
dVehicle.09 - Vehicle Initial Cost
Definition
Initial costs of vehicles held by agency excluding all medical and other equipment not associated with the
vehicle. This cost should be inclusive of all sources of funding including grants, donations, and any other
capital.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD06_06
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
10,000,000
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 680
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dVehicle.10
dVehicle.10 - Vehicle Model Year
Definition
The year the vehicle was manufactured.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD06_07
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
integer
minInclusive
1900
maxInclusive
2050
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen Vehicle Model Year is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen Vehicle Model Year has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 681
NEMSIS Version 3.5.1.250403CP1

 
dVehicle.11
dVehicle.11 - Year Miles/Kilometers Hours Accrued
Definition
The year the hours and miles/kilometers were accumulated.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD06_08
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
1900
maxInclusive
2050
Data Element Comment
The grouping dVehicle.YearGroup, allows multiple year information to be stored for each EMS vehicle. This includes elements
dVehicle.11 - Year Miles/Kilometers Hours Accrued, dVehicle.12 - Annual Vehicle Hours, and dVehicle.13 - Annual Vehicle
Miles/Kilometers.
Published: 04/03/2025www.NEMSIS.orgPage 682
NEMSIS Version 3.5.1.250403CP1

 
dVehicle.12
dVehicle.12 - Annual Vehicle Hours
Definition
The number of hours the vehicle was in service for the agency for the defined year.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD06_09
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
positiveInteger
minInclusive
1
maxInclusive
10,000
Data Element Comment
Associated with each year of element dVehicle.11 (Year Miles/Hours Accrued).
Published: 04/03/2025www.NEMSIS.orgPage 683
NEMSIS Version 3.5.1.250403CP1

 
9929003 - Miles9929001 - Kilometers
dVehicle.13
dVehicle.13 - Annual Vehicle Miles/Kilometers
Definition
The number of miles/kilometers the vehicle accumulated in service for the agency for the defined year
(Odometer Reading).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD06_10
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
DistanceUnit
Constraints
Data Type
decimal
totalDigits
7
fractionDigits
1
Data Element Comment
Associated with each year of (dVehicle.11) Year Miles/Kilometers Hours Accrued.
Published: 04/03/2025www.NEMSIS.orgPage 684
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel
Published: 04/03/2025www.NEMSIS.orgPage 685

 
O
dPersonnel.26 - EMS Personnel's Initial State's Licensure Issue Date
0 : 1
O
dPersonnel.25 - EMS Personnel's State EMS Current Certification Date
0 : 1
N, LES
dPersonnel.24 - EMS Personnel's State EMS Certification Licensure Level
0 : 1
N, LES
dPersonnel.23 - EMS Personnel's State's Licensure ID Number
0 : 1
N, LES
dPersonnel.22 - EMS Personnel's State of Licensure
0 : 1
UC
dPersonnel.LicensureGroup
0 : M
O
dPersonnel.21 - EMS Personnel's Agency ID Number
0 : 1
CO
dPersonnel.20 - EMS Personnel's Foreign Language Ability
0 : M
O
dPersonnel.19 - EMS Personnel's Immunization Year
0 : 1
O
dPersonnel.18 - EMS Personnel's Immunization Status
0 : 1
UC
dPersonnel.ImmunizationsGroup
0 : M
CO
dPersonnel.17 - EMS Personnel's Motor Vehicle License Type
0 : M
CO
dPersonnel.16 - EMS Personnel's Degree Subject/Field of Study
0 : M
O
dPersonnel.15 - EMS Personnel's Highest Educational Degree
0 : 1
O
dPersonnel.14 - EMS Personnel's Citizenship
0 : 1
CN, LES
dPersonnel.13 - EMS Personnel's Race
0 : M
N, LES
D
dPersonnel.12 - EMS Personnel's Gender (DEPRECATED)
0 : 1
N, LES
dPersonnel.11 - EMS Personnel's Date of Birth
0 : 1
CO
dPersonnel.10 - EMS Personnel's Email Address
0 : M
CO
dPersonnel.09 - EMS Personnel's Phone Number
0 : M
O
dPersonnel.08 - EMS Personnel's Country
0 : 1
O
dPersonnel.07 - EMS Personnel's ZIP Code
0 : 1
O
dPersonnel.06 - EMS Personnel's State
0 : 1
O
dPersonnel.05 - EMS Personnel's City of Residence
0 : 1
O
dPersonnel.04 - EMS Personnel's Mailing Address
0 : 1
dPersonnel.AddressGroup
0 : 1
N, LES
dPersonnel.03 - EMS Personnel's Middle Name/Initial
0 : 1
N, LES
dPersonnel.02 - EMS Personnel's First Name
0 : 1
N, LES
dPersonnel.01 - EMS Personnel's Last Name
0 : 1
dPersonnel.NameGroup
0 : 1
UC
dPersonnel.PersonnelGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dPersonnel
Published: 04/03/2025www.NEMSIS.orgPage 686

 
N, LES
dPersonnel.40 - EMS Personnel's Sex
0 : 1
O
dPersonnel.39 - Date of Personnel's Certification or Licensure for Agency
0 : 1
O
dPersonnel.38 - EMS Personnel's Practice Level
0 : 1
UC
dPersonnel.CertificationLevelGroup
0 : M
O
dPersonnel.37 - EMS Personnel's Date Length of Service Documented
0 : 1
O
dPersonnel.36 - EMS Personnel's Total Length of Service in Years
0 : 1
CN, LES
dPersonnel.35 - EMS Personnel's Other Job Responsibilities
0 : M
N, LES
dPersonnel.34 - EMS Personnel's Primary EMS Job Role
0 : 1
O
dPersonnel.33 - EMS Personnel's Hire Date
0 : 1
N, LES
dPersonnel.32 - EMS Personnel's Employment Status Date
0 : 1
N, LES
dPersonnel.31 - EMS Personnel's Employment Status
0 : 1
O
dPersonnel.30 - EMS Personnel's Current National Registry Expiration Date
0 : 1
O
dPersonnel.29 - EMS Personnel's National Registry Certification Level
0 : 1
O
dPersonnel.28 - EMS Personnel's National Registry Number
0 : 1
O
dPersonnel.27 - EMS Personnel's Current State's Licensure Expiration Date
0 : 1
dPersonnel
Associated Validation Rules
Rule IDLevelMessage
nemSch_d005ErrorUUID must be universally unique.
Published: 04/03/2025www.NEMSIS.orgPage 687

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.01
dPersonnel.01 - EMS Personnel's Last Name
Definition
The last name of the personnel.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD08_01
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
60
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Last Name is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen EMS Personnel's Last Name has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 688
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.02
dPersonnel.02 - EMS Personnel's First Name
Definition
The first name of the personnel.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD08_03
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's First Name is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen EMS Personnel's First Name has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 689
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.03
dPersonnel.03 - EMS Personnel's Middle Name/Initial
Definition
The middle name or initial of the personnel.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD08_02
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Middle Name/Initial is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_d002ErrorWhen EMS Personnel's Middle Name/Initial has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 690
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
dPersonnel.04
dPersonnel.04 - EMS Personnel's Mailing Address
Definition
The Street or PO Box of the personnel's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD08_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
For individuals living outside the USA the full address can be entered in the address line.
Published: 04/03/2025www.NEMSIS.orgPage 691
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.05
dPersonnel.05 - EMS Personnel's City of Residence
Definition
The city of the personnel's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD08_05
Is NillableNo
UsageOptional
Recurrence0 : 1
Data Element Comment
City codes are based on GNIS Feature Class. The primary Feature Class to use is "Civil" with "Populated Place" and "Military"
code as additional options. 
Definitions for each GNIS City Feature Class can be found on the GNIS Codes website. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 692
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.06
dPersonnel.06 - EMS Personnel's State
Definition
The state of the personnel's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD08_06
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
Based on ANSI Code.
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 693
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.07
dPersonnel.07 - EMS Personnel's ZIP Code
Definition
The ZIP code of the personnel's mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD08_07
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
Zip Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Published: 04/03/2025www.NEMSIS.orgPage 694
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.08
dPersonnel.08 - EMS Personnel's Country
Definition
The country of the personnel mailing address.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
CACanada
MXMexico
USUnited States
Data Element Comment
Based on ANSI Code.
ANSI Country Codes (ISO 3166) Website: https://www.iso.org/iso-3166-country-codes.html
Published: 04/03/2025www.NEMSIS.orgPage 695
NEMSIS Version 3.5.1.250403CP1

 
9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
stringData Type: 2minLength: 255maxLength: 
dPersonnel.09
dPersonnel.09 - EMS Personnel's Phone Number
Definition
The phone number for the personnel.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD08_08
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 696
NEMSIS Version 3.5.1.250403CP1

 
9904003 - Work9904001 - Personal
stringData Type: 2minLength: 255maxLength: 
dPersonnel.10
dPersonnel.10 - EMS Personnel's Email Address
Definition
The primary email address of the personnel.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD08_10
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
EmailAddressType
Constraints
Data Type
string
minLength
3
maxLength
100
Pattern
.+@.+
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 697
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.11
dPersonnel.11 - EMS Personnel's Date of Birth
Definition
The personnel's date of birth.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD08_11
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Date of Birth is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen EMS Personnel's Date of Birth has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 698
NEMSIS Version 3.5.1.250403CP1

 
 - 7701005Not Reporting - 7701003Not Recorded - 7701001Not Applicable
State
 dPersonnel.12(DEPRECATED)
Deprecated
 -  dPersonnel.12EMS Personnel's Gender(DEPRECATED)
Definition
 The personnel's gender.(DEPRECATED)
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementDEPRECATED
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9906001Female (DEPRECATED)
9906003Male (DEPRECATED)
9906007Female-to-Male, Transgender Male (DEPRECATED)
9906009Male-to-Female, Transgender Female (DEPRECATED)
9906011Other, neither exclusively male or female (DEPRECATED)
9906005Unknown (Unable to Determine) (DEPRECATED)
Data Element Comment
Deprecated Comment
The NEMSIS Program is funded by the National Highway Traffic Safety Administration and this element was modified to
comply with President Trump’s Executive Orders.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Gender (DEPRECATED) is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Personnel's Gender (DEPRECATED) has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 699
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.13
dPersonnel.13 - EMS Personnel's Race
Definition
The personnel's race as defined by the OMB (US Office of Management and Budget).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD08_13
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
1513001American Indian or Alaska Native
1513003Asian
1513005Black or African American
1513007Hispanic or Latino
1513009Native Hawaiian or Other Pacific Islander
1513011White
1513013Middle Eastern or North African
Data Element Comment
OMB requirements are provided at: . A single multiple choice questionhttps://www.federalregister.gov/d/2024-06469
methodology is being implemented to improve the completion of ethnicity information. Ethnicity (Version 2.1.1: D08_14) has
been merged with this data element and retired.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Race is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_d002ErrorWhen EMS Personnel's Race has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_d003WarningWhen EMS Personnel's Race has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 700
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.14
dPersonnel.14 - EMS Personnel's Citizenship
Definition
The documentation of the personnel's citizenship.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
length
2
Data Element Comment
Website: https://www.iso.org/iso-3166-country-codes.html
Published: 04/03/2025www.NEMSIS.orgPage 701
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.15
dPersonnel.15 - EMS Personnel's Highest Educational Degree
Definition
The highest educational degree completed by the personnel.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
1515001No Schooling Completed
1515003Nursery School to 4th Grade
15150055th Grade or 6th Grade
15150077th Grade or 8th Grade
15150099th Grade
151501110th Grade
151501311th Grade
151501512th Grade, No Diploma
1515017High School Graduate-Diploma or the Equivalent (GED)
1515019Some College Credit, but Less than 1 Year
15150211 or More Years of College, No Degree
1515023Associate Degree
1515025Bachelor's Degree
1515027Master's Degree
1515029Professional Degree (i.e. MD, DDS, DVM, LLB, JD)
1515031Doctorate Degree (i.e. PhD, EdD)
Data Element Comment
Based on Census 2000 Educational Attainment Question.
Published: 04/03/2025www.NEMSIS.orgPage 702
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
dPersonnel.16
dPersonnel.16 - EMS Personnel's Degree Subject/Field of Study
Definition
The area of the personnel's post high-school (post-secondary) degree.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
1516001Agriculture and Natural Resources
1516003Architecture and Related Services
1516005Area, Ethnic, Cultural, and Gender Studies
1516007Biological and Biomedical Sciences
1516009Business
1516011Communication, Journalism, and Related Programs
1516013Communications Technologies
1516015Computer and Information Sciences
1516017Education
1516019Emergency Medical Services
1516021Engineering
1516023Engineering Technologies
1516025English Language and Literature/Letters
1516027Family and Consumer Sciences/Human Sciences
1516029Fire Science
1516031Foreign Languages, Literatures, and Linguistics
1516033Health Professions and Related Clinical Sciences, Not Including Emergency Medical Services
1516035Legal Professions and Studies
1516037Liberal Arts and Sciences, General Studies, and Humanities
1516039Library Science
1516041Mathematics and Statistics
1516043Military Technologies
1516045Multi/Interdisciplinary Studies
1516047Not Classified by Field of Study
1516049None
1516051Parks, Recreation, Leisure and Fitness Studies
1516053Philosophy and Religious Studies
1516055Physical Sciences and Science Technologies
1516057Precision Production
1516059Psychology
1516061Public Administration and Social Services
1516063Security and Protective Services, Not Including Fire Science
1516065Social Sciences and History
1516067Theology and Religious Vocations
1516069Transportation and Materials Moving
1516071Visual and Performing Arts
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 703
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
dPersonnel.17
dPersonnel.17 - EMS Personnel's Motor Vehicle License Type
Definition
The type of motor vehicle license (i.e. Class A, B, Pilot, etc.) of the EMS personnel.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
1517001All-Terrain Vehicle (ATV)
1517003Commercial Class A
1517005Commercial Class B
1517007Commercial Class C
1517009Motorcycle-Class M
1517011None
1517013Operator Class D (Normal)
1517015Other
1517017Pilot-Rotor Wing Air
1517019Pilot-Fixed Wing Air
1517021Snowmobile
1517023Taxi and Livery Class E
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 704
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.18
dPersonnel.18 - EMS Personnel's Immunization Status
Definition
The type of immunization status.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9910001Anthrax
9910003Cholera
9910005DPT / TDaP (Diphtheria, Pertussis, Tetanus)
9910007Hemophilus Influenza B
9910009Hepatitis A
9910011Hepatitis B
9910013Human Papilloma Virus (HPV)
9910015Influenza-H1N1
9910017Influenza-Other
9910019Influenza-Seasonal (In past 12 months)
9910021Lyme Disease
9910023Meningococcus
9910025MMR (Measles, Mumps, Rubella)
9910027Other-Not Listed
9910029Plague
9910031Pneumococcal (Pneumonia)
9910033Polio
9910035Rabies
9910037Rotavirus
9910039Shingles
9910041Small Pox
9910043Tetanus
9910045Tuberculosis
9910047Typhoid
9910049Varicella (Chickenpox)
9910051Yellow Fever
9910053None
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 705
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.19
dPersonnel.19 - EMS Personnel's Immunization Year
Definition
The year associated with each immunization type.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
1900
maxInclusive
2050
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 706
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
dPersonnel.20
dPersonnel.20 - EMS Personnel's Foreign Language Ability
Definition
The languages spoken (other than English) by the personnel with at least an elementary level of proficiency.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
amhAmharic
araArabic
armArmenian
benBengali
crpCajun (Creole and Pidgins)
chiChinese
hrvCroatian
czeCzech
danDanish
dutDutch
finFinnish
taiFormosan
freFrench
cpfFrench Creole
gerGerman
greGreek
gujGujarati
hebHebrew
hinHindi (Urdu)
hunHungarian
iloIlocano
itlItalian
jpnJapanese
korKorean
kroKru
litLithuanian
malMalayalam
hmnMiao (Hmong)
mkhMon-Khmer (Cambodian)
navNavaho
nnoNorwegian
panPanjabi
gemPennsylvania Dutch (Germanic Other)
perPersian
polPolish
porPortuguese
rumRomanian
rusRussian
sgnSign Languages
smoSamoan
srpSerbo-Croatian
sloSlovak
spaSpanish
sweSwedish
syrSyriac
tglTagalog
thaThai (Laotian)
Published: 04/03/2025www.NEMSIS.orgPage 707
NEMSIS Version 3.5.1.250403CP1

 
turTurkish
ukrUkrainian
vieVietnamese
yidYiddish
Data Element Comment
Version 3 Changes Implemented
Added to better describe the EMS workforce.
Published: 04/03/2025www.NEMSIS.orgPage 708

 
dPersonnel.21
dPersonnel.21 - EMS Personnel's Agency ID Number
Definition
The local agency ID number for the personnel.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD07_01
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
This is a local ID and not the ID associated with the state credential. This may be the same as the state credential ID
depending on the state and local implementation. This should be a unique number and not reused.
Published: 04/03/2025www.NEMSIS.orgPage 709
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.22
dPersonnel.22 - EMS Personnel's State of Licensure
Definition
The state of the certification/licensure ID number assigned to the personnel member.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{2}
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's State of Licensure is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element
is optional).
nemSch_d002ErrorWhen EMS Personnel's State of Licensure has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 710
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.23
dPersonnel.23 - EMS Personnel's State's Licensure ID Number
Definition
The state's licensure/certification ID number for the personnel.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD07_02
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's State's Licensure ID Number is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Personnel's State's Licensure ID Number has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 711
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.24
dPersonnel.24 - EMS Personnel's State EMS Certification Licensure Level
Definition
The personnel's state EMS certification level.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD08_15
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9925001Advanced Emergency Medical Technician (AEMT)
9925002Emergency Medical Technician - Intermediate
9925003Emergency Medical Responder (EMR)
9925005Emergency Medical Technician (EMT)
9925007Paramedic
9925023Other Healthcare Professional
9925025Other Non-Healthcare Professional
9925027Physician
9925029Respiratory Therapist
9925031Student
9925033Critical Care Paramedic
9925035Community Paramedicine
9925037Nurse Practitioner
9925039Physician Assistant
9925041Licensed Practical Nurse (LPN)
9925043Registered Nurse
Data Element Comment
The category Emergency Medical Technician - Intermediate includes EMS professionals with an "85" or "99" certification level.
Some listed health care providers may not have an EMS certification/licensure number, however their level should be
indicated from the list above and the state licensure number should be indicated in dPersonnel.23 - EMS Personnel's State's
Licensure ID Number.
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's State EMS Certification Licensure Level is empty, it should have a Not
Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should
be omitted (if the element is optional).
nemSch_d002ErrorWhen EMS Personnel's State EMS Certification Licensure Level has a Not Value (Not
Applicable, Not Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 712
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.25
dPersonnel.25 - EMS Personnel's State EMS Current Certification Date
Definition
The date of the personnel's current EMS certification/licensure.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD08_17
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
Clarified as the current certification/licensure.
Published: 04/03/2025www.NEMSIS.orgPage 713
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.26
dPersonnel.26 - EMS Personnel's Initial State's Licensure Issue Date
Definition
The date on which the EMS personnel's state's EMS certification/licensure was originally issued. This is the
date of the first certification/licensure for the EMS level.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD08_18
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
Clarified as the FIRST (original) certification/licensure date.
Published: 04/03/2025www.NEMSIS.orgPage 714
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.27
dPersonnel.27 - EMS Personnel's Current State's Licensure Expiration Date
Definition
The date on which the EMS personnel's (highest) state EMS certification/licensure expires.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 715
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.28
dPersonnel.28 - EMS Personnel's National Registry Number
Definition
The National Registry number associated with the level of certification/licensure obtained through NREMT.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[A-Z][A-Z0-9][0-9]{6}
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 716
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.29
dPersonnel.29 - EMS Personnel's National Registry Certification Level
Definition
The level of the current National Registry of Emergency Medical Technicians (NREMT) certification.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
1529001Advanced Emergency Medical Technician (AEMT)
1529002Emergency Medical Technician - Intermediate
1529003Emergency Medical Responder (EMR)
1529005Emergency Medical Technician (EMT)
1529007Paramedic
Data Element Comment
The category EMT-Intermediate includes EMS professionals with an "85" or "99" certification level.
Published: 04/03/2025www.NEMSIS.orgPage 717
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.30
dPersonnel.30 - EMS Personnel's Current National Registry Expiration Date
Definition
The date on which the EMS Personnel's National Registry of EMTs certification/licensure expires.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 718
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.31
dPersonnel.31 - EMS Personnel's Employment Status
Definition
The personnel's primary employment status for this agency.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD07_03
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
1531001Full Time Paid Employee
1531003Part Time Paid Employee
1531005Volunteer
1531007Neither an Employee Nor a Volunteer
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Employment Status is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Personnel's Employment Status has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 719
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.32
dPersonnel.32 - EMS Personnel's Employment Status Date
Definition
The personnel's employment status date.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD07_04
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Employment Status Date is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Personnel's Employment Status Date has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 720
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.33
dPersonnel.33 - EMS Personnel's Hire Date
Definition
The date the employee was hired by the EMS agency for this current job.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
This is intended to collect information based on the current employment/job. If the EMS personnel has a come and go status,
this should reflect the most recent employment/job.
Published: 04/03/2025www.NEMSIS.orgPage 721
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.34
dPersonnel.34 - EMS Personnel's Primary EMS Job Role
Definition
The individuals primary/main EMS role at the EMS agency. This is the function which is performed the
majority of the time for the EMS personnel.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
1534001Administrator/Manager
1534003Driver/Pilot
1534005Educator/Preceptor
1534007Fire Suppression
1534009First-Line Supervisor
1534011Law Enforcement
1534013Other
1534015Patient Care Provider
1534017Rescue
Data Element Comment
This is a single choice data element which should reflect the EMS Personnel's primary/main job role for which he/she
functions. It is understood that most EMS personnel perform more than one role as a part of their position. Other roles should
be documented in dPersonnel.35 (EMS Personnel's Other Job Responsibilities).
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Primary EMS Job Role is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Personnel's Primary EMS Job Role has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 722
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.35
dPersonnel.35 - EMS Personnel's Other Job Responsibilities
Definition
The EMS personnel's other job responsibilities at the agency beyond their primary role documented in
dPersonnel.34 (EMS Personnel's Primary EMS Job Role).
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
1534001Administrator/Manager
1534003Driver/Pilot
1534005Educator/Preceptor
1534007Fire Suppression
1534009First-Line Supervisor
1534011Law Enforcement
1534013Other
1534015Patient Care Provider
1534017Rescue
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Other Job Responsibilities is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if
the element is optional).
nemSch_d002ErrorWhen EMS Personnel's Other Job Responsibilities has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_d003WarningWhen EMS Personnel's Other Job Responsibilities has a Not Value, no other value should be
recorded.
Published: 04/03/2025www.NEMSIS.orgPage 723
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.36
dPersonnel.36 - EMS Personnel's Total Length of Service in Years
Definition
The personnel's total length of EMS service at any level (years).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD08_19
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
integer
minInclusive
0
maxInclusive
80
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 724
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.37
dPersonnel.37 - EMS Personnel's Date Length of Service Documented
Definition
The date which the length of EMS service was documented.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD08_20
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
Associated with dPersonnel.37 (EMS Personnel's Total Length of Service in Years).
Published: 04/03/2025www.NEMSIS.orgPage 725
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.38
dPersonnel.38 - EMS Personnel's Practice Level
Definition
The EMS certification level at which the individual is providing patient care services for the EMS agency.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD07_05
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
9925001Advanced Emergency Medical Technician (AEMT)
9925002Emergency Medical Technician - Intermediate
9925003Emergency Medical Responder (EMR)
9925005Emergency Medical Technician (EMT)
9925007Paramedic
9925023Other Healthcare Professional
9925025Other Non-Healthcare Professional
9925027Physician
9925029Respiratory Therapist
9925031Student
9925033Critical Care Paramedic
9925035Community Paramedicine
9925037Nurse Practitioner
9925039Physician Assistant
9925041Licensed Practical Nurse (LPN)
9925043Registered Nurse
Data Element Comment
The category EMT-Intermediate includes EMS professionals with an "85" or "99" certification level.
Published: 04/03/2025www.NEMSIS.orgPage 726
NEMSIS Version 3.5.1.250403CP1

 
dPersonnel.39
dPersonnel.39 - Date of Personnel's Certification or Licensure for Agency
Definition
The date that the Certification/Licensure was achieved for the local EMS agency.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD07_06
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 727
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
dPersonnel.40
dPersonnel.40 - EMS Personnel's Sex
Definition
The personnel's sex.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
9919001Female
9919003Male
9919005Unknown
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_d001ErrorWhen EMS Personnel's Sex is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_d002ErrorWhen EMS Personnel's Sex has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 728
NEMSIS Version 3.5.1.250403CP1

 
dDevice
Published: 04/03/2025www.NEMSIS.orgPage 729

 
O
dDevice.06 - Medical Device Purchase Date
0 : 1
O
dDevice.05 - Medical Device Model Number
0 : 1
O
dDevice.04 - Medical Device Manufacturer
0 : 1
CO
dDevice.03 - Medical Device Type
0 : M
O
dDevice.02 - Medical Device Name or ID
0 : 1
O
dDevice.01 - Medical Device Serial Number
0 : 1
UC
dDevice.DeviceGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dDevice
dDevice
Associated Validation Rules
Rule IDLevelMessage
nemSch_d005ErrorUUID must be universally unique.
Published: 04/03/2025www.NEMSIS.orgPage 730

 
dDevice.01
dDevice.01 - Medical Device Serial Number
Definition
The unique manufacturer's serial number associated with a medical device.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD09_01
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 731
NEMSIS Version 3.5.1.250403CP1

 
dDevice.02
dDevice.02 - Medical Device Name or ID
Definition
The local number or configurable Name/ID of the medical device.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD09_02
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 732
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
dDevice.03
dDevice.03 - Medical Device Type
Definition
The type of medical device.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
1603001Capnography-Numeric
1603003Capnography-Waveform
1603005Chemistry Measurement-Blood or Serum
1603007Chemistry Measurement-Glucometer
1603009Chemistry Measurement-Urine
1603011CPR-External Device
1603013Defibrillator-Automated
1603015Defibrillator-Manual
1603017ECG-12 Lead or Greater
1603019ECG-Less than 12 Lead (Cardiac Monitor)
1603021Medication Infusion Pump
1603023Other
1603025Oximetry-Carbon Monoxide
1603027Oximetry-Oxygen
1603029Pressure Monitors-Invasive
1603031Pressure Monitors-Non-Invasive
1603033Respirator (BLS)
1603035Ventilator (ALS)
1603037Ventilator Assistance-BiPAP
1603039Ventilator Assistance-CPAP
Data Element Comment
This is multiple choice to allow documentation of various multifunction device configurations.
Published: 04/03/2025www.NEMSIS.orgPage 733
NEMSIS Version 3.5.1.250403CP1

 
dDevice.04
dDevice.04 - Medical Device Manufacturer
Definition
The manufacturer of the medical device.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD09_03
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 734
NEMSIS Version 3.5.1.250403CP1

 
dDevice.05
dDevice.05 - Medical Device Model Number
Definition
The specific manufacturer's model number associated with medical device.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD09_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 735
NEMSIS Version 3.5.1.250403CP1

 
dDevice.06
dDevice.06 - Medical Device Purchase Date
Definition
The date the device was purchased or placed in service by the EMS agency.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD09_05
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
date
minInclusive
1900-01-01
maxInclusive
2050-01-01
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 736
NEMSIS Version 3.5.1.250403CP1

 
dFacility
Published: 04/03/2025www.NEMSIS.orgPage 737

 
CO
dFacility.15 - Facility Phone Number
0 : M
O
dFacility.14 - Facility US National Grid Coordinates
0 : 1
O
dFacility.13 - Facility GPS Location
0 : 1
O
dFacility.12 - Facility Country
0 : 1
O
dFacility.11 - Facility County
0 : 1
O
dFacility.10 - Facility ZIP Code
0 : 1
O
dFacility.09 - Facility State
0 : 1
O
dFacility.08 - Facility City
0 : 1
O
dFacility.07 - Facility Street Address
0 : 1
O
dFacility.06 - Facility Room, Suite, or Apartment
0 : 1
CO
dFacility.05 - Facility National Provider Identifier
0 : M
CO
dFacility.04 - Hospital Designations
0 : M
O
dFacility.03 - Facility Location Code
0 : 1
O
dFacility.02 - Facility Name
0 : 1
UC
dFacility.FacilityGroup
0 : M
O
dFacility.01 - Type of Facility
0 : 1
UC
dFacilityGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dFacility
dFacility
Associated Validation Rules
Rule IDLevelMessage
nemSch_d005ErrorUUID must be universally unique.
Published: 04/03/2025www.NEMSIS.orgPage 738

 
dFacility.01
dFacility.01 - Type of Facility
Definition
The type of facility (healthcare or other) that the EMS agency transports patients to or from.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD04_15
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
1701001Assisted Living Facility
1701003Clinic
1701005Hospital
1701007Nursing Home
1701009Other
1701011Urgent Care
1701013Physical Rehabilitation Facility
1701015Mental Health Facility
1701017Dialysis Center
1701019Diagnostic Services
1701021Freestanding Emergency Department
1701023Morgue/Mortuary
1701025Police/Jail
1701027Other EMS Responder (air)
1701029Other EMS Responder (ground)
1701031Other Recurring Care Center
1701033Drug and/or Alcohol Rehabilitation Facility
1701035Skilled Nursing Facility
Data Element Comment
Version 3 Changes Implemented
With the release of v3.5.0 additional values were added to meet the needs of EMS. Reconciled the health care facility
descriptions to match those in eDisposition.21 - Type of Destination.
Published: 04/03/2025www.NEMSIS.orgPage 739
NEMSIS Version 3.5.1.250403CP1

 
dFacility.02
dFacility.02 - Facility Name
Definition
The name of the facility.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD04_11
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 740
NEMSIS Version 3.5.1.250403CP1

 
dFacility.03
dFacility.03 - Facility Location Code
Definition
The code of the facility as assigned by the state or the EMS agency.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementD04_12
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
The information contained within this element could be used to populate eScene.10 (Incident Facility Code) or eDisposition.02
(Destination/Transferred To, Code) via a drop down list created at either the EMS Agency or State level.
Published: 04/03/2025www.NEMSIS.orgPage 741
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
dFacility.04
dFacility.04 - Hospital Designations
Definition
The designation(s) associated with the hospital (e.g., Trauma, STEMI, Peds, etc.)
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Code List
CodeDescription
9908001Behavioral Health
9908003Burn Center
9908005Critical Access Hospital
9908007Hospital (General)
9908009Neonatal Center
9908011Pediatric Center
9908019Rehab Center
9908021Trauma Center Level 1
9908023Trauma Center Level 2
9908025Trauma Center Level 3
9908027Trauma Center Level 4
9908029Trauma Center Level 5
9908031Cardiac-STEMI/PCI Capable
9908033Cardiac-STEMI/PCI Capable (24/7)
9908035Cardiac-STEMI/Non-PCI Capable
9908037Stroke-Acute Stroke Ready Hospital (ASRH)
9908039Stroke-Primary Stroke Center (PSC)
9908041Stroke-Thrombectomy-Capable Stroke Center (TSC)
9908043Stroke-Comprehensive Stroke Center (CSC)
9908045Cancer Center
9908047Labor and Delivery
Data Element Comment
Stroke Center classifications based on Joint Commission stroke certification: 
https://www.jointcommission.org/facts_about_joint_commission_stroke_certification/
Published: 04/03/2025www.NEMSIS.orgPage 742
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 2minLength: 255maxLength: 
dFacility.05
dFacility.05 - Facility National Provider Identifier
Definition
The facility National Provider Identifier associated with National Provider System (NPS).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
Constraints
Data Type
string
length
10
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 743
NEMSIS Version 3.5.1.250403CP1

 
dFacility.06
dFacility.06 - Facility Room, Suite, or Apartment
Definition
The number of the specific room, suite, or apartment of the facility.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
15
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 744
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
dFacility.07
dFacility.07 - Facility Street Address
Definition
The address where the facility is located.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
The information contained within this element could be used to populate the address information within eScene.18 (Incident
State) and/or eDisposition.03 (Destination Street Address) as appropriate.
Published: 04/03/2025www.NEMSIS.orgPage 745
NEMSIS Version 3.5.1.250403CP1

 
dFacility.08
dFacility.08 - Facility City
Definition
The city where the facility is located (physical address).
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Data Element Comment
The information contained within this element could be used to populate the address information within eScene.17 (Incident
City) and/or eDisposition.04 (Destination City) as appropriate. 
City codes are based on GNIS Feature Class. The primary Feature Class to use is "Civil" with "Populated Place" and "Military"
code as additional options. 
Definitions for each GNIS City Feature Class can be found on the GNIS Codes website. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 746
NEMSIS Version 3.5.1.250403CP1

 
dFacility.09
dFacility.09 - Facility State
Definition
The state where the facility is located.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
Based on the ANSI Code. The information contained within this element could be used to populate the address information
within eScene.18 (Incident State) and/or eDisposition.05 (Destination State) as appropriate. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 747
NEMSIS Version 3.5.1.250403CP1

 
dFacility.10
dFacility.10 - Facility ZIP Code
Definition
The zip code where the facility is located.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
The information contained within this element could be used to populate the address information within eScene.19 (Incident
ZIP Code) and/or eDisposition.07 (Destination ZIP Code) as appropriate. 
ZIP Codes Product Website:  https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
Product: USA - 5-digit ZIP Code Database, Commercial Edition
Published: 04/03/2025www.NEMSIS.orgPage 748
NEMSIS Version 3.5.1.250403CP1

 
dFacility.11
dFacility.11 - Facility County
Definition
The county where the facility is located.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
[0-9]{5}
Data Element Comment
Based on the ANSI Code. The information contained within this element could be used to populate the address information
within eScene.21 (Incident County) and/or eDisposition.06 (Destination County) as appropriate. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Published: 04/03/2025www.NEMSIS.orgPage 749
NEMSIS Version 3.5.1.250403CP1

 
dFacility.12
dFacility.12 - Facility Country
Definition
The country where the facility is located.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
CACanada
MXMexico
USUnited States
Data Element Comment
Based on the ANSI Code. The information contained within this element could be used to populate the address information
within eScene.22 (Incident Country) and/or eDisposition.08 (Destination Country) as appropriate. 
ANSI Country Codes (ISO 3166) Website: https://www.iso.org/iso-3166-country-codes.html
Published: 04/03/2025www.NEMSIS.orgPage 750
NEMSIS Version 3.5.1.250403CP1

 
dFacility.13
dFacility.13 - Facility GPS Location
Definition
The facility GPS Coordinates.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
(\+|-)?(90(\.[0]{1,6})?|([1-8][0-9]|[0-9])(\.[0-9]{1,6})?),(\+|-)?(180(\.[0]{1,6})?|(1[0-7][0-9]|[1-9][0-9]|[0-9])(\.[0-9]{1,6})?)
Data Element Comment
The information contained within this element could be used to populate the address information within eScene.10 (Scene
GPS Location) and/or eDisposition.09 (Destination GPS Location) as appropriate. 
The pattern for GPS location is in the format "," where: latitudelongitude
-  has a minimum of -90 and a maximum of 90 with up to 6 decimal places latitude
-  has a minimum of -180 and a maximum of 180 with up to 6 decimal placeslongitude
Published: 04/03/2025www.NEMSIS.orgPage 751
NEMSIS Version 3.5.1.250403CP1

 
dFacility.14
dFacility.14 - Facility US National Grid Coordinates
Definition
The facility's US National Grid coordinates.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
([1-9]|[1-5][0-9]|60)[C-HJ-NP-X][A-HJ-NP-Z][A-HJ-NP-V]([0-9][0-9]){4,5}
Data Element Comment
Standard found at www.fgdc.gov/usng. The information contained within this element could be used to populate the address
information within eScene.11 (Scene US National Grid Coordinates) and/or eDisposition.10 (Disposition Location US National
Grid Coordinates) as appropriate.
Published: 04/03/2025www.NEMSIS.orgPage 752
NEMSIS Version 3.5.1.250403CP1

 
9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
stringData Type: 2minLength: 255maxLength: 
dFacility.15
dFacility.15 - Facility Phone Number
Definition
The facility's phone number.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
CorrelationID
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
This element contains an attribute to define what type of phone number is being documented (e.g., Fax, Home, Mobile, Pager,
and Work).
Published: 04/03/2025www.NEMSIS.orgPage 753
NEMSIS Version 3.5.1.250403CP1

 
dCustomResults
Published: 04/03/2025www.NEMSIS.orgPage 754

 
O
dCustomResults.03 - CorrelationID of DemographicReport Element or Group
0 : 1
M
dCustomResults.02 - Custom Element ID Referenced
1 : 1
N, L, PM
dCustomResults.01 - Custom Data Element Result
1 : M
C
dCustomResults.ResultsGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
dCustomResults
dCustomResults
Published: 04/03/2025www.NEMSIS.orgPage 755

 
8801031 - Symptom Not Present8801029 - Approximate8801027 - Order Criteria Not Met
8801025 - Not Immunized8801023 - Unable to Complete8801021 - Unresponsive
8801019 - Refused8801017 - Not Performed by EMS8801015 - None Reported
8801013 - No Known Drug Allergy8801009 - Medication Already Taken8801007 - Medication Allergy
8801005 - Exam Finding Not Present8801003 - Denied By Order8801001 - Contraindication Noted
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
dCustomResults.01
dCustomResults.01 - Custom Data Element Result
Definition
The actual value or values chosen (if values listed in dCustomConfiguration.06) or result (free text,
Date/Time, or number) documented for the Custom Data Element.
National ElementNoPertinent Negatives (PN)Yes
State ElementNo
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageMandatory
Recurrence1 : M
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
NV
PN
Constraints
Data Type
string
minLength
1
maxLength
100000
Data Element Comment
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 756
NEMSIS Version 3.5.1.250403CP1

 
dCustomResults.02
dCustomResults.02 - Custom Element ID Referenced
Definition
References the CustomElementID attribute for dCustomConfiguration.CustomGroup.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 757
NEMSIS Version 3.5.1.250403CP1

 
dCustomResults.03
dCustomResults.03 - CorrelationID of DemographicReport Element or Group
Definition
References the CorrelationID attribute of an element or group in the DemographicReport section.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 758
NEMSIS Version 3.5.1.250403CP1

 
sState
Published: 04/03/2025www.NEMSIS.orgPage 759

 
MSN
sState.01 - State
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
sState
sState
Published: 04/03/2025www.NEMSIS.orgPage 760

 
StateNational
sState.01
sState.01 - State
Definition
The state associated with the state data set.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Pattern
[0-9]{2}
Data Element Comment
GNIS Codes Website:  http://geonames.usgs.gov/domestic/download_data.htm
Used to populate the following data elements: 
dAgency.04 EMS Agency State 
dConfiguration.01 State Associated with this Configuration.
Published: 04/03/2025www.NEMSIS.orgPage 761
NEMSIS Version 3.5.1.250403CP1

 
seCustomConfiguratio
n
Published: 04/03/2025www.NEMSIS.orgPage 762

 
OSN
seCustomConfiguration.09 - Patient Care Report Custom Data Element Grouping ID
0 : 1
OSN
seCustomConfiguration.08 - Patient Care Report Custom Data Element Potential
Pertinent Negative Values (PN)
0 : M
OSN
seCustomConfiguration.07 - Patient Care Report Custom Data Element Potential NOT
Values (NV)
0 : M
OSN
seCustomConfiguration.06 - Patient Care Report Custom Data Element Potential
Values
0 : M
MSN
seCustomConfiguration.05 - Patient Care Report Custom Data Element Usage
1 : 1
MSN
seCustomConfiguration.04 - Patient Care Report Custom Data Element Recurrence
1 : 1
MSN
seCustomConfiguration.03 - Patient Care Report Custom Data Type
1 : 1
MSN
seCustomConfiguration.02 - Patient Care Report Custom Definition
1 : 1
MSN
seCustomConfiguration.01 - Patient Care Report Custom Data Element Title
1 : 1
I
seCustomConfiguration.CustomGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
seCustomConfiguration
seCustomConfiguration
Associated Validation Rules
Rule IDLevelMessage
nemSch_s010ErrorThe Custom Element ID for each Patient Care Report Custom Data Element should be unique
(the same ID should not be used more than once).
Published: 04/03/2025www.NEMSIS.orgPage 763

 
anySimpleTypeData Type: preservewhiteSpace: 
StateNational
seCustomConfiguration.01
seCustomConfiguration.01 - Patient Care Report Custom Data Element Title
Definition
This is the title of the patient care report custom data element created to collect information that is not
defined formally in NEMSIS Version 3.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Attributes
nemsisElement
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Used to populate eCustomConfiguration.01 Custom Data Element Title.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 764
NEMSIS Version 3.5.1.250403CP1

 
StateNational
seCustomConfiguration.02
seCustomConfiguration.02 - Patient Care Report Custom Definition
Definition
The definition of the patient care report custom data element and how it should be used.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Used to populate eCustomConfiguration.02 Custom Definition.
Published: 04/03/2025www.NEMSIS.orgPage 765
NEMSIS Version 3.5.1.250403CP1

 
StateNational
seCustomConfiguration.03
seCustomConfiguration.03 - Patient Care Report Custom Data Type
Definition
The data type of the patient care report custom data element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9902001Binary
9902003Date/Time
9902005Integer/Number
9902007Other
9902009Text/String
9902011Boolean
Data Element Comment
Used to populate eCustomConfiguration.03 Custom Data Type.
Published: 04/03/2025www.NEMSIS.orgPage 766
NEMSIS Version 3.5.1.250403CP1

 
StateNational
seCustomConfiguration.04
seCustomConfiguration.04 - Patient Care Report Custom Data Element Recurrence
Definition
Indication if the patient care report custom data element will accept multiple values.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Used to populate eCustomConfiguration.04 Custom Data Element Recurrence.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 767
NEMSIS Version 3.5.1.250403CP1

 
StateNational
seCustomConfiguration.05
seCustomConfiguration.05 - Patient Care Report Custom Data Element Usage
Definition
The state-level usage (Mandatory, Required, Recommended, or Optional) for the patient care report custom
data element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9903001Mandatory
9903003Required
9903005Recommended
9903007Optional
Data Element Comment
Mandatory = Must be completed and will not accept null values. 
Required = Must be completed but will accept null values. 
Recommended = Not required but if collected will accept null values. 
Optional = Not required but if collected, it cannot be a null value. 
Used to populate eCustomConfiguration.05 Custom Data Element Usage.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 768
NEMSIS Version 3.5.1.250403CP1

 
anySimpleTypeData Type: preservewhiteSpace: 
anySimpleTypeData Type: preservewhiteSpace: 
StateNational
seCustomConfiguration.06
seCustomConfiguration.06 - Patient Care Report Custom Data Element Potential Values
Definition
The values which are associated with the patient care report custom data element. Values would be the
choices provided to the user when they document the custom data element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
nemsisCode
customValueDescription
Constraints
Data Type
string
minLength
1
maxLength
100
Data Element Comment
Used to populate eCustomConfiguration.06 Custom Data Element Potential Values.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s011ErrorPatient Care Report Custom Data Element Potential Values should be unique (the same value
should not be listed more than once).
nemSch_s012ErrorThe Custom Value Description for Patient Care Report Custom Data Element Potential Values
should be unique (the same description should not be listed more than once).
Published: 04/03/2025www.NEMSIS.orgPage 769
NEMSIS Version 3.5.1.250403CP1

 
StateNational
seCustomConfiguration.07
seCustomConfiguration.07 - Patient Care Report Custom Data Element Potential NOT Values (NV)
Definition
NOT Values (NV) associated with the patient care report custom data element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Code List
CodeDescription
7701001Not Applicable
7701003Not Recorded
7701005Not Reporting
Data Element Comment
Used to populate eCustomConfiguration.07 Custom Data Element Potential NOT Values (NV).
Associated Validation Rules
Rule IDLevelMessage
nemSch_s013ErrorPatient Care Report Custom Data Element Potential NOT Values (NV) should be unique (the
same value should not be listed more than once).
Published: 04/03/2025www.NEMSIS.orgPage 770
NEMSIS Version 3.5.1.250403CP1

 
StateNational
seCustomConfiguration.08
seCustomConfiguration.08 - Patient Care Report Custom Data Element Potential Pertinent Negative Values
(PN)
Definition
Pertinent Negative Values (PN) associated with the patient care report custom data element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Code List
CodeDescription
8801001Contraindication Noted
8801003Denied By Order
8801005Exam Finding Not Present
8801007Medication Allergy
8801009Medication Already Taken
8801013No Known Drug Allergy
8801015None Reported
8801017Not Performed by EMS
8801019Refused
8801021Unresponsive
8801023Unable to Complete
8801025Not Immunized
8801027Order Criteria Not Met
8801029Approximate
8801031Symptom Not Present
Data Element Comment
Used to populate eCustomConfiguration.08 Custom Data Element Potential Pertinent Negative Values (PN).
Associated Validation Rules
Rule IDLevelMessage
nemSch_s014ErrorPatient Care Report Custom Data Element Potential Pertinent Negative Values (PN) should be
unique (the same value should not be listed more than once).
Published: 04/03/2025www.NEMSIS.orgPage 771
NEMSIS Version 3.5.1.250403CP1

 
StateNational
seCustomConfiguration.09
seCustomConfiguration.09 - Patient Care Report Custom Data Element Grouping ID
Definition
ID for patient care report custom data element grouping.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Used to populate eCustomConfiguration.09 Custom Data Element Grouping ID.
Published: 04/03/2025www.NEMSIS.orgPage 772
NEMSIS Version 3.5.1.250403CP1

 
sdCustomConfiguratio
n
Published: 04/03/2025www.NEMSIS.orgPage 773

 
OSN
sdCustomConfiguration.09 - Agency Demographic Custom Data Element Grouping ID
0 : 1
OSN
sdCustomConfiguration.08 - Agency Demographic Custom Data Element Potential
Pertinent Negative Values (PN)
0 : M
OSN
sdCustomConfiguration.07 - Agency Demographic Custom Data Element Potential
NOT Values (NV)
0 : M
OSN
sdCustomConfiguration.06 - Agency Demographic Custom Data Element Potential
Values
0 : M
MSN
sdCustomConfiguration.05 - Agency Demographic Custom Data Element Usage
1 : 1
MSN
sdCustomConfiguration.04 - Agency Demographic Custom Data Element Recurrence
1 : 1
MSN
sdCustomConfiguration.03 - Agency Demographic Custom Data Type
1 : 1
MSN
sdCustomConfiguration.02 - Agency Demographic Custom Definition
1 : 1
MSN
sdCustomConfiguration.01 - Agency Demographic Custom Data Element Title
1 : 1
I
sdCustomConfiguration.CustomGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
sdCustomConfiguration
sdCustomConfiguration
Associated Validation Rules
Rule IDLevelMessage
nemSch_s005ErrorThe Custom Element ID for each Agency Demographic Custom Data Element should be unique
(the same ID should not be used more than once).
Published: 04/03/2025www.NEMSIS.orgPage 774

 
anySimpleTypeData Type: preservewhiteSpace: 
StateNational
sdCustomConfiguration.01
sdCustomConfiguration.01 - Agency Demographic Custom Data Element Title
Definition
This is the title of the custom data element created to collect information that is not defined formally in
NEMSIS Version 3.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Attributes
nemsisElement
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Used to populate dCustomConfiguration.01 Custom Data Element Title.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 775
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sdCustomConfiguration.02
sdCustomConfiguration.02 - Agency Demographic Custom Definition
Definition
The definition of the agency demographic custom data element and how it should be used.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Used to populate dCustomConfigration.02 Custom Definition.
Published: 04/03/2025www.NEMSIS.orgPage 776
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sdCustomConfiguration.03
sdCustomConfiguration.03 - Agency Demographic Custom Data Type
Definition
The data type of the agency demographic custom element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9902001Binary
9902003Date/Time
9902005Integer/Number
9902007Other
9902009Text/String
9902011Boolean
Data Element Comment
Used to populate dCustomConfiguration.03 Custom Data Type.
Published: 04/03/2025www.NEMSIS.orgPage 777
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sdCustomConfiguration.04
sdCustomConfiguration.04 - Agency Demographic Custom Data Element Recurrence
Definition
Indication if the agency demographic custom data element will accept multiple values.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9923001No
9923003Yes
Data Element Comment
Used to populate dCustomConfiguration.04 Custom Data Element Recurrence.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 778
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sdCustomConfiguration.05
sdCustomConfiguration.05 - Agency Demographic Custom Data Element Usage
Definition
The Usage (Mandatory, Required, Recommended, or Optional) for the agency demographic custom data
element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageMandatory
Recurrence1 : 1
Code List
CodeDescription
9903001Mandatory
9903003Required
9903005Recommended
9903007Optional
Data Element Comment
Mandatory = Must be completed and will not accept null values. 
Required = Must be completed but will accept null values. 
Recommended = Not required but if collected will accept null values. 
Optional = Not required but if collected, it cannot be a null value. 
Used to populate dCustomConfiguration.05 Custom Data Element Usage.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Published: 04/03/2025www.NEMSIS.orgPage 779
NEMSIS Version 3.5.1.250403CP1

 
anySimpleTypeData Type: preservewhiteSpace: 
anySimpleTypeData Type: preservewhiteSpace: 
StateNational
sdCustomConfiguration.06
sdCustomConfiguration.06 - Agency Demographic Custom Data Element Potential Values
Definition
The values which are associated with the agency demographic custom data element. Values would be the
choices provided to the user when they document the custom data element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
nemsisCode
customValueDescription
Constraints
Data Type
string
minLength
1
maxLength
100
Data Element Comment
Used to populate dCustomConfiguration.06 Custom Data Element Potential Values.
Version 3 Changes Implemented
Added to allow customized data elements to be inserted and collected from within the NEMSIS Version 3 standard.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s006ErrorAgency Demographic Custom Data Element Potential Values should be unique (the same value
should not be listed more than once).
nemSch_s007ErrorThe Custom Value Description for Agency Demographic Custom Data Element Potential Values
should be unique (the same description should not be listed more than once).
Published: 04/03/2025www.NEMSIS.orgPage 780
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sdCustomConfiguration.07
sdCustomConfiguration.07 - Agency Demographic Custom Data Element Potential NOT Values (NV)
Definition
NOT Values (NV) associated with the agency demographic custom element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Code List
CodeDescription
7701001Not Applicable
7701003Not Recorded
7701005Not Reporting
Data Element Comment
Used to populate dCustomConfiguration.07 Custom Data Element Potential NOT Values (NV).
Associated Validation Rules
Rule IDLevelMessage
nemSch_s008ErrorAgency Demographic Custom Data Element Potential NOT Values (NV) should be unique (the
same value should not be listed more than once).
Published: 04/03/2025www.NEMSIS.orgPage 781
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sdCustomConfiguration.08
sdCustomConfiguration.08 - Agency Demographic Custom Data Element Potential Pertinent Negative
Values (PN)
Definition
Pertinent Negative Values (PN) associated with the agency demographic custom element.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Code List
CodeDescription
8801001Contraindication Noted
8801003Denied By Order
8801005Exam Finding Not Present
8801007Medication Allergy
8801009Medication Already Taken
8801013No Known Drug Allergy
8801015None Reported
8801017Not Performed by EMS
8801019Refused
8801021Unresponsive
8801023Unable to Complete
8801025Not Immunized
8801027Order Criteria Not Met
8801029Approximate
8801031Symptom Not Present
Data Element Comment
Used to populate dCustomConfiguration.08 Custom Data Element Potential Pertinent Negative Values (PN).
Associated Validation Rules
Rule IDLevelMessage
nemSch_s009ErrorAgency Demographic Custom Data Element Potential Pertinent Negative Values (PN) should be
unique (the same value should not be listed more than once).
Published: 04/03/2025www.NEMSIS.orgPage 782
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sdCustomConfiguration.09
sdCustomConfiguration.09 - Agency Demographic Custom Data Element Grouping ID
Definition
ID for agency demographic custom element grouping.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
2
maxLength
255
Data Element Comment
Used to populate dCustomConfiguration.09 Custom Data Element Grouping ID.
Published: 04/03/2025www.NEMSIS.orgPage 783
NEMSIS Version 3.5.1.250403CP1

 
sSoftware
Published: 04/03/2025www.NEMSIS.orgPage 784

 
N, LRSN
sSoftware.03 - Software Version
1 : 1
N, LRSN
sSoftware.02 - Software Name
1 : 1
N, LRSN
sSoftware.01 - Software Creator
1 : 1
sSoftware.SoftwareGroup
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
sSoftware
sSoftware
Published: 04/03/2025www.NEMSIS.orgPage 785

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sSoftware.01
sSoftware.01 - Software Creator
Definition
The name of the vendor, manufacturer, and developer who designed the application that created this state
data set record.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Software Creator is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Software Creator has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 786
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sSoftware.02
sSoftware.02 - Software Name
Definition
The name of the application used to create this state data set record.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Software Name is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Software Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 787
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sSoftware.03
sSoftware.03 - Software Version
Definition
The version of the application used to create this state data set record.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Software Version is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Software Version has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 788
NEMSIS Version 3.5.1.250403CP1

 
sElement
Published: 04/03/2025www.NEMSIS.orgPage 789

 
N, LRSN
sElement.01 - State Collected Element
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
sElement
sElement
Published: 04/03/2025www.NEMSIS.orgPage 790

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
sElement.01
sElement.01 - State Collected Element
Definition
The data elements that the state collects or requires.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
100
Data Element Comment
Used to configure the agency demographic and patient care report data elements that are to be collected and reported to the
state by EMS agencies within the state.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen State Collected Element is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen State Collected Element has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_s003WarningWhen State Collected Element has a Not Value, no other value should be recorded.
nemSch_s015WarningState Collected Element should be unique (the same element should not be listed more than
once).
Published: 04/03/2025www.NEMSIS.orgPage 791
NEMSIS Version 3.5.1.250403CP1

 
sConfiguration
Published: 04/03/2025www.NEMSIS.orgPage 792

 
N, LRSN
sConfiguration.06 - Protocols Permitted by the State
1 : M
N, LRSN
sConfiguration.05 - Medications Permitted by the State
1 : M
N, LRSN
sConfiguration.04 - EMS Certification Levels Permitted to Administer Each Medication
1 : 1
sConfiguration.MedicationGroup
1 : M
N, LRSN
sConfiguration.03 - Procedures Permitted by the State
1 : M
N, LRSN
sConfiguration.02 - EMS Certification Levels Permitted to Perform Each Procedure
1 : 1
sConfiguration.ProcedureGroup
1 : M
N, LRSN
sConfiguration.01 - State Certification/Licensure Levels
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
sConfiguration
sConfiguration
Published: 04/03/2025www.NEMSIS.orgPage 793

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
sConfiguration.01
sConfiguration.01 - State Certification/Licensure Levels
Definition
The levels of certification/licensure for EMS personnel recognized by the state.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_01
Is NillableYes
UsageRequired
Recurrence1 : M
Attributes
NOT Values (NV)
Code List
CodeDescription
9917001Advanced Emergency Medical Technician (AEMT)
9917002Emergency Medical Technician - Intermediate
9917003Emergency Medical Responder (EMR)
9917005Emergency Medical Technician (EMT)
9917007Paramedic
9917019Physician
9917021Critical Care Paramedic
9917023Community Paramedicine
9917025Nurse Practitioner
9917027Physician Assistant
9917029Licensed Practical Nurse (LPN)
9917031Registered Nurse
Data Element Comment
Used to populate EMS-related values in the following data elements (some data elements contain additional non-EMS-related
values, such as "Student" or "Patient" that should be allowed unless specifically instructed otherwise by the state): 
dAgency.11 Level of Service 
dConfiguration.06 EMS Certification Levels Permitted to Perform Each Procedure 
dConfiguration.08 EMS Certification Levels Permitted to Administer Each Medication 
dVehicle.05 Crew State Certification/Licensure Levels 
dPersonnel.24 EMS Personnel's State EMS Certification Licensure Level 
dPersonnel.38 EMS Personnel's Practice Level 
ePayment.42 Specialty Care Transport Care Provider
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen State Certification/Licensure Levels is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_s002ErrorWhen State Certification/Licensure Levels has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_s003WarningWhen State Certification/Licensure Levels has a Not Value, no other value should be recorded.
nemSch_s016WarningState Certification/Licensure Levels should be unique (the same level should not be listed more
than once).
nemSch_s017WarningEMS Certification Levels Permitted to Perform Each Procedure should be on the list of State
Certification/Licensure Levels.
nemSch_s020WarningEMS Certification Levels Permitted to Administer Each Medication should be on the list of State
Certification/Licensure Levels.
Published: 04/03/2025www.NEMSIS.orgPage 794
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
sConfiguration.02
sConfiguration.02 - EMS Certification Levels Permitted to Perform Each Procedure
Definition
The certification/licensure level that is permitted to perform the procedures listed in sConfiguration.03.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_05
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9917001Advanced Emergency Medical Technician (AEMT)
9917002Emergency Medical Technician - Intermediate
9917003Emergency Medical Responder (EMR)
9917005Emergency Medical Technician (EMT)
9917007Paramedic
9917019Physician
9917021Critical Care Paramedic
9917023Community Paramedicine
9917025Nurse Practitioner
9917027Physician Assistant
9917029Licensed Practical Nurse (LPN)
9917031Registered Nurse
Data Element Comment
Used to populate dConfiguration.06 EMS Certification Levls Permitted to Perform Each Procedure.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen EMS Certification Levels Permitted to Perform Each Procedure is empty, it should have a
Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element), or it
should be omitted (if the element is optional).
nemSch_s002ErrorWhen EMS Certification Levels Permitted to Perform Each Procedure has a Not Value (Not
Applicable, Not Recorded, or Not Reporting), it should be empty.
nemSch_s017WarningEMS Certification Levels Permitted to Perform Each Procedure should be on the list of State
Certification/Licensure Levels.
nemSch_s018WarningEMS Certification Levels Permitted to Perform Each Procedure should be unique (the same level
should not be listed more than once).
Published: 04/03/2025www.NEMSIS.orgPage 795
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
sConfiguration.03
sConfiguration.03 - Procedures Permitted by the State
Definition
Procedures permitted by the state for the certification/licensure level listed in sConfiguration.02.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
integer
maxInclusive
999999999999999999
minInclusive
100000
Data Element Comment
Used to populate dConfiguration.07 EMS Agency Procedures.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Procedures Permitted by the State is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_s002ErrorWhen Procedures Permitted by the State has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_s003WarningWhen Procedures Permitted by the State has a Not Value, no other value should be recorded.
nemSch_s019WarningProcedures Permitted by the State should be unique (the same procedure should not be listed
more than once for a particular level).
Published: 04/03/2025www.NEMSIS.orgPage 796
NEMSIS Version 3.5.1.250403CP1

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
sConfiguration.04
sConfiguration.04 - EMS Certification Levels Permitted to Administer Each Medication
Definition
The certification/licensure level that is permitted to administer the medications listed in sConfiguration.05.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_07
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9917001Advanced Emergency Medical Technician (AEMT)
9917002Emergency Medical Technician - Intermediate
9917003Emergency Medical Responder (EMR)
9917005Emergency Medical Technician (EMT)
9917007Paramedic
9917019Physician
9917021Critical Care Paramedic
9917023Community Paramedicine
9917025Nurse Practitioner
9917027Physician Assistant
9917029Licensed Practical Nurse (LPN)
9917031Registered Nurse
Data Element Comment
Used to populate dConfiguration.08 EMS Certification Levels Permitted to Administer Each Medication.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen EMS Certification Levels Permitted to Administer Each Medication is empty, it should
have a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element), or
it should be omitted (if the element is optional).
nemSch_s002ErrorWhen EMS Certification Levels Permitted to Administer Each Medication has a Not Value (Not
Applicable, Not Recorded, or Not Reporting), it should be empty.
nemSch_s020WarningEMS Certification Levels Permitted to Administer Each Medication should be on the list of State
Certification/Licensure Levels.
nemSch_s021WarningEMS Certification Levels Permitted to Administer Each Medication should be unique (the same
level should not be listed more than once).
Published: 04/03/2025www.NEMSIS.orgPage 797
NEMSIS Version 3.5.1.250403CP1

 
9924005 - SNOMED-CT9924003 - RxNorm
7701003 - Not Recorded7701001 - Not Applicable
StateNational
sConfiguration.05
sConfiguration.05 - Medications Permitted by the State
Definition
Medications permitted by the state for the certification/licensure level listed in sConfiguration.04.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code Type
Constraints
Data Type
string
minLength
2
maxLength
9
Data Element Comment
Used to populate dConfiguration.09 EMS Agency Medications 
List of medications based on RxNorm (RXCUI) code and SNOMED-CT codes for blood products.. List of medications based
on RxNorm (RXCUI) code. 
Reference the NEMSIS Suggested Lists at:  https://nemsis.org/technical-resources/version-3/version-3-resources/
RxNorm 
Website -  http://www.nlm.nih.gov/research/umls/rxnorm/docs/rxnormfiles.html
Product - RxNorm Full Monthly Release 
SNOMED-CT 
Website:  http://www.nlm.nih.gov/research/umls/Snomed/snomed_main.html
Product: Product - UMLS Metathesaurus. 
Allowable SNOMED-CT codes are: 
116762002 Administration of blood product 
116795008 Transfusion of cryoprecipitate 
116861002 Transfusion of fresh frozen plasma 
116865006 Administration of albumin 
180208003 Intravenous blood transfusion of platelets 
33389009 Transfusion of whole blood 
71493000 Transfusion of packed red blood cells
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Medications Permitted by the State is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the
element is optional).
nemSch_s002ErrorWhen Medications Permitted by the State has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
nemSch_s003WarningWhen Medications Permitted by the State has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 798
NEMSIS Version 3.5.1.250403CP1

 
nemSch_s022WarningMedications Permitted by the State should be unique (the same medication should not be listed
more than once for a particular level).
nemSch_s023ErrorMedications Permitted by the State should be a code of between 2 and 7 digits when Code Type
is "RxNorm".
nemSch_s024ErrorMedications Permitted by the State should be a SNOMED code specifically allowed in the data
dictionary when Code Type is "SNOMED".
nemSch_s025ErrorMedications Permitted by the State should be an RxNorm code of between 2 and 7 digits or a
SNOMED code specifically allowed in the data dictionary.
Published: 04/03/2025www.NEMSIS.orgPage 799

 
7701003 - Not Recorded7701001 - Not Applicable
StateNational
sConfiguration.06
sConfiguration.06 - Protocols Permitted by the State
Definition
Protocols permitted by the state.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : M
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
9914001Airway
9914003Airway-Failed
9914005Airway-Obstruction/Foreign Body
9914007Airway-Rapid Sequence Induction (RSI-Paralytic)
9914009Airway-Sedation Assisted (Non-Paralytic)
9914011Cardiac Arrest-Asystole
9914013Cardiac Arrest-Hypothermia-Therapeutic
9914015Cardiac Arrest-Pulseless Electrical Activity
9914017Cardiac Arrest-Ventricular Fibrillation/ Pulseless Ventricular Tachycardia
9914019Cardiac Arrest-Post Resuscitation Care
9914021Environmental-Altitude Sickness
9914023Environmental-Cold Exposure
9914025Environmental-Frostbite/Cold Injury
9914027Environmental-Heat Exposure/Exhaustion
9914029Environmental-Heat Stroke/Hyperthermia
9914031Environmental-Hypothermia
9914033Exposure-Airway/Inhalation Irritants
9914035Exposure-Biological/Infectious
9914037Exposure-Blistering Agents
9914041Exposure-Chemicals to Eye
9914043Exposure-Cyanide
9914045Exposure-Explosive/ Blast Injury
9914047Exposure-Nerve Agents
9914049Exposure-Radiologic Agents
9914051General-Back Pain
9914053General-Behavioral/Patient Restraint
9914055General-Cardiac Arrest
9914057General-Dental Problems
9914059General-Epistaxis
9914061General-Fever
9914063General-Individualized Patient Protocol
9914065General-Indwelling Medical Devices/Equipment
9914067General-IV Access
9914069General-Medical Device Malfunction
9914071General-Pain Control
9914073General-Spinal Immobilization/Clearance
9914075General-Universal Patient Care/ Initial Patient Contact
9914077Injury-Amputation
9914079Injury-Bites and Envenomations-Land
9914081Injury-Bites and Envenomations-Marine
9914083Injury-Bleeding/ Hemorrhage Control
Published: 04/03/2025www.NEMSIS.orgPage 800
NEMSIS Version 3.5.1.250403CP1

 
9914085Injury-Burns-Thermal
9914087Injury-Cardiac Arrest
9914089Injury-Crush Syndrome
9914091Injury-Diving Emergencies
9914093Injury-Drowning/Near Drowning
9914095Injury-Electrical Injuries
9914097Injury-Extremity
9914099Injury-Eye
9914101Injury-Head
9914103Injury-Impaled Object
9914105Injury-Multisystem
9914107Injury-Spinal Cord
9914109Medical-Abdominal Pain
9914111Medical-Allergic Reaction/Anaphylaxis
9914113Medical-Altered Mental Status
9914115Medical-Bradycardia
9914117Medical-Cardiac Chest Pain
9914119Medical-Diarrhea
9914121Medical-Hyperglycemia
9914123Medical-Hypertension
9914125Medical-Hypoglycemia/Diabetic Emergency
9914127Medical-Hypotension/Shock (Non-Trauma)
9914129Medical-Influenza-Like Illness/ Upper Respiratory Infection
9914131Medical-Nausea/Vomiting
9914133Medical-Newborn/ Neonatal Resuscitation
9914135General-Overdose/Poisoning/Toxic Ingestion
9914137Medical-Pulmonary Edema/CHF
9914139Medical-Respiratory Distress/Asthma/COPD/Reactive Airway
9914141Medical-Seizure
9914143Medical-ST-Elevation Myocardial Infarction (STEMI)
9914145Medical-Stroke/TIA
9914147Medical-Supraventricular Tachycardia (Including Atrial Fibrillation)
9914149Medical-Syncope
9914151Medical-Ventricular Tachycardia (With Pulse)
9914153Not Done
9914155OB/GYN-Childbirth/Labor/Delivery
9914157OB/GYN-Eclampsia
9914159OB/GYN-Gynecologic Emergencies
9914161OB/GYN-Pregnancy Related Emergencies
9914163OB/GYN-Post-partum Hemorrhage
9914165Other
9914167Exposure-Carbon Monoxide
9914169Cardiac Arrest-Do Not Resuscitate
9914171Cardiac Arrest-Special Resuscitation Orders
9914173Exposure-Smoke Inhalation
9914175General-Community Paramedicine / Mobile Integrated Healthcare
9914177General-Exception Protocol
9914179General-Extended Care Guidelines
9914181General-Interfacility Transfers
9914183General-Law Enforcement - Blood for Legal Purposes
9914185General-Law Enforcement - Assist with Law Enforcement Activity
9914187General-Neglect or Abuse Suspected
9914189General-Refusal of Care
9914191Injury-Mass/Multiple Casualties
9914193Injury-Thoracic
9914195Medical-Adrenal Insufficiency
9914197Medical-Apparent Life Threatening Event (ALTE)
9914199Medical-Tachycardia
9914201Cardiac Arrest-Determination of Death / Withholding Resuscitative Efforts
9914203Injury-Conducted Electrical Weapon (e.g., Taser)
9914205Injury-Facial Trauma
9914207Injury-General Trauma Management
9914209Injury-Lightning/Lightning Strike
9914211Injury-SCUBA Injury/Accidents
9914213Injury-Topical Chemical Burn
9914215Medical-Beta Blocker Poisoning/Overdose
9914217Medical-Calcium Channel Blocker Poisoning/Overdose
9914219Medical-Opioid Poisoning/Overdose
9914221Medical-Respiratory Distress-Bronchiolitis
Published: 04/03/2025www.NEMSIS.orgPage 801

 
9914223Medical-Respiratory Distress-Croup
9914225Medical-Stimulant Poisoning/Overdose
Data Element Comment
Used to populate dConfiguration.10 EMS Agency Protocols.
Version 3 Changes Implemented
Added to better identify states with statewide protocols and define state EMS capability and care.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Protocols Permitted by the State is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen Protocols Permitted by the State has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_s003WarningWhen Protocols Permitted by the State has a Not Value, no other value should be recorded.
nemSch_s026WarningProtocols Permitted by the State should be unique (the same protocol should not be listed more
than once).
Published: 04/03/2025www.NEMSIS.orgPage 802

 
sAgency
Published: 04/03/2025www.NEMSIS.orgPage 803

 
N, LESN
sAgency.03 - EMS Agency Name
0 : 1
N, LESN
sAgency.02 - EMS Agency Number
0 : 1
N, LESN
sAgency.01 - EMS Agency Unique State ID
0 : 1
sAgencyGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
sAgency
sAgency
Published: 04/03/2025www.NEMSIS.orgPage 804

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sAgency.01
sAgency.01 - EMS Agency Unique State ID
Definition
The unique ID assigned to the EMS Agency which is associated with all state licensure numbers and
information.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
50
Data Element Comment
Used to populate dAgency.01 EMS Agency Unique State ID.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen EMS Agency Unique State ID is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen EMS Agency Unique State ID has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_s027WarningEMS Agency Unique State ID and EMS Agency Number should be a unique combination for
each EMS agency.
Published: 04/03/2025www.NEMSIS.orgPage 805
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sAgency.02
sAgency.02 - EMS Agency Number
Definition
The state-assigned provider number of the EMS agency.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_01
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
1
maxLength
15
Data Element Comment
This may be the EMS Agency Name or a unique number assigned by the state EMS office. This is required to document
multiple license types and numbers associated with the same EMS agency. 
Used to populate the following data elements: 
dAgency.02 EMS Agency Number 
eScene.03 Other EMS or Public Safety Agency ID Number 
eDisposition.02 Destination/Transferred To, Code (for transfer of EMS care)
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen EMS Agency Number is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen EMS Agency Number has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_s027WarningEMS Agency Unique State ID and EMS Agency Number should be a unique combination for
each EMS agency.
Published: 04/03/2025www.NEMSIS.orgPage 806
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sAgency.03
sAgency.03 - EMS Agency Name
Definition
The formal name of the EMS agency.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD01_02
Is NillableYes
UsageRecommended
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
An EMS agency can have more than one Agency Number within a state. This reflects the ability for an EMS agency to have a
different number for each service type or location (based on state implementation). 
Used to populate the following data elements: 
dAgency.03 EMS Agency Name 
eScene.02 - Other EMS or Public Safety Agencies at Scene 
eDisposition.01 - Destination/Transferred To, Name (for transfer of EMS care)
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen EMS Agency Name is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen EMS Agency Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 807
NEMSIS Version 3.5.1.250403CP1

 
sFacility
Published: 04/03/2025www.NEMSIS.orgPage 808

 
OSN
sFacility.15 - Facility Phone Number
0 : M
OSN
sFacility.14 - Facility US National Grid Coordinates
0 : 1
OSN
sFacility.13 - Facility GPS Location
0 : 1
OSN
sFacility.12 - Facility Country
0 : 1
N, LESN
sFacility.11 - Facility County
0 : 1
N, LESN
sFacility.10 - Facility ZIP Code
0 : 1
N, LESN
sFacility.09 - Facility State
0 : 1
OSN
sFacility.08 - Facility City
0 : 1
OSN
sFacility.07 - Facility Street Address
0 : 1
OSN
sFacility.06 - Facility Room, Suite, or Apartment
0 : 1
OSN
sFacility.05 - Facility National Provider Identifier
0 : M
N, LESN
sFacility.04 - Hospital Designations
0 : M
N, LESN
sFacility.03 - Facility Location Code
0 : 1
N, LESN
sFacility.02 - Facility Name
0 : 1
sFacility.FacilityGroup
0 : M
N, LESN
sFacility.01 - Type of Facility
0 : 1
sFacilityGroup
0 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
sFacility
sFacility
Published: 04/03/2025www.NEMSIS.orgPage 809

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.01
sFacility.01 - Type of Facility
Definition
The type of facility (healthcare or other) that the EMS agency transports patients to or from.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_15
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
1701001Assisted Living Facility
1701003Clinic
1701005Hospital
1701007Nursing Home
1701009Other
1701011Urgent Care
1701013Physical Rehabilitation Facility
1701015Mental Health Facility
1701017Dialysis Center
1701019Diagnostic Services
1701021Freestanding Emergency Department
1701023Morgue/Mortuary
1701025Police/Jail
1701027Other EMS Responder (air)
1701029Other EMS Responder (ground)
1701031Other Recurring Care Center
1701033Drug and/or Alcohol Rehabilitation Facility
1701035Skilled Nursing Facility
Data Element Comment
Used to populate dFacility.01 Type of Facility.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Type of Facility is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Type of Facility has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_s028WarningType of Facility, Facility Location Code, Facility Street Address, Facility City, and Facility State
should be a unique combination for each facility.
Published: 04/03/2025www.NEMSIS.orgPage 810
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.02
sFacility.02 - Facility Name
Definition
The name of the facility.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_11
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
100
Data Element Comment
Used to populate dFacility.02 Facility Name
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Facility Name is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Facility Name has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
Published: 04/03/2025www.NEMSIS.orgPage 811
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.03
sFacility.03 - Facility Location Code
Definition
The code of the facility as assigned by the state.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementD04_12
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Data Type
string
minLength
2
maxLength
50
Data Element Comment
Used to populate dFacility.03 Facility Location Code.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Facility Location Code is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen Facility Location Code has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_s028WarningType of Facility, Facility Location Code, Facility Street Address, Facility City, and Facility State
should be a unique combination for each facility.
Published: 04/03/2025www.NEMSIS.orgPage 812
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.04
sFacility.04 - Hospital Designations
Definition
The designation(s) associated with the hospital (e.g. Trauma, STEMI, Peds, etc).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
Code List
CodeDescription
9908001Behavioral Health
9908003Burn Center
9908005Critical Access Hospital
9908007Hospital (General)
9908009Neonatal Center
9908011Pediatric Center
9908019Rehab Center
9908021Trauma Center Level 1
9908023Trauma Center Level 2
9908025Trauma Center Level 3
9908027Trauma Center Level 4
9908029Trauma Center Level 5
9908031Cardiac-STEMI/PCI Capable
9908033Cardiac-STEMI/PCI Capable (24/7)
9908035Cardiac-STEMI/Non-PCI Capable
9908037Stroke-Acute Stroke Ready Hospital (ASRH)
9908039Stroke-Primary Stroke Center (PSC)
9908041Stroke-Thrombectomy-Capable Stroke Center (TSC)
9908043Stroke-Comprehensive Stroke Center (CSC)
9908045Cancer Center
9908047Labor and Delivery
Data Element Comment
Used to populate dFacility.04 Hospital Designations.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Hospital Designations is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element), or it should be omitted (if the element is
optional).
nemSch_s002ErrorWhen Hospital Designations has a Not Value (Not Applicable, Not Recorded, or Not Reporting),
it should be empty.
nemSch_s003WarningWhen Hospital Designations has a Not Value, no other value should be recorded.
nemSch_s029WarningHospital Designations should be unique (the same designation should not be listed more than
once).
Published: 04/03/2025www.NEMSIS.orgPage 813
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sFacility.05
sFacility.05 - Facility National Provider Identifier
Definition
The facility National Provider Identifier(s) associated with National Provider System (NPS).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Constraints
Data Type
string
length
10
Data Element Comment
Used to populate dFacility.05 Facility National Provider Identifier.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s030WarningFacility National Provider Identifier should be unique (the same identifier should not be listed
more than once).
Published: 04/03/2025www.NEMSIS.orgPage 814
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sFacility.06
sFacility.06 - Facility Room, Suite, or Apartment
Definition
The number of the specific room, suite, or apartment of the facility.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Data Type
string
minLength
1
maxLength
15
Data Element Comment
Used to populate dFacility.06 Facility Room, Suite, or Apartment.
Published: 04/03/2025www.NEMSIS.orgPage 815
NEMSIS Version 3.5.1.250403CP1

 
stringData Type: 1minLength: 255maxLength: 
StateNational
sFacility.07
sFacility.07 - Facility Street Address
Definition
The street address where the facility is located.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Attributes
StreetAddress2
Constraints
Data Type
string
minLength
1
maxLength
255
Data Element Comment
Used to populate dFacility.07 Facility Street Address.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s028WarningType of Facility, Facility Location Code, Facility Street Address, Facility City, and Facility State
should be a unique combination for each facility.
Published: 04/03/2025www.NEMSIS.orgPage 816
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sFacility.08
sFacility.08 - Facility City
Definition
The city where the facility is located (physical address).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Data Element Comment
City codes are based on GNIS Feature Class. The primary Feature Class to use is "Civil" with "Populated Place" and "Military"
code as additional options. 
Definitions for each GNIS City Feature Class can be found on the GNIS Codes website. 
GNIS Codes Website:  http://geonames.usgs.gov/domestic/download_data.htm
Used to populate dFacility.08 Facility City.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s028WarningType of Facility, Facility Location Code, Facility Street Address, Facility City, and Facility State
should be a unique combination for each facility.
Published: 04/03/2025www.NEMSIS.orgPage 817
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.09
sFacility.09 - Facility State
Definition
The state where the facility is located.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{2}
Data Element Comment
GNIS Codes Website:  http://geonames.usgs.gov/domestic/download_data.htm
Used to populate dFacility.09 Facility State.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Facility State is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Facility State has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_s028WarningType of Facility, Facility Location Code, Facility Street Address, Facility City, and Facility State
should be a unique combination for each facility.
nemSch_s031WarningFacility County should belong within the Facility State.
Published: 04/03/2025www.NEMSIS.orgPage 818
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.10
sFacility.10 - Facility ZIP Code
Definition
The zip code where the facility is located.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}|[0-9]{5}-[0-9]{4}|[0-9]{5}-[0-9]{5}|[A-Z][0-9][A-Z] [0-9][A-Z][0-9]
Data Element Comment
ZIP Codes Product Website:  Product:https://www.zipcodedownload.com/Products/Product/Z5Commercial/Standard/Overview/
USA - 5-digit ZIP Code Database, Commercial Edition 
Used to populate dFacility.10 Facility ZIP Code.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Facility ZIP Code is empty, it should have a Not Value (Not Applicable, Not Recorded, or
Not Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Facility ZIP Code has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 819
NEMSIS Version 3.5.1.250403CP1

 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
StateNational
sFacility.11
sFacility.11 - Facility County
Definition
The county where the facility is located.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRecommended
Recurrence0 : 1
Attributes
NOT Values (NV)
Constraints
Pattern
[0-9]{5}
Data Element Comment
GNIS Codes Website:  http://geonames.usgs.gov/domestic/download_data.htm
Used to populate dFacility.11 Facility County.
Associated Validation Rules
Rule IDLevelMessage
nemSch_s001ErrorWhen Facility County is empty, it should have a Not Value (Not Applicable, Not Recorded, or Not
Reporting, if allowed for the element), or it should be omitted (if the element is optional).
nemSch_s002ErrorWhen Facility County has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it should
be empty.
nemSch_s031WarningFacility County should belong within the Facility State.
Published: 04/03/2025www.NEMSIS.orgPage 820
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sFacility.12
sFacility.12 - Facility Country
Definition
The country where the facility is located.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Code List
CodeDescription
CACanada
MXMexico
USUnited States
Data Element Comment
ANSI Country Codes (ISO 3166) Website:  https://www.iso.org/iso-3166-country-codes.html
Used to populate dFacility.12 Facility Country.
Published: 04/03/2025www.NEMSIS.orgPage 821
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sFacility.13
sFacility.13 - Facility GPS Location
Definition
The facility GPS Coordinates.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
(\+|-)?(90(\.[0]{1,6})?|([1-8][0-9]|[0-9])(\.[0-9]{1,6})?),(\+|-)?(180(\.[0]{1,6})?|(1[0-7][0-9]|[1-9][0-9]|[0-9])(\.[0-9]{1,6})?)
Data Element Comment
The pattern for GPS location is in the format "," where: latitudelongitude
-  has a minimum of -90 and a maximum of 90 with up to 6 decimal places latitude
-  has a minimum of -180 and a maximum of 180 with up to 6 decimal places longitude
Used to populated dFacility.13 Facility GPS Location.
Published: 04/03/2025www.NEMSIS.orgPage 822
NEMSIS Version 3.5.1.250403CP1

 
StateNational
sFacility.14
sFacility.14 - Facility US National Grid Coordinates
Definition
The facility US National Grid Coordinates.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
([1-9]|[1-5][0-9]|60)[C-HJ-NP-X][A-HJ-NP-Z][A-HJ-NP-V]([0-9][0-9]){4,5}
Data Element Comment
Standard found at . http://www.fgdc.gov/usng
Used to populate dFacility.14 Facility US National Grid Coordinates.
Published: 04/03/2025www.NEMSIS.orgPage 823
NEMSIS Version 3.5.1.250403CP1

 
9913009 - Work9913007 - Pager
9913005 - Mobile9913003 - Home9913001 - Fax
StateNational
sFacility.15
sFacility.15 - Facility Phone Number
Definition
The facility phone number(s).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : M
Attributes
PhoneNumberType
Constraints
Pattern
([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])
Data Element Comment
This element contains an attribute to define what type of phone number is being documented (e.g., Fax, Home, Mobile, Pager,
and Work). 
Used to populate dFacility.15 Facility Phone Number.
Published: 04/03/2025www.NEMSIS.orgPage 824
NEMSIS Version 3.5.1.250403CP1

Index

DEMDataSet4
DEMDataSet Grouping5

EMSDataSet1
EMSDataSet Grouping2

StateDataSet6
StateDataSet Grouping7

dAgency591
dAgency Grouping592
dAgency.01 - EMS Agency Unique State ID8
dAgency.01 - EMS Agency Unique State ID594
dAgency.02 - EMS Agency Number9
dAgency.02 - EMS Agency Number595
dAgency.03 - EMS Agency Name596
dAgency.04 - EMS Agency State10
dAgency.04 - EMS Agency State597
dAgency.05 - EMS Agency Service Area States598
dAgency.06 - EMS Agency Service Area County(ies)599
dAgency.07 - EMS Agency Census Tracts600
dAgency.08 - EMS Agency Service Area ZIP Codes601
dAgency.09 - Primary Type of Service602
dAgency.10 - Other Types of Service603
dAgency.11 - Level of Service604
dAgency.12 - Organization Status605
dAgency.13 - Organizational Type606
dAgency.14 - EMS Agency Organizational Tax Status607
dAgency.15 - Statistical Calendar Year608
dAgency.16 - Total Primary Service Area Size609
dAgency.17 - Total Service Area Population610
dAgency.18 - 911 EMS Call Center Volume per Year611
dAgency.19 - EMS Dispatch Volume per Year612
dAgency.20 - EMS Patient Transport Volume per Year613
dAgency.21 - EMS Patient Contact Volume per Year614
dAgency.22 - EMS Billable Calls per Year615
dAgency.23 - EMS Agency Time Zone616
dAgency.24 - EMS Agency Daylight Savings Time Use617
dAgency.25 - National Provider Identifier618
dAgency.26 - Fire Department ID Number619
dAgency.27 - Licensed Agency620

dConfiguration639
dConfiguration Grouping640
dConfiguration.01 - State Associated with this Configuration641
dConfiguration.06 - EMS Certification Levels Permitted to Perform Each Procedure642
dConfiguration.07 - EMS Agency Procedures643

dConfiguration.08 - EMS Certification Levels Permitted to Administer Each Medication644
dConfiguration.09 - EMS Agency Medications645
dConfiguration.10 - EMS Agency Protocols646
dConfiguration.11 - EMS Agency Specialty Service Capability649
dConfiguration.12 - Billing Status650
dConfiguration.13 - Emergency Medical Dispatch (EMD) Provided to EMS Agency Service Area651
dConfiguration.14 - EMD Vendor652
dConfiguration.15 - Patient Monitoring Capability(ies)653
dConfiguration.16 - Crew Call Sign654
dConfiguration.17 - Dispatch Center (CAD) Name or ID655

dContact621
dContact Grouping622
dContact.01 - Agency Contact Type623
dContact.02 - Agency Contact Last Name624
dContact.03 - Agency Contact First Name625
dContact.04 - Agency Contact Middle Name/Initial626
dContact.05 - Agency Contact Address627
dContact.06 - Agency Contact City628
dContact.07 - Agency Contact State629
dContact.08 - Agency Contact ZIP Code630
dContact.09 - Agency Contact Country631
dContact.10 - Agency Contact Phone Number632
dContact.11 - Agency Contact Email Address633
dContact.12 - EMS Agency Contact Web Address634
dContact.13 - Agency Medical Director Degree635
dContact.14 - Agency Medical Director Board Certification Type636
dContact.15 - Medical Director Compensation637
dContact.16 - EMS Medical Director Board Certified/Eligible638

dCustomConfiguration575
dCustomConfiguration Grouping576
dCustomConfiguration.01 - Custom Data Element Title577
dCustomConfiguration.02 - Custom Definition578
dCustomConfiguration.03 - Custom Data Type579
dCustomConfiguration.04 - Custom Data Element Recurrence580
dCustomConfiguration.05 - Custom Data Element Usage581
dCustomConfiguration.06 - Custom Data Element Potential Values582
dCustomConfiguration.07 - Custom Data Element Potential NOT Values (NV)583
dCustomConfiguration.08 - Custom Data Element Potential Pertinent Negative Values (PN)584
dCustomConfiguration.09 - Custom Data Element Grouping ID585

dCustomResults754
dCustomResults Grouping755
dCustomResults.01 - Custom Data Element Result756
dCustomResults.02 - Custom Element ID Referenced757
dCustomResults.03 - CorrelationID of DemographicReport Element or Group758

dDevice729
dDevice Grouping730

dDevice.01 - Medical Device Serial Number731
dDevice.02 - Medical Device Name or ID732
dDevice.03 - Medical Device Type733
dDevice.04 - Medical Device Manufacturer734
dDevice.05 - Medical Device Model Number735
dDevice.06 - Medical Device Purchase Date736

dFacility737
dFacility Grouping738
dFacility.01 - Type of Facility739
dFacility.02 - Facility Name740
dFacility.03 - Facility Location Code741
dFacility.04 - Hospital Designations742
dFacility.05 - Facility National Provider Identifier743
dFacility.06 - Facility Room, Suite, or Apartment744
dFacility.07 - Facility Street Address745
dFacility.08 - Facility City746
dFacility.09 - Facility State747
dFacility.10 - Facility ZIP Code748
dFacility.11 - Facility County749
dFacility.12 - Facility Country750
dFacility.13 - Facility GPS Location751
dFacility.14 - Facility US National Grid Coordinates752
dFacility.15 - Facility Phone Number753

dLocation656
dLocation Grouping657
dLocation.01 - EMS Location Type658
dLocation.02 - EMS Location Name659
dLocation.03 - EMS Location Number660
dLocation.04 - EMS Location GPS661
dLocation.05 - EMS Location US National Grid Coordinates662
dLocation.06 - EMS Location Address663
dLocation.07 - EMS Location City664
dLocation.08 - EMS Location State665
dLocation.09 - EMS Station or Location ZIP Code666
dLocation.10 - EMS Location County667
dLocation.11 - EMS Location Country668
dLocation.12 - EMS Location Phone Number669

dPersonnel685
dPersonnel Grouping686
dPersonnel.01 - EMS Personnel's Last Name688
dPersonnel.02 - EMS Personnel's First Name689
dPersonnel.03 - EMS Personnel's Middle Name/Initial690
dPersonnel.04 - EMS Personnel's Mailing Address691
dPersonnel.05 - EMS Personnel's City of Residence692
dPersonnel.06 - EMS Personnel's State693
dPersonnel.07 - EMS Personnel's ZIP Code694
dPersonnel.08 - EMS Personnel's Country695

dPersonnel.09 - EMS Personnel's Phone Number696
dPersonnel.10 - EMS Personnel's Email Address697
dPersonnel.11 - EMS Personnel's Date of Birth698
dPersonnel.12 - EMS Personnel's Gender (DEPRECATED)699
dPersonnel.13 - EMS Personnel's Race700
dPersonnel.14 - EMS Personnel's Citizenship701
dPersonnel.15 - EMS Personnel's Highest Educational Degree702
dPersonnel.16 - EMS Personnel's Degree Subject/Field of Study703
dPersonnel.17 - EMS Personnel's Motor Vehicle License Type704
dPersonnel.18 - EMS Personnel's Immunization Status705
dPersonnel.19 - EMS Personnel's Immunization Year706
dPersonnel.20 - EMS Personnel's Foreign Language Ability707
dPersonnel.21 - EMS Personnel's Agency ID Number709
dPersonnel.22 - EMS Personnel's State of Licensure710
dPersonnel.23 - EMS Personnel's State's Licensure ID Number711
dPersonnel.24 - EMS Personnel's State EMS Certification Licensure Level712
dPersonnel.25 - EMS Personnel's State EMS Current Certification Date713
dPersonnel.26 - EMS Personnel's Initial State's Licensure Issue Date714
dPersonnel.27 - EMS Personnel's Current State's Licensure Expiration Date715
dPersonnel.28 - EMS Personnel's National Registry Number716
dPersonnel.29 - EMS Personnel's National Registry Certification Level717
dPersonnel.30 - EMS Personnel's Current National Registry Expiration Date718
dPersonnel.31 - EMS Personnel's Employment Status719
dPersonnel.32 - EMS Personnel's Employment Status Date720
dPersonnel.33 - EMS Personnel's Hire Date721
dPersonnel.34 - EMS Personnel's Primary EMS Job Role722
dPersonnel.35 - EMS Personnel's Other Job Responsibilities723
dPersonnel.36 - EMS Personnel's Total Length of Service in Years724
dPersonnel.37 - EMS Personnel's Date Length of Service Documented725
dPersonnel.38 - EMS Personnel's Practice Level726
dPersonnel.39 - Date of Personnel's Certification or Licensure for Agency727
dPersonnel.40 - EMS Personnel's Sex728

dRecord586
dRecord Grouping587
dRecord.01 - Software Creator588
dRecord.02 - Software Name589
dRecord.03 - Software Version590

dVehicle670
dVehicle Grouping671
dVehicle.01 - Unit/Vehicle Number672
dVehicle.02 - Vehicle Identification Number673
dVehicle.03 - EMS Unit Call Sign674
dVehicle.04 - Vehicle Type675
dVehicle.05 - Crew State Certification/Licensure Levels676
dVehicle.06 - Number of Each EMS Personnel Level on Normal 911 Ambulance Response677
dVehicle.07 - Number of Each EMS Personnel Level on Normal 911 Response (Non-Transport) Vehicle678
dVehicle.08 - Number of Each EMS Personnel Level on Normal Medical (Non-911) Transport Ambulance679
dVehicle.09 - Vehicle Initial Cost680

dVehicle.10 - Vehicle Model Year681
dVehicle.11 - Year Miles/Kilometers Hours Accrued682
dVehicle.12 - Annual Vehicle Hours683
dVehicle.13 - Annual Vehicle Miles/Kilometers684

eAirway455
eAirway Grouping456
eAirway.01 - Indications for Invasive Airway457
eAirway.02 - Date/Time Airway Device Placement Confirmation458
eAirway.03 - Airway Device Being Confirmed460
eAirway.04 - Airway Device Placement Confirmed Method461
eAirway.05 - Tube Depth462
eAirway.06 - Type of Individual Confirming Airway Device Placement463
eAirway.07 - Crew Member ID464
eAirway.08 - Airway Complications Encountered465
eAirway.09 - Suspected Reasons for Failed Airway Management466
eAirway.10 - Date/Time Decision to Manage the Patient with an Invasive Airway467
eAirway.11 - Date/Time Invasive Airway Placement Attempts Abandoned468

eArrest274
eArrest Grouping275
eArrest.01 - Cardiac Arrest276
eArrest.02 - Cardiac Arrest Etiology278
eArrest.03 - Resuscitation Attempted By EMS279
eArrest.04 - Arrest Witnessed By281
eArrest.07 - AED Use Prior to EMS Arrival282
eArrest.09 - Type of CPR Provided283
eArrest.10 - Therapeutic Hypothermia by EMS285
eArrest.11 - First Monitored Arrest Rhythm of the Patient286
eArrest.12 - Any Return of Spontaneous Circulation287
eArrest.13 - Neurological Outcome at Hospital Discharge288
eArrest.14 - Date/Time of Cardiac Arrest289
eArrest.15 - Date/Time Resuscitation Discontinued291
eArrest.16 - Reason CPR/Resuscitation Discontinued293
eArrest.17 - Cardiac Rhythm on Arrival at Destination294
eArrest.18 - End of EMS Cardiac Arrest Event296
eArrest.19 - Date/Time of Initial CPR297
eArrest.20 - Who First Initiated CPR298
eArrest.21 - Who First Applied the AED300
eArrest.22 - Who First Defibrillated the Patient302

eCrew65
eCrew Grouping66
eCrew.01 - Crew Member ID67
eCrew.02 - Crew Member Level68
eCrew.03 - Crew Member Response Role69

eCustomConfiguration11
eCustomConfiguration Grouping12
eCustomConfiguration.01 - Custom Data Element Title13

eCustomConfiguration.02 - Custom Definition14
eCustomConfiguration.03 - Custom Data Type15
eCustomConfiguration.04 - Custom Data Element Recurrence16
eCustomConfiguration.05 - Custom Data Element Usage17
eCustomConfiguration.06 - Custom Data Element Potential Values18
eCustomConfiguration.07 - Custom Data Element Potential NOT Values (NV)19
eCustomConfiguration.08 - Custom Data Element Potential Pertinent Negative Values (PN)20
eCustomConfiguration.09 - Custom Data Element Grouping ID21

eCustomResults546
eCustomResults Grouping547
eCustomResults.01 - Custom Data Element Result548
eCustomResults.02 - Custom Element ID Referenced549
eCustomResults.03 - CorrelationID of PatientCareReport Element or Group550

eDevice469
eDevice Grouping470
eDevice.01 - Medical Device Serial Number471
eDevice.02 - Date/Time of Event (per Medical Device)472
eDevice.03 - Medical Device Event Type473
eDevice.04 - Medical Device Waveform Graphic Type474
eDevice.05 - Medical Device Waveform Graphic475
eDevice.06 - Medical Device Mode (Manual, AED, Pacing, CO2, O2, etc)476
eDevice.07 - Medical Device ECG Lead477
eDevice.08 - Medical Device ECG Interpretation478
eDevice.09 - Type of Shock479
eDevice.10 - Shock or Pacing Energy480
eDevice.11 - Total Number of Shocks Delivered481
eDevice.12 - Pacing Rate482

eDispatch56
eDispatch Grouping57
eDispatch.01 - Dispatch Reason58
eDispatch.02 - EMD Performed60
eDispatch.03 - EMD Determinant Code61
eDispatch.04 - Dispatch Center Name or ID62
eDispatch.05 - Dispatch Priority (Patient Acuity)63
eDispatch.06 - Unit Dispatched CAD Record ID64

eDisposition483
eDisposition Grouping484
eDisposition.01 - Destination/Transferred To, Name486
eDisposition.02 - Destination/Transferred To, Code487
eDisposition.03 - Destination Street Address488
eDisposition.04 - Destination City489
eDisposition.05 - Destination State490
eDisposition.06 - Destination County491
eDisposition.07 - Destination ZIP Code492
eDisposition.08 - Destination Country493
eDisposition.09 - Destination GPS Location494

eDisposition.10 - Destination Location US National Grid Coordinates495
eDisposition.11 - Number of Patients Transported in this EMS Unit496
eDisposition.13 - How Patient Was Moved to Ambulance505
eDisposition.14 - Position of Patient During Transport506
eDisposition.15 - How Patient Was Moved From Ambulance507
eDisposition.16 - EMS Transport Method508
eDisposition.17 - Transport Mode from Scene509
eDisposition.18 - Additional Transport Mode Descriptors510
eDisposition.19 - Acuity Upon EMS Release of Patient511
eDisposition.20 - Reason for Choosing Destination512
eDisposition.21 - Type of Destination513
eDisposition.22 - Hospital In-Patient Destination515
eDisposition.23 - Hospital Capability516
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation518
eDisposition.25 - Date/Time of Destination Prearrival Alert or Activation519
eDisposition.26 - Disposition Instructions Provided521
eDisposition.27 - Unit Disposition497
eDisposition.28 - Patient Evaluation/Care499
eDisposition.29 - Crew Disposition501
eDisposition.30 - Transport Disposition502
eDisposition.31 - Reason for Refusal/Release504
eDisposition.32 - Level of Care Provided per Protocol522

eExam379
eExam Grouping380
eExam.01 - Estimated Body Weight in Kilograms382
eExam.02 - Length Based Tape Measure383
eExam.03 - Date/Time of Assessment384
eExam.04 - Skin Assessment385
eExam.05 - Head Assessment386
eExam.06 - Face Assessment387
eExam.07 - Neck Assessment388
eExam.09 - Heart Assessment389
eExam.10 - Abdominal Assessment Finding Location390
eExam.11 - Abdomen Assessment391
eExam.12 - Pelvis/Genitourinary Assessment392
eExam.13 - Back and Spine Assessment Finding Location393
eExam.14 - Back and Spine Assessment394
eExam.15 - Extremity Assessment Finding Location395
eExam.16 - Extremities Assessment397
eExam.17 - Eye Assessment Finding Location399
eExam.18 - Eye Assessment400
eExam.19 - Mental Status Assessment405
eExam.20 - Neurological Assessment406
eExam.21 - Stroke/CVA Symptoms Resolved407
eExam.22 - Lung Assessment Finding Location401
eExam.23 - Lung Assessment402
eExam.24 - Chest Assessment Finding Location403
eExam.25 - Chest Assessment404


eHistory304
eHistory Grouping305
eHistory.01 - Barriers to Patient Care306
eHistory.02 - Last Name of Patient's Practitioner307
eHistory.03 - First Name of Patient's Practitioner308
eHistory.04 - Middle Name/Initial of Patient's Practitioner309
eHistory.05 - Advance Directives310
eHistory.06 - Medication Allergies311
eHistory.07 - Environmental/Food Allergies312
eHistory.08 - Medical/Surgical History313
eHistory.09 - Medical History Obtained From314
eHistory.10 - The Patient's Type of Immunization315
eHistory.11 - Immunization Year316
eHistory.12 - Current Medications317
eHistory.13 - Current Medication Dose318
eHistory.14 - Current Medication Dosage Unit319
eHistory.15 - Current Medication Administration Route320
eHistory.16 - Presence of Emergency Information Form322
eHistory.17 - Alcohol/Drug Use Indicators323
eHistory.18 - Pregnancy324
eHistory.19 - Last Oral Intake325
eHistory.20 - Current Medication Frequency321

eInjury240
eInjury Grouping241
eInjury.01 - Cause of Injury243
eInjury.02 - Mechanism of Injury244
eInjury.03 - Trauma Triage Criteria (High Risk for Serious Injury)245
eInjury.04 - Trauma Triage Criteria (Moderate Risk for Serious Injury)247
eInjury.05 - Main Area of the Vehicle Impacted by the Collision249
eInjury.06 - Location of Patient in Vehicle250
eInjury.07 - Use of Occupant Safety Equipment251
eInjury.08 - Airbag Deployment252
eInjury.09 - Height of Fall (feet)253
eInjury.10 - OSHA Personal Protective Equipment Used254
eInjury.11 - ACN System/Company Providing ACN Data255
eInjury.12 - ACN Incident ID256
eInjury.13 - ACN Call Back Phone Number257
eInjury.14 - Date/Time of ACN Incident258
eInjury.15 - ACN Incident Location259
eInjury.16 - ACN Incident Vehicle Body Type260
eInjury.17 - ACN Incident Vehicle Manufacturer261
eInjury.18 - ACN Incident Vehicle Make262
eInjury.19 - ACN Incident Vehicle Model263
eInjury.20 - ACN Incident Vehicle Model Year264
eInjury.21 - ACN Incident Multiple Impacts265
eInjury.22 - ACN Incident Delta Velocity266
eInjury.23 - ACN High Probability of Injury267
eInjury.24 - ACN Incident PDOF268
eInjury.25 - ACN Incident Rollover269

eInjury.26 - ACN Vehicle Seat Location270
eInjury.27 - Seat Occupied271
eInjury.28 - ACN Incident Seatbelt Use272
eInjury.29 - ACN Incident Airbag Deployed273

eLabs368
eLabs Grouping369
eLabs.01 - Date/Time of Laboratory or Imaging Result370
eLabs.02 - Study/Result Prior to this Unit's EMS Care371
eLabs.03 - Laboratory Result Type372
eLabs.04 - Laboratory Result374
eLabs.05 - Imaging Study Type375
eLabs.06 - Imaging Study Results376
eLabs.07 - Imaging Study File or Waveform Graphic Type377
eLabs.08 - Imaging Study File or Waveform Graphic378

eMedications414
eMedications Grouping415
eMedications.01 - Date/Time Medication Administered416
eMedications.02 - Medication Administered Prior to this Unit's EMS Care418
eMedications.03 - Medication Administered420
eMedications.04 - Medication Administered Route422
eMedications.05 - Medication Dosage424
eMedications.06 - Medication Dosage Units425
eMedications.07 - Response to Medication426
eMedications.08 - Medication Complication427
eMedications.09 - Medication Crew (Healthcare Professionals) ID428
eMedications.10 - Role/Type of Person Administering Medication429
eMedications.11 - Medication Authorization431
eMedications.12 - Medication Authorizing Physician432
eMedications.13 - Medication Administered by Another Unit433

eNarrative326
eNarrative Grouping327
eNarrative.01 - Patient Care Report Narrative328

eOther551
eOther Grouping552
eOther.01 - Review Requested553
eOther.02 - Potential System of Care/Specialty/Registry Patient554
eOther.03 - Personal Protective Equipment Used555
eOther.04 - EMS Professional (Crew Member) ID556
eOther.05 - Suspected EMS Work Related Exposure, Injury, or Death557
eOther.06 - The Type of Work-Related Injury, Death or Suspected Exposure558
eOther.07 - Natural, Suspected, Intentional, or Unintentional Disaster559
eOther.08 - Crew Member Completing this Report560
eOther.09 - External Electronic Document Type561
eOther.10 - File Attachment Type562
eOther.11 - File Attachment Image563
eOther.12 - Type of Person Signing565

eOther.13 - Signature Reason566
eOther.14 - Type Of Patient Representative567
eOther.15 - Signature Status568
eOther.16 - Signature File Name569
eOther.17 - Signature File Type570
eOther.18 - Signature Graphic571
eOther.19 - Date/Time of Signature572
eOther.20 - Signature Last Name573
eOther.21 - Signature First Name574
eOther.22 - File Attachment Name564

eOutcome523
eOutcome Grouping524
eOutcome.01 - Emergency Department Disposition525
eOutcome.02 - Hospital Disposition527
eOutcome.03 - External Report ID/Number Type529
eOutcome.04 - External Report ID/Number530
eOutcome.05 - Other Report Registry Type531
eOutcome.09 - Emergency Department Procedures532
eOutcome.10 - Emergency Department Diagnosis535
eOutcome.11 - Date/Time of Hospital Admission536
eOutcome.12 - Hospital Procedures538
eOutcome.13 - Hospital Diagnosis541
eOutcome.16 - Date/Time of Hospital Discharge542
eOutcome.18 - Date/Time of Emergency Department Admission544
eOutcome.19 - Date/Time Emergency Department Procedure Performed533
eOutcome.20 - Date/Time Hospital Procedure Performed539
eOutcome.21 - Injury Severity Score545

ePatient99
ePatient Grouping100
ePatient.01 - EMS Patient ID101
ePatient.02 - Last Name102
ePatient.03 - First Name103
ePatient.04 - Middle Initial/Name104
ePatient.05 - Patient's Home Address106
ePatient.06 - Patient's Home City107
ePatient.07 - Patient's Home County108
ePatient.08 - Patient's Home State109
ePatient.09 - Patient's Home ZIP Code110
ePatient.10 - Patient's Country of Residence111
ePatient.11 - Patient Home Census Tract112
ePatient.12 - Social Security Number113
ePatient.13 - Gender (DEPRECATED)114
ePatient.14 - Race115
ePatient.15 - Age116
ePatient.16 - Age Units117
ePatient.17 - Date of Birth118
ePatient.18 - Patient's Phone Number119
ePatient.19 - Patient's Email Address120

ePatient.20 - State Issuing Driver's License121
ePatient.21 - Driver's License Number122
ePatient.22 - Alternate Home Residence123
ePatient.23 - Name Suffix105
ePatient.24 - Patient's Preferred Language(s)124
ePatient.25 - Sex126

ePayment127
ePayment Grouping128
ePayment.01 - Primary Method of Payment130
ePayment.02 - Physician Certification Statement131
ePayment.03 - Date Physician Certification Statement Signed132
ePayment.04 - Reason for Physician Certification Statement133
ePayment.05 - Healthcare Provider Type Signing Physician Certification Statement134
ePayment.06 - Last Name of Individual Signing Physician Certification Statement135
ePayment.07 - First Name of Individual Signing Physician Certification Statement136
ePayment.08 - Patient Resides in Service Area137
ePayment.09 - Insurance Company ID138
ePayment.10 - Insurance Company Name139
ePayment.11 - Insurance Company Billing Priority140
ePayment.12 - Insurance Company Address141
ePayment.13 - Insurance Company City142
ePayment.14 - Insurance Company State143
ePayment.15 - Insurance Company ZIP Code144
ePayment.16 - Insurance Company Country145
ePayment.17 - Insurance Group ID146
ePayment.18 - Insurance Policy ID Number147
ePayment.19 - Last Name of the Insured148
ePayment.20 - First Name of the Insured149
ePayment.21 - Middle Initial/Name of the Insured150
ePayment.22 - Relationship to the Insured151
ePayment.23 - Closest Relative/Guardian Last Name155
ePayment.24 - Closest Relative/ Guardian First Name156
ePayment.25 - Closest Relative/ Guardian Middle Initial/Name157
ePayment.26 - Closest Relative/ Guardian Street Address158
ePayment.27 - Closest Relative/ Guardian City159
ePayment.28 - Closest Relative/ Guardian State160
ePayment.29 - Closest Relative/ Guardian ZIP Code161
ePayment.30 - Closest Relative/ Guardian Country162
ePayment.31 - Closest Relative/ Guardian Phone Number163
ePayment.32 - Closest Relative/ Guardian Relationship164
ePayment.33 - Patient's Employer165
ePayment.34 - Patient's Employer's Address166
ePayment.35 - Patient's Employer's City167
ePayment.36 - Patient's Employer's State168
ePayment.37 - Patient's Employer's ZIP Code169
ePayment.38 - Patient's Employer's Country170
ePayment.39 - Patient's Employer's Primary Phone Number171
ePayment.40 - Response Urgency172
ePayment.41 - Patient Transport Assessment173
ePayment.42 - Specialty Care Transport Care Provider174

ePayment.44 - Ambulance Transport Reason Code175
ePayment.45 - Round Trip Purpose Description176
ePayment.46 - Stretcher Purpose Description177
ePayment.47 - Ambulance Conditions Indicator178
ePayment.48 - Mileage to Closest Hospital Facility179
ePayment.49 - ALS Assessment Performed and Warranted180
ePayment.50 - CMS Service Level181
ePayment.51 - EMS Condition Code182
ePayment.52 - CMS Transportation Indicator183
ePayment.53 - Transport Authorization Code184
ePayment.54 - Prior Authorization Code Payer185
ePayment.55 - Supply Item Used Name186
ePayment.56 - Number of Supply Item(s) Used187
ePayment.57 - Payer Type188
ePayment.58 - Insurance Group Name152
ePayment.59 - Insurance Company Phone Number153
ePayment.60 - Date of Birth of the Insured154

eProcedures434
eProcedures Grouping435
eProcedures.01 - Date/Time Procedure Performed436
eProcedures.02 - Procedure Performed Prior to this Unit's EMS Care438
eProcedures.03 - Procedure439
eProcedures.04 - Size of Procedure Equipment440
eProcedures.05 - Number of Procedure Attempts441
eProcedures.06 - Procedure Successful442
eProcedures.07 - Procedure Complication443
eProcedures.08 - Response to Procedure445
eProcedures.09 - Procedure Crew Members ID446
eProcedures.10 - Role/Type of Person Performing the Procedure447
eProcedures.11 - Procedure Authorization449
eProcedures.12 - Procedure Authorizing Physician450
eProcedures.13 - Vascular Access Location451
eProcedures.14 - Airway Placement Technique453
eProcedures.15 - Procedure Performed by Another Unit454

eProtocols408
eProtocols Grouping409
eProtocols.01 - Protocols Used410
eProtocols.02 - Protocol Age Category413

eRecord22
eRecord Grouping23
eRecord.01 - Patient Care Report Number24
eRecord.02 - Software Creator25
eRecord.03 - Software Name26
eRecord.04 - Software Version27

eResponse28
eResponse Grouping29

eResponse.01 - EMS Agency Number30
eResponse.02 - EMS Agency Name31
eResponse.03 - Incident Number32
eResponse.04 - EMS Response Number33
eResponse.05 - Type of Service Requested34
eResponse.06 - Standby Purpose36
eResponse.07 - Unit Transport and Equipment Capability37
eResponse.08 - Type of Dispatch Delay38
eResponse.09 - Type of Response Delay39
eResponse.10 - Type of Scene Delay41
eResponse.11 - Type of Transport Delay42
eResponse.12 - Type of Turn-Around Delay43
eResponse.13 - EMS Vehicle (Unit) Number45
eResponse.14 - EMS Unit Call Sign46
eResponse.16 - Vehicle Dispatch Location47
eResponse.17 - Vehicle Dispatch GPS Location48
eResponse.18 - Vehicle Dispatch Location US National Grid Coordinates49
eResponse.19 - Beginning Odometer Reading of Responding Vehicle50
eResponse.20 - On-Scene Odometer Reading of Responding Vehicle51
eResponse.21 - Patient Destination Odometer Reading of Responding Vehicle52
eResponse.22 - Ending Odometer Reading of Responding Vehicle53
eResponse.23 - Response Mode to Scene54
eResponse.24 - Additional Response Mode Descriptors55

eScene189
eScene Grouping190
eScene.01 - First EMS Unit on Scene191
eScene.02 - Other EMS or Public Safety Agencies at Scene192
eScene.03 - Other EMS or Public Safety Agency ID Number193
eScene.04 - Type of Other Service at Scene194
eScene.05 - Date/Time Initial Responder Arrived on Scene197
eScene.06 - Number of Patients at Scene198
eScene.07 - Mass Casualty Incident199
eScene.08 - Triage Classification for MCI Patient200
eScene.09 - Incident Location Type201
eScene.10 - Incident Facility Code202
eScene.11 - Scene GPS Location203
eScene.12 - Scene US National Grid Coordinates204
eScene.13 - Incident Facility or Location Name205
eScene.14 - Mile Post or Major Roadway206
eScene.15 - Incident Street Address207
eScene.16 - Incident Apartment, Suite, or Room208
eScene.17 - Incident City209
eScene.18 - Incident State210
eScene.19 - Incident ZIP Code211
eScene.20 - Scene Cross Street or Directions212
eScene.21 - Incident County213
eScene.22 - Incident Country214
eScene.23 - Incident Census Tract215
eScene.24 - First Other EMS or Public Safety Agency at Scene to Provide Patient Care195
eScene.25 - Transferred Patient/Care To/From Agency196


eSituation216
eSituation Grouping217
eSituation.01 - Date/Time of Symptom Onset218
eSituation.02 - Possible Injury220
eSituation.03 - Complaint Type221
eSituation.04 - Complaint222
eSituation.05 - Duration of Complaint223
eSituation.06 - Time Units of Duration of Complaint224
eSituation.07 - Chief Complaint Anatomic Location225
eSituation.08 - Chief Complaint Organ System226
eSituation.09 - Primary Symptom227
eSituation.10 - Other Associated Symptoms228
eSituation.11 - Provider's Primary Impression229
eSituation.12 - Provider's Secondary Impressions230
eSituation.13 - Initial Patient Acuity231
eSituation.14 - Work-Related Illness/Injury232
eSituation.15 - Patient's Occupational Industry233
eSituation.16 - Patient's Occupation234
eSituation.17 - Patient Activity235
eSituation.18 - Date/Time Last Known Well236
eSituation.19 - Justification for Transfer or Encounter238
eSituation.20 - Reason for Interfacility Transfer/Medical Transport239

eTimes70
eTimes Grouping71
eTimes.01 - PSAP Call Date/Time72
eTimes.02 - Dispatch Notified Date/Time74
eTimes.03 - Unit Notified by Dispatch Date/Time75
eTimes.04 - Dispatch Acknowledged Date/Time77
eTimes.05 - Unit En Route Date/Time78
eTimes.06 - Unit Arrived on Scene Date/Time80
eTimes.07 - Arrived at Patient Date/Time82
eTimes.08 - Transfer of EMS Patient Care Date/Time84
eTimes.09 - Unit Left Scene Date/Time86
eTimes.10 - Arrival at Destination Landing Area Date/Time88
eTimes.11 - Patient Arrived at Destination Date/Time89
eTimes.12 - Destination Patient Transfer of Care Date/Time91
eTimes.13 - Unit Back in Service Date/Time93
eTimes.14 - Unit Canceled Date/Time95
eTimes.15 - Unit Back at Home Location Date/Time96
eTimes.16 - EMS Call Completed Date/Time97
eTimes.17 - Unit Arrived at Staging Area Date/Time98

eVitals329
eVitals Grouping330
eVitals.01 - Date/Time Vital Signs Taken332
eVitals.02 - Obtained Prior to this Unit's EMS Care334
eVitals.03 - Cardiac Rhythm / Electrocardiography (ECG)335
eVitals.04 - ECG Type337

eVitals.05 - Method of ECG Interpretation338
eVitals.06 - SBP (Systolic Blood Pressure)339
eVitals.07 - DBP (Diastolic Blood Pressure)340
eVitals.08 - Method of Blood Pressure Measurement341
eVitals.09 - Mean Arterial Pressure342
eVitals.10 - Heart Rate343
eVitals.11 - Method of Heart Rate Measurement344
eVitals.12 - Pulse Oximetry345
eVitals.13 - Pulse Rhythm346
eVitals.14 - Respiratory Rate347
eVitals.15 - Respiratory Effort348
eVitals.16 - End Tidal Carbon Dioxide (ETCO2)349
eVitals.17 - Carbon Monoxide (CO)350
eVitals.18 - Blood Glucose Level351
eVitals.19 - Glasgow Coma Score-Eye352
eVitals.20 - Glasgow Coma Score-Verbal353
eVitals.21 - Glasgow Coma Score-Motor354
eVitals.22 - Glasgow Coma Score-Qualifier355
eVitals.23 - Total Glasgow Coma Score356
eVitals.24 - Temperature357
eVitals.25 - Temperature Method358
eVitals.26 - Level of Responsiveness (AVPU)359
eVitals.27 - Pain Scale Score360
eVitals.28 - Pain Scale Type361
eVitals.29 - Stroke Scale Result362
eVitals.30 - Stroke Scale Type363
eVitals.31 - Reperfusion Checklist365
eVitals.32 - APGAR366
eVitals.33 - Revised Trauma Score367
eVitals.34 - Stroke Scale Score364

sAgency803
sAgency Grouping804
sAgency.01 - EMS Agency Unique State ID805
sAgency.02 - EMS Agency Number806
sAgency.03 - EMS Agency Name807

sConfiguration792
sConfiguration Grouping793
sConfiguration.01 - State Certification/Licensure Levels794
sConfiguration.02 - EMS Certification Levels Permitted to Perform Each Procedure795
sConfiguration.03 - Procedures Permitted by the State796
sConfiguration.04 - EMS Certification Levels Permitted to Administer Each Medication797
sConfiguration.05 - Medications Permitted by the State798
sConfiguration.06 - Protocols Permitted by the State800

sElement789
sElement Grouping790
sElement.01 - State Collected Element791


sFacility808
sFacility Grouping809
sFacility.01 - Type of Facility810
sFacility.02 - Facility Name811
sFacility.03 - Facility Location Code812
sFacility.04 - Hospital Designations813
sFacility.05 - Facility National Provider Identifier814
sFacility.06 - Facility Room, Suite, or Apartment815
sFacility.07 - Facility Street Address816
sFacility.08 - Facility City817
sFacility.09 - Facility State818
sFacility.10 - Facility ZIP Code819
sFacility.11 - Facility County820
sFacility.12 - Facility Country821
sFacility.13 - Facility GPS Location822
sFacility.14 - Facility US National Grid Coordinates823
sFacility.15 - Facility Phone Number824

sSoftware784
sSoftware Grouping785
sSoftware.01 - Software Creator786
sSoftware.02 - Software Name787
sSoftware.03 - Software Version788

sState759
sState Grouping760
sState.01 - State761

sdCustomConfiguration773
sdCustomConfiguration Grouping774
sdCustomConfiguration.01 - Agency Demographic Custom Data Element Title775
sdCustomConfiguration.02 - Agency Demographic Custom Definition776
sdCustomConfiguration.03 - Agency Demographic Custom Data Type777
sdCustomConfiguration.04 - Agency Demographic Custom Data Element Recurrence778
sdCustomConfiguration.05 - Agency Demographic Custom Data Element Usage779
sdCustomConfiguration.06 - Agency Demographic Custom Data Element Potential Values780
sdCustomConfiguration.07 - Agency Demographic Custom Data Element Potential NOT Values (NV)781
sdCustomConfiguration.08 - Agency Demographic Custom Data Element Potential Pertinent Negative Values
(PN)
782
sdCustomConfiguration.09 - Agency Demographic Custom Data Element Grouping ID783

seCustomConfiguration762
seCustomConfiguration Grouping763
seCustomConfiguration.01 - Patient Care Report Custom Data Element Title764
seCustomConfiguration.02 - Patient Care Report Custom Definition765
seCustomConfiguration.03 - Patient Care Report Custom Data Type766
seCustomConfiguration.04 - Patient Care Report Custom Data Element Recurrence767
seCustomConfiguration.05 - Patient Care Report Custom Data Element Usage768
seCustomConfiguration.06 - Patient Care Report Custom Data Element Potential Values769
seCustomConfiguration.07 - Patient Care Report Custom Data Element Potential NOT Values (NV)770

seCustomConfiguration.08 - Patient Care Report Custom Data Element Potential Pertinent Negative Values
(PN)
771
seCustomConfiguration.09 - Patient Care Report Custom Data Element Grouping ID772