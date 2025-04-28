

 
	
Page 1 
	
			
NEMSIS	TAC	Whitepaper	
NEMSIS V3.5.0 Defined List:  
eSituation.09 – Primary Symptom 
eSituation.10 – Other Associated Symptoms 
Date	
Current Revision: October 09, 2019  
Previous Iterations: November 17, 2011 to February 08, 2016 
Authors	
N. Clay Mann – NEMSIS TAC P.I. 
Julianne Ehlers – NEMSIS TAC Director  
Cassie Longhart – NEMSIS TAC Data Analyst  
Introduction	
Primary Symptom and Other Associated Symptoms Defined List utilizes a two‐tier choice hierarchy to make 
identifying and selecting appropriate values easier for EMS clinicians. The first tier represents a generic 
classification referred to as a “Parent Code”. The second tier is a more specific observation referred to as the “EMS
 
Description”.  That is followed by the related ICD‐10‐CM code and clinical ICD‐10‐CM description.  
PARENT EMS DESCRIPTION ICD‐10 ICD‐10 DESCRIPTION 
Respiratory Respiratory distress J80 Acute respiratory distress syndrome 
 
EMS software implementing this list may provide an interface that first allows the clinician to choose a generic 
symptom classification (Parent Code), and then provide more specific options (EMS Description) to efficiently 
reach final value choices.   
Historical	Context	
The NEMSIS Version 2 Data Standard established a suggested list of Primary Symptoms. Feedback from 
stakeholders indicated that the list was not sufficient to clearly describe a field clinician’s primary and subsequent 
observations. NEMSIS Version 3 Data Standard allowed for a much broader range to describe patient symptoms. 
Feedback from stakeholders
 indicated that the Data Standard now allowed for too broad of a range and the data 
collected were too detailed for efficient application by EMS clinicians.    
The Defined Lists associated with the rollout of NEMSIS v3.5.0 were specifically populated to include codes 
applicable to greater than 90% of all patient 
care reports submitted to the National EMS database in 2017 through 
2019.  

 
	
Page 2 
	
			
	
Methodology	
Utilizing data from the NEMSIS National Database, Primary Symptoms listed on patience care reports were 
evaluated for recurrence and repetition. The assessment included 26,216,868 patient care reports within the time 
frame of 01/01/2017 through 06/24/2019 were evaluated.  
The 2019 defined list (associated with NEMSIS V3.5.0) for Primary Symptoms represents a minimum of 90.39% of 
all Primary Impression codes submitted to NEMSIS during the time frame. The 2019 Defined List for Primary and 
Secondary Impressions includes 124 detailed options within 17 categories. (See Hierarchy Example for additional 
details.)  
Defined	List	Value	Range	
The code list associated with eSituation.09 and eSituation.10 – Primary and Other Associated Symptoms 
represents a range of values found in the 10
th
 revision of the International Classification of Diseases – Clinical 
Modification (ICD‐10‐CM).  
The eSituation.09 and eSitiaution.20 Primary and Other Associated Symptoms Defined List can be accessed from 
the NEMSIS TAC website on the Version 3 Resources page: https://nemsis.org/technical‐resources/version‐
3/version‐3‐resources/. The codes in the Provider Impressions Defined List are represented in the ICD‐10‐CM 
ranges listed in the table below.   
The ICD‐10‐CM Code Range for inclusion in the NEMSIS Version 3.5.0 Primary and Other Associated Symptoms 
Defined List: 
 
E00–E90 Endocrine, nutritional and metabolic diseases 
F00–F99 Mental and behavioral disorders 
G00–G99 Diseases of the nervous system 
H00–H59 Diseases of the eye and adnexa 
I00–I99 Diseases of the circulatory system 
J00–J99 Diseases of the respiratory system 
K00–K93 Diseases of the digestive system 
M00–M99 Diseases of the musculoskeletal system and connective tissue 
N00–N99 Diseases of the genitourinary system 
R00–R99 Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified 
S00–T98 Injury, poisoning and certain other consequences of external causes 
Z00–Z99 Factors influencing health status and contact with health services 
 
Use of code digits that specify Treatment Encounter (initial encounter, subsequent encounter, and sequela) should 
be avoided (e.g.: T78.40XA: Allergy, unspecified, initial encounter should be described as T78.40: Allergy, 
unspecified). 

 
	
Page 3 
	
			
	
ICD‐10‐CM:	Licensed	Code	List	
The U.S. National Library of Medicine provides access to the ICD‐10‐CM code values through the Unified Medical 
Language System (UMLS).  An applicant must accept the terms of the UMLS Metathesaurus License and create a 
UMLS Terminology Services (UTS) account for access to UMLS datasets and terminology browsers. More 
information can be found at http://www.nlm.nih.gov/databases/umls.html.  
The NEMSIS TAC may only distribute defined lists with specific value codes from the UMLS system to entities 
licensed through the UMLS system.  Thus, each software developer must seek licensing and provide proof of 
licensing before gaining access to all of the pre‐defined suggested lists available through the NEMSIS TAC. 
Hierarchy	Example	
EMS clinicians may choose a general classification (Parent Code) within the first tier of Provider Impressions to 
document a general impression of the patient condition.  Multiple second tier choices (EMS Description) should 
then be made available to better define the pre‐hospital patient encounter.  
STEP 1:                       
Select a general classification 
STEP 2:                             
Select a more precise description 
First Tier: Parent Code Second Tier: EMS Description 
Neurological 
 
Convulsions, NOS 
Epileptic seizure/syndrome 
Febrile convulsions 
Lightheaded/vertigo 
Seizure, NOS 
Slurred speech 
Stroke 
Recurrence	
eSituation.09 – Primary Symptom is limited to a single data value. However, the clinician may enter as many 
data values as needed in eSituation.10 – Other Associated Symptoms.  
Reference	Material	
See the NEMSIS v3.5.0 Data Dictionary for additional technical specifics. https://nemsis.org/technical‐
resources/version‐3/version‐3‐data‐dictionaries/. 
 
 
 
 