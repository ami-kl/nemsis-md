

 
Page 1 
NEMS IS  TAC W hitepa per 
EMS and Trauma Registry Integration 
Using the NEMSIS UUID 
Date 
July 1, 2021 
Authors 
Joshua Legler – NEMSIS Consultant 
N. Clay Mann – NEMSIS Principal Investigator 
Introduction 
This document provides guidance to software developers of emergency medical services (EMS) data 
systems and trauma registry data systems on implementing data linkage using the universally unique 
identifier (UUID) that was added to the National EMS Information System (NEMSIS) standard in version 
3.5.0. It also provides guidance for linking EMS and trauma records in regional, state, and national 
registries using the National EMS Information System (NEMSIS) UUID. 
Introduced in NEMSIS v3.5.0, UUIDs are assigned to all data objects within an EMS agency at the time 
the data objects are created in the agency’s NEMSIS-compliant software. Most of the UUIDs exist within 
agency demographic data (locations, personnel, vehicles, etc.), but a UUID is also assigned to each 
patient care report (PCR). The primary purpose of the UUID is to enable NEMSIS “Receive and Process” 
systems to successfully process data updates from NEMSIS “Collect Data” systems. Since each data 
object has an unchanging UUID assigned to it, the UUID serves as a unique key for determining exactly 
which record to update in the receiving system. For more information about the implementation of 
UUIDs in NEMSIS, see the NEMSIS V3 UUID Guide. 
The PCR UUID is the subject of this guide. The UUID is software-generated using a defined algorithm, 
mandatory on every PCR, guaranteed to be unique, and contains no patient identifying information. 
Because of these attributes, the UUID is valuable in data linkage. The American College of Surgeons 
(ACS) recommends leveraging the NEMSIS PCR UUID for linkage with trauma registry data, using the 
following approach: 

 
Page 2 
 
Figure 1. Hospital trauma registry abstraction and data flow, incorporating the NEMSIS PCR UUID 
In this approach, EMS PCRs are sent from an EMS data system to a trauma registry. When working on a 
trauma record, a trauma registrar searches for EMS PCRs that represent the EMS responses to the same 
patient at the same incident. When the trauma registrar identifies an EMS PCR associated with a trauma 
record, the UUID from the EMS PCR is imported into the trauma record. From that point on, whenever a 
PCR or trauma record is sent from one system to another, it includes the PCR UUID. At any level, those 
with access to both the trauma data and the EMS data can re-join the records via the UUID to create a 
linked data set for quality improvement or research. 
This document provides guidance regarding the implementation details of this process. 
Sending EMS Records to the Trauma Registry 
The first step in the process is for the EMS data system to send PCRs to the trauma registry so the data 
can be available to trauma registrars. 
Records to Transfer 
Developers of EMS data systems may decide to simply send all PCRs to the trauma registry, or they may 
choose to apply criteria such as these to limit the number of PCRs sent: 
• Incident Date is within the past X days (depending on how long trauma registrars can take to 
create trauma records after a patient has been discharged). 
• Possible injury is “Yes.” 
EMS Data System 
NEMSIS Web Services 
Trauma Registry 
PCRs 
PCRs 

 
Page 3 
• The disposition indicates that a patient was treated. 
• The PCR has been finished/completed. 
Important Data Elements 
The EMS system may simply send the full PCR, or it may send a subset of data from the PCR that is 
important for the trauma registry. If a subset of information is sent, it should include: 
• Data elements that help the trauma registrar to identify a PCR to link to the trauma record, such 
as: 
o EMS agency number and name 
o Responding unit call sign, role, and capability 
o Patient name, gender, and date of birth 
o Incident date and location 
o Disposition and destination 
• Data elements that are important for quality improvement and research in the trauma registry, 
such as: 
o Times (incident onset, EMS response) 
o Injury details 
o Vital signs 
o Procedures 
o Trauma triage and transport 
Data Format 
The NEMSIS TAC recommends using the NEMSIS Web services architecture and the NEMSIS XML data 
format to transfer PCRs to the trauma registry. 
Searching for EMS Records in the Trauma Registry 
The trauma registry should store the PCRs so they can be searched by registrars. The trauma registry 
should provide an interface that allows trauma registrars to search for PCRs that may match the patient 
and incident that they are recording. 
Trauma Registry PCR Import 
Import Agency Incident # Date Name Gender DOB Disposition Destination 
➥ 
Central Fire 21-0427 9/1/2021 Elicia Stubbs F 4/21/1967 Transport by another 
EMS Unit 
Victor EMS 
➥ 
Victor EMS 211394 9/1/2021 Elicia Stubbs F 4/21/1967 Transport by This EMS 
Unit (This Crew Only) 
Memorial 
Hospital 
➥ 
Memorial 
Hospital EMS 
M21-765 9/1/2021 Elicia Stubbs F 4/21/1967 Transport by This EMS 
Unit (This Crew Only) 
Tri-state 
Medical Center 

 
Page 4 
The NEMSIS TAC recommends that developers of trauma registry software implement a process to 
purge PCRs that have not been linked to a trauma recorded after some time (depending on how long 
trauma registrars can take to create trauma records after a patient has been discharged). 
Linking an EMS Record to a Trauma Record in the Trauma Registry 
Trauma registry software should provide a way for a trauma registrar to select a PCR to link to the 
trauma record. When the selection is made, the trauma registry should import the UUID from the PCR 
into the trauma record (the UUID is an XML attribute on the PatientCareReport data element). The 
UUID should not be visible to the trauma registrar. Trauma registries should not require trauma 
registrars to manually enter PCR UUIDs in trauma records. 
The trauma registry may also import other data from the PCR so it can be readily available in the registry 
for quality improvement and research. 
Sending the EMS Record UUID in the Trauma Record 
When the trauma registry sends the trauma record to other systems in National Trauma Data Standard 
(NTDS) format, it should include the UUID from the linked PCR in the NTDS PatientUUID data element. 
(Note that though the NTDS data element is named “PatientUUID,” the UUID identifies an EMS PCR, not 
a patient).  
PCR 
<EMSDataSet ...> 
  <Header> 
    ... 
  </Header> 
  <PatientCareReport UUID="ffc477c9-2798-475c-8df8-902b7d9b47ab"> 
    ... 
  </PatientCareReport> 
  </EMSDataSet> 
 
 
Trauma Record 
EMS PCR UUID: ffc477c9-2798-475c-8df8-902b7d9b47ab 
NTDS Trauma Record 
<NtdsRecords NtdsVersion="Ntds_v2021"> 
  <NtdsRecord> 
    ... 
    <PatientUUID>ffc477c9-2798-475c-8df8-902b7d9b47ab</PatientUUID> 
    ... 
  </NtdsRecord> 
</NtdsRecords> 
 

 
Page 5 
Linking EMS and Trauma Records in Regional, State, and National 
Registries 
Regional, state, and national registries will need access to both EMS and trauma data to create linked 
data sets. 
Each trauma record that has been successfully linked to an EMS record will contain a value in the NTDS 
PatientUUID data element. The value can be used to find the linked PCR using the UUID attribute on 
the PatientCareReport data element in the NEMSIS data. Once the two records are joined via the 
NEMSIS UUID, data from both records can be accessed and used in analysis as if they were a single 
record. 
Other Considerations 
Linking Multiple EMS Records to a Trauma Record 
Multiple EMS units may be involved in the EMS response to a patient during an incident (for example, 
rescue, scene transport, and interfacility transfer. Each unit creates its own PCR—and thus creates a 
unique PatientCareReport UUID for each record. System users may desire the ability for trauma 
registries to link multiple PCRs to a single trauma record. However, the 2021 NTDS standard only allows 
one PCR UUID to be recorded on a trauma record. When exporting data in NTDS format, trauma registry 
software should export the UUID from the PCR that represents the scene transport of the patient to the 
reporting hospital. If the patient arrived at the reporting hospital via interfacility transfer or non-EMS 
transport, the UUID should be “Not Applicable” in the trauma record. See the “EMS Patient Care Report 
Universally Unique Identifier (UUID)” page of the 2021 NTDS Data Dictionary for more details. 
Linking an EMS Record to Multiple Trauma Records 
Using the 2021 NTDS data dictionary constraints, there should be a one-to-one match between an EMS 
PCR and a trauma record (that is, one PCR representing the scene transport to a hospital is linked to one 
trauma record from the hospital that received the patient from the transporting EMS agency). Multiple 
hospitals that cared for the same patient from the same incident may also desire to link the scene 
transport PCR to their trauma record as well, resulting in a scenario where the same EMS PCR has been 
linked to multiple trauma records. However, due to the requirements of the 2021 NTDS data dictionary, 
the other hospitals that cared for the patient should not include any PCR UUIDs in their trauma records 
when exported in NTDS format, because they did not receive the patient from the scene by EMS 
transport. 
Unlinking an EMS Record from a Trauma Record 
Trauma registry software should give trauma registrars the ability to unlink a PCR from a trauma record 
in case a mistake was made. When an unlink is done, the trauma registry software should remove the 
PCR UUID from the trauma record. 
Handling EMS Record Updates After Linkage 
EMS PCRs are usually finished long before their respective trauma records are created, but hospitals 
doing concurrent data entry may encounter a situation where a PCR was modified after it was initially 
linked to a trauma record. Since the UUID for the PCR never changes, this poses no issue for the use of 

 
Page 6 
the UUID as the linkage key. However, if the trauma registry imports additional data from the PCR (such 
as EMS times, vital signs, etc.), then the trauma registry software should alert the registry user that the 
PCR data has been updated and provide an interface for the registrar to manage the process of re-
importing the data from the PCR. 
Linking EMS Records from NEMSIS Versions Prior to 3.5.0 
PCRs created in versions prior to NEMSIS 3.5.0 do not support UUIDs (unless implemented as a custom 
element). For those PCRs, the unique key for a PCR is the combination of: 
• dAgency.01 - EMS Agency Unique State ID 
• dAgency.02 - EMS Agency Number 
• dAgency.04 - EMS Agency State  
• eRecord.01 - Patient Care Report Number 
Trauma registries may implement linkage with pre-3.5.0 NEMSIS PCRs using that composite key as the 
identifier. 
However, if a PCR does not have a UUID, no substitute value should be used in the NTDS PatientUUID 
data element. For example, the value of eRecord.01 should not be used in PatientUUID, even if it 
happens to match the format of a UUID. 
Sending Trauma Registry Data to the EMS Data System 
Hospital outcome data is important to EMS for quality improvement. Trauma registries and EMS data 
systems should implement processes to send hospital outcome data from finished trauma records back 
to the EMS data system. The return data should include the PCR UUID. The EMS data system can use the 
UUID to look up the appropriate PCR and attach the outcome data to it. 
The NEMSIS TAC has not recommended a method of data exchange or data format to use when 
transferring outcome data from a trauma registry to an EMS data system. Successful implementations 
have used the NEMSIS web services architecture and a custom NEMSIS-based XML format that only 
includes record identifiers and the eOutcomes section, in HL7 version 2 admit-discharge-transfer (ADT) 
messages, or using HL7 Fast Healthcare Interoperability Resources (FHIR). 
Conclusion 
The NEMSIS UUID provides a precise way to link a trauma record to an EMS PCR. By developing 
automated data exchange between EMS and trauma data systems, software developers can help 
trauma registrars save time by importing EMS data rather than transcribing it into trauma records. At 
the same time, high quality linkage results are ensured by including the trauma registrar in the process 
of determining the correct PCR to link to each trauma record. Accurately and efficiently linked EMS and 
trauma data sets will enhance research capabilities and lead to insights that improve treatment of 
injured patients.  