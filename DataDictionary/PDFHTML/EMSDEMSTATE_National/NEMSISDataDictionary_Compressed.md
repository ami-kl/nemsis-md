

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

DEMDataSet3
DEMDataSet Grouping4

StateDataSet5
StateDataSet Grouping6
dAgency.01 - EMS Agency Unique State ID7
dAgency.02 - EMS Agency Number8
dAgency.04 - EMS Agency State9

eRecord10
eRecord Grouping11
eRecord.01 - Patient Care Report Number12
eRecord.02 - Software Creator13
eRecord.03 - Software Name14
eRecord.04 - Software Version15

eResponse16
eResponse Grouping17
eResponse.01 - EMS Agency Number18
eResponse.03 - Incident Number19
eResponse.04 - EMS Response Number20
eResponse.05 - Type of Service Requested21
eResponse.07 - Unit Transport and Equipment Capability23
eResponse.08 - Type of Dispatch Delay24
eResponse.09 - Type of Response Delay25
eResponse.10 - Type of Scene Delay26
eResponse.11 - Type of Transport Delay27
eResponse.12 - Type of Turn-Around Delay28
eResponse.13 - EMS Vehicle (Unit) Number30
eResponse.14 - EMS Unit Call Sign31
eResponse.23 - Response Mode to Scene32
eResponse.24 - Additional Response Mode Descriptors33

eDispatch34
eDispatch Grouping35
eDispatch.01 - Dispatch Reason36
eDispatch.02 - EMD Performed38

eTimes39
eTimes Grouping40
eTimes.01 - PSAP Call Date/Time41
eTimes.03 - Unit Notified by Dispatch Date/Time43
eTimes.05 - Unit En Route Date/Time45
eTimes.06 - Unit Arrived on Scene Date/Time47

eTimes.07 - Arrived at Patient Date/Time49
eTimes.09 - Unit Left Scene Date/Time51
eTimes.11 - Patient Arrived at Destination Date/Time53
eTimes.12 - Destination Patient Transfer of Care Date/Time55
eTimes.13 - Unit Back in Service Date/Time57

ePatient59
ePatient Grouping60
ePatient.07 - Patient's Home County61
ePatient.08 - Patient's Home State62
ePatient.09 - Patient's Home ZIP Code63
ePatient.13 - Gender (DEPRECATED)64
ePatient.14 - Race65
ePatient.15 - Age66
ePatient.16 - Age Units67
ePatient.25 - Sex68

ePayment69
ePayment Grouping70
ePayment.01 - Primary Method of Payment71
ePayment.50 - CMS Service Level72

eScene73
eScene Grouping74
eScene.01 - First EMS Unit on Scene75
eScene.06 - Number of Patients at Scene76
eScene.07 - Mass Casualty Incident77
eScene.08 - Triage Classification for MCI Patient78
eScene.09 - Incident Location Type79
eScene.18 - Incident State80
eScene.19 - Incident ZIP Code81
eScene.21 - Incident County82

eSituation83
eSituation Grouping84
eSituation.01 - Date/Time of Symptom Onset85
eSituation.02 - Possible Injury87
eSituation.07 - Chief Complaint Anatomic Location88
eSituation.08 - Chief Complaint Organ System89
eSituation.09 - Primary Symptom90
eSituation.10 - Other Associated Symptoms91
eSituation.11 - Provider's Primary Impression92
eSituation.12 - Provider's Secondary Impressions93
eSituation.13 - Initial Patient Acuity94
eSituation.18 - Date/Time Last Known Well95
eSituation.20 - Reason for Interfacility Transfer/Medical Transport97

eInjury98
eInjury Grouping99
eInjury.01 - Cause of Injury100

eInjury.03 - Trauma Triage Criteria (High Risk for Serious Injury)101
eInjury.04 - Trauma Triage Criteria (Moderate Risk for Serious Injury)103

eArrest105
eArrest Grouping106
eArrest.01 - Cardiac Arrest107
eArrest.02 - Cardiac Arrest Etiology109
eArrest.03 - Resuscitation Attempted By EMS110
eArrest.04 - Arrest Witnessed By112
eArrest.07 - AED Use Prior to EMS Arrival113
eArrest.09 - Type of CPR Provided114
eArrest.11 - First Monitored Arrest Rhythm of the Patient116
eArrest.12 - Any Return of Spontaneous Circulation117
eArrest.14 - Date/Time of Cardiac Arrest118
eArrest.16 - Reason CPR/Resuscitation Discontinued120
eArrest.17 - Cardiac Rhythm on Arrival at Destination121
eArrest.18 - End of EMS Cardiac Arrest Event123
eArrest.20 - Who First Initiated CPR124
eArrest.21 - Who First Applied the AED126
eArrest.22 - Who First Defibrillated the Patient128

eHistory130
eHistory Grouping131
eHistory.01 - Barriers to Patient Care132
eHistory.17 - Alcohol/Drug Use Indicators133

eVitals134
eVitals Grouping135
eVitals.01 - Date/Time Vital Signs Taken136
eVitals.02 - Obtained Prior to this Unit's EMS Care138
eVitals.03 - Cardiac Rhythm / Electrocardiography (ECG)139
eVitals.04 - ECG Type141
eVitals.05 - Method of ECG Interpretation142
eVitals.06 - SBP (Systolic Blood Pressure)143
eVitals.10 - Heart Rate144
eVitals.12 - Pulse Oximetry145
eVitals.14 - Respiratory Rate146
eVitals.16 - End Tidal Carbon Dioxide (ETCO2)147
eVitals.18 - Blood Glucose Level148
eVitals.19 - Glasgow Coma Score-Eye149
eVitals.20 - Glasgow Coma Score-Verbal150
eVitals.21 - Glasgow Coma Score-Motor151
eVitals.22 - Glasgow Coma Score-Qualifier152
eVitals.26 - Level of Responsiveness (AVPU)153
eVitals.27 - Pain Scale Score154
eVitals.29 - Stroke Scale Result155
eVitals.30 - Stroke Scale Type156
eVitals.31 - Reperfusion Checklist157

eProtocols158

eProtocols Grouping159
eProtocols.01 - Protocols Used160

eMedications163
eMedications Grouping164
eMedications.01 - Date/Time Medication Administered165
eMedications.02 - Medication Administered Prior to this Unit's EMS Care167
eMedications.03 - Medication Administered169
eMedications.04 - Medication Administered Route171
eMedications.05 - Medication Dosage173
eMedications.06 - Medication Dosage Units174
eMedications.07 - Response to Medication175
eMedications.08 - Medication Complication176
eMedications.10 - Role/Type of Person Administering Medication177

eProcedures179
eProcedures Grouping180
eProcedures.01 - Date/Time Procedure Performed181
eProcedures.02 - Procedure Performed Prior to this Unit's EMS Care183
eProcedures.03 - Procedure184
eProcedures.05 - Number of Procedure Attempts185
eProcedures.06 - Procedure Successful186
eProcedures.07 - Procedure Complication187
eProcedures.08 - Response to Procedure189
eProcedures.10 - Role/Type of Person Performing the Procedure190

eDisposition192
eDisposition Grouping193
eDisposition.05 - Destination State194
eDisposition.06 - Destination County195
eDisposition.07 - Destination ZIP Code196
eDisposition.27 - Unit Disposition197
eDisposition.28 - Patient Evaluation/Care199
eDisposition.29 - Crew Disposition201
eDisposition.30 - Transport Disposition202
eDisposition.16 - EMS Transport Method204
eDisposition.17 - Transport Mode from Scene205
eDisposition.18 - Additional Transport Mode Descriptors206
eDisposition.19 - Acuity Upon EMS Release of Patient207
eDisposition.20 - Reason for Choosing Destination208
eDisposition.21 - Type of Destination209
eDisposition.22 - Hospital In-Patient Destination211
eDisposition.23 - Hospital Capability212
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation214
eDisposition.25 - Date/Time of Destination Prearrival Alert or Activation215
eDisposition.32 - Level of Care Provided per Protocol217

eOutcome218
eOutcome Grouping219
eOutcome.01 - Emergency Department Disposition220

eOutcome.02 - Hospital Disposition222
eOutcome.09 - Emergency Department Procedures224
eOutcome.19 - Date/Time Emergency Department Procedure Performed225
eOutcome.10 - Emergency Department Diagnosis227
eOutcome.11 - Date/Time of Hospital Admission228
eOutcome.12 - Hospital Procedures230
eOutcome.20 - Date/Time Hospital Procedure Performed231
eOutcome.13 - Hospital Diagnosis233
eOutcome.16 - Date/Time of Hospital Discharge234
eOutcome.18 - Date/Time of Emergency Department Admission236

dAgency237
dAgency Grouping238
dAgency.01 - EMS Agency Unique State ID239
dAgency.02 - EMS Agency Number240
dAgency.04 - EMS Agency State241
dAgency.05 - EMS Agency Service Area States242
dAgency.06 - EMS Agency Service Area County(ies)243
dAgency.07 - EMS Agency Census Tracts244
dAgency.08 - EMS Agency Service Area ZIP Codes245
dAgency.09 - Primary Type of Service246
dAgency.11 - Level of Service247
dAgency.12 - Organization Status248
dAgency.13 - Organizational Type249
dAgency.14 - EMS Agency Organizational Tax Status250
dAgency.25 - National Provider Identifier251
dAgency.26 - Fire Department ID Number252

dConfiguration253
dConfiguration Grouping254
dConfiguration.01 - State Associated with this Configuration255
dConfiguration.06 - EMS Certification Levels Permitted to Perform Each Procedure256
dConfiguration.07 - EMS Agency Procedures257
dConfiguration.08 - EMS Certification Levels Permitted to Administer Each Medication258
dConfiguration.09 - EMS Agency Medications259
dConfiguration.10 - EMS Agency Protocols260
dConfiguration.13 - Emergency Medical Dispatch (EMD) Provided to EMS Agency Service Area263
dConfiguration.16 - Crew Call Sign264

sState265
sState Grouping266
sState.01 - State267

seCustomConfiguration268
seCustomConfiguration Grouping269
seCustomConfiguration.01 - Patient Care Report Custom Data Element Title270
seCustomConfiguration.02 - Patient Care Report Custom Definition271
seCustomConfiguration.03 - Patient Care Report Custom Data Type272
seCustomConfiguration.04 - Patient Care Report Custom Data Element Recurrence273
seCustomConfiguration.05 - Patient Care Report Custom Data Element Usage274

seCustomConfiguration.06 - Patient Care Report Custom Data Element Potential Values275
seCustomConfiguration.07 - Patient Care Report Custom Data Element Potential NOT Values (NV)276
seCustomConfiguration.08 - Patient Care Report Custom Data Element Potential Pertinent Negative Values
(PN)
277
seCustomConfiguration.09 - Patient Care Report Custom Data Element Grouping ID278

sdCustomConfiguration279
sdCustomConfiguration Grouping280
sdCustomConfiguration.01 - Agency Demographic Custom Data Element Title281
sdCustomConfiguration.02 - Agency Demographic Custom Definition282
sdCustomConfiguration.03 - Agency Demographic Custom Data Type283
sdCustomConfiguration.04 - Agency Demographic Custom Data Element Recurrence284
sdCustomConfiguration.05 - Agency Demographic Custom Data Element Usage285
sdCustomConfiguration.06 - Agency Demographic Custom Data Element Potential Values286
sdCustomConfiguration.07 - Agency Demographic Custom Data Element Potential NOT Values (NV)287
sdCustomConfiguration.08 - Agency Demographic Custom Data Element Potential Pertinent Negative Values
(PN)
288
sdCustomConfiguration.09 - Agency Demographic Custom Data Element Grouping ID289

sSoftware290
sSoftware Grouping291
sSoftware.01 - Software Creator292
sSoftware.02 - Software Name293
sSoftware.03 - Software Version294

sElement295
sElement Grouping296
sElement.01 - State Collected Element297

sConfiguration298
sConfiguration Grouping299
sConfiguration.01 - State Certification/Licensure Levels300
sConfiguration.02 - EMS Certification Levels Permitted to Perform Each Procedure301
sConfiguration.03 - Procedures Permitted by the State302
sConfiguration.04 - EMS Certification Levels Permitted to Administer Each Medication303
sConfiguration.05 - Medications Permitted by the State304
sConfiguration.06 - Protocols Permitted by the State306

sAgency309
sAgency Grouping310
sAgency.01 - EMS Agency Unique State ID311
sAgency.02 - EMS Agency Number312
sAgency.03 - EMS Agency Name313

sFacility314
sFacility Grouping315
sFacility.01 - Type of Facility316
sFacility.02 - Facility Name317
sFacility.03 - Facility Location Code318
sFacility.04 - Hospital Designations319

sFacility.05 - Facility National Provider Identifier320
sFacility.06 - Facility Room, Suite, or Apartment321
sFacility.07 - Facility Street Address322
sFacility.08 - Facility City323
sFacility.09 - Facility State324
sFacility.10 - Facility ZIP Code325
sFacility.11 - Facility County326
sFacility.12 - Facility Country327
sFacility.13 - Facility GPS Location328
sFacility.14 - Facility US National Grid Coordinates329
sFacility.15 - Facility Phone Number330

 
EMSDataSet
Published: 04/03/2025www.NEMSIS.orgPage 1

 
eOutcome
1 : 1
eDisposition
1 : 1
eProcedures
1 : 1
eMedications
1 : 1
eProtocols
1 : 1
eVitals
1 : 1
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
eDispatch
1 : 1
eResponse
1 : 1
eRecord
1 : 1
U
PatientCareReport
1 : M
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
EMSDataSet
Published: 04/03/2025www.NEMSIS.orgPage 2

 
DEMDataSet
Published: 04/03/2025www.NEMSIS.orgPage 3

 
dConfiguration
1 : 1
dAgency
1 : 1
T
DemographicReport
1 : M
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
Published: 04/03/2025www.NEMSIS.orgPage 4

 
StateDataSet
Published: 04/03/2025www.NEMSIS.orgPage 5

 
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
Published: 04/03/2025www.NEMSIS.orgPage 6

 
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
Published: 04/03/2025www.NEMSIS.orgPage 7
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
Published: 04/03/2025www.NEMSIS.orgPage 8
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
Published: 04/03/2025www.NEMSIS.orgPage 9
NEMSIS Version 3.5.1.250403CP1

 
eRecord
Published: 04/03/2025www.NEMSIS.orgPage 10

 
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
Published: 04/03/2025www.NEMSIS.orgPage 11

 
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
Published: 04/03/2025www.NEMSIS.orgPage 12
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
Published: 04/03/2025www.NEMSIS.orgPage 13
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
Published: 04/03/2025www.NEMSIS.orgPage 14
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
Published: 04/03/2025www.NEMSIS.orgPage 15
NEMSIS Version 3.5.1.250403CP1

 
eResponse
Published: 04/03/2025www.NEMSIS.orgPage 16

 
N, LRSN
eResponse.24 - Additional Response Mode Descriptors
1 : M
MSN
eResponse.23 - Response Mode to Scene
1 : 1
MSN
eResponse.14 - EMS Unit Call Sign
1 : 1
MSN
eResponse.13 - EMS Vehicle (Unit) Number
1 : 1
N, LRSN
eResponse.12 - Type of Turn-Around Delay
1 : M
N, LRSN
eResponse.11 - Type of Transport Delay
1 : M
N, LRSN
eResponse.10 - Type of Scene Delay
1 : M
N, LRSN
eResponse.09 - Type of Response Delay
1 : M
N, LRSN
eResponse.08 - Type of Dispatch Delay
1 : M
MSN
eResponse.07 - Unit Transport and Equipment Capability
1 : 1
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
Published: 04/03/2025www.NEMSIS.orgPage 17

 
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
Published: 04/03/2025www.NEMSIS.orgPage 18
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
Published: 04/03/2025www.NEMSIS.orgPage 19
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
Published: 04/03/2025www.NEMSIS.orgPage 20
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
Published: 04/03/2025www.NEMSIS.orgPage 21
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e082WarningProvider's Primary Impression should be recorded when Type of Service Requested is
"Emergency Response (Primary Response Area)" and Patient Evaluation/Care is "Patient
Evaluated and Care Provided".
nemSch_e084WarningInitial Patient Acuity should be recorded when Type of Service Requested is "Emergency
Response (Primary Response Area)" and Patient Evaluation/Care is "Patient Evaluated and
Care Provided".
nemSch_e088WarningReason for Interfacility Transfer/Medical Transport should only be recorded when Type of
Service Requested is "... Transfer" or "Other Routine Medical Transport".
Published: 04/03/2025www.NEMSIS.orgPage 22

 
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
Published: 04/03/2025www.NEMSIS.orgPage 23
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 24
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 25
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 26
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 27
NEMSIS Version 3.5.1.250403CP1

 
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
nemSch_e009WarningWhen Type of Turn-Around Delay has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 28
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e016WarningWhen Type of Turn-Around Delay is "None/No Delay", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 29

 
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
Published: 04/03/2025www.NEMSIS.orgPage 30
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
Published: 04/03/2025www.NEMSIS.orgPage 31
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
Published: 04/03/2025www.NEMSIS.orgPage 32
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 33
NEMSIS Version 3.5.1.250403CP1

 
eDispatch
Published: 04/03/2025www.NEMSIS.orgPage 34

 
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
Published: 04/03/2025www.NEMSIS.orgPage 35

 
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
Published: 04/03/2025www.NEMSIS.orgPage 36
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
Published: 04/03/2025www.NEMSIS.orgPage 37

 
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
Published: 04/03/2025www.NEMSIS.orgPage 38
NEMSIS Version 3.5.1.250403CP1

 
eTimes
Published: 04/03/2025www.NEMSIS.orgPage 39

 
MSN
eTimes.13 - Unit Back in Service Date/Time
1 : 1
N, LRSN
eTimes.12 - Destination Patient Transfer of Care Date/Time
1 : 1
N, LRSN
eTimes.11 - Patient Arrived at Destination Date/Time
1 : 1
N, LRSN
eTimes.09 - Unit Left Scene Date/Time
1 : 1
N, LRSN
eTimes.07 - Arrived at Patient Date/Time
1 : 1
N, LRSN
eTimes.06 - Unit Arrived on Scene Date/Time
1 : 1
N, LRSN
eTimes.05 - Unit En Route Date/Time
1 : 1
MSN
eTimes.03 - Unit Notified by Dispatch Date/Time
1 : 1
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
Published: 04/03/2025www.NEMSIS.orgPage 40

 
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
Published: 04/03/2025www.NEMSIS.orgPage 41
NEMSIS Version 3.5.1.250403CP1

 
or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen PSAP Call Date/Time has a Not Value (Not Applicable, Not Recorded, or Not Reporting), it
should be empty.
nemSch_e017WarningUnit Notified by Dispatch Date/Time should not be earlier than PSAP Call Date/Time.
Published: 04/03/2025www.NEMSIS.orgPage 42

 
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
Published: 04/03/2025www.NEMSIS.orgPage 43
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
Published: 04/03/2025www.NEMSIS.orgPage 44

 
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
Published: 04/03/2025www.NEMSIS.orgPage 45
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
Published: 04/03/2025www.NEMSIS.orgPage 46

 
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
Published: 04/03/2025www.NEMSIS.orgPage 47
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
Published: 04/03/2025www.NEMSIS.orgPage 48

 
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
Published: 04/03/2025www.NEMSIS.orgPage 49
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
Published: 04/03/2025www.NEMSIS.orgPage 50

 
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
Published: 04/03/2025www.NEMSIS.orgPage 51
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
Published: 04/03/2025www.NEMSIS.orgPage 52

 
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
Published: 04/03/2025www.NEMSIS.orgPage 53
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
Published: 04/03/2025www.NEMSIS.orgPage 54

 
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
Published: 04/03/2025www.NEMSIS.orgPage 55
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
Published: 04/03/2025www.NEMSIS.orgPage 56

 
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
Published: 04/03/2025www.NEMSIS.orgPage 57
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
Published: 04/03/2025www.NEMSIS.orgPage 58

 
ePatient
Published: 04/03/2025www.NEMSIS.orgPage 59

 
N, L, PRSN
ePatient.25 - Sex
0 : 1
N, LRSN
ePatient.16 - Age Units
1 : 1
N, L, PRSN
ePatient.15 - Age
1 : 1
ePatient.AgeGroup
1 : 1
N, L, PRSN
ePatient.14 - Race
1 : M
N, LRSN
D
ePatient.13 - Gender (DEPRECATED)
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
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
ePatient
ePatient
Published: 04/03/2025www.NEMSIS.orgPage 60

 
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
Published: 04/03/2025www.NEMSIS.orgPage 61
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
Published: 04/03/2025www.NEMSIS.orgPage 62
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
Published: 04/03/2025www.NEMSIS.orgPage 63
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
Published: 04/03/2025www.NEMSIS.orgPage 64
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 65
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
Published: 04/03/2025www.NEMSIS.orgPage 66
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
Published: 04/03/2025www.NEMSIS.orgPage 67
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 68
NEMSIS Version 3.5.1.250403CP1

 
ePayment
Published: 04/03/2025www.NEMSIS.orgPage 69

 
N, LRSN
ePayment.50 - CMS Service Level
1 : 1
N, LRSN
ePayment.01 - Primary Method of Payment
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
ePayment
ePayment
Published: 04/03/2025www.NEMSIS.orgPage 70

 
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
Published: 04/03/2025www.NEMSIS.orgPage 71
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
Published: 04/03/2025www.NEMSIS.orgPage 72
NEMSIS Version 3.5.1.250403CP1

 
eScene
Published: 04/03/2025www.NEMSIS.orgPage 73

 
N, LRSN
eScene.21 - Incident County
1 : 1
N, LRSN
eScene.19 - Incident ZIP Code
1 : 1
N, LRSN
eScene.18 - Incident State
1 : 1
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
Published: 04/03/2025www.NEMSIS.orgPage 74

 
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
Published: 04/03/2025www.NEMSIS.orgPage 75
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
Published: 04/03/2025www.NEMSIS.orgPage 76
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
Published: 04/03/2025www.NEMSIS.orgPage 77
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
Published: 04/03/2025www.NEMSIS.orgPage 78
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
Published: 04/03/2025www.NEMSIS.orgPage 79
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
Published: 04/03/2025www.NEMSIS.orgPage 80
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
Published: 04/03/2025www.NEMSIS.orgPage 81
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
Published: 04/03/2025www.NEMSIS.orgPage 82
NEMSIS Version 3.5.1.250403CP1

 
eSituation
Published: 04/03/2025www.NEMSIS.orgPage 83

 
N, LRSN
eSituation.20 - Reason for Interfacility Transfer/Medical Transport
1 : 1
N, L, PRSN
eSituation.18 - Date/Time Last Known Well
1 : 1
N, LRSN
eSituation.13 - Initial Patient Acuity
1 : 1
N, LRSN
eSituation.12 - Provider's Secondary Impressions
1 : M
N, LRSN
eSituation.11 - Provider's Primary Impression
1 : 1
N, L, PRSN
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
Published: 04/03/2025www.NEMSIS.orgPage 84

 
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
Published: 04/03/2025www.NEMSIS.orgPage 85
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
Published: 04/03/2025www.NEMSIS.orgPage 86

 
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
Published: 04/03/2025www.NEMSIS.orgPage 87
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
Published: 04/03/2025www.NEMSIS.orgPage 88
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
Published: 04/03/2025www.NEMSIS.orgPage 89
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
Published: 04/03/2025www.NEMSIS.orgPage 90
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 91
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
Published: 04/03/2025www.NEMSIS.orgPage 92
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 93
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
Published: 04/03/2025www.NEMSIS.orgPage 94
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
Published: 04/03/2025www.NEMSIS.orgPage 95
NEMSIS Version 3.5.1.250403CP1

 
value and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
Published: 04/03/2025www.NEMSIS.orgPage 96

 
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
Published: 04/03/2025www.NEMSIS.orgPage 97
NEMSIS Version 3.5.1.250403CP1

 
eInjury
Published: 04/03/2025www.NEMSIS.orgPage 98

 
N, L, PRSN
eInjury.04 - Trauma Triage Criteria (Moderate Risk for Serious Injury)
1 : M
N, L, PRSN
eInjury.03 - Trauma Triage Criteria (High Risk for Serious Injury)
1 : M
N, LRSN
eInjury.01 - Cause of Injury
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eInjury
eInjury
Published: 04/03/2025www.NEMSIS.orgPage 99

 
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
Published: 04/03/2025www.NEMSIS.orgPage 100
NEMSIS Version 3.5.1.250403CP1

 
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
Negative (if allowed for the element), or it should be omitted (if the element is optional).
Published: 04/03/2025www.NEMSIS.orgPage 101
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 102

 
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
nemSch_e002ErrorWhen Trauma Triage Criteria (Moderate Risk for Serious Injury) has a Not Value (Not
Published: 04/03/2025www.NEMSIS.orgPage 103
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 104

 
eArrest
Published: 04/03/2025www.NEMSIS.orgPage 105

 
N, LRSN
eArrest.22 - Who First Defibrillated the Patient
1 : 1
N, LRSN
eArrest.21 - Who First Applied the AED
1 : 1
N, LRSN
eArrest.20 - Who First Initiated CPR
1 : 1
N, LRSN
eArrest.18 - End of EMS Cardiac Arrest Event
1 : 1
N, LRSN
eArrest.17 - Cardiac Rhythm on Arrival at Destination
1 : M
N, LRSN
eArrest.16 - Reason CPR/Resuscitation Discontinued
1 : 1
N, L, PRSN
eArrest.14 - Date/Time of Cardiac Arrest
1 : 1
N, LRSN
eArrest.12 - Any Return of Spontaneous Circulation
1 : M
N, LRSN
eArrest.11 - First Monitored Arrest Rhythm of the Patient
1 : 1
N, LRSN
eArrest.09 - Type of CPR Provided
1 : M
N, LRSN
eArrest.07 - AED Use Prior to EMS Arrival
1 : 1
N, LRSN
eArrest.04 - Arrest Witnessed By
1 : M
N, LRSN
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
Published: 04/03/2025www.NEMSIS.orgPage 106

 
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
Published: 04/03/2025www.NEMSIS.orgPage 107
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
Published: 04/03/2025www.NEMSIS.orgPage 108

 
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
Published: 04/03/2025www.NEMSIS.orgPage 109
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 110
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e117WarningWho First Initiated CPR should be recorded when Resuscitation Attempted By EMS is
"Attempted..." or "Initiated...".
Published: 04/03/2025www.NEMSIS.orgPage 111

 
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
Published: 04/03/2025www.NEMSIS.orgPage 112
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
Published: 04/03/2025www.NEMSIS.orgPage 113
NEMSIS Version 3.5.1.250403CP1

 
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
contains "Initiated Chest Compressions".
nemSch_e107WarningType of CPR Provided should contain "Ventilation..." or "Compressions-Intermittent with
Published: 04/03/2025www.NEMSIS.orgPage 114
NEMSIS Version 3.5.1.250403CP1

 
Ventilation" when Resuscitation Attempted By EMS contains "Attempted Ventilation".
Published: 04/03/2025www.NEMSIS.orgPage 115

 
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
Published: 04/03/2025www.NEMSIS.orgPage 116
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 117
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
Published: 04/03/2025www.NEMSIS.orgPage 118
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
Published: 04/03/2025www.NEMSIS.orgPage 119

 
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
Published: 04/03/2025www.NEMSIS.orgPage 120
NEMSIS Version 3.5.1.250403CP1

 
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
Data Element Comment
This element needs to be documented when the patient has been in cardiac or respiratory arrest and transported to a
Published: 04/03/2025www.NEMSIS.orgPage 121
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 122

 
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
Published: 04/03/2025www.NEMSIS.orgPage 123
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
Published: 04/03/2025www.NEMSIS.orgPage 124
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e001ErrorWhen Who First Initiated CPR is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Who First Initiated CPR has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e117WarningWho First Initiated CPR should be recorded when Resuscitation Attempted By EMS is
"Attempted..." or "Initiated...".
nemSch_e118WarningWho First Initiated CPR should only be recorded when Cardiac Arrest is "Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 125

 
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
Published: 04/03/2025www.NEMSIS.orgPage 126
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e001ErrorWhen Who First Applied the AED is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Who First Applied the AED has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e119WarningWho First Applied the AED should be recorded when AED Use Prior to EMS Arrival is "Yes...".
nemSch_e120WarningWho First Applied the AED should only be recorded when Cardiac Arrest is "Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 127

 
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
Published: 04/03/2025www.NEMSIS.orgPage 128
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e001ErrorWhen Who First Defibrillated the Patient is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed
for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Who First Defibrillated the Patient has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e122WarningWho First Defibrillated the Patient should be recorded when AED Use Prior to EMS Arrival is
"Yes, With Defibrillation".
nemSch_e123WarningWho First Defibrillated the Patient should only be recorded when Cardiac Arrest is "Yes...".
Published: 04/03/2025www.NEMSIS.orgPage 129

 
eHistory
Published: 04/03/2025www.NEMSIS.orgPage 130

 
N, L, PRSN
eHistory.17 - Alcohol/Drug Use Indicators
1 : M
N, LRSN
eHistory.01 - Barriers to Patient Care
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eHistory
eHistory
Published: 04/03/2025www.NEMSIS.orgPage 131

 
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
Published: 04/03/2025www.NEMSIS.orgPage 132
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 133
NEMSIS Version 3.5.1.250403CP1

 
eVitals
Published: 04/03/2025www.NEMSIS.orgPage 134

 
N, L, PRSN
eVitals.31 - Reperfusion Checklist
1 : 1
N, LRSN
eVitals.30 - Stroke Scale Type
1 : 1
N, L, PRSN
eVitals.29 - Stroke Scale Result
1 : 1
eVitals.StrokeScaleGroup
1 : 1
N, L, PRSN
eVitals.27 - Pain Scale Score
1 : 1
eVitals.PainScaleGroup
1 : 1
N, LRSN
eVitals.26 - Level of Responsiveness (AVPU)
1 : 1
N, LRSN
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
N, L, PRSN
eVitals.16 - End Tidal Carbon Dioxide (ETCO2)
1 : 1
N, L, PRSN
eVitals.14 - Respiratory Rate
1 : 1
N, L, PRSN
eVitals.12 - Pulse Oximetry
1 : 1
N, L, PRSN
eVitals.10 - Heart Rate
1 : 1
eVitals.HeartRateGroup
1 : 1
N, L, PRSN
eVitals.06 - SBP (Systolic Blood Pressure)
1 : 1
eVitals.BloodPressureGroup
1 : 1
N, LRSN
eVitals.05 - Method of ECG Interpretation
1 : M
N, LRSN
eVitals.04 - ECG Type
1 : 1
N, L, PRSN
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
eVitals.VitalGroup
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eVitals
eVitals
Published: 04/03/2025www.NEMSIS.orgPage 135

 
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
Published: 04/03/2025www.NEMSIS.orgPage 136
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
Published: 04/03/2025www.NEMSIS.orgPage 137

 
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
Published: 04/03/2025www.NEMSIS.orgPage 138
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 139
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 140

 
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
Published: 04/03/2025www.NEMSIS.orgPage 141
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 142
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
Published: 04/03/2025www.NEMSIS.orgPage 143
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
Published: 04/03/2025www.NEMSIS.orgPage 144
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
Published: 04/03/2025www.NEMSIS.orgPage 145
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
Published: 04/03/2025www.NEMSIS.orgPage 146
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
Published: 04/03/2025www.NEMSIS.orgPage 147
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
Published: 04/03/2025www.NEMSIS.orgPage 148
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
Published: 04/03/2025www.NEMSIS.orgPage 149
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
Published: 04/03/2025www.NEMSIS.orgPage 150
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
Published: 04/03/2025www.NEMSIS.orgPage 151
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 152
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
Published: 04/03/2025www.NEMSIS.orgPage 153
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
Published: 04/03/2025www.NEMSIS.orgPage 154
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
Published: 04/03/2025www.NEMSIS.orgPage 155
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
Published: 04/03/2025www.NEMSIS.orgPage 156
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
Published: 04/03/2025www.NEMSIS.orgPage 157
NEMSIS Version 3.5.1.250403CP1

 
eProtocols
Published: 04/03/2025www.NEMSIS.orgPage 158

 
N, LRSN
eProtocols.01 - Protocols Used
1 : 1
eProtocols.ProtocolGroup
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eProtocols
eProtocols
Published: 04/03/2025www.NEMSIS.orgPage 159

 
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
Published: 04/03/2025www.NEMSIS.orgPage 160
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
Published: 04/03/2025www.NEMSIS.orgPage 161

 
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
Published: 04/03/2025www.NEMSIS.orgPage 162

 
eMedications
Published: 04/03/2025www.NEMSIS.orgPage 163

 
N, LRSN
eMedications.10 - Role/Type of Person Administering Medication
1 : 1
N, LRSN
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
eMedications.MedicationGroup
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eMedications
eMedications
Published: 04/03/2025www.NEMSIS.orgPage 164

 
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
Published: 04/03/2025www.NEMSIS.orgPage 165
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
Published: 04/03/2025www.NEMSIS.orgPage 166

 
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
Published: 04/03/2025www.NEMSIS.orgPage 167
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e150WarningRole/Type of Person Administering Medication should be recorded, unless Medication
Administered Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 168

 
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
Published: 04/03/2025www.NEMSIS.orgPage 169
NEMSIS Version 3.5.1.250403CP1

 
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e142WarningMedication Administered should be recorded when a medication is administered.
nemSch_e143ErrorMedication Administered should be a code of between 2 and 7 digits when Code Type is
"RxNorm".
nemSch_e144ErrorMedication Administered should be a SNOMED code specifically allowed in the data dictionary
when Code Type is "SNOMED".
nemSch_e145ErrorMedication Administered should be an RxNorm code of between 2 and 7 digits or a SNOMED
code specifically allowed in the data dictionary.
Published: 04/03/2025www.NEMSIS.orgPage 170

 
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
Published: 04/03/2025www.NEMSIS.orgPage 171
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
Published: 04/03/2025www.NEMSIS.orgPage 172

 
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
Published: 04/03/2025www.NEMSIS.orgPage 173
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
Published: 04/03/2025www.NEMSIS.orgPage 174
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
Published: 04/03/2025www.NEMSIS.orgPage 175
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 176
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
Published: 04/03/2025www.NEMSIS.orgPage 177
NEMSIS Version 3.5.1.250403CP1

 
Published: 04/03/2025www.NEMSIS.orgPage 178

 
eProcedures
Published: 04/03/2025www.NEMSIS.orgPage 179

 
N, LRSN
eProcedures.10 - Role/Type of Person Performing the Procedure
1 : 1
N, LRSN
eProcedures.08 - Response to Procedure
1 : 1
N, LRSN
eProcedures.07 - Procedure Complication
1 : M
N, LRSN
eProcedures.06 - Procedure Successful
1 : 1
N, LRSN
eProcedures.05 - Number of Procedure Attempts
1 : 1
N, L, PRSN
eProcedures.03 - Procedure
1 : 1
N, LRSN
eProcedures.02 - Procedure Performed Prior to this Unit's EMS Care
1 : 1
N, LRSN
eProcedures.01 - Date/Time Procedure Performed
1 : 1
eProcedures.ProcedureGroup
1 : M
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eProcedures
eProcedures
Published: 04/03/2025www.NEMSIS.orgPage 180

 
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
Published: 04/03/2025www.NEMSIS.orgPage 181
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
Published: 04/03/2025www.NEMSIS.orgPage 182

 
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
Published: 04/03/2025www.NEMSIS.orgPage 183
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
Published: 04/03/2025www.NEMSIS.orgPage 184
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
Published: 04/03/2025www.NEMSIS.orgPage 185
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
Published: 04/03/2025www.NEMSIS.orgPage 186
NEMSIS Version 3.5.1.250403CP1

 
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
nemSch_e158WarningWhen Procedure Complication is "None", no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 187
NEMSIS Version 3.5.1.250403CP1

 
Published: 04/03/2025www.NEMSIS.orgPage 188

 
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
Published: 04/03/2025www.NEMSIS.orgPage 189
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
Published: 04/03/2025www.NEMSIS.orgPage 190
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e159WarningRole/Type of Person Performing the Procedure should be recorded, unless Procedure
Performed Prior to this Unit's EMS Care is "Yes".
Published: 04/03/2025www.NEMSIS.orgPage 191

 
eDisposition
Published: 04/03/2025www.NEMSIS.orgPage 192

 
N, LRSN
eDisposition.32 - Level of Care Provided per Protocol
1 : 1
N, LRSN
eDisposition.25 - Date/Time of Destination Prearrival Alert or Activation
1 : 1
N, LRSN
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation
1 : 1
eDisposition.HospitalTeamActivationGroup
1 : M
N, LRSN
eDisposition.23 - Hospital Capability
1 : M
N, LRSN
eDisposition.22 - Hospital In-Patient Destination
1 : 1
N, LRSN
eDisposition.21 - Type of Destination
1 : 1
N, LRSN
eDisposition.20 - Reason for Choosing Destination
1 : M
N, LRSN
eDisposition.19 - Acuity Upon EMS Release of Patient
1 : 1
N, LRSN
eDisposition.18 - Additional Transport Mode Descriptors
1 : M
N, LRSN
eDisposition.17 - Transport Mode from Scene
1 : 1
N, LRSN
eDisposition.16 - EMS Transport Method
1 : 1
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
N, LRSN
eDisposition.07 - Destination ZIP Code
1 : 1
N, LRSN
eDisposition.06 - Destination County
1 : 1
N, LRSN
eDisposition.05 - Destination State
1 : 1
eDisposition.DestinationGroup
1 : 1
Legend
Dataset Level:NNationalSStateDDeprecated
Usage:M = Mandatory ,  = Required ,  = Recommended, or  = OptionalREO
Attributes:N = Not Values,  = Pertinent Negatives ,  = Nillable,  = Correlation ID, and/or  = UUIDPLCU
I = Custom Element ID,  = Time Stamp,  = Procedure Group Correlation IDTG
eDisposition
eDisposition
Published: 04/03/2025www.NEMSIS.orgPage 193

 
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
Published: 04/03/2025www.NEMSIS.orgPage 194
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
Published: 04/03/2025www.NEMSIS.orgPage 195
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
Published: 04/03/2025www.NEMSIS.orgPage 196
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
Published: 04/03/2025www.NEMSIS.orgPage 197
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e181WarningUnit Disposition should be "Patient Contact Made" when Crew Disposition contains "... Primary
Care..." or "Provided Care Supporting Primary EMS Crew".
nemSch_e182WarningUnit Disposition should be "Patient Contact Made" when Transport Disposition is a value other
than "Non-Patient Transport (Not Otherwise Listed)" or "No Transport".
nemSch_e183WarningPatient Evaluation/Care should be recorded when Unit Disposition is "Patient Contact Made".
nemSch_e185WarningCrew Disposition should be recorded when Unit Disposition is "Patient Contact Made".
nemSch_e186WarningTransport Disposition should be recorded when Unit Disposition is "Patient Contact Made".
Published: 04/03/2025www.NEMSIS.orgPage 198

 
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
Published: 04/03/2025www.NEMSIS.orgPage 199
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
Published: 04/03/2025www.NEMSIS.orgPage 200

 
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
Published: 04/03/2025www.NEMSIS.orgPage 201
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
Published: 04/03/2025www.NEMSIS.orgPage 202
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
Published: 04/03/2025www.NEMSIS.orgPage 203

 
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
Published: 04/03/2025www.NEMSIS.orgPage 204
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
Published: 04/03/2025www.NEMSIS.orgPage 205
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 206
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
Published: 04/03/2025www.NEMSIS.orgPage 207
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 208
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
Published: 04/03/2025www.NEMSIS.orgPage 209
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e172WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Stroke Scale Result is "Positive".
nemSch_e173WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".
Published: 04/03/2025www.NEMSIS.orgPage 210

 
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
Published: 04/03/2025www.NEMSIS.orgPage 211
NEMSIS Version 3.5.1.250403CP1

 
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
should be empty.
nemSch_e009WarningWhen Hospital Capability has a Not Value, no other value should be recorded.
Published: 04/03/2025www.NEMSIS.orgPage 212
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e171WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Arrest is "Yes...".
nemSch_e172WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Stroke Scale Result is "Positive".
nemSch_e173WarningHospital Capability should be recorded when Type of Destination is "Hospital..." or "Freestanding
Emergency Department" and Cardiac Rhythm / Electrocardiography (ECG) is "STEMI...".
Published: 04/03/2025www.NEMSIS.orgPage 213

 
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
Published: 04/03/2025www.NEMSIS.orgPage 214
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
Published: 04/03/2025www.NEMSIS.orgPage 215
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
Published: 04/03/2025www.NEMSIS.orgPage 216

 
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
Published: 04/03/2025www.NEMSIS.orgPage 217
NEMSIS Version 3.5.1.250403CP1

 
eOutcome
Published: 04/03/2025www.NEMSIS.orgPage 218

 
N, LRSN
eOutcome.18 - Date/Time of Emergency Department Admission
1 : 1
N, LRSN
eOutcome.16 - Date/Time of Hospital Discharge
1 : 1
N, LRSN
eOutcome.13 - Hospital Diagnosis
1 : M
N, LRSN
eOutcome.20 - Date/Time Hospital Procedure Performed
1 : 1
N, LRSN
eOutcome.12 - Hospital Procedures
1 : 1
eOutcome.HospitalProceduresGroup
1 : M
N, LRSN
eOutcome.11 - Date/Time of Hospital Admission
1 : 1
N, LRSN
eOutcome.10 - Emergency Department Diagnosis
1 : M
N, LRSN
eOutcome.19 - Date/Time Emergency Department Procedure Performed
1 : 1
N, LRSN
eOutcome.09 - Emergency Department Procedures
1 : 1
eOutcome.EmergencyDepartmentProceduresGroup
1 : M
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
Published: 04/03/2025www.NEMSIS.orgPage 219

 
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
Published: 04/03/2025www.NEMSIS.orgPage 220
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Emergency Department Disposition has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 221

 
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
Published: 04/03/2025www.NEMSIS.orgPage 222
NEMSIS Version 3.5.1.250403CP1

 
should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 223

 
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
Published: 04/03/2025www.NEMSIS.orgPage 224
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
Published: 04/03/2025www.NEMSIS.orgPage 225
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time Emergency Department Procedure Performed has a Not Value (Not Applicable,
Not Recorded, or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 226

 
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
Published: 04/03/2025www.NEMSIS.orgPage 227
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
Published: 04/03/2025www.NEMSIS.orgPage 228
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time of Hospital Admission has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 229

 
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
Published: 04/03/2025www.NEMSIS.orgPage 230
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
Published: 04/03/2025www.NEMSIS.orgPage 231
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time Hospital Procedure Performed has a Not Value (Not Applicable, Not Recorded,
or Not Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 232

 
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
Published: 04/03/2025www.NEMSIS.orgPage 233
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
Published: 04/03/2025www.NEMSIS.orgPage 234
NEMSIS Version 3.5.1.250403CP1

 
nemSch_e002ErrorWhen Date/Time of Hospital Discharge has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
Published: 04/03/2025www.NEMSIS.orgPage 235

 
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
Published: 04/03/2025www.NEMSIS.orgPage 236
NEMSIS Version 3.5.1.250403CP1

 
dAgency
Published: 04/03/2025www.NEMSIS.orgPage 237

 
N, LRSN
dAgency.26 - Fire Department ID Number
1 : M
N, LRSN
dAgency.25 - National Provider Identifier
1 : M
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
MSN
dAgency.09 - Primary Type of Service
1 : 1
N, LRSN
dAgency.08 - EMS Agency Service Area ZIP Codes
1 : M
N, LRSN
dAgency.07 - EMS Agency Census Tracts
1 : M
MSN
dAgency.06 - EMS Agency Service Area County(ies)
1 : M
MSN
dAgency.05 - EMS Agency Service Area States
1 : 1
U
dAgency.AgencyServiceGroup
1 : M
MSN
dAgency.04 - EMS Agency State
1 : 1
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
Rule IDLevelMessage
nemSch_d005ErrorUUID must be universally unique.
Published: 04/03/2025www.NEMSIS.orgPage 238

 
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
Published: 04/03/2025www.NEMSIS.orgPage 239
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
Published: 04/03/2025www.NEMSIS.orgPage 240
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
Published: 04/03/2025www.NEMSIS.orgPage 241
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
Published: 04/03/2025www.NEMSIS.orgPage 242
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 243
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 244
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 245
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
Published: 04/03/2025www.NEMSIS.orgPage 246
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
Published: 04/03/2025www.NEMSIS.orgPage 247
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
Published: 04/03/2025www.NEMSIS.orgPage 248
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
Published: 04/03/2025www.NEMSIS.orgPage 249
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
Published: 04/03/2025www.NEMSIS.orgPage 250
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 251
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 252
NEMSIS Version 3.5.1.250403CP1

 
dConfiguration
Published: 04/03/2025www.NEMSIS.orgPage 253

 
MSN
dConfiguration.16 - Crew Call Sign
1 : M
MSN
dConfiguration.13 - Emergency Medical Dispatch (EMD) Provided to EMS Agency
Service Area
1 : 1
MSN
dConfiguration.10 - EMS Agency Protocols
1 : M
MSN
dConfiguration.09 - EMS Agency Medications
1 : M
MSN
dConfiguration.08 - EMS Certification Levels Permitted to Administer Each Medication
1 : 1
U
dConfiguration.MedicationGroup
1 : M
MSN
dConfiguration.07 - EMS Agency Procedures
1 : M
MSN
dConfiguration.06 - EMS Certification Levels Permitted to Perform Each Procedure
1 : 1
U
dConfiguration.ProcedureGroup
1 : M
MSN
dConfiguration.01 - State Associated with this Configuration
1 : 1
U
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
Published: 04/03/2025www.NEMSIS.orgPage 254

 
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
Published: 04/03/2025www.NEMSIS.orgPage 255
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
Published: 04/03/2025www.NEMSIS.orgPage 256
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 257
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
Published: 04/03/2025www.NEMSIS.orgPage 258
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 259
NEMSIS Version 3.5.1.250403CP1

 
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
9914085Injury-Burns-Thermal
9914087Injury-Cardiac Arrest
9914089Injury-Crush Syndrome
9914091Injury-Diving Emergencies
Published: 04/03/2025www.NEMSIS.orgPage 260
NEMSIS Version 3.5.1.250403CP1

 
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
9914223Medical-Respiratory Distress-Croup
9914225Medical-Stimulant Poisoning/Overdose
Data Element Comment
Published: 04/03/2025www.NEMSIS.orgPage 261

 
This is associated with the EMS Agency Number (dAgency.02) since each EMS Agency Number may have different
capabilities. 
State and local entities can add additional protocols to the list but the additional protocols must map to these uniform codes. 
The list is defined by the NASEMSO State Medical Directors.
Published: 04/03/2025www.NEMSIS.orgPage 262

 
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
Published: 04/03/2025www.NEMSIS.orgPage 263
NEMSIS Version 3.5.1.250403CP1

 
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
Published: 04/03/2025www.NEMSIS.orgPage 264
NEMSIS Version 3.5.1.250403CP1

 
sState
Published: 04/03/2025www.NEMSIS.orgPage 265

 
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
Published: 04/03/2025www.NEMSIS.orgPage 266

 
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
Published: 04/03/2025www.NEMSIS.orgPage 267
NEMSIS Version 3.5.1.250403CP1

 
seCustomConfiguratio
n
Published: 04/03/2025www.NEMSIS.orgPage 268

 
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
Published: 04/03/2025www.NEMSIS.orgPage 269

 
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
Published: 04/03/2025www.NEMSIS.orgPage 270
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
Published: 04/03/2025www.NEMSIS.orgPage 271
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
Published: 04/03/2025www.NEMSIS.orgPage 272
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
Published: 04/03/2025www.NEMSIS.orgPage 273
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
Published: 04/03/2025www.NEMSIS.orgPage 274
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
Published: 04/03/2025www.NEMSIS.orgPage 275
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
Published: 04/03/2025www.NEMSIS.orgPage 276
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
Published: 04/03/2025www.NEMSIS.orgPage 277
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
Published: 04/03/2025www.NEMSIS.orgPage 278
NEMSIS Version 3.5.1.250403CP1

 
sdCustomConfiguratio
n
Published: 04/03/2025www.NEMSIS.orgPage 279

 
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
Published: 04/03/2025www.NEMSIS.orgPage 280

 
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
Published: 04/03/2025www.NEMSIS.orgPage 281
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
Published: 04/03/2025www.NEMSIS.orgPage 282
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
Published: 04/03/2025www.NEMSIS.orgPage 283
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
Published: 04/03/2025www.NEMSIS.orgPage 284
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
Published: 04/03/2025www.NEMSIS.orgPage 285
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
Published: 04/03/2025www.NEMSIS.orgPage 286
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
Published: 04/03/2025www.NEMSIS.orgPage 287
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
Published: 04/03/2025www.NEMSIS.orgPage 288
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
Published: 04/03/2025www.NEMSIS.orgPage 289
NEMSIS Version 3.5.1.250403CP1

 
sSoftware
Published: 04/03/2025www.NEMSIS.orgPage 290

 
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
Published: 04/03/2025www.NEMSIS.orgPage 291

 
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
Published: 04/03/2025www.NEMSIS.orgPage 292
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
Published: 04/03/2025www.NEMSIS.orgPage 293
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
Published: 04/03/2025www.NEMSIS.orgPage 294
NEMSIS Version 3.5.1.250403CP1

 
sElement
Published: 04/03/2025www.NEMSIS.orgPage 295

 
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
Published: 04/03/2025www.NEMSIS.orgPage 296

 
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
Published: 04/03/2025www.NEMSIS.orgPage 297
NEMSIS Version 3.5.1.250403CP1

 
sConfiguration
Published: 04/03/2025www.NEMSIS.orgPage 298

 
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
Published: 04/03/2025www.NEMSIS.orgPage 299

 
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
Published: 04/03/2025www.NEMSIS.orgPage 300
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
Published: 04/03/2025www.NEMSIS.orgPage 301
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
Published: 04/03/2025www.NEMSIS.orgPage 302
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
Published: 04/03/2025www.NEMSIS.orgPage 303
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
Published: 04/03/2025www.NEMSIS.orgPage 304
NEMSIS Version 3.5.1.250403CP1

 
nemSch_s022WarningMedications Permitted by the State should be unique (the same medication should not be listed
more than once for a particular level).
nemSch_s023ErrorMedications Permitted by the State should be a code of between 2 and 7 digits when Code Type
is "RxNorm".
nemSch_s024ErrorMedications Permitted by the State should be a SNOMED code specifically allowed in the data
dictionary when Code Type is "SNOMED".
nemSch_s025ErrorMedications Permitted by the State should be an RxNorm code of between 2 and 7 digits or a
SNOMED code specifically allowed in the data dictionary.
Published: 04/03/2025www.NEMSIS.orgPage 305

 
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
Published: 04/03/2025www.NEMSIS.orgPage 306
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
Published: 04/03/2025www.NEMSIS.orgPage 307

 
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
Published: 04/03/2025www.NEMSIS.orgPage 308

 
sAgency
Published: 04/03/2025www.NEMSIS.orgPage 309

 
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
Published: 04/03/2025www.NEMSIS.orgPage 310

 
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
Published: 04/03/2025www.NEMSIS.orgPage 311
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
Published: 04/03/2025www.NEMSIS.orgPage 312
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
Published: 04/03/2025www.NEMSIS.orgPage 313
NEMSIS Version 3.5.1.250403CP1

 
sFacility
Published: 04/03/2025www.NEMSIS.orgPage 314

 
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
Published: 04/03/2025www.NEMSIS.orgPage 315

 
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
Published: 04/03/2025www.NEMSIS.orgPage 316
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
Published: 04/03/2025www.NEMSIS.orgPage 317
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
Published: 04/03/2025www.NEMSIS.orgPage 318
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
Published: 04/03/2025www.NEMSIS.orgPage 319
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
Published: 04/03/2025www.NEMSIS.orgPage 320
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
Published: 04/03/2025www.NEMSIS.orgPage 321
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
Published: 04/03/2025www.NEMSIS.orgPage 322
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
Published: 04/03/2025www.NEMSIS.orgPage 323
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
Published: 04/03/2025www.NEMSIS.orgPage 324
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
Published: 04/03/2025www.NEMSIS.orgPage 325
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
Published: 04/03/2025www.NEMSIS.orgPage 326
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
Published: 04/03/2025www.NEMSIS.orgPage 327
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
Published: 04/03/2025www.NEMSIS.orgPage 328
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
Published: 04/03/2025www.NEMSIS.orgPage 329
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
Published: 04/03/2025www.NEMSIS.orgPage 330
NEMSIS Version 3.5.1.250403CP1

Index

DEMDataSet3
DEMDataSet Grouping4

EMSDataSet1
EMSDataSet Grouping2

StateDataSet5
StateDataSet Grouping6

dAgency237
dAgency Grouping238
dAgency.01 - EMS Agency Unique State ID7
dAgency.01 - EMS Agency Unique State ID239
dAgency.02 - EMS Agency Number8
dAgency.02 - EMS Agency Number240
dAgency.04 - EMS Agency State9
dAgency.04 - EMS Agency State241
dAgency.05 - EMS Agency Service Area States242
dAgency.06 - EMS Agency Service Area County(ies)243
dAgency.07 - EMS Agency Census Tracts244
dAgency.08 - EMS Agency Service Area ZIP Codes245
dAgency.09 - Primary Type of Service246
dAgency.11 - Level of Service247
dAgency.12 - Organization Status248
dAgency.13 - Organizational Type249
dAgency.14 - EMS Agency Organizational Tax Status250
dAgency.25 - National Provider Identifier251
dAgency.26 - Fire Department ID Number252

dConfiguration253
dConfiguration Grouping254
dConfiguration.01 - State Associated with this Configuration255
dConfiguration.06 - EMS Certification Levels Permitted to Perform Each Procedure256
dConfiguration.07 - EMS Agency Procedures257
dConfiguration.08 - EMS Certification Levels Permitted to Administer Each Medication258
dConfiguration.09 - EMS Agency Medications259
dConfiguration.10 - EMS Agency Protocols260
dConfiguration.13 - Emergency Medical Dispatch (EMD) Provided to EMS Agency Service Area263
dConfiguration.16 - Crew Call Sign264

eArrest105
eArrest Grouping106
eArrest.01 - Cardiac Arrest107
eArrest.02 - Cardiac Arrest Etiology109
eArrest.03 - Resuscitation Attempted By EMS110
eArrest.04 - Arrest Witnessed By112
eArrest.07 - AED Use Prior to EMS Arrival113

eArrest.09 - Type of CPR Provided114
eArrest.11 - First Monitored Arrest Rhythm of the Patient116
eArrest.12 - Any Return of Spontaneous Circulation117
eArrest.14 - Date/Time of Cardiac Arrest118
eArrest.16 - Reason CPR/Resuscitation Discontinued120
eArrest.17 - Cardiac Rhythm on Arrival at Destination121
eArrest.18 - End of EMS Cardiac Arrest Event123
eArrest.20 - Who First Initiated CPR124
eArrest.21 - Who First Applied the AED126
eArrest.22 - Who First Defibrillated the Patient128

eDispatch34
eDispatch Grouping35
eDispatch.01 - Dispatch Reason36
eDispatch.02 - EMD Performed38

eDisposition192
eDisposition Grouping193
eDisposition.05 - Destination State194
eDisposition.06 - Destination County195
eDisposition.07 - Destination ZIP Code196
eDisposition.16 - EMS Transport Method204
eDisposition.17 - Transport Mode from Scene205
eDisposition.18 - Additional Transport Mode Descriptors206
eDisposition.19 - Acuity Upon EMS Release of Patient207
eDisposition.20 - Reason for Choosing Destination208
eDisposition.21 - Type of Destination209
eDisposition.22 - Hospital In-Patient Destination211
eDisposition.23 - Hospital Capability212
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation214
eDisposition.25 - Date/Time of Destination Prearrival Alert or Activation215
eDisposition.27 - Unit Disposition197
eDisposition.28 - Patient Evaluation/Care199
eDisposition.29 - Crew Disposition201
eDisposition.30 - Transport Disposition202
eDisposition.32 - Level of Care Provided per Protocol217

eHistory130
eHistory Grouping131
eHistory.01 - Barriers to Patient Care132
eHistory.17 - Alcohol/Drug Use Indicators133

eInjury98
eInjury Grouping99
eInjury.01 - Cause of Injury100
eInjury.03 - Trauma Triage Criteria (High Risk for Serious Injury)101
eInjury.04 - Trauma Triage Criteria (Moderate Risk for Serious Injury)103

eMedications163
eMedications Grouping164

eMedications.01 - Date/Time Medication Administered165
eMedications.02 - Medication Administered Prior to this Unit's EMS Care167
eMedications.03 - Medication Administered169
eMedications.04 - Medication Administered Route171
eMedications.05 - Medication Dosage173
eMedications.06 - Medication Dosage Units174
eMedications.07 - Response to Medication175
eMedications.08 - Medication Complication176
eMedications.10 - Role/Type of Person Administering Medication177

eOutcome218
eOutcome Grouping219
eOutcome.01 - Emergency Department Disposition220
eOutcome.02 - Hospital Disposition222
eOutcome.09 - Emergency Department Procedures224
eOutcome.10 - Emergency Department Diagnosis227
eOutcome.11 - Date/Time of Hospital Admission228
eOutcome.12 - Hospital Procedures230
eOutcome.13 - Hospital Diagnosis233
eOutcome.16 - Date/Time of Hospital Discharge234
eOutcome.18 - Date/Time of Emergency Department Admission236
eOutcome.19 - Date/Time Emergency Department Procedure Performed225
eOutcome.20 - Date/Time Hospital Procedure Performed231

ePatient59
ePatient Grouping60
ePatient.07 - Patient's Home County61
ePatient.08 - Patient's Home State62
ePatient.09 - Patient's Home ZIP Code63
ePatient.13 - Gender (DEPRECATED)64
ePatient.14 - Race65
ePatient.15 - Age66
ePatient.16 - Age Units67
ePatient.25 - Sex68

ePayment69
ePayment Grouping70
ePayment.01 - Primary Method of Payment71
ePayment.50 - CMS Service Level72

eProcedures179
eProcedures Grouping180
eProcedures.01 - Date/Time Procedure Performed181
eProcedures.02 - Procedure Performed Prior to this Unit's EMS Care183
eProcedures.03 - Procedure184
eProcedures.05 - Number of Procedure Attempts185
eProcedures.06 - Procedure Successful186
eProcedures.07 - Procedure Complication187
eProcedures.08 - Response to Procedure189
eProcedures.10 - Role/Type of Person Performing the Procedure190


eProtocols158
eProtocols Grouping159
eProtocols.01 - Protocols Used160

eRecord10
eRecord Grouping11
eRecord.01 - Patient Care Report Number12
eRecord.02 - Software Creator13
eRecord.03 - Software Name14
eRecord.04 - Software Version15

eResponse16
eResponse Grouping17
eResponse.01 - EMS Agency Number18
eResponse.03 - Incident Number19
eResponse.04 - EMS Response Number20
eResponse.05 - Type of Service Requested21
eResponse.07 - Unit Transport and Equipment Capability23
eResponse.08 - Type of Dispatch Delay24
eResponse.09 - Type of Response Delay25
eResponse.10 - Type of Scene Delay26
eResponse.11 - Type of Transport Delay27
eResponse.12 - Type of Turn-Around Delay28
eResponse.13 - EMS Vehicle (Unit) Number30
eResponse.14 - EMS Unit Call Sign31
eResponse.23 - Response Mode to Scene32
eResponse.24 - Additional Response Mode Descriptors33

eScene73
eScene Grouping74
eScene.01 - First EMS Unit on Scene75
eScene.06 - Number of Patients at Scene76
eScene.07 - Mass Casualty Incident77
eScene.08 - Triage Classification for MCI Patient78
eScene.09 - Incident Location Type79
eScene.18 - Incident State80
eScene.19 - Incident ZIP Code81
eScene.21 - Incident County82

eSituation83
eSituation Grouping84
eSituation.01 - Date/Time of Symptom Onset85
eSituation.02 - Possible Injury87
eSituation.07 - Chief Complaint Anatomic Location88
eSituation.08 - Chief Complaint Organ System89
eSituation.09 - Primary Symptom90
eSituation.10 - Other Associated Symptoms91
eSituation.11 - Provider's Primary Impression92
eSituation.12 - Provider's Secondary Impressions93

eSituation.13 - Initial Patient Acuity94
eSituation.18 - Date/Time Last Known Well95
eSituation.20 - Reason for Interfacility Transfer/Medical Transport97

eTimes39
eTimes Grouping40
eTimes.01 - PSAP Call Date/Time41
eTimes.03 - Unit Notified by Dispatch Date/Time43
eTimes.05 - Unit En Route Date/Time45
eTimes.06 - Unit Arrived on Scene Date/Time47
eTimes.07 - Arrived at Patient Date/Time49
eTimes.09 - Unit Left Scene Date/Time51
eTimes.11 - Patient Arrived at Destination Date/Time53
eTimes.12 - Destination Patient Transfer of Care Date/Time55
eTimes.13 - Unit Back in Service Date/Time57

eVitals134
eVitals Grouping135
eVitals.01 - Date/Time Vital Signs Taken136
eVitals.02 - Obtained Prior to this Unit's EMS Care138
eVitals.03 - Cardiac Rhythm / Electrocardiography (ECG)139
eVitals.04 - ECG Type141
eVitals.05 - Method of ECG Interpretation142
eVitals.06 - SBP (Systolic Blood Pressure)143
eVitals.10 - Heart Rate144
eVitals.12 - Pulse Oximetry145
eVitals.14 - Respiratory Rate146
eVitals.16 - End Tidal Carbon Dioxide (ETCO2)147
eVitals.18 - Blood Glucose Level148
eVitals.19 - Glasgow Coma Score-Eye149
eVitals.20 - Glasgow Coma Score-Verbal150
eVitals.21 - Glasgow Coma Score-Motor151
eVitals.22 - Glasgow Coma Score-Qualifier152
eVitals.26 - Level of Responsiveness (AVPU)153
eVitals.27 - Pain Scale Score154
eVitals.29 - Stroke Scale Result155
eVitals.30 - Stroke Scale Type156
eVitals.31 - Reperfusion Checklist157

sAgency309
sAgency Grouping310
sAgency.01 - EMS Agency Unique State ID311
sAgency.02 - EMS Agency Number312
sAgency.03 - EMS Agency Name313

sConfiguration298
sConfiguration Grouping299
sConfiguration.01 - State Certification/Licensure Levels300
sConfiguration.02 - EMS Certification Levels Permitted to Perform Each Procedure301
sConfiguration.03 - Procedures Permitted by the State302

sConfiguration.04 - EMS Certification Levels Permitted to Administer Each Medication303
sConfiguration.05 - Medications Permitted by the State304
sConfiguration.06 - Protocols Permitted by the State306

sElement295
sElement Grouping296
sElement.01 - State Collected Element297

sFacility314
sFacility Grouping315
sFacility.01 - Type of Facility316
sFacility.02 - Facility Name317
sFacility.03 - Facility Location Code318
sFacility.04 - Hospital Designations319
sFacility.05 - Facility National Provider Identifier320
sFacility.06 - Facility Room, Suite, or Apartment321
sFacility.07 - Facility Street Address322
sFacility.08 - Facility City323
sFacility.09 - Facility State324
sFacility.10 - Facility ZIP Code325
sFacility.11 - Facility County326
sFacility.12 - Facility Country327
sFacility.13 - Facility GPS Location328
sFacility.14 - Facility US National Grid Coordinates329
sFacility.15 - Facility Phone Number330

sSoftware290
sSoftware Grouping291
sSoftware.01 - Software Creator292
sSoftware.02 - Software Name293
sSoftware.03 - Software Version294

sState265
sState Grouping266
sState.01 - State267

sdCustomConfiguration279
sdCustomConfiguration Grouping280
sdCustomConfiguration.01 - Agency Demographic Custom Data Element Title281
sdCustomConfiguration.02 - Agency Demographic Custom Definition282
sdCustomConfiguration.03 - Agency Demographic Custom Data Type283
sdCustomConfiguration.04 - Agency Demographic Custom Data Element Recurrence284
sdCustomConfiguration.05 - Agency Demographic Custom Data Element Usage285
sdCustomConfiguration.06 - Agency Demographic Custom Data Element Potential Values286
sdCustomConfiguration.07 - Agency Demographic Custom Data Element Potential NOT Values (NV)287
sdCustomConfiguration.08 - Agency Demographic Custom Data Element Potential Pertinent Negative Values
(PN)
288
sdCustomConfiguration.09 - Agency Demographic Custom Data Element Grouping ID289

seCustomConfiguration268

seCustomConfiguration Grouping269
seCustomConfiguration.01 - Patient Care Report Custom Data Element Title270
seCustomConfiguration.02 - Patient Care Report Custom Definition271
seCustomConfiguration.03 - Patient Care Report Custom Data Type272
seCustomConfiguration.04 - Patient Care Report Custom Data Element Recurrence273
seCustomConfiguration.05 - Patient Care Report Custom Data Element Usage274
seCustomConfiguration.06 - Patient Care Report Custom Data Element Potential Values275
seCustomConfiguration.07 - Patient Care Report Custom Data Element Potential NOT Values (NV)276
seCustomConfiguration.08 - Patient Care Report Custom Data Element Potential Pertinent Negative Values
(PN)
277
seCustomConfiguration.09 - Patient Care Report Custom Data Element Grouping ID278