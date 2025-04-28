

Page 1 
 
NEMSIS v3 EMSDataSet Header Guide 
Date 
July 25, 2011 
November 17, 2011 
January 31, 2012 
August 1, 2024  
 
Authors 
Karen E. Jacobson –   NEMSIS Director 
Keith R. Davis –    NEMSIS Data Architect 
Jorge Rojas Jr. – NEMSIS Data Manager / Analyst 
Joshua Legler –   NEMSIS Consultant 
Jennifer Correa –   NEMSIS Data Analyst 
 
Overview and Purpose 
This  document  describes  the  use  of  the  NEMSIS  v3  EMSDataSet  header  section.   The 
document  will provide an overview of how the header data are submitted, its purpose, 
and other ancillary information pertinent to its use.  The header element comprises the 
following groups: 
 
1. Demographic Group 
2. Custom Configurations 
 
EMSDataSet Header 
The purpose of the EMSDataSet header information is to identify the EMS agency and 
the state for which the patient care reports within the header are being submitted.  The 
EMSDataSet header information is submitted in every XML file.  The XML file may 
contain multiple headers, and each header may contain multiple patient care reports.  
The DemographicGroup in the header contains three elements that identify an EMS 
agency. The eCustomConfiguration section contains configuration information about 
custom data elements that may be present in the patient care reports. 
 
 
 

Page 2 
 
 
 
The EMSDataSet header has a 1:M occurrence.  This indicates there MUST be at least 
one header within an EMSDataSet XML file, but there MAY be many. Within each 
EMSDataSet header, there MUST be a DemographicGroup and there MAY be an 
eCustomConfiguration section.  Another important aspect of the EMSDataSet is that the 
PatientCareReport has a 1:M occurrence.  This indicates within each header there MUST 
be at least one Patient Care Report, but there MAY be multiple Patient Care Reports.   
 
The best practice for an agency reporting to a state or a state reporting to the national 
data repository is one patient care report per XML file.  However, there may be a need 
for multiple records to be reported within a single XML file to outside registries or billing 
companies. 
  

Page 3 
 
 
An example of the EMSDataSet Header within an XML file: 
<!-The EMSDataSet header MUST be present for each agency contained within the XML file.->    
<Header> 
<!-Demographic Group MUST be present.-->  
      <DemographicGroup> 
         <dAgency.01>11261</dAgency.01> 
         <dAgency.02>350-11261</dAgency.02> 
         <dAgency.04>10</dAgency.04> 
      </DemographicGroup> 
<!—eCustomConfiguration MAY contain custom data elements.--> 
      <eCustomConfiguration> 
         <eCustomConfiguration.CustomGroup CustomElementID="eHistory.904"> 
            <eCustomConfiguration.01 nemsisElement="eHistory">Recent International 
Travel</eCustomConfiguration.01> 
...  
         </eCustomConfiguration.CustomGroup> 
   <eCustomConfiguration> 
      <eCustomConfiguration.CustomGroup CustomElementID="eDisposition.21"> 
         <eCustomConfiguration.01 nemsisElement="eDisposition.21">Type of 
Destination</eCustomConfiguration.01> 
... 
         <eCustomConfiguration.06 nemsisCode="4221013" customValueDescription="Alternate 
Care Site">4221043</eCustomConfiguration.06> 
      </eCustomConfiguration.CustomGroup> 
<eCustomConfiguration.CustomGroup CustomElementID="eMedications.903"> 
            <eCustomConfiguration.01 
nemsisElement="eMedications.MedicationGroup">Medication Lot 
Number</eCustomConfiguration.01> 
... 
         </eCustomConfiguration.CustomGroup> 
      </eCustomConfiguration> 
      <!-- PatientCareReport/UUID MUST be present for each Patient Care Report contained 
within the XML file.--> 
      <PatientCareReport UUID="9c27ac41-89fe-4059-9e25-ff97b3f22a97"> 
  

Page 4 
 
DemographicGroup 
<DemographicGroup> is the group tag used to hold demographic information related to 
the EMS agency.  For more information regarding the DEMDataSet, please refer to the 
DataSet Guides section of the Guides & Usage page from the Technical Resources menu 
on the NEMSIS website. 
 
      <DemographicGroup> 
         <dAgency.01>11261</dAgency.01> 
         <dAgency.02>350-11261</dAgency.02> 
         <dAgency.04>10</dAgency.04> 
      </DemographicGroup> 
 
Each of the elements within this group should match the demographic XML file 
submitted for the agency.  The group usage summary and definitions are: 
 
    V3 Element      
Number 
 
 
V3 Element Title 
 
National 
Element 
 
 
Usage 
dAgency.01 EMS Agency Unique State ID Yes Mandatory 
dAgency.02 EMS Agency Number Yes Mandatory 
dAgency.04 EMS Agency State Yes Mandatory 
 
dAgency.01 The unique ID assigned to the EMS Agency which is associated with all state 
licensure numbers and information.  This may be the EMS Agency Name or a unique 
number assigned by the state EMS office. This is required to document multiple license 
types and numbers associated with the same EMS Agency. 
 
dAgency.02 The state-assigned provider number of the responding agency. This is the 
primary identifier for the entire Demographic Section. Each of the Demographic Sections 
must be associated with an EMS Agency Number. An EMS Agency can have more than 
one Agency Number within a state. This reflects the ability for an EMS Agency to have a 
different number for each service type or location (based on state implementation). The 
EMS Agency Number in dAgency.02 can be used to auto-populate eResponse.01 EMS 
Agency Number in the EMS Event Section. 
 
dAgency.04 The state/territory which assigned the EMS Agency Number. This has been 
clarified to reflect that it is the state in which the EMS Agency resides and the state 
associated with the EMS Agency Number. 
 
 
 

Page 5 
 
eCustomConfiguration 
<eCustomConfiguration> is the group tag used to hold the custom element 
configurations for any custom elements that may be present in the patient care reports 
within the header. The custom element configuration information only applies to the 
patient care reports that are within the same header. Each custom element 
configuration is contained within an <eCustomConfiguration.CustomGroup>   tag.  
Custom elements can be designed by a local or state EMS agency.  For more information 
on the development, design, and implementation of custom elements, please refer to 
the Custom Elements section of the Guides & Usage
 page from the Technical Resources 
menu on the NEMSIS website. 
 
Grouping of the eCustomConfiguration elements in the header is important as it 
provides information about how to interpret custom element data that is included in 
the patient care reports.  It is the responsibility of the software developer to ensure this 
information appears in the header on export.  The XSD does not require the use of 
custom elements.  The XSD only defines basic structural requirements for custom 
elements; therefore, a Schematron schema is usually necessary to define more specific 
validation requirements for custom elements. 
 
      <eCustomConfiguration> 
         <eCustomConfiguration.CustomGroup CustomElementID="eHistory.904"> 
            <eCustomConfiguration.01 nemsisElement="eHistory">Recent International 
Travel</eCustomConfiguration.01> 
...  
         </eCustomConfiguration.CustomGroup> 
   <eCustomConfiguration> 
      <eCustomConfiguration.CustomGroup CustomElementID="eDisposition.21"> 
         <eCustomConfiguration.01 nemsisElement="eDisposition.21">Type of 
Destination</eCustomConfiguration.01> 
... 
         <eCustomConfiguration.06 nemsisCode="4221013" customValueDescription="Alternate 
Care Site">4221043</eCustomConfiguration.06> 
      </eCustomConfiguration.CustomGroup> 
<eCustomConfiguration.CustomGroup CustomElementID="eMedications.903"> 
            <eCustomConfiguration.01 
nemsisElement="eMedications.MedicationGroup">Medication Lot 
Number</eCustomConfiguration.01> 
... 
         </eCustomConfiguration.CustomGroup> 
</eCustomConfiguration> 
 

Page 6 
 
The eCustomConfiguration elements are not national elements and have a usage of 
optional.  While it is a best practice to include the information within the EMSDataSet 
header, it is not required like the demographic information. 
 
PatientCareReport 
Each header contains one or more <PatientCareReport> tags, each representing a patient care report. 
All of the patient care reports within a header represent EMS activations of the agency identified in the 
DemographicGroup within the same header, and any custom element data in the patient care reports 
should be interpreted according to the custom element configurations included in the 
eCustomConfiguration within the same header. 