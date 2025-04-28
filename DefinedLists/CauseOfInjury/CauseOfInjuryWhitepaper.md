

 
	
Page 1 
	
			
NEMSIS	TAC	Whitepaper	
NEMSIS V3.5.0 Defined List:  
eInjury.01 – Cause of Injury 
Date	
Current Revision: February 22, 2023  
Previous Iterations: August 19, 2011 to February 08, 2016 
Authors	
N. Clay Mann – NEMSIS TAC P.I. 
Julianne Ehlers – NEMSIS TAC Director  
Cassie Longhart – NEMSIS TAC Data Analyst  
Introduction	
The Cause of Injury Defined List utilizes a two‐tier choice hierarchy to make identifying and selecting appropriate 
values easier for EMS clinicians. The first tier represents a generic classification referred to as a “Parent Code”. 
The second tier is a more specific description referred to as the “EMS Description”.  That
 is followed by the related 
ICD‐10‐CM code and clinical ICD‐10‐CM description.  
PARENT CODE EMS DESCRIPTION ICD‐10 ICD‐10 DESCRIPTION 
MVC, Traffic Related Motorcycle accident, NOS V29.9 
Motorcycle rider (driver) (passenger) 
injured in unspecified traffic accident 
 
EMS software implementing this list may provide an interface that first allows the clinician to choose a generic 
description (Parent Code), and then provide more specific options (EMS Description) to efficiently reach final 
value choices.   
Historical	Context	
The NEMSIS Version 2 Data Standard established a suggested list of Cause of Injury codes. Feedback from 
stakeholders indicated that the list was not sufficient to clearly describe the patient encounter. NEMSIS Version 3 
Data Standard allowed for a much broader range of description. Feedback from stakeholders indicated that the 
Data
 Standard now allowed for too broad of a range and the data collected were too detailed for efficient 
application by EMS clinicians.    
The Defined Lists associated with the rollout of NEMSIS v3.5.0 were specifically populated to include codes 
applicable to greater than 90% of all patient care reports submitted to 
the National EMS database in 2017 through 
2019.  

 
	
Page 2 
	
			
	
Methodology	
Utilizing data from the NEMSIS National Database, Cause of Injury listed on patience care reports were evaluated 
for recurrence and repetition. The assessment included 4,830,979 patient care reports within the time frame of 
01/01/2017 through 06/19/2019 were evaluated.  
The 2019 defined list (associated with NEMSIS V3.5.0) for Cause of Injury represents a minimum of 91.13% of all 
Cause of Injury codes submitted to NEMSIS during the time frame. The 2019 defined list for Cause of Injury 
includes 81 detailed options within 17 categories. (See Hierarchy Example for additional details.)  
Defined	List	Value	Range	
The code list associated with eInjury.01– Cause of Injury represents a range of values found in the 10
th
 revision of 
the International Classification of Diseases – Clinical Modification (ICD‐10‐CM).  
The eInjury.01 Cause of Injury defined list can be accessed from the NEMSIS TAC website on the Version 3 
Resources page: https://nemsis.org/technical‐resources/version‐3/version‐3‐resources/. The codes in the Cause 
of Injury defined dist are represented in the ICD‐10‐CM ranges listed in the table below.   
The ICD‐10‐CM Code Range for inclusion in the NEMSIS Version 3.5.0 Cause of Injury Defined List: 
 
S00–T98 Injury, poisoning and certain other consequences of external causes 
V01–Y98 External causes of morbidity and mortality 
 
Use of code digits that specify Treatment Encounter (initial encounter, subsequent encounter, and sequela) should 
be avoided (e.g.: T78.40XA: Allergy, unspecified, initial encounter should be described as T78.40: Allergy, 
unspecified). 
ICD‐10‐CM:	Licensed	Code	List	
The U.S. National Library of Medicine provides access to the ICD‐10‐CM code values through the Unified Medical 
Language System (UMLS).  An applicant must accept the terms of the UMLS Metathesaurus License and create a 
UMLS Terminology Services (UTS) account for access to UMLS datasets and terminology browsers. More 
information can be found at http://www.nlm.nih.gov/databases/umls.html.  
The NEMSIS TAC may only distribute defined lists with specific value codes from the UMLS system to entities 
licensed through the UMLS system.  Thus, each software developer must seek licensing and provide proof of 
licensing before gaining access to all of the pre‐defined lists available through the NEMSIS TAC. 

 
	
Page 3 
	
			
	
Hierarchy	Example	
EMS clinicians may choose a general classification (Parent Code) within the first tier of Causes of Injury.  Multiple 
second tier choices (EMS Description) should then be made available to better define the pre‐hospital patient 
encounter.  
STEP 1:                       
Select a general classification 
STEP 2:                             
Select a more precise description 
First Tier: Parent Code Second Tier: EMS Description 
Poisoning 
Poisoning by unspecified substance 
Toxic effect of alcohol 
Toxic effect of unknown substance 
Recurrence	
The clinician may enter as many data values in eInjury.01 – Cause of Injury as needed to fully describe the 
patient situation.   
Reference	Material	
See the NEMSIS v3.5.0 Data Dictionary for additional technical specifics. https://nemsis.org/technical‐
resources/version‐3/version‐3‐data‐dictionaries/. 
 
 
 
 
### 