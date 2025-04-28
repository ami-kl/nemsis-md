

 
Page 1 
NEMSIS V3 Custom Element Guide 
Date 
August 17, 2011 
March 7, 2018 (Rewritten) 
December 23, 2020 (improved guidance on nemsisElement and CorrelationID attributes) 
May 01, 2024 (improved guidance on the use of (d|e)CustomResults.03) 
Authors 
Su Shaoyu – NEMSIS Lead Developer 
Joshua Legler – NEMSIS Consultant 
Jennifer Correa – Business Data Analyst 
Overview 
This guide describes how to implement custom elements in NEMSIS version 3. Custom elements are 
sometimes necessary to transmit information in a NEMSIS XML document that cannot be handled using 
existing NEMSIS data elements. The NEMSIS 3 XML Schema (XSD) provides a standardized structure for 
defining custom elements and producing custom element result data. Examples of custom element 
implementations that are supported by the NEMSIS standard include the following: 
• Adding a data element 
• Extending an existing NEMSIS element with additional choices or detail 
• Creating a correlated group of custom data elements 
This guide provides some sample scenarios where custom elements would be needed and demonstrates 
how they would be implemented. 
Custom Element Structures in the NEMSIS XML Schema 
Both of the core NEMSIS XML schemas—DEMDataSet (agency demographic data) and EMSDataSet 
(patient care report data)—provide a mechanism for defining custom elements and producing custom 
element results in a NEMSIS XML document. The structural pattern is the same in both schemas. The 
only difference between the two schemas is that element names in DEMDataSet begin with “d,” while 
element names in EMSDataSet begin with “e.”  The StateDataSet provides a mechanism for states to 
define custom elements to be implemented in DEMDataSet and EMSDataSet documents. 

 
Page 2 
The NEMSIS XML schema handles custom elements in two sections: 
1. (d|e)CustomConfiguration, in the header of a document, is the structure that is used to provide 
custom element definitions. 
2. (d|e)CustomResults, within each record (EMS agency or PCR) in a document, is the structure 
that is used to provide custom element result data. 
With this structure, custom elements are defined globally for a NEMSIS XML document, and custom 
element result data are recorded within each record (EMS agency or PCR) in the document. A system 
receiving and processing NEMSIS XML data can use the custom element definitions in 
(d|e)CustomConfiguration to understand the custom element result data in (d|e)CustomResults. 
See the NEMSIS Data Dictionary
 for full documentation of the (d|e)CustomConfiguration and 
(d|e)CustomResults structures. 
A custom element can extend any NEMSIS standard element. The nemsisElement attribute on 
(d|e)CustomConfiguration.01 Custom Data Element Title is used to indicate which NEMSIS element the 
custom element is intended to extend. For example: 
• For a custom element configuration that adds custom values to the list of choices for 
eProtocols.01 Protocols Used, the nemsisElement attribute on eCustomConfiguration.01 would 
be “eProtocols.01”. 
• For a custom element that will be collected within each set of vital signs, the nemsisElement 
attribute would be “eVitals.VitalGroup”. 
• For a custom element configuration that adds custom values to the list of choices for 
eDispatch.01 Dispatch Reason, the nemsisElement attribute would be “eDispatch.01”. 
• For a custom element that collects additional patient demographic information, the 
nemsisElement attribute would be “ePatient”. 
The CorrelationID attribute in the NEMSIS standard allows   custom element data to be correlated with an 
existing data element instance when an element can occur multiple times in a DemographicReport or 
PatientCareReport record. The CorrelationID can be any value (from 2 to 255 characters long) generated 
by the software producing the XML document. It does not need to be persisted in a database, and it 
does not need to be the same each time the same record is generated in a NEMSIS XML document. All 
that matters is that the content of (d|e)CustomResults.03 (as described below) matches the value of the 
CorrelationID attribute of the element being extended with custom result data, and that no elements 
have a CorrelationID attribute with the same value as each other. 
(d|e)CustomResults.03 CorrelationID of (DemographicReport|PatientCareReport)  Element or Group is 
used when custom element result data must be associated with a NEMSIS element that can occur 
multiple times in a Demographic or Patient Care Report record—either because the element being 
extended can occur multiple times, or one of its XML ancestor elements can. In those situations, the 
value of (d|e)CustomResults.03 should be the value of the CorrelationID attribute on the associated 
element instance—or its closest ancestor that has a CorrelationID attribute.  

 
Page 3 
"Ancestor” an XML concept. As with a family tree, the concept starts with a “context node,” and the first 
level above is the parent (the node that includes the context node), then the next ancestor (the node 
that includes the parent), and so on. If the context node has child nodes (elements below the context 
node), they (and their child nodes) are descendants. 
The graphic below shows an example of the concept using eExam.AbdomenGroup as the context. 
 
Continuing the examples from above: 
• eProtocols.01 Protocols Used can occur multiple times within a PatientCare Report record. It 
cannot occur multiple times within its parent element, eProtocols.ProtocolGroup , so it does not 
have a CorrelationID attribute. However, eProtocols.ProtocolGroup can occur multiple times, so 
it has a CorrelationID attribute. In the custom element result data for a custom element that 
extends eProtocols.01, eCustomResults.03 should contain the value of the CorrelationID 
attribute in the eProtocols.ProtocolGroup that contains the instance of eProtocols.01 to which 
the custom result data is related. 
 
• For a custom element that will be correlated with a set of vital signs, eCustomResults.03 should 
contain the value of the CorrelationID attribute of the instance of eVitals.VitalGroup to which 
the custom result data is related. 
 
• For a custom element that extends eDispatch.01 Dispatch Reason, eCustomResults.03 should 
not be present in the custom result data. eDispatch.01 only occurs once within a 
PatientCareReport record, so there is no need to specify which instance of eDispatch.01 the 
custom result data applies to. 
  

 
Page 4 
• For a custom clement that collects additional patient demographic data and has been 
configured as extending the ePatient element, eCustomResults.03 should not be present in the 
custom result data. ePatient only occurs once within a PatientCareReport record, so there is no 
need to specify which instance of ePatient the custom result data applies to. 
 
 
 

 
Page 5 
Creating a Stand-alone Custom Element 
This scenario describes the implementation of a custom data element on a PCR that has no relationship 
to any existing NEMSIS data elements. A data dictionary page for the element would look like this: 
cePatient.01 - Recent Travel Outside U.S. 
Definition 
Has the patient traveled outside the United States in the last 30 days? 
National Element 
 
Pertinent Negatives (PN) No 
State Element Yes Not Values (NV) No 
Version 2 Element 
 
Is Nillable Yes 
Usage Optional Recurrence 0 : 1 
Code List 
Code NEMSIS Code Description 
1 
 
No 
2 
 
Yes 
 
 
The element may be rendered in a data entry interface like this: 
Recent Travel Outside U.S.  ▼ 
 No  
 Yes  
 
The custom element definition and result would be implemented in a NEMSIS XML document as 
illustrated on the following page: 

 
Page 6 
<EMSDataSet ...> 
   <Header> 
    <DemographicGroup> 
      ...   
    </ DemographicGroup> 
    <eCustomConfiguration> 
    <eCustomConfiguration.CustomGroup CustomElementID="cePatient.01"> 
      <eCustomConfiguration.01 nemsisElement="ePatient"> 
        Recent Travel Outside U.S. 
      </ eCustomConfiguration.01> 
      <eCustomConfiguration.02> 
        Has the patient traveled outside the United States in the last 30 days? 
      </ eCustomConfiguration.02> 
      <eCustomConfiguration.03>9902009</eCustomConfiguration.03> 
      <eCustomConfiguration.04>9923001</eCustomConfiguration.04> 
      <eCustomConfiguration.05>9903007</eCustomConfiguration.05> 
      <eCustomConfiguration.06 customValueDescription="No">1</ eCustomConfiguration.06> 
      <eCustomConfiguration.06 customValueDescription="Yes  ">2</eCustomConfiguration.06> 
    </ eCustomConfiguration.CustomGroup> 
    </ eCustomConfiguration> 
    <PatientCareReport> 
      ...   
      <eCustomResults> 
        <eCustomResults.ResultsGroup> 
          <eCustomResults.01>2</eCustomResults.01> 
          <eCustomResults.02>cePatient.01</eCustomResults.02> 
        </ eCustomResults.ResultsGroup> 
      </ eCustomResults> 
      ...   
    </ PatientCareReport> 
   </ Header> 
</ EMSDataSet> 
 
In this example, the data in eCustomConfiguration define the custom data element.  
The optional nemsisElement attribute in eCustomConfiguration.01 indicates that this element logically 
belongs with the elements in the ePatient section of the NEMSIS data set. If this custom element were a 
stand-alone element that needed to be grouped with a repeating set in the NEMSIS data set (such as 
vital signs), the value of the nemsisElement attribute would be necessary to indicate the group element 
that should be the “parent” of the custom element (for example, “eVitals.VitalGroup”). 
The data in eCustomResults contain two data elements. The value of eCustomResults.01 is the custom 
element result (in this case, 2, which means “Yes”). The value of eCustomResults.02 references the 
CustomElementID attribute of the custom element definition so that the software receiving the data 
knows that this custom element result is for the “Recent Travel Outside U.S.” custom data element. 
eCustomResults.03 is not present, because the custom element extends ePatient, which can only occur 
once in a PatientCareReport record. 
The element is defined as optional. If the user selected neither of the choices on the code list, then the 
data in eCustomResults would be omitted from the PCR in the XML document. 
  

 
Page 7 
Creating a Custom Element in a Repeating Group 
This scenario describes the implementation of a custom data element on a PCR that would be modeled 
as a new data element within an existing repeating group of data elements. A data dictionary page for 
the element would look like this: 
ceVitals.01 – Pulse Oximetry Qualifier 
Definition 
Qualification of pulse oximetry reading based on administration of oxygen. 
National Element 
 
Pertinent Negatives (PN) No 
State Element Yes Not Values (NV) No 
Version 2 Element 
 
Is Nillable Yes 
Usage Optional Recurrence 0 : 1 
Code List 
Code NEMSIS Code Description 
1 
 
On Room Air 
2 
 
Low Concentration O2 (1-6 LPM) 
3 
 
Medium Concentration O2 (7-9 LPM) 
4 
 
High Concentration O2 (10-25 LPM) 
 
 
The element may be rendered in a data entry interface like this: 
Pulse Oximetry Qualifier  ▼ 
 On Room Air  
 Low Concentration O2 (1-6 LPM)  
 Medium Concentration O2 (7-9 LPM)  
 High Concentration O2 (10-25 LPM)  
 
The custom element definition and result would be implemented in a NEMSIS XML document as 
illustrated on the following page: 

 
Page 8 
<EMSDataSet ...> 
   <Header> 
    <DemographicGroup> 
      ...   
    </ DemographicGroup> 
    <eCustomConfiguration> 
    <eCustomConfiguration.CustomGroup CustomElementID="ceVitals.01"> 
      <eCustomConfiguration.01 nemsisElement="eVitals.VitalGroup"> 
        Pulse Oximetry Qualifier 
      </ eCustomConfiguration.01> 
      <eCustomConfiguration.02> 
        Qualification of pulse oximetry reading based on administration of oxygen. 
      </ eCustomConfiguration.02> 
      <eCustomConfiguration.03>9902009</eCustomConfiguration.03> 
      <eCustomConfiguration.04>9923003</eCustomConfiguration.04> 
      <eCustomConfiguration.05>9903005</eCustomConfiguration.05> 
      <eCustomConfiguration.06 customValueDescription="On Room Air"> 
        1</eCustomConfiguration.06> 
      <eCustomConfiguration.06 customValueDescription="Low Concentration O2 (1-6 LPM)"> 
        2</eCustomConfiguration.06> 
      <eCustomConfiguration.06 customValueDescription="Medium Concentration O2 (7-9 LPM)"> 
        3</eCustomConfiguration.06> 
      <eCustomConfiguration.06 customValueDescription="High Concentration O2 (10-25 LPM)"> 
        4</eCustomConfiguration.06> 
      ...  
      <eVitals.> 
        <eVitals.VitalGroup CorrelationID="1001"> 
          ...   
        </ eVitals.VitalGroup> 
        <eVitals.VitalGroup CorrelationID="1002"> 
          ...   
        </ eVitals.VitalGroup> 
      </ eVitals> 
 
    </ eCustomConfiguration.CustomGroup> 
    </ eCustomConfiguration> 
    <PatientCareReport> 
      ...   
      <eCustomResults> 
        <eCustomResults.ResultsGroup> 
          <eCustomResults.01>1</eCustomResults.01> 
          <eCustomResults.02>ceVitals.01</ eCustomResults.02> 
          <eCustomResults.03>1001</ eCustomResults.03> 
        </ eCustomResults.ResultsGroup> 
        <eCustomResults.ResultsGroup> 
          <eCustomResults.01>4</eCustomResults.01> 
          <eCustomResults.02>ceVitals.01</ eCustomResults.02> 
          <eCustomResults.03>1002</ eCustomResults.03> 
        </ eCustomResults.ResultsGroup> 
      </ eCustomResults> 
      ...   
    </ PatientCareReport> 
   </ Header> 
</ EMSDataSet> 
 

 
Page 9 
In this example, the nemsisElement attribute in eCustomConfiguration.01 indicates that this element 
logically belongs with the elements in the eVitals.VitalGroup section of the NEMSIS data set. The value 
of the nemsisElement attribute is necessary to indicate the repeating group element that should be the 
“parent” of the custom element. 
The value in eCustomConfiguration.04 (Custom Data Element Recurrence) indicates that the element 
cannot have multiple values within its parent. In other words, while eVitals.VitalGroup can occur 
multiple times, the custom data element can only occur once within each instance of eVitals.VitalGroup. 
eCustomResults.03 has been added to each custom element result group. Because multiple sets of vital 
signs may be recorded on a PCR, it is necessary to use eCustomResults.03 to indicate which set of vital 
signs the custom element result belongs to. The value of eCustomResults.03 is the content of the 
CorrelationID attribute on the data element that is being extended. 
  

 
Page 10 
Extending an Existing NEMSIS Element 
This scenario describes the implementation of a custom data element on a PCR that adds choices to the 
list of an existing NEMSIS data element. The data dictionary page for eMedications.08 Medication 
Complication might be extended to look like this: 
eMedications.08 - Medication Complication 
Definition 
Any complication (abnormal effect on the patient) associated with the administration of the medication to 
the patient by EMS 
National Element Yes Pertinent Negatives (PN) No 
State Element Yes Not Values (NV) Yes 
Version 2 Element E18_08 Is Nillable Yes 
Usage Required Recurrence 1 : M 
Attributes 
Not Values (NV) 
7701001 - Not Applicable 7701003 - Not Recorded 
 
CorrelationID 
Data Type: String  minLength: 0  maxLength: 255 
Code List 
Code NEMSIS Code Description 
 3708001 Altered Mental Status 
 3708003 Apnea 
 3708005 Bleeding 
 3708007 Bradycardia 
 3708009 Bradypnea 
c101 3708035 Breathing Rate Change 
 3708011 Diarrhea 
 3708013 Extravasation 
c102 3708035 Grunting 
 3708015 Hypertension 
 3708017 Hyperthermia 
 3708019 Hypotension 
 3708021 Hypothermia 
 3708023 Hypoxia 
 3708025 Injury 
 3708043 Itching 
 3708029 Nausea 
 3708031 None 
c103 3708035 Nose Flaring 
 3708033 Other 
 3708035 Respiratory Distress 
 3708037 Tachycardia 
 3708039 Tachypnea 
 3708045 Urticaria 
 3708041 Vomiting 
c104 3708035 Wheezing 
 
These are custom values. In this 
example, all of them are specific 
types of respiratory distress, so 
they all map to the NEMSIS code 
for “Respiratory Distress.” 

 
Page 11 
The element may be rendered in a data entry interface like this: 
Medication Complication 
(Select all that apply) 
Altered Mental Status ▲ 
 Apnea  
 Nose Flaring  
 Other  
 Respiratory Distress  
 Tachycardia  
 Tachypnea  
 Urticaria  
 Vomiting  
 Wheezing ▼ 
 
The custom element definition and result would be implemented in a NEMSIS XML document as 
illustrated on the following page: 
  
These are custom values. 

 
Page 12 
<EMSDataSet ...  > 
   <Header> 
    <DemographicGroup> 
      ...   
    </ DemographicGroup> 
    <eCustomConfiguration> 
      <eCustomConfiguration.CustomGroup CustomElementID="eMedications.08"> 
        <eCustomConfiguration.01 nemsisElement="eMedications.08"> 
          Medication Complication 
        </ eCustomConfiguration.01> 
        <eCustomConfiguration.02> 
          Any complication (abnormal effect on the patient) associated with the  
          administration of the medication to the patient by EMS 
        </ eCustomConfiguration.02> 
        <eCustomConfiguration.03>9902009</ eCustomConfiguration.03> 
        <eCustomConfiguration.04>9923003</ eCustomConfiguration.04> 
        <eCustomConfiguration.05>9903003</ eCustomConfiguration.05> 
        <eCustomConfiguration.06 nemsisCode="3708035"  
            customValueDescription="Breathing Rate Change">c101</eCustomConfiguration.06> 
        <eCustomConfiguration.06 nemsisCode="3708035"  
            customValueDescription="Grunting">c102</ eCustomConfiguration.06> 
        <eCustomConfiguration.06 nemsisCode="3708035"  
            customValueDescription="Nose Flaring">c103</ eCustomConfiguration.06> 
        <eCustomConfiguration.06 nemsisCode="3708035"  
            customValueDescription="Wheezing">c104</ eCustomConfiguration.06> 
        <eCustomConfiguration.07>7701001</ eCustomConfiguration.07> 
        <eCustomConfiguration.07>7701003</ eCustomConfiguration.07> 
      </ eCustomConfiguration.CustomGroup> 
    </ eCustomConfiguration> 
    <PatientCareReport> 
      ...    
      <eMedications> 
        <eMedications.MedicationGroup> 
          ...   
          <eMedications.08 CorrelationID="1001">3708029</eMedications.08> 
          <eMedications.08 CorrelationID="1002">3708035</eMedications.08> 
          <eMedications.08 CorrelationID="1003">3708035</eMedications.08> 
          ...   
        </ eMedications.MedicationGroup> 
      </ eMedications> 
      ...   
      <eCustomResults> 
        <eCustomResults.ResultsGroup> 
          <eCustomResults.01>c102</ eCustomResults.01> 
          <eCustomResults.02>eMedications.08</ eCustomResults.02> 
          <eCustomResults.03>1002</ eCustomResults.03> 
        </ eCustomResults.ResultsGroup> 
        <eCustomResults.ResultsGroup> 
          <eCustomResults.01>c104</ eCustomResults.01> 
          <eCustomResults.02>eMedications.08</ eCustomResults.02> 
          <eCustomResults.03>1003</ eCustomResults.03> 
        </ eCustomResults.ResultsGroup> 
      </ eCustomResults> 
      ...   
    </ PatientCareReport> 
   </ Header> 
</ EMSDataSet> 

 
Page 13 
In this example, eCustomResults.03 has been added to each custom element result group. Because 
multiple medications may be administered on a PCR, and each medication administration may have 
multiple complications, it is necessary to use eCustomResults.03 to indicate which medication 
complication instance is being extended. The value of eCustomResults.03 is the content of the 
CorrelationID attribute on the data element that is being extended. 
The two instances of eMedications.08 that are being extended contain the NEMSIS code for 
“Respiratory Distress” (3708035), because the custom element configuration states that “Grunting” and 
“Wheezing” both map to the standard NEMSIS code for “Respiratory Distress.” This is important, 
because when a NEMSIS XML document is sent to the national EMS database, it includes only the 
national data elements. All custom element definitions and results are removed from the document. 
The national EMS database only receives <eMedications.08>3708035</eMedications.08>. 
Since this custom data element has been defined to have a recurrence of 1:M, and since both of the 
custom element results in this example map to the same standard NEMSIS code, it would also be 
acceptable to generate only one instance of eMedications.08 with the standard NEMSIS code and only 
one custom element result group with multiple values for eCustomResults.01, like this: 
      <eMedications> 
        <eMedications.MedicationGroup> 
          ...   
          <eMedications.08 CorrelationID="1001">3708029</eMedications.08> 
          <eMedications.08 CorrelationID="1002">3708035</eMedications.08> 
          ...   
        </ eMedications.MedicationGroup> 
      </ eMedications> 
      ...   
      <eCustomResults> 
        <eCustomResults.ResultsGroup> 
          <eCustomResults.01>c102</ eCustomResults.01> 
          <eCustomResults.01>c104</ eCustomResults.01> 
          <eCustomResults.02>eMedications.08</ eCustomResults.02> 
          <eCustomResults.03>1002</ eCustomResults.03> 
        </ eCustomResults.ResultsGroup> 
      </ eCustomResults> 
 
In these examples, the first instance of eMedications.08 also has a correlationID attribute (“1001”). It is 
permitted but not necessary, since the instance is not being extended by a custom result value.  

 
Page 14 
Creating a Group of Custom Elements 
This scenario describes the implementation of a correlated group of custom data elements on a PCR. 
Several data elements are included in the group, and the group may occur multiple times in a PCR. A 
data dictionary structure for the group would look like this: 
1 : M Patient Restraints 
       
 
1 : 1 ceRestraint.01 - Date/Time Patient Restraint Occurred 
 
R 
 
N, L 
       
 
1 : 1 ceRestraint.02 - Type of Patient Restraint 
 
R 
 
N, L 
       
 
1 : 1 ceRestraint.03 - Reason for Patient Restraint 
 
R 
 
N, L 
 
The data dictionary pages for the individual custom elements would look like this: 
ceRestraint.01 - Date/Time Patient Restraint Occurred 
Definition 
The date and time the patient was restrained. 
National Element 
 
Pertinent Negatives (PN) No 
State Element Yes Not Values (NV) No 
Version 2 Element 
 
Is Nillable Yes 
Usage Required Recurrence 1 : M 
Constraints 
Data Type 
Date/Time 
 
 
ceRestraint.02 - Type of Patient Restraint 
Definition 
The type of restraint used on the patient. 
National Element 
 
Pertinent Negatives (PN) No 
State Element Yes Not Values (NV) Yes 
Version 2 Element 
 
Is Nillable Yes 
Usage Required Recurrence 1 : 1 
Grouping ID 
ceRestraint.01 
Attributes 
Not Values (NV) 
7701001 - Not Applicable 
7701003 - Not Recorded 
Constraints 
Data Type 
Text/String 
 

 
Page 15 
 
ceRestraint.03 - Reason for Patient Restraint 
Definition 
The reason for restraining the patient. 
National Element 
 
Pertinent Negatives (PN) No 
State Element Yes Not Values (NV) Yes 
Version 2 Element 
 
Is Nillable Yes 
Usage Required Recurrence 1 : 1 
Grouping ID 
ceRestraint.01 
Attributes 
Not Values (NV) 
7701001 - Not Applicable 
7701003 - Not Recorded 
Constraints 
Data Type 
Text/String 
 
 
The elements may be rendered in the data entry interface like this: 
Patient Restraints 
Date/Time Patient Restraint Occurred  Type of Patient Restraint  Reason for Patient Restraint 
01/30/2018 13:01:00  Stretcher restraint  To place pt in ambulance 
     
01/30/2018 13:20:00  Straight jacket  Pt became combative 
     
  + Add Another   
The NEMSIS custom element structure does not support a way to define a group header like “Patient 
Restraints” and then tie multiple elements to that header. Instead, one element must be defined as the 
“parent” or “key” element, and the other elements can be tied to that element. 
The custom element definitions and results would be implemented in a NEMSIS XML document like this: 
  

 
Page 16 
<EMSDataSet ...  > 
   <Header> 
    <DemographicGroup> 
      ...   
    </ DemographicGroup> 
    <eCustomConfiguration> 
      <eCustomConfiguration.CustomGroup CustomElementID="ceRestraint.01"> 
        <eCustomConfiguration.01> 
          Date/Time Patient Restraint Occurred 
        </ eCustomConfiguration.01> 
        <eCustomConfiguration.02> 
          The date and time the patient was restrained. 
        </ eCustomConfiguration.02> 
        <eCustomConfiguration.03>9902003</ eCustomConfiguration.03> 
        <eCustomConfiguration.04>9923003</ eCustomConfiguration.04> 
        <eCustomConfiguration.05>9903001</ eCustomConfiguration.05 > 
      </ eCustomConfiguration.CustomGroup> 
      <eCustomConfiguration.CustomGroup CustomElementID="ceRestraint.02"> 
        <eCustomConfiguration.01> 
          Type of Patient Restraint 
        </ eCustomConfiguration.01> 
        <eCustomConfiguration.02> 
          The type of restraint used on the patient. 
        </ eCustomConfiguration.02> 
        <eCustomConfiguration.03>9902009</ eCustomConfiguration.03> 
        <eCustomConfiguration.04>9923001</ eCustomConfiguration.04> 
        <eCustomConfiguration.05>9903003</ eCustomConfiguration.05> 
        <eCustomConfiguration.07>7701001</ eCustomConfiguration.07> 
        <eCustomConfiguration.07>7701003</ eCustomConfiguration.07> 
        <eCustomConfiguration.09>ceRestraint.01</eCustomConfiguration.09> 
      </ eCustomConfiguration.CustomGroup> 
      <eCustomConfiguration.CustomGroup CustomElementID="ceRestraint.03"> 
        <eCustomConfiguration.01> 
          Reason for Patient Restraint 
        </ eCustomConfiguration.01> 
        <eCustomConfiguration.02> 
          The reason for restraining the patient. 
        </ eCustomConfiguration.02> 
        <eCustomConfiguration.03>9902009</ eCustomConfiguration.03> 
        <eCustomConfiguration.04>9923001</ eCustomConfiguration.04> 
        <eCustomConfiguration.05>9903003</ eCustomConfiguration.05> 
        <eCustomConfiguration.07>7701001</ eCustomConfiguration.07> 
        <eCustomConfiguration.07>7701003</ eCustomConfiguration.07> 
        <eCustomConfiguration.09>ceRestraint.01</eCustomConfiguration.09> 
      </ eCustomConfiguration.CustomGroup> 
    </ eCustomConfiguration> 
 
Continued on next page... 
  

 
Page 17 
    <PatientCareReport> 
      ...   
      <eCustomResults> 
 
        <eCustomResults.ResultsGroup CorrelationID="1004"> 
          <eCustomResults.01>2018-01-30T13:01:00-05:00</ eCustomResults.01> 
          <eCustomResults.02>ceRestraint.01</eCustomResults.02> 
        </ eCustomResults.ResultsGroup> 
        <eCustomResults.ResultsGroup> 
          <eCustomResults.01>Stretcher restraint</ eCustomResults.01> 
          <eCustomResults.02>ceRestraint.02</eCustomResults.02> 
          <eCustomResults.03>1004</ eCustomResults.03> 
        </ eCustomResults.ResultsGroup> 
        <eCustomResults.ResultsGroup> 
          <eCustomResults.01>To place pt in ambulance</eCustomResults.01> 
          <eCustomResults.02>ceRestraint.03</eCustomResults.02> 
          <eCustomResults.03>1004</ eCustomResults.03> 
        </ eCustomResults.ResultsGroup> 
 
        <eCustomResults.ResultsGroup CorrelationID="1005"> 
          <eCustomResults.01>2018-01-30T13:20:00-05:00</ eCustomResults.01> 
          <eCustomResults.02>ceRestraint.01</eCustomResults.02> 
        </ eCustomResults.ResultsGroup> 
        <eCustomResults.ResultsGroup> 
          <eCustomResults.01>Straight jacket</eCustomResults.01> 
          <eCustomResults.02>ceRestraint.02</eCustomResults.02> 
          <eCustomResults.03>1005</ eCustomResults.03> 
        </ eCustomResults.ResultsGroup> 
        <eCustomResults.ResultsGroup> 
          <eCustomResults.01>Pt became combative</ eCustomResults.01> 
          <eCustomResults.02>ceRestraint.03</eCustomResults.02> 
          <eCustomResults.03>1005</ eCustomResults.03> 
        </ eCustomResults.ResultsGroup> 
 
      </ eCustomResults> 
      ...   
    </ PatientCareReport> 
   </ Header> 
</ EMSDataSet> 
 
In this example, eCustomConfiguration.09 has been added to the custom element configuration for 
“Type of Patient Restraint” and “Reason for Patient Restraint.” Because those two data elements must 
be correlated to a specific “Date/Time Patient Restraint Occurred,” it is necessary to use 
eCustomConfiguration.09   to define the correlation. The value of eCustomConfiguration.09   is the 
content of the CorrelationID attribute on the custom element configuration for “Date/Time Patient 
Restraint Occurred.” 
Also, eCustomResults.03 has been added to the custom element result groups for “Type of Patient 
Restraint” and “Reason for Patient Restraint.” The value of eCustomResults.03 is the content of the 
CorrelationID attribute on a specific custom data element result group for “Date/Time Patient Restraint 
Occurred,” so that the software receiving the data knows that the stretcher restraint to place the 
patient in the ambulance was applied at 13:01, while the straight jacket because the patient became 
combative was applied at 13:20. 

 
Page 18 
Validating Custom Element Data 
(d|e)CustomConfiguration is used to document the definition of a custom data element, including its 
constraints, such as data type, recurrence, potential values, Not Values, and Pertinent Negatives. 
However, since those constraints are defined within the XML document itself, not within the XSD, they 
are not enforced during XML Schema (XSD) validation. For example, the NEMSIS XSD defines the data 
type for eCustomResults.01 as a string with a maximum length of 100,000, and it allows any Not Value 
or Pertinent Negative attribute. Thus, even though the eCustomConfiguration section within a NEMSIS 
XML document may define the custom data element for “Recent Travel Outside U.S.” as a coded list 
with “1” and “2” as the allowed values, XSD validation will only check to verify that it is a string of no 
more than 100,000 characters. 
Custom element validation can be implemented using a Schematron schema. For example, a state may 
do the following to standardize and validate custom data elements: 
• Publish a StateDataSet document that provides the configuration for custom data elements that 
the state wishes to receive from EMS agencies. 
• Publish a Schematron schema containing rules that validate custom element results per the 
state configuration. 
Optimizing XML Containing Custom Elements 
The custom element structure adds overhead to NEMSIS XML documents, via custom element 
configuration information and the presence of CorrelationID attributes. Following are some 
implementation notes regarding approaches to minimize the overhead of custom elements: 
• If a NEMSIS XML document contains no custom element result data, then custom element 
configuration data and CorrelationID attributes may be omitted from the document. (One 
exception is that an eProcedures.ProcedureGroup must have a CorrelationID attribute if there 
are any instances of eAirway.ConfirmationGroup that reference it.) CorrelationID attributes only 
need to be present on elements that are referenced by custom element results (or airway 
confirmations). 
• If a system has a large number of custom elements, but a NEMSIS XML document contains 
custom element result data for only some custom elements, then the document need only 
include the custom element configuration information for those elements. 
• If a custom element configuration contains a large list of potential values, but only some of 
those values are used in a NEMSIS XML document, then it may be acceptable for 
(d|e)CustomConfiguration.06 to only include the values that are used in the document. 
• Custom element configuration information is generally included in every XML document that 
contains custom element result data, because the sending system usually must assume that the 
receiving system has no prior knowledge of the custom element configuration information. If 
the managers of the sending and receiving systems have agreed on the custom element 
configurations in advance (for example, a local system sending data to a state system, where the 

 
Page 19 
state has published the custom element configurations via a StateDataSet), then it may be 
acceptable to omit the custom element configuration information from a NEMSIS XML 
document. In this case, the value of (d|e)CustomResults.02 in the custom element result data 
would act as a key for the receiving system to reference its own custom element configuration 
information. 
Some receiving systems may have validation rules in place that disallow some of these optimization 
approaches. 
Conclusions 
The NEMSIS version 3 XML Schema provides a way to support the transmission of custom data within 
standard NEMSIS XML documents. The implementation of custom elements usually requires 
development effort on the part of software vendors in order to validate and store the custom data, and 
to provide a reasonable user interface for the collection of the custom data. Efforts should be made to 
fit existing NEMSIS data elements to state and EMS agency needs, without repurposing or redefining the 
standard elements. When no existing NEMSIS data element fits the need, the custom element structure 
can be used to implement custom elements in standardized way that minimizes development cost and 
variability between products. 