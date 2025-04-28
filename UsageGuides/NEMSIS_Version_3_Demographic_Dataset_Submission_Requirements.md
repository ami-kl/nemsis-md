

 
 
Page 1 
NEMS IS  TAC W hitepa per 
NEMSIS V3 Demographic (Agency) Data 
Guide 
Date 
November 17, 2011 (Final) 
February 1, 2012 (Updated) 
January 27, 2017 (Rewritten) 
September 30, 2019 (Updated for version 3.5) 
Authors 
Joshua Legler – NEMSIS Consultant 
N. Clay Mann – NEMSIS P.I. 
Contributors 
Aaron Hart – ZOLL 
Chad Perry – Golden Hour 
Chris Oloa – IAED 
Dan Vanorny, Kevin Ketcher – ImageTrend 
David Saylor – Beyond Lucid 
Doug Avery – Starwest Tech 
Ernie Doss – State of Georgia 
Halyna Petetrechko, Iryna Domchak, Jennifer 
Correa, Robyn Hughes – AMR 
Jeff Robertson – EMS PIC 
Jeremy Pate – University of Alabama 
Joe Williams – American Heart Association 
Jon Burkhart – Intermedix 
Juan Esparza – State of Florida 
Matthew Curran, Sushil Kamble – Forte 
Holdings 
Steve Kimball – EMS Data Systems 
Taylor Smits – Forward Health Group 
Overview 
Agency demographic data are information about an EMS agency and its configuration and resources, 
such as medications carried, vehicles, personnel, facilities served, etc. Agency demographic data are 
contained in the NEMSIS data set called “DEMDataSet.” Agency demographic data are important at the 
national level because they support the categorization of EMS events by agency attributes such as level 
of service and ownership type for performance measurement and benchmarking. 
In NEMSIS V3, “Collect Data” systems at the local agency level send agency demographic data to 
“Receive and Process” systems at the state level. In turn, the state-level systems send some agency 
demographic data (“national elements”) to the national EMS database. 

 
 
Page 2 
This document describes requirements regarding what demographic data to send and the frequency 
with which to send it, both from an agency to a state and from a state to the national EMS database. 
This document also provides guidance to developers and administrators of "Receive and Process" 
systems regarding the processing of agency demographic data updates received from "Collect Data" 
systems. The following topics are addressed: 
• Determining which data elements to process when receiving updates 
• Identifying new, updated, and deleted object instances and handling them appropriately 
When to Collect Demographic Data 
“Collect Data” systems SHOULD require the completion of national- and state-required agency 
demographic data at the time of software set-up, prior to allowing new patient care reports (PCRs) to be 
created. Many PCR data elements rely upon demographic data. 
“Receive and Process” systems SHOULD reject PCR data if they do not have demographic data for the 
agency submitting the PCRs. The national EMS database rejects PCRs data if it does not have 
demographic data for the agency submitting the PCRs. 
When to Send Demographic Data 
Initially 
“Collect Data” systems SHOULD send agency demographic data to state systems before sending any PCR 
data for an agency. 
“Receive and Process” systems sending data to the national EMS database MUST send agency 
demographic data at least 72 hours prior to sending any PCR data for an agency. 
As Updated 
When the value of any national element changes in an agency’s demographic data in a “Collect Data” 
system, the system SHOULD send updated agency demographic data to the state system within 24 
hours. In addition, a “Collect Data” system SHOULD be capable of sending updated agency demographic 
data when triggered by changes in the value of any state-required element. 
When the value of any national element changes in an agency’s demographic data in a “Receive and 
Process” system sending data to the national EMS database, the system MUST send updated agency 
demographic data to the national EMS database within 24 hours. 
A system is not required to send demographic data more frequently than daily, but it may do so. If a 
system is not capable of monitoring national demographic data elements for changes, it may simply 
send updated demographic data on a scheduled basis, regardless of whether data have changed. 
Annually 
The minimum allowable frequency of demographic data updates is annually. 

 
 
Page 3 
 
What Demographic Data to Send 
“Collect Data” systems MUST be capable of sending the agency demographic data elements requested 
or required by a state. “Collect Data” systems SHOULD give administrators the ability to configure which 
data elements to send. 
“Receive and Process” systems sending data to the national EMS database MUST send only the “national 
elements” as defined in the NEMSIS Data Dictionary. 
Prior to NEMSIS 3.5, the NEMSIS DEMDataSet included some data elements that contained information 
about the state (rather than the agency). Those elements were removed from DEMDataSet in version 
3.5 and are instead collected via StateDataSet. 
Processing Demographic Data 
The remainder of this guide provides recommendations for “Receive and Process” systems to effectively 
implement the processing of demographic data received from other systems. 
Authoritative Source / System of Record 
In compliance testing, “Receive and Process” systems MUST demonstrate the ability to receive and 
process data for all NEMSIS data elements and send national elements to the national EMS database. 
However, states may have various business requirements regarding the processing of incoming 
demographic data. 
The information about objects, attributes, and relationships in agency demographic data usually comes 
from a mixture of sources. For example, the state may be the “authoritative source,” or “system of 
record,” regarding the ID and name of an agency, while the agency may be the source of information 
regarding the agency’s statistical year information. As a result, states may require their systems to 
selectively process information received from agency systems. For example, when processing 
demographic data received from an agency system, the state system may be configured to ignore the 
data value contained in dAgency.03 EMS Agency Name, because the state is the licensor of the agency 
and has regulatory authority over agency name changes. 
Each state should identify the authoritative source of each type of object, attribute, and relationship in 
demographic data and work with the developer of its state data system to implement a system 
configuration that meets the state’s business needs. 
See Appendix A: Authoritative Source, p. 9, for recommendations regarding the authoritative source of 
specific objects, attributes, and relationships in agency demographic data. 
Initially 
Before PCR data 
As Updated 
Within 24 hours 
At least annually 
Initially 
72 hours before PCR data 
As Updated 
Within 24 hours 
At least annually 
Agency 
System 
State 
System 
National 
EMS 
Database 

 
 
Page 4 
Identifying New, Updated, and Deleted Information 
 The NEMSIS 3.5 standard (and above) defines universally unique identifiers (UUIDs) as identification 
keys for objects in demographic data. “Receive and Process” systems can use the UUIDs to aid in the 
tracking of new, updated, and deleted objects in demographic data. See the NEMSIS V3 UUID Guide for 
more information. 
“Receive and Process” systems may consider the following options for handling updated demographic 
data. The illustrations below will use medical devices (dDevice.DeviceGroup) as an example but are 
applicable to other objects in demographic data. 
Delete + Insert (or Deactivate + Insert) 
The simplest approach to handling updated demographic data is to simply discard or deactivate all 
previously-received data (by deleting it or marking it inactive in the database) and insert the newly 
received data. 
When submission #1 is received, the receiving system inserts all data into the database. When 
submission #2 is received, the receiving system first deletes or deactivates existing records and then 
inserts new records for the newly received data. 
Submission #1 
UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
...099d 10101 Defib1 AED Acme LS100 1/1/2016 
...4db4 10102 Defib2 AED Acme LS100 6/1/2016 
...f458 10103 Defib3 AED Acme LS100 9/1/2016 
“Receive and Process” System After Submission #1 
Key UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
1 ...099d 10101 Defib1 AED Acme LS100 1/1/2016 
2 ...4db4 10102 Defib2 AED Acme LS100 6/1/2016 
3 ...f458 10103 Defib3 AED Acme LS100 9/1/2016 
Submission #2 
UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
...4db4 10102 Defib2 AED Acme Inc. LS100 6/1/2016 
...f458 10103 Defib3 AED Acme LS100 9/1/2016 
...4cad 10104 Defib4 AED Acme LS100 12/1/2016 
“Receive and Process” System After Submission #2 
Key UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
1 ...099d 10101 Defib1 AED Acme LS100 1/1/2016 
2 ...4db4 10102 Defib2 AED Acme LS100 6/1/2016 
3 ...f458 10103 Defib3 AED Acme LS100 9/1/2016 
4 ...4db4 10102 Defib2 AED Acme Inc. LS100 6/1/2016 

 
 
Page 5 
5 ...f458 10103 Defib3 AED Acme LS100 9/1/2016 
6 ...4cad 10104 Defib4 AED Acme LS100 12/1/2016 
Pros 
• Simple 
• Minimizes data storage requirements if 
records are deleted rather than 
deactivated 
• Guaranteed to represent current status 
Cons 
• Loses history if records are deleted rather 
than deactivated 
• Loses referential integrity if records are 
deleted rather than deactivated 
 
Delete + Insert + Update 
This approach identifies objects by their keys. The receiving system uses UUIDs as the keys for incoming 
data. UUIDs are 32-digit hexadecimal numbers; in the examples in this guide, UUIDs have been 
truncated for illustration purposes. 
Submission #1 is simply inserted into the database as new records. For submission #2, the receiving 
system uses the key (UUID) to uniquely identify each object. The system finds the device with UUID 
...4db4 in the database but finds that some previously-received data does not match the new incoming 
data, so the system performs an update. The system finds the device with UUID ...f458 in the database 
and recognizes that none of its data have changed. The system does not find the device with UUID 
...4cad in the database, so it inserts a new record. The system deletes or de-activates any records in the 
database for which there is no object in the incoming data; as a result, the system deletes or de-
activates the record for the device with UUID ...099d, because it does not exist in submission #2. 
Submission #1 
UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
...099d 10101 Defib1 AED Acme LS100 1/1/2016 
...4db4 10102 Defib2 AED Acme LS100 6/1/2016 
...f458 10103 Defib3 AED Acme LS100 9/1/2016 
 “Receive and Process” System After Submission #1 
Key UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
1 ...099d 10101 Defib1 AED Acme LS100 1/1/2016 
2 ...4db4 10102 Defib2 AED Acme LS100 6/1/2016 
3 ...f458 10103 Defib3 AED Acme LS100 9/1/2016 
Submission #2 
UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
...4db4 10102 Defib2 AED Acme Inc. LS100 6/1/2016 
...f458 10103 Defib3 AED Acme LS100 9/1/2016 
...4cad 10104 Defib4 AED Acme LS100 12/1/2016 
“Receive and Process” System After Submission #2 

 
 
Page 6 
Key UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
1 ...099d 10101 Defib1 AED Acme LS100 Jan 1 2016 
2 ...4db4 10102 Defib2 AED Acme Inc. LS100 Jun 1 2016 
3 ...f458 10103 Defib3 AED Acme LS100 Sep 1 2016 
4 ...4cad 10104 Defib4 AED Acme LS100 Dec 1 2016 
Pros 
• Minimizes database storage requirements 
• Prevents duplicates 
Cons 
• Loses history 
• Receiving system must compare data 
within each element to determine 
whether an update is needed 
Versioning 
This approach uses data warehousing “slowly changing dimension” concepts to maintain a historically 
consistent snapshot of demographic data. In other words, a system implementing this approach can 
know what an agency’s demographic data looked like at any given point in the past. 
This approach, like the Delete + Insert + Update approach, uses UUIDs as keys to identify objects in the 
incoming data. 
The database has some additional columns: “From,” to track the date on which a record became active, 
and “To,” the date on which a record became inactive. (For convenience, most designs also include a 
third column containing a flag that indicates whether the record is currently active.) 
In this approach, every change to an object triggers the insertion of a new record to represent the new 
version of that object. 
Submission #1 is inserted into the database. For submission #2, the receiving system uses the key (UUID) 
to uniquely identify each object. The system finds the device with UUID ...4db4 in the database but finds 
that some previously-received data does not match the new incoming data, so the system updates the 
existing record by setting the “To” date to the date on which submission #2 was received; then the 
system inserts a new record to represent the new version of the device with UUID ...4db4, setting the 
“From” date to the date on which submission #2 was received. The system finds the device with UUID 
...f458 in the database and recognizes that none of its data have changed. The system does not find the 
device with UUID ...4cad in the database, so it inserts a new record, setting the “From” date to the date 
on which submission #2 was received. Finally, the system updates any records in the database for which 
there is no object in the incoming data, by setting the “To” date to the date on which submission #2 was 
received.  
Submission #1 
UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
...099d 10101 Defib1 AED Acme LS100 1/1/2016 
...4db4 10102 Defib2 AED Acme LS100 6/1/2016 
...f458 10103 Defib3 AED Acme LS100 9/1/2016 
“Receive and Process” System After Submission #1 

 
 
Page 7 
Key 
UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
From To 
1 ...099d 10101 Defib1 AED Acme LS100 1/1/2016 
  
2 ...4db4 10102 Defib2 AED Acme LS100 6/1/2016 
  
3 ...f458 10103 Defib3 AED Acme LS100 9/1/2016 
  
Submission #2 
UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
...4db4 10102 Defib2 AED Acme Inc. LS100 6/1/2016 
...f458 10103 Defib3 AED Acme LS100 9/1/2016 
...4cad 10104 Defib4 AED Acme LS100 12/1/2016 
“Receive and Process” System After Submission #2 
Key 
UUID dDevice.01 
Serial # 
dDevice.02 
Name or ID 
dDevice.03 
Type 
dDevice.04 
Manuf. 
dDevice.05 
Model # 
dDevice.06 
Pur. Date 
From To 
1 ...099d 10101 Defib1 AED Acme LS100 1/1/2016 
 
9/27/2016 
2 ...4db4 10102 Defib2 AED Acme LS100 6/1/2016 
 
9/27/2016 
3 ...f458 10103 Defib3 AED Acme LS100 9/1/2016 
  
4 ...4db4 10102 Defib2 AED Acme Inc. LS100 6/1/2016 9/27/2016 
 
5 ...4cad 10104 Defib4 AED Acme LS100 12/1/2016 9/27/2016 
 
Pros 
• Preserves history fully 
Cons 
• Requires more database storage 
• Preserves historically incorrect data 
(unless “punch-through” updates are 
employed) 
• If records are supplemented with state-
provided data, the system must “pull 
forward” that information when inserting 
each new record. 
• Receiving system must compare data 
within each element to determine 
whether an insert is needed for a new 
version of an object 
Enforcing Unique Identifiers 
In version 3.5 and above, the NEMSIS XML Schema (XSD) for DEMDataSet includes UUIDs as mandatory 
attributes on all objects in demographic data and enforces a standard format for UUIDs. The national 
Schematron schema for DEMDataSet enforces the uniqueness of UUIDs within an agency demographic 
report. “Receive and Process” systems can rely on the guarantee that UUIDs will be both present and 
unique within an agency in demographic data. 

 
 
Page 8 
Other Considerations 
Initially, it may seem simple to recommend any of the above approaches for a “Receive and Process” 
system to handle updated demographic data. However, since there are various authoritative sources for 
the information contained in an agency’s demographic data, many systems are integrated with other 
data sources. When processing NEMSIS demographic data updates, a system may need to not only store 
the records it receives but also ensure that the records are connected meaningfully to other data. 
For example, a state system may provide user accounts to personnel. A person directly accessing the 
state system may expect to be able to access records or run analytical reports for PCRs on which the 
person was a crew member. In order to support such needs, a state system must not only properly 
process incoming demographic data to record the fact that a person works for an agency, but also 
identify the relationship between the demographic data and the crew member data on a PCR, as well as 
the relationship between the demographic data and a user account in the state system. And, the system 
must maintain information about those relationships as data change over time with new updates 
received through either NEMSIS demographic data submissions or other means. 
Conclusions 
The handling of updated demographic by “Receive and Process” systems is complex, due to the number 
of sources from which demographic data are obtained. By adopting techniques described in this guide, 
developers of “Receive and Process” systems can ensure that their systems support state-level business 
requirements and maintain data integrity. They can also ensure that their systems send accurate 
demographic data to the national EMS database. 
  

 
 
Page 9 
Appendix A: Authoritative Source 
Wherever the agency is the authoritative source of data for an object, attribute, or relationship in 
demographic data, and the state requires the data, the state system SHOULD accept the data from the 
agency’s system in NEMSIS V3 DEMDataSet format via NEMSIS V3 web services. 
For each object, attribute, or relationship not noted in this appendix, the state should determine 
whether the state or the agency is the authoritative source of the data. The determination will vary by 
state, depending on regulatory structure. If the state determines that it is the authoritative source, the 
state system should ignore incoming data for that object, attribute, or relationship. If the state 
determines that the agency is the authoritative source, and the state requires the data, the state system 
should process incoming data for that object, attribute, or relationship. 
DEMDataSet 
dCustomConfiguration 
dCustomConfiguration.CustomGroup 
Receiving: If @CustomElementID matches the @CustomElementID of a custom element 
defined by the state, ignore. Otherwise, process content as an agency-specific custom 
element configuration. 
Sending: If @CustomElementID matches the @CustomElementID of a custom element 
defined by the state, send state-defined data for the custom element configuration. 
Otherwise, send data as received. 
DemographicReport 
dAgency 
The combination of dAgency.01 EMS Agency Unique State ID, dAgency.02 EMS Agency 
Number, and dAgency.04 EMS Agency State serves as the unique key for an agency. 
dContact 
 
dConfiguration 
 
dLocation 
 
dVehicle 
 
dPersonnel 
Receiving: If the state regulates EMS personnel certification/licensure, the state should 
determine which elements are state-regulated, and the state system should ignore 
submitted data for those elements. The agency is usually the authoritative source of 
information regarding the relationship between an agency and personnel (i.e., the fact that 
a person works for the agency) and data about the person’s employment within the agency. 
The state system should process data about a person’s agency employment as agency-
specific information related to that person. 

 
 
Page 10 
Sending: Send state-defined data for data elements that are state-regulated. Send other 
data as received. 
dDevice 
 
dFacility 
dFacilityGroup 
 
dFacility.FacilityGroup 
Receiving: If dFacility.01 Type of Facility, dFacility.03 Facility Location Code, and 
dFacility.09 Facility State match a facility defined by the state, process the 
relationship (the fact that the agency serves the facility) and ignore all other data. 
Otherwise, process content as an agency-specific facility. 
Sending: If the agency serves a facility defined by the state, send state-defined data 
for the facility. Otherwise, send data as received. 
dCustomResults 
Receiving: If dCustomResults.02 Custom Element ID Referenced matches the 
@CustomElementID of a custom element defined by the state, process content as state-
level custom element results. Otherwise, process content as agency-specific custom 
element results. 
Sending: Send data as received. 
 