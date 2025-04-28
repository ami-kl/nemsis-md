

 
NEMSIS	TAC	Whitepaper	
NEMSIS	V3	Pertinent	Negatives	(PN)	and	NOT	
Values	(NV)	Usage	
	
Date	
November 04, 2013 
November 10, 2017 – Clarify presentation of “Not Recorded” and “Not Reporting” 
	
Authors	
Karen E. Jacobson – NEMSIS Director 
Keith R. Davis – NEMSIS Data Architect 
Jorge Rojas Jr. – NEMSIS Data Manager / Analyst 
N Clay Mann – NEMSIS P.I. 
 
Abstract	
This document describes the usage of the following NEMSIS V3 attributes: 
1. NOT values (NV), and 
2. Pertinent Negatives (PN), 
3. xsi:nil=”true” (Nil). 
Background	
The current definitions for NV, PN, and Nil are described below: 
NOT	Values	Accepted	(NV)	
     Not all data elements accept NOT values. 
     NOT Values have been condensed in Version 3.  
o    Not Applicable = The data element is not applicable or pertinent to the EMS event, assessment or, 
intervention.  This value should be available to the data-entry user.
  
o Not Recorded = The data element is considered applicable to the EMS event, but was left blank by the data-
entry user.  The EMS software should auto-populate blank fields with "Not Recorded" when exporting the 
record.  This value should not be available to the data-entry user. 
o    Not Reporting = The data element is not collected by the EMS agency or state.  This NOT value does not 
apply to National elements where "Usage = Required". The EMS software should auto-populate the data 
fields not collected with "Not Reporting" when exporting the record. This value should not be available to the 
data-entry user. 
 
Pertinent	Negative	Values	(PN)	
     Not all data elements accept Pertinent Negative Values. 
     Pertinent Negative Values are documented as "an attribute" of an element. It allows the documentation of pertinent 
negative value in addition to the documentation of a "real" value.  
     Example of use:  
o    Example - Aspirin Administration:  
     If the medication Aspirin is part of the agency protocol for Chest Pain but was not administered by the 
responding crew, the reason why should be documented. This is done through the use of Pertinent 
Negative Values. If the patient took the Aspirin prior to the EMS arrival on scene, the value 
"Medication Already Taken" should be documented in addition to "Aspirin". 
	
Is	Nillable	(Nil)	
     Indicates that the element can accept a "blank" value. 

If the element is left "blank" the software must submit an appropriate value of one of the two previous attributes:
Pertinent Neg
ative or NOT Values.
Possible	Valid	XML	Vari
ations	
Option     Code     PN     NV     Nil     
Example
1 
X <eMedications.03>142153</eMedications.03> 
2 * 
X X 
<eMedications.03 PN=”8801009”>142153</eMedications.03> 
3 X X 
<eMedications.03 NV=”7701003”>142153</eMedications.03> 
4 X X X 
<eMedications.03 PN=”8801009” NV=”7701003”>142153</eMedications.03> 
5 X 
<eMedications.03 xsi:nil=”true”></eMedications.03> 
6 * 
X X 
<eMedications.03 xsi:nil=”true” PN=”8801009”></eMedications.03> 
7 
X X 
<eMedications.03 xsi:nil=”true” NV=”7701003”></eMedications.03> 
8 X X X 
<eMedications.03 xsi:nil=”true” PN=”8801009” NV=”7701003”></eMedications.03> 
*Elements allow for only 1, 2, & 6 or 1, 2, & 7. Read the Notes	section to determine what options are allowed
Example	
Element: eMedications.03
Medication	
RXCUI Code:  142153 
Name:  Albuterol Sulfate 
Pertinent	Negative	
8801009 - Medication Already Taken 
NOT	Value	
7701003 - Not Recorded 
Options	Allowed	
Only options 1, 2, 7 are allowed.  
Note	
All of the examples listed above will pass XML Schema validation; however, only options 1, 2, 6, and 7 are valid. 
Elements that allow Pertinent Negatives (PN) will either allow for option 2 or 6.  
To determine whether option 2 or 6 is allowed reference the text file NEMSIS v3 Element Details locate
d at: 
https://nemsis.org/technical‐resources/version‐3/version‐3‐data‐dictionaries/.   If the element allows for PN’s and the 
column “PNNill” has PNNill then option 6 is allowed and option 2 is not. Likewise, if the element allows for PN’s and the 
column “PNNill” is empty then option 2 is allowed and option 6 is not. 
In addi
tion, schematron is required for additional validation which the NEMSIS TAC will be implementing for the NEMSIS 
Version 3 elements. Elements with their valid options are located here in the CSV files located at:  
https://nemsis.org/technical‐resources/version‐3/version‐3‐data‐dictionaries/.  