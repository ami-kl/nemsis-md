

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Page 1 of 9 
Creating Custom Element Best Practices 
 
Purpose: The goal of this document is to assist state/territory data managers when considering 
requesting a custom element, value, or group from their ePCR vendor by providing recommen-
dations and best practices. This document is to be used in harmony with the existing 
NEMSIS 
v3 Custom Element Guide. It is not intended to supersede or replace currently successful 
state/territory practices.  
What is the difference between a custom value, custom element and 
custom group? 
What is a custom value? 
This is when a new description and code is added to an existing NEMSIS element.  An example 
is when “Gown”, “Face Shield”, and “Isolation Coveralls” were added to the existing element 
eOther.03 -  Personal Protective Equipment Used.  (See Figure 1) This extended the allowed 
values list and added additional codes that can be utilized.  See the 
NEMSIS v3 Custom Ele-
ment Guide under the “Extending an Existing NEMSIS Element” section.  Best practice would 
not mix data types such as a date/time value within an element not formatted to collect 
date/time. 
Impact to ePCR Software: The existing field within the software had additional values added for 
selection by the field clinicians. 
Impact to EMS DataSet or DEM DataSet:
 An additional custom configuration section is added in 
the custom configuration sections to allow reporting of the custom codes.  NOTE: The custom 
codes for each new description are associated with an existing NEMSIS code. 
Impact to Vendor:
 This may vary depending on vendor.  During compliance testing, all vendors 
must demonstrate the ability to add values to an existing element.   
Impact to EMS Agencies:
 The new value will appear in the associated dropdown list and should 
have minimal impact on the field clinician.  There could be some cost associated with the soft-
ware change depending on the ePCR vendor. The ePCR vendor should provide an implementa-
tion timeline.  
 
 
 
 
 

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Page 2 of 9 
Figure 1: Custom Values Added to eOther.03 - Personal Protective Equipment Used 
 
 
What is a custom element? 
This is when a whole new element is created to report something NEMSIS does not have a cur-
rent element for.  For example: when “Recent Exposure to Infectious Disease” was needed, a 
new element eHistory.903 - Recent Exposure to Infections Disease was created. (See Figure 2) 
Please refer to the NEMSIS V3 Custom Element Guide
 section, “Creating a Stand-alone Cus-
tom Element” for technical specifications.  
Impact to ePCR Software: A
 new field was created to allow the field clinician to collect the infor-
mation with “Yes”, “No”, and “Unknown” as options.   
Impact to EMS DataSet or DEM DataSet: An additional custom configuration s
ection was added 
to allow reporting of the custom element.  NOTE: the “Recent Exposure to Infectious Disease” 
custom element utilized existing NEMSIS code values for Yes/No/Unknown values,  and Perti-
nent Negatives were associated with the custom element. Custom elements can be set up as a 
data type such as binary, date/time, integer/number, or text/string,  or have a list of descrip-
tions/codes. 
Impact to Vendor:
 Programming effort may be required to create and push the new data ele-
ment out to the field software product, including where to place the field in data entry and print 
report forms, and support for analytical reporting. The time required for programming/develop-
ment varies by ePCR vendor. 

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Page 3 of 9 
Impact to EMS Agencies: The impact may include associated costs by ePCR vendor to add new 
fields, providing necessary training for the changes, and potential increase in time on task for 
documentation.  The ePCR vendor should provide an implementation timeline to the EMS Agen-
cies that will meet the 90-day guidelines for a new custom element within ePCR software re-
quested by the state.  
Figure 2: New Custom Element 
 
What is a custom group? 
A custom group is developed when multiple custom elements are put together within a specific 
group to paint a complete picture of the data being collected.  Each of the elements within the 
custom group would need to go through the new custom element process and then be grouped 
together within the custom configuration section utilizing the (d|e)CustomConfiguration.09 – 
Custom Data Element Grouping ID with a single custom group ID.  (See Figure 3). There is an 
excellent example in the NEMSIS V3 Custom Element Guide
 in the “Creating a Group of Cus-
tom Elements” starting on page 12.  A custom group is only necessary when creating a group of 
correlated elements that can repeat and that cannot be fit into an existing group such as eVi-
tals.VitalGroup. 

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Page 4 of 9 
Impact to ePCR Software:  Multiple new fields were created to allow the field clinicians to collect 
the information with possible varying types of data input such as dates, Yes/No/Unknown, and 
lists to choose from.   
Impact to EMS DataSet or DEM DataSet:
 Multiple custom configurations were added in the cus-
tom configuration to allow reporting of the custom elements.  One of the custom elements must 
be designated as the parent/key element to tie the other custom elements to. 
Impact to Vendor:
 Programming effort may be required to create and push the new data fields 
out to the field software product, including where to place the field in data entry and print report 
forms, and support for analytical reporting. The time required for programming/development var-
ies by ePCR vendor. 
Impact to EMS Agencies:
 The impact may include associated costs by ePCR vendor to add new 
fields, providing necessary training for the changes, and potential increase in time on task for 
documentation.  The ePCR vendor should provide an implementation timeline to the EMS Agen-
cies that will meet the 90-day guidelines for a new custom element within ePCR software re-
quested by the state.  
Figure 3: New Custom Group 
 
How do I know what/if customization is necessary? 
 
1.   Does NEMSIS already collect this element with all of the appropriate allowed values on 
the list?  - NO CUSTOM REPORTING NEEDED 
2.   Is it an extension to an element that utilizes a set of codes such as ICD-10, SNOMED 
CT or RxNorm codes where an additional code will fulfill the data collection requirement? 
- NO CUSTOM REPORTING NEEDED 
3.   Is there something similar being collected within the NEMSIS Data Dictionary for your 
current NEMSIS version but the current allowed values listed for the element do not sat-
isfy the data needed? – ADD a custom value to an existing NEMSIS element  
4.   Is there a custom element developed by another state that would satisfy the data 
needed? – ADOPT an existing custom element from another state or ePCR vendor 
5.   Is there a custom element developed but additional values are needed to satisfy the data 
needed? – ADOPT the existing custom element from another state or ePCR vendor and 
ADD the needed custom value(s)  
6.   Is this something completely new that hasn’t been collected in NEMSIS or by another 
stakeholder before? – CREATE a new NEMSIS custom element or custom element 
group  
Please see the Custom Element Flowchart and Checklist 
Creating Custom Element Best Practices Flowchart      Creating Custom Element Best Practices Checklist
 

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Page 5 of 9 
It is recommended that the state data manager discuss custom element needs for your 
state/territory as much as possible to ascertain the necessity of customization and to have an 
opportunity to hear ideas on moving forward with customization.  Some opportunities for discus-
sion are the NEMSIS TAC v3 Implementation Calls and NASEMSO Data Managers Council 
meetings where other stakeholders can share the best practices of customization within state 
data collection.  Also, consider discussing the customization needs with the NEMSIS TAC State 
Support team, and with your primary state vendor.  If one state/territory needs a custom element 
or value, there may be others that need the information collected as well.  
How to get a custom value ADDED to an existing element 
If an existing custom value is found within the National Custom Element Library: 
• Let your state vendor, EMS agencies, and your State 
Support team at the NEMSIS TAC know which custom 
value that already exists in the national custom element 
library will be added to your State DataSet. 
• The custom value and code must be added to your 
State DataSet by the ePCR vendor utilizing the custom 
configuration section. 
• The updated State DataSet should then be sent to the 
NEMSIS TAC to update the state repository and the 
state page on the NEMSIS website and allow field ven-
dors to download the new State DataSet. 
• The custom value should be added to the ePCR soft-
ware utilized by the state and by the agencies collecting 
the new custom values. 
If a new custom value is not in the National Custom Element Li-
brary, the process is the same with the added step of working with your state vendor to develop 
the new custom value.  It is strongly encouraged to discuss the new custom value with others 
that may have the same or similar data collection needs. 
• Let your ePCR vendor, EMS agencies, and your State Support team at the NEMSIS 
TAC know you want to implement a NEW custom value.    
• Work with your ePCR vendor to develop the new custom value for the existing element: 
o    To which element does the new value belong? 
o    What value needs to be added?  
o    What EXISTING value from the NEMSIS list will be associated with the new cus-
tom value?  (See Figure 4).  NOTE: for eOther.03 –   Personal Protective Equip-
ment Used, all of the new codes (4503025, 4503027, 4503029) were associated 
with the existing NEMSIS code of 4503019 “Other”. This is also referred to as 
“mapping” to an existing value when the data are transmitted.  
 
 
The National Custom Element Library 
is an interface to view the custom el-
ement configurations published by 
states in their State DataSets, plus 
custom elements that have been pub-
lished as "national custom elements" 
and the CMS ET3 custom elements. 
When a state adds a custom element 
configuration to its State DataSet, the 
configuration shows up in the Na-
tional Custom Element Library. It 
does not imply endorsement by the 
NEMSIS TAC. 

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Page 6 of 9 
Figure 4: Added Custom Values to An Existing NEMSIS Element 
 
• The new custom value and code must be added to your State DataSet by the ePCR 
vendor utilizing the custom configuration section. 
• The new State DataSet should then be sent to the NEMSIS TAC to update the state re-
pository and the state page on the NEMSIS website and to allow the field vendors within 
your state to download the new State DataSet. 
• The new custom description should then be added to the software utilized by the state 
and by the agencies collecting the new custom values. 
How to get a custom element ADDED 
If there is an existing custom element in the National Custom Element Library: 
• Let your ePCR vendor, your EMS agencies, and your State Support team at the 
NEMSIS TAC know which custom element that already exists in the national custom ele-
ment library will be added to your State DataSet. 
• The custom element must be added to your State DataSet by the ePCR vendor utilizing 
the custom configuration section. 
• The updated State DataSet should then be sent to the NEMSIS TAC to update the state 
repository and the state page on the NEMSIS website to allow the field vendors within 
your state to download the new State DataSet. 
• The custom element should then be added to the software utilized by the state and by 
the agencies collecting the new custom element. 
If there is an existing custom element in the National Custom Element Library
 but it needs addi-
tional values added that make it useable for your state’s needs: 
• Let your ePCR vendor, your EMS agencies, and your State Support team at the 
NEMSIS TAC know which custom element meets your needs if the additional values are 
added. 
• If the new values to the existing custom element do not change the existing custom ele-
ment in use, work with your ePCR vendor, your agencies and your State Support at the 
NEMSIS TAC to get those values added.  NOTE: Not all custom values in a custom ele-
ment must be made available in your state if the values do not meet state requirements, 
e.g., the extended values within eOther.03 – Personal Protective Equipment Used may 
not all be allowed for use, only applicable values would be added as allowed values. 
• The custom element must be added to your State DataSet by the ePCR vendor utilizing 
the custom configuration section. 

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Page 7 of 9 
• The updated State DataSet should then be sent to the NEMSIS TAC to update the state 
repository and the state page on the NEMSIS website to allow the ePCR vendors within 
your state to download the new State DataSet. 
• The custom element should then be added to the software utilized by the state and by 
the agencies collecting the new custom element. 
If there is no element in the custom library: 
• Check with your ePCR vendor and the NEMSIS TAC State Support team to see if there 
is an element in development or being utilized by anyone that meets your requirements. 
This may have already been accomplished if the need has been brought up on a 
NASEMSO Data Managers call or NEMSIS v3 Implementation Call with state data man-
agers and ePCR vendors. 
• The following information should be known to allow the ePCR vendors to update the 
State DataSet and to allow the development of a new custom element: 
o    Custom Element ID – a unique key value used to identify the custom element 
o    Data Element Title – What will it be named?  This is the title of the element that 
ePCR software should show in the data entry interface. 
o    NEMSIS Element – Which NEMSIS element does this new custom element ex-
pand on, such as eMedications or a NEMSIS group element such as eMedica-
tions.MedicationsGroup? 
o    Data Element Definition – How will this element be used?  This is additional infor-
mation that ePCR software should show to a user if they request help under-
standing the data element. 
o    Data Type – Is this binary (audio, image or video data), date/time, integer/num-
ber, text/string (any value can be entered), boolean (true/false), or Other? 
o    Recurrence – Can this element be present more than once relative to the 
NEMSIS element that it expands on? 
o    Data Usage Type – Mandatory (must be present in all ePCR without the use of 
“Not Recorded”/ “Not Applicable”/”Not Reporting”), Required (must be present in 
all ePCR but CAN use “Not Recorded”/ “Not Applicable”/”Not Reporting”), Rec-
ommended (not required and CAN use “Not Recorded”/ “Not Applicable”/”Not 
Reporting”), Optional (not required but if collected it CANNOT use “Not Rec-
orded”/ “Not Applicable”/”Not Reporting”)?  NOTE: This information sets forth 
your state’s expectations regarding the usage of the element but does not auto-
matically apply any validation.  You will need to create state Schematron rules to 
enforce the expected usage of the element. 
o    Potential Values – What values can be used, which tie back to the data type?  
The provider using the ePCR program would see the custom value description, 
and the ePCR software would transmit the associated value when submitting 
data to your state system. 
o    Do you want to allow any of the existing NOT values (example: 7701001 “Not Ap-
plicable”)? NOTE: This information sets forth your state’s expectations regarding 
the use of NOT values but does not automatically apply any validation.  You will 
need to create state Schematron rules to enforce the expected use of NOT val-
ues. 

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Page 8 of 9 
o    Do you want to allow any of the existing NEMSIS pertinent negatives (example: 
8801023 “Unable to Complete”, or 8801029 “Approximate”)? NOTE: This infor-
mation sets forth your state’s expectations regarding the use of pertinent nega-
tives but does not automatically apply any validation.  You will need to create 
state Schematron rules to enforce the expected use of pertinent negatives. 
o    Custom Data Element Grouping ID - If the custom element is part of a stand-
alone repeating group of custom elements, this is the Custom Element ID of the 
custom element that serves as the “anchor” or “parent” element of the group. 
 
Custom Element Development Process and Timeline 
 
 
 
Process Who Timeline What Should 
Happen 
Days to Com-
pletion 
Need for custom 
value/element deter-
mined 
State Data 
Manager 
N/A Talk with State ven-
dor, ePCR vendors, 
NEMSIS TAC, Other 
Data Managers 
N/A 
Work with State vendor 
to establish custom 
value(s)/element(s) re-
quirements 
State Data 
Manager 
N/A Determine best solu-
tion; gather neces-
sary information for 
element creation 
N/A 

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
Page 9 of 9 
Process Who Timeline What Should 
Happen 
Days to Com-
pletion 
State vendor is ready to 
publish State DataSet; 
Schematron changes 
would be required if 
rules apply to custom el-
ement 
State vendor Starts from 
completed re-
quirements 
submitted to 
Vendor from 
State Data 
Manager 
State vendor com-
pletes State DataSet 
and EMS/DEM Da-
taSet Schematron if 
required 
Up to 90 days 
NOTE: A signifi-
cant alteration to 
the definition of 
the element or sig-
nificant change to 
the requirement by 
the state may 
cause this clock to 
reset 
 
Notify EMS Agencies of 
pending changes; Notify 
other ePCR vendors 
throughout the state of 
pending changes 
State Data 
Manager 
Might occur 
simultane-
ously while 
working with 
State vendor 
Notification sent out N/A 
Submit updated re-
sources to NEMSIS TAC 
with list of changes 
State Data 
Manager 
Upon Receipt  Submitted file re-
viewed for structural 
validation 
Variable; may not 
be immediately if 
state isn’t ready to 
deploy updates 
NEMSIS TAC to update 
resources on state page 
website 
NEMSIS TAC Upon Receipt Validated file and list 
of changes posted 
to state page on 
NEMSIS.org website 
1-2 business days 
ePCR vendors obtain 
updated resources  
ePCR vendors Once pub-
lished to state 
resources 
page 
Have most current 
version of State Da-
taSet 
5 business days 
EMS Agency/ePCR ven-
dors implement in local 
software 
ePCR vendors Required pro-
gramming 
User Interface has 
additional values or 
element for provid-
ers to utilize 
Up to 90 days 
 
EMS Agency/Clinician 
utilize custom 
value(s)/element(s) 
EMS 
Agency/Clini-
cian 
 Custom fields used Up to 90 days 
QA/QI of custom fields State Data 
Managers 
After the cus-
tomization has 
been imple-
mented 
Determined by State 
Data Managers 
(May include moni-
toring data by ven-
dor, verify correct 
implementation)  
N/A 
 
The ability to put in custom elements allows the data collection to be specific to state needs but 
it should be done with great care and consideration to the data collection burden on the EMS 
Clinicians. 