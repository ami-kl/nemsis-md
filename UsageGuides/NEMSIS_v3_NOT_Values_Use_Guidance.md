

Page 1 
 
NEMSIS v3 Guidance for the use of Not Values 
 
Date 
February 29, 2012 
June 19, 2014 (Reformatted; Updated Definition for    Not Recorded; and other 
language)  
November 10, 2017 (Clarify presentation of Not Recorded and Not Reporting) 
August 1, 2024 (Updated to clarify language) 
 
Authors 
N. Clay Mann – NEMSIS P.I. 
Karen E. Jacobson  – NEMSIS Director 
Joshua Legler – NEMSIS Consultant 
Jennifer Correa – NEMSIS Business Data Analyst 
 
Background 
All elements in the NEMSIS Version 3 standard are categorized into four “usage” 
types. These are the keystones of the standard. The usage types indicate when the 
element must be present within an XML file to meet the NEMSIS standard and the 
use of Not Values. 
Usage Value Definition Descriptions 
1. Mandatory: These elements are always required and must be completed 
in every EMSDataSet, DEMDataSet, or StateDataSet XML file. These 
elements do not accept Not Values. 
2. Required: These elements are always required and must be completed 
in every EMSDataSet, DEMDataSet, or StateDataSet XML file. These 
elements do accept Not Values. 
3. Recommended: These elements may be present in an EMSDataSet, 
DEMDataSet, or StateDataSet XML file. These elements do accept Not Values. 
4. Optional: These elements may be present in an EMSDataSet, DEMDataSet, or 
StateDataSet XML file. These elements do not accept Not Values. 
 
Not Value Definition Descriptions 
 
1. Not Applicable: The data element is not applicable or pertinent 
to the EMS event, assessment, or,   intervention.  This value should 
be available to the data‐entry user.
 
2. 
Not Recorded: The data element is considered applicable to the EMS 
event, but was left blank by the data‐entry user.  The EMS software should 
auto‐populate blank fields with Not Recorded at the time of export.  This 
value should not be available to the data‐entry user.
 
 

Page 2 
 
3. Not Reporting: The data element is not being reported by the EMS 
agency or state.  This Not Value does not apply to National elements 
where Usage = Required.  The EMS software should auto‐populate the 
data fields not collected with Not Reporting when exporting the record. 
This value should not be available to the data‐entry user. 
 
Guidance for the Use of Not Values 
The information below guides the use of Not Values for    the four element usage types 
(Mandatory, Required, Recommended, and Optional).  Each Not Value is summarized 
with example criteria followed by a statement for each element usage type. 
Not Applicable: This Not Value code applies if,   at    the time of the event 
documentation, the information requested was not   applicable to the patient, the EMS 
response, or the patient care provided. 
• Example 1:    Elements documenting patient assessment and 
treatment (procedures, medications, etc.) would be Not Applicable 
for a canceled response. 
• Example 2:    For patients that did not have a cardiac or respiratory arrest 
the eArrest elements would be Not Applicable. Some states may require 
eArrest.01 to have a value of No and the other elements would be Not 
Applicable. 
1. Mandatory elements would never contain a Not Applicable value. 
2. Required elements that meet the example criteria would have Not 
Applicable. 
3. Recommended elements that meet the example criteria would have Not 
Applicable. 
4. Optional elements would never contain a Not Applicable value. They would 
be omitted when generating the XML data. 
Not Recorded: This Not Value applies if a data element applies to the call and is 
left blank by a data‐entry user.  This Not Value applies if,  at    the time of patient care 
documentation, information was not known to the patient, family, bystander, or 
EMS professional.  The EMS software should auto‐populate the field with Not 
Recorded at the time of record export. This value should not be available to the 
data‐entry user. 
• Example 1:    A patient may be unconscious and unable to provide medical 
history information.  The data‐entry user would leave these values blank. 
The software system would insert a Not Recorded value code when 
preparing for export. 
• Example 2:  A medication is given to a patient prior to this EMS unit’s care. 
In this case, if eMedications.01 (Date/Time Medication Administered) is not 
known (i.e., left blank), the system would insert Not Recorded in this field. 
• Example 3:  Repeated completions of the eVitals group, which contains all of 
the eVitals elements, may not always include every eVitals element. A blood 
glucose assessment may not be done every time a blood pressure is taken. 

Page 3 
 
In this example,  the additional assessments without a blood glucose 
assessment would be left blank by the data-entry user.  The software system 
would insert a   Not Recorded value when the file is exported. 
 
1. Mandatory elements would never contain a   Not Recorded value. 
2. Required elements that meet the example criteria would have Not 
Recorded. 
3. Recommended elements that meet the example criteria would have Not 
Recorded. 
4. Optional elements would never contain a Not Recorded value. They would 
be omitted when generating the XML data. 
 
Not Reporting: This Not Value applies when a data element is not being reported 
by the EMS agency or state.   Note: An EMS agency may collect a given data element 
(such as Beginning Odometer Reading), but their ePCR software maps the 
information to Not Reporting when sent to their state.  This value should not be 
available to the data‐entry user. 
 
• Example 1:    If an EMS agency is not reporting a   specific element, the value 
submitted to the state should be Not Reporting. 
 
1. Mandatory elements would never contain a   Not Reporting value. 
2. Required elements would never contain a   Not Reporting value. 
3. Recommended elements that meet the example criteria would have Not 
Reporting. 
4. Optional elements would never contain a Not Reporting value. They would 
be omitted when generating the XML data. 
 
Encoding Not Values in NEMSIS XML Documents 
Not Values are implemented as attributes in NEMSIS XML data. The NEMSIS XSDs and 
national  Schematron  schemas require  that  an  element  can  only  have  a  Not  Value  
attribute if the element has no content and has the XML attribute xsi:nil="true". Here’s 
an example of an element with the Not Value of Not Recorded: 
<ePatient.02 xsi:nil="true" NV="7701003"/> 
The element is blank, or empty. The Not Value is added as an attribute to indicate why 
the element is blank or empty. 
 
Note on State Collection of Optional Elements 
State elements may be identified as Recommended or Optional.  States may choose to 
collect  Optional  elements.  However,  states  should  not  create  Schematron  rules  that  
require Optional elements to always be present, because Optional elements do not allow 
Not Values.  Optional  elements  must  be  omitted  by  the  software  generating  the  XML  
data when they are blank for any reason.  