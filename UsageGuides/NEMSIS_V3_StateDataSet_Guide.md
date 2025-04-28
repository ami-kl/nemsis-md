

 
Page 1 
NEMS IS  TAC W hitepa per 
NEMSIS V3 StateDataSet: Software 
Developer Technical Guide 
Date 
January 14, 2025 (replaced v3.x.x references with v3.x) 
May 31, 2022 (Updated for NEMSIS 3.5) 
January 15, 2016 
Authors 
Joshua Legler – NEMSIS Consultant 
N. Clay Mann – NEMSIS P.I. 
Overview 
The NEMSIS V3 standard includes three data sets: DEMDataSet (snapshot information about EMS 
agencies), EMSDataSet (EMS patient care reports), and StateDataSet (state reporting requirements and 
resources). This guide explains StateDataSet v3.5, including its purpose and recommended uses. 
This guide is written for software developers. It may be of interest to state EMS data managers and EMS 
agency data managers as well. 
Purpose of StateDataSet 
EMS agencies and their software vendors must obtain information about their state’s EMS data 
requirements in order to properly configure their patient care reporting software. The NEMSIS Technical 
Assistance Center (NEMSIS TAC) created the StateDataSet XML Schema (XSD) to provide a consistent 
format in which to share NEMSIS V3 state-specific information. StateDataSet covers custom data 
elements; state-recognized certification/licensure levels; state-permitted procedures, medications, and 
protocols; EMS agencies; and facilities (such as hospitals). StateDataSet was introduced as optional in 
NEMSIS version 3.4 and became a core component of the standard in version 3.5. 
Vendors of state-level systems are required to build into their systems the ability to generate 
StateDataSet files. Vendors of local-level systems are encouraged to build into their systems the ability 
to process StateDataSet files as part of configuration. 
StateDataSet has advantages over other methods of conveying state-specific information: 
• StateDataSet files can be validated using the NEMSIS StateDataSet XSD. 

 
Page 2 
• StateDataSet files can be easily processed by systems. 
• StateDataSet files can be easily viewed online in human-readable form. 
• StateDataSet is correlated with the other NEMSIS V3 XSDs (DEMDataSet and EMSDataSet), using 
the same common data types. 
StateDataSet Contents and Structure 
StateDataSet files contain the following information regarding a state or territory: 
• Custom Data Elements 
• State Required Elements 
• State Certification/Licensure Levels 
• Procedures Permitted by the State 
• Medications Permitted by the State 
• Protocols Permitted by the State 
• EMS Agencies 
• Facilities (hospitals, etc.) 
The StateDataSet data dictionary, API, and XSD files are available on the Version 3 Data Dictionaries 
page of the NEMSIS Web site. 
All sections in StateDataSet are optional or allow Not Values, so a state may publish a StateDataSet file 
containing information for just one section and then fill in additional sections later as information 
becomes available. If a state does not regulate or provide resources for a particular section, that section 
may be omitted from the StateDataSet file. 
StateDataSet at the State Level 
States and territories can generate and submit StateDataSet XML files that are compliant with the 
NEMSIS V3 StateDataSet XSD using their state-level NEMSIS-compliant software via the standard web 
services connection for submitting data to the national EMS database. Compliant files published with 
the NEMSIS TAC are made available to software companies to ensure local software is properly 
configured to state requirements. Other states may also access these files to, for example, mimic 
custom elements, etc.  

 
Page 3 
NEMSIS State Data Set Builder 
The NEMSIS V3 State Data Set Builder provided by the NEMSIS TAC is no longer used to manage 
StateDataSet files in NEMSIS version 3.5, since state-level systems are required to have the ability to 
generate StateDataSet files in version 3.5. 
Publishing StateDataSet Files 
StateDataSet files should be submitted to the NEMSIS TAC via the standard web service connection to 
the national EMS database for publishing within NEMSIS V3 state-specific repositories. The NEMSIS TAC 
validates StateDataSet files and ensures that their content is reasonable before publishing them. 
StateDataSet at the EMS Agency Level 
Vendors of local-level systems are encouraged to build into their systems the ability to process 
StateDataSet files as part of configuration. 
NEMSIS StateDataSet Viewer 
When a state submits a StateDataSet file to the NEMSIS TAC, it is made available on the state’s page of 
the NEMSIS website, where it can be viewed online. The online view provides a user-friendly way to 
browse the contents of a StateDataSet file. State pages are available at nemsis.org/state-data-
managers/state-map-v3/. 
Retrieving StateDataSet Files 
StateDataSet files are published by the NEMSIS TAC within each state’s repository. For more information 
about the NEMSIS V3 repositories, see the NEMSIS V3 Resource Repository Guide. If a state has 
published a StateDataSet file, it is contained in the Resources folder and is named XX_StateDataSet.xml 
(where XX is the postal abbreviation of the state). Software developers are encouraged to clone the 
state repositories and set up automated systems to monitor and process updates. 
StateDataSet Usage Guidelines 
This section sets forth guidelines for each section of StateDataSet. Recommendations are provided for 
state systems to generate and for local systems to process information in a StateDataSet file. 
StateDataSet (the document element of a StateDataSet file) 
The StateDataSet element contains a mandatory attribute, @timestamp. 
• State systems: Set @timestamp to the date/time at which the file was generated. Set 
@effectiveDate to the date by which the state expects local agencies to implement the 
content in the StateDataSet file. 
• Local systems: Use @timestamp to protect against inadvertently processing an older version of 
a StateDataSet file than one that has already been processed. Use @effectiveDate to identify 
the deadline for implementing the content in the StateDataSet file. 

 
Page 4 
State 
sState.01 is the only mandatory data element in a StateDataSet file. It identifies the state represented 
in the file by its two-digit numerical ANSI state code. 
• State systems:  Generate sState.01 in the StateDataSet file in the same way as for 
DEMDataSet files. 
• Local systems: Use sState.01 to protect against processing a file for a state that is not within 
an EMS agency’s service area. Agencies that serve multiple states may need to process a 
StateDataSet file from each state. 
Custom Data Elements 
sdCustomConfiguration and seCustomConfiguration contain custom data elements defined by 
the state. 
A NEMSIS-compliant system may be customized with data elements or values that are not defined in the 
NEMSIS V3 standard. When data are exported from the system, the XML contains a 
dCustomConfiguration or eCustomConfiguration section to define the custom elements and a 
dCustomResults or eCustomResults section to record the responses to the custom elements within 
each record. See the NEMSIS V3 Custom Element Guide for more information about defining and 
recording custom element information in a NEMSIS XML file. 
If a custom element is defined by a state, it should be implemented the same way in all agencies within 
the state. For each custom element defined by the state, NEMSIS data generated by each local system 
should contain exactly the same information in dCustomConfiguration or 
eCustomConfiguration. The best way to ensure this is for the state system to provide custom 
element definitions in the NEMSIS sdCustomConfiguration and seCustomConfiguration formats. 
• State systems:  Generate sdCustomConfiguration and seCustomConfiguration sections 
in the StateDataSet file in the same way as for DEMDataSet and EMSDataSet files. 
• Local systems: Process the information in sdCustomConfiguration and 
seCustomConfiguration from StateDataSet to set up custom elements within the system. 
(After the elements have been created by the system, further work may be necessary for 
someone to decide where the elements will be placed within the system’s data entry form.) 
Internally, local systems should identify a state-provided custom element definition by not only 
the @CustomElementID attribute but also the state ID, since there is no guarantee that 
@CustomElementID is unique across states. When exporting NEMSIS data, local systems 
should generate dCustomConfiguration or eCustomConfiguration exactly as provided in 
StateDataSet for each custom element defined by the state. 
State Collected Elements 
sElement contains the list of data elements required by the state. 
Each state maintains a list of data elements that it requires or recommends agencies to submit to the 
state EMS data system. (This is usually viewed as a legal requirement rather than a technical 
requirement, since many “required” elements are not always applicable, depending on the agency or 

 
Page 5 
incident. In other words, this list usually represents the elements that should be “turned on” for 
collection within a patient care reporting system.) 
• State systems: Generate the sElement section in the StateDataSet file to represent the list of 
data elements collected by the state. 
• Local systems: State collected elements are identified by their XML element names (e.g., 
“eRecord.01”). Process the list of elements in sElement to ensure that all of those elements 
are turned on for collection in the system’s data entry forms. Local systems may go further by 
adding visual cues in the user interface for elements that are state-collected. 
State Certification/Licensure Levels 
sConfiguration.01 contains the list of certification/licensure levels recognized by the state. 
• State systems: sConfiguration.01 should not simply contain all values defined in the 
NEMSIS standard; it should only contain values representing the certification/licensure levels 
that are recognized by the state. 
• Local systems: Restrict the list of values within certification/licensure-related data elements to 
match the values included in sConfiguration.01. Some certification/licensure-related data 
elements do not use the same data values as sConfiguration.01; systems should be 
configured to manage the straightforward translation between the value lists. 
Procedures and Medications Permitted by the State 
sConfiguration.ProcedureGroup contains the list of procedures permitted by the state, by 
certification/licensure level. sConfiguration.MedicationGroup contains the list of medications 
permitted by the state, by certification/licensure level. 
State systems generally have a configuration area where administrators can select the list of procedures 
and the list of medications that should be available, depending on certification/licensure level. Each 
agency then selects from the appropriate master list when identifying the medications and procedures 
that it permits its personnel to use. For example, the state may require agencies at the AEMT level to 
carry either fentanyl or morphine. From a StateDataSet perspective, the state permits AEMT agencies to 
use both fentanyl and morphine. An AEMT agency within the state, however, may choose to carry only 
fentanyl. When DEMDataSet is generated for that agency, dConfiguration.MedicationGroup 
should include a section applicable to the AEMT level that contains the medication code for fentanyl but 
not morphine in dConfiguration.07 (EMS Agency Procedures). 
• State systems: StateDataSet is structured so that the lists of state permitted procedures and 
medications are grouped by certification/licensure level. Generate an 
sConfiguration.ProcedureGroup and sConfiguration.MedicationGroup section for 
each certification/licensure level included in sConfiguration.01 (State 
Certification/Licensure Levels). 
• Local systems: Restrict the list of allowed procedures and medications, by certification/licensure 
level, to the lists in StateDataSet. In agency demographic data exports, the values in 
dConfiguration.07 (EMS Agency Procedures) and dConfiguration.09 (EMS Agency 
Medications) should be a subset of the values listed in StateDataSet for the 

 
Page 6 
certification/licensure level. (There may be exceptions where an EMS agency has been granted 
permission by the state to have a procedure or medication that is not normally permitted for 
the certification/licensure level.) 
Protocols Permitted by the State 
sConfiguration.06 contains the list of protocols permitted by the state. 
• State systems: Generate sConfiguration.06 in the StateDataSet file to represent the list of 
protocols permitted by the state. 
• Local systems: Restrict the list of allowed protocols based on the list in StateDataSet. In 
demographic data exports, the values in dConfiguration.10 (EMS Agency Protocols) should 
be a subset of the values listed in StateDataSet. (There may be exceptions where an EMS agency 
has been given permission to implement a protocol that is not normally recognized by the 
state.) 
EMS Agencies 
sAgency contains a list of EMS agencies recognized by the state. 
Usually, EMS agency data managers already know the ID, number, and name of their own agency. The 
purpose of sAgency in StateDataSet is to enable agency data managers to properly configure the 
reporting of agencies other than their own for eScene.02 (Other EMS or Public Safety Agencies at 
Scene) and eScene.03 (Other EMS or Public Safety Agency ID Number) on patient care reports. Local 
systems may also use the information in sAgency to configure the reporting for  eDisposition.01 
(Destination/Transferred To, Name) and eDisposition.02 (Destination/Transferred To, Code) in 
cases where a patient is transferred to another EMS agency. 
• State systems: State systems maintain a list of all EMS agencies within a state so that they can 
process incoming data from each agency. Generate an sAgencyGroup section in the 
StateDataSet file for each active agency. The values of sAgency.01 (EMS Agency Unique State 
ID), sAgency.02 (EMS Agency Number), and sAgency.03 (EMS Agency Name) should be the 
same as what the system generates for dAgency.01, dAgency.02, and dAgency.03 in the 
DEMDataSet file for each agency. 
• Local systems: Populate selection lists for eScene.ResponderGroup in patient care report 
data entry forms based on the values in StateDataSet, with eScene.04 (Type of Other Service at 
Scene) set to the value representing “Other EMS Agency” (some other values, such as “EMS 
Mutual Aid,” may also be appropriate). Populate selection lists for 
eDisposition.DispositionGroup in patient care report data entry forms based on the 
values in StateDataSet, for cases where the EMS agency transfers patient care to another EMS 
agency. Local systems may also provide a configuration area where an administrator can identify 
from the full list the few EMS agencies with which the EMS agency works. 
Facilities 
sFacility contains lists of facilities, such as hospitals, recognized by the state. 

 
Page 7 
If a facility is recognized by a state, it should be implemented the same way in all agencies within the 
state. For each facility recognized by the state, NEMSIS data generated by each local system should 
contain exactly the same information in dFacility. The best way to ensure this is for the state system 
to provide facility information in the NEMSIS sFacility format. This information enables local systems 
to configure the reporting not only for dFacility but also for elements related to incident locations 
and destination locations in EMSDataSet. 
• State systems: Generate the sFacililty section in the StateDataSet file in the same way as 
for DEMDataSet files, except that it should contain all facilities recognized by the state and not 
any non-state-recognized facilities that may be set up by local agencies using the state system. 
• Local systems: Process the information in sFacility to set up a master list of facilities. When 
an administrator selects a facility as being one that the agency uses, the information from the 
master list should be copied into the agency’s demographic data. A facility that has been 
selected for use by an agency should be made available in both the eScene and 
eDisposition sections of the patient care report data entry form (or a local system may allow 
an administrator to select the sections in which the facility should be available). Local agency 
demographic data may contain additional facilities beyond those recognized by the state, but 
facility information for state-recognized facilities should match the information in StateDataSet. 
Handling Updates / Change Control 
A StateDataSet file represents a point-in-time snapshot. It does not contain historical data. For example, 
when a facility closes, it should be removed from the StateDataSet file. State and local systems need to 
maintain historical information about that facility, because it may have been the scene or destination 
location on previously entered PCRs. However, it should no longer be available to report on future PCRs. 
Systems usually handle this by flagging the facility record as inactive. Inactive records should not be 
included in a StateDataSet file. 
Local systems should compare a new StateDataSet file to the previous version of the file to identify 
areas that changed. The NEMSIS standard does not support universally unique identifiers for entities 
such as custom data elements and facilities, which makes it difficult to recognize whether a change 
represents a new entity or a modification to an existing entity. The NEMSIS TAC recommends that 
developers use data warehousing “slowly changing dimension” techniques to handle changes. 
States should allow a period of time for the adoption of StateDataSet updates at the local level. 
Conclusions 
StateDataSet brings a higher level of completeness and consistency to state-provided resources. As a 
result, state data managers can be more confident that changes in their environment are being 
implemented within local EMS agencies, and EMS agencies and their vendors can stay up to date with 
the latest state resources in a predictable format. 