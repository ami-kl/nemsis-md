

 
	
Page 1 
	
			
NEMSIS	TAC	Whitepaper	
NEMSIS V3.5.0 Defined List – eScene.09 
Incident Location Type 
Date	
Current Revision: February 22, 2023 
Previous Iterations: October 14, 2011 to February 08, 2016 
Authors	
N. Clay Mann – NEMSIS TAC P.I. 
Julianne Ehlers – NEMSIS TAC Director  
Cassie Longhart – NEMSIS TAC Data Analyst  
Introduction	
The Incident Location Type Defined List has been updated to employ a two‐tier choice hierarchy in an 
effort to make identifying and selecting an appropriate value easier for EMS personnel. The first tier 
represents a generic incident location type. The second tier represents a specific location within the 
generic incident
 location type hierarchy. 
PARENT CODE EMS DESCRIPTION ICD‐10 ICD‐10 DESCRIPTION 
Commercial Airport Y92.520 Airport 
 
EMS software implementing this list may provide an interface that first allows EMS personnel to choose a 
generic incident location type, and then a group of more specific incident location types within that 
generic incident location type are provided to make the final value choice.  
Historical	Context	
The NEMSIS Version 2 Data Standard established a suggested list of Incident Location Types. Feedback from 
stakeholders indicated that the list was not sufficient to clearly describe the incident location. The NEMSIS 
Version 3 Data Standard allowed for a much broader range to describe the incident location. Stakeholders 
then indicated that
 the Data Standard now allowed for too broad of a range and the data collected were 
too detailed for efficient application by EMS clinicians.    

 
	
Page 2 
	
			
The Defined Lists associated with the rollout of NEMSIS v3.5.0 were specifically populated to include codes 
applicable to greater than 90% of all patient care reports submitted to the National EMS database in 2017 
through 2019.  
Methodology	
Utilizing data from the NEMSIS National Database, Incident Location Type listed on patience care reports 
were evaluated for recurrence and repetition. The assessment included 26,216,868 patient care reports 
within the time frame of 01/01/2017 through 06/24/2019 were evaluated.  
The 2019 defined list (associated with NEMSIS v3.5.0) for Incident Location Type represents 97.1% of 
Incident Location Types submitted to NEMSIS during the above time frame. The 2019 Defined List for 
Incident Location Type includes 35 values within 9 categories or “parent codes.” (See Hierarchy Example for 
additional details.)  
Defined	List	Value	Range	
The code list associated with eScene.09 – Incident Location Type represents a range of values found in the 
10
th
 revision of the International Classification of Diseases – Clinical Modification (ICD‐10‐CM).  
The eScene.09 Incident Location Type Defined List can be accessed from the NEMSIS TAC website on the 
Version 3 Resources page: https://nemsis.org/technical‐resources/version‐3/version‐3‐resources/. The 
codes in the Incident Location Defined List are represented in the ICD‐10‐CM ranges listed in the table 
below.   
The ICD‐10‐CM Code Range for inclusion in the NEMSIS Version 3.5.0 Incident Location Type Defined List: 
 
Y92 Place of Occurrence of the External Cause 
 
Officially, any Y92 codes can be submitted based on the Y92 pattern. The Defined List is an abreviatedlist 
identified to meet the majority of needs of EMS across the nation. Some states may identify additional 
codes for inclusion that are unique to their area.  
ICD‐10‐CM:	Licensed	Code	List	
The U.S. National Library of Medicine provides access to the ICD‐10 code values through the Unified 
Medical Language System (UMLS).  An applicant must accept the terms of the UMLS Metathesaurus 
License and create a UMLS Terminology Services (UTS) account for access to UMLS datasets and 
terminology browsers. More information can be found at: http://www.nlm.nih.gov/databases/umls.html.   
The NEMSIS TAC may only distribute defined lists with specific value codes from the UMLS system to 
entities licensed through the UMLS system.  Thus, each software developer must seek licensing and 

 
	
Page 3 
	
			
provide proof of licensing before gaining access to all of the pre‐defined lists available through the NEMSIS 
TAC. 
Hierarchy	Example	
EMS personnel may first choose “Commercial Buildings” within the first tier of Incident Location Type.  
Multiple second tier choices may appear including “Airport” and “Restaurant” to choose from as the 
specific incident location. 
STEP 1:                       
Select a general classification 
STEP 2:                             
Select a more precise description 
First Tier: Parent Code Second Tier: EMS Description 
Commercial 
Airport 
Gym 
Industrial/construction area 
Reference	Material	
See the NEMSIS v3.5.0 Data Dictionary for additional technical specifics. https://nemsis.org/technical‐
resources/version‐3/version‐3‐data‐dictionaries/. 
 
	