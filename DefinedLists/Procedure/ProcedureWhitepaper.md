

 
	
Page 1 
	
			
NEMSIS	TAC	Whitepaper	
NEMSIS V3.5.0 Defined List –  
eProcedure.03/dConfiguration.03/dConf
iguration.07 - Procedure  
Date	
Current Revision: February 22, 2023 
Previous Iterations: January 27, 2012 to August 2, 2016 
 
Authors	
N. Clay Mann – NEMSIS TAC P.I. 
Julianne Ehlers – NEMSIS TAC Director  
Cassie Longhart – NEMSIS TAC Data Analyst  
Introduction	
The Procedures Defined List has been updated to employ a two‐tier choice hierarchy in an effort to 
make identifying and selecting an appropriate value easier for EMS personnel. The first tier represents a 
generic procedure hierarchy. The second tier represents a more specific procedure within a generic 
hierarchy.  Additionally, more
 EMS friendly terms are provided.   
PARENT CODE EMS DESCRIPTION SNOMED SNOMED DESCRIPTION 
Administration (Drug, 
fluid, gas) 
Drug administration 18629005 
Administration of drug or medicament 
(procedure) 
 
EMS software implementing this list may provide an interface that first allows EMS personnel to choose 
a generic procedure category, and then more specific procedure options are provided to make the final 
value choice.  
Historical	Context	
The NEMSIS Version 2 Data Standard established a suggested list of Procedure codes. Feedback from 
stakeholders indicated that the list was not sufficient to clearly describe the patient encounter. NEMSIS 
Version 3 Data Standard allowed for a much broader range of description. Feedback from stakeholders 
indicated that the Data Standard now
 allowed for too broad of a range and the data collected were too 
detailed for efficient application by EMS clinicians.    

 
	
Page 2 
	
			
The Defined Lists associated with the rollout of NEMSIS v3.5.0 were specifically populated to include codes 
applicable to greater than 90% of all patient care reports submitted to the National EMS database in 2017 
through 2019.  
Methodology	
Utilizing data from the NEMSIS National Database, Procedure(s) listed on patience care reports were 
evaluated for recurrence and repetition. The assessment included 4,830,979 patient care reports within 
the time frame of 01/01/2017 through 06/19/2019 were evaluated.  
The 2019 defined list (associated with NEMSIS V3.5.0) for Procedure represents a minimum of 91.13% of 
all Procedure codes submitted to NEMSIS during the time frame. The 2019 Defined List for Procedure 
includes 81 detailed options within 17 categories. (See Hierarchy Example for additional details.)  
Defined	List	Value	Range 
The code list associated with eProcedures.03 (Procedure) represents a list of values found in 
Systematized Nomenclature of Medicine ‐‐ Clinical Terms (SNOMED CT). The process for gaining access 
to the SNOMED CT code values is provided below.   
 
The eProcedure.03 Procedure Defined List can be accessed from the NEMSIS TAC 
website on the Version 
3 Resources page: https://www.nemsis.org/v3/resources.html.  The defined code list for eProcedures.03 
(Procedure) is represented by SNOMED CT Procedure codes.  The term types utilized for the suggested 
procedures are the fully specified names  
 
When the procedure defined list was developed, the primary goal within SNOMED CT was to utilize 
“Therapeutic or Preventive Procedure (e.g., procedure)” or “Health Care Activity (e.g., regime/therapy” 
codes to
 identify EMS procedures.   
 
For consistency in reporting, it is important that Software Developers expanding the list of EMS 
procedures rely on the use of “Therapeutic or Preventive Procedure” or “Health Care Activity” codes.  If 
it is necessary to utilize other code types, the NEMSIS TAC suggests utilizing the following limited
 
hierarchy to identify a code: 
  
1. Therapeutic or Preventive Procedure 
2. Diagnostic Procedure 
3. Laboratory Procedure 
4. Health Care Activity 
 
If an appropriate code cannot be found in among these code types, the Software Developer or EMS 
Agency representative should contact the NEMSIS TAC, who will work with SNOMED 
to add an 
appropriate code to the SNOMED standard.   

 
	
Page 3 
	
			
Licensed	“Code	Lists”	
The U.S. National Library of Medicine provides access to the SNOMED CT code values through the 
Unified Medical Language System (UMLS).  An applicant must accept the terms of the UMLS 
Metathesaurus License and create a UMLS Terminology Services (UTS) account for access to UMLS 
datasets and terminology browsers.  More information can be found at: 
http://www.nlm.nih.gov/databases/umls.html.   
The NEMSIS TAC may only distribute defined lists with specific value codes from the UMLS system to 
entities licensed through the UMLS system.  Thus, each software developer must seek licensing and 
provide proof of licensing before gaining access to all of the pre‐defined lists available through the 
NEMSIS TAC. 
Hierarchy	Tier	Graphic	Example	
EMS personnel may first choose “Wound Care” within the first tier of Procedures to document a general 
category of procedure type.  Multiple second tier choices may appear including “Apply pressure to 
wound” and “Tourniquet” to choose from as the specific procedure.  
STEP 1:                       
Select a general classification 
STEP 2:                             
Select a more precise description 
First Tier: Parent Code Second Tier: EMS Description 
Wound Care 
Apply pressure to wound 
Bandage 
Tourniquet 
 
Reference	Material	
See the NEMSIS v3.5.0 Data Dictionary for additional technical specifics. https://nemsis.org/technical‐
resources/version‐3/version‐3‐data‐dictionaries/. 
	