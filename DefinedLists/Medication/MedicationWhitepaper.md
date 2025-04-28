

 
	
Page 1 
	
			
NEMSIS	TAC	Whitepaper	
NEMSIS V3.5.0 Defined List:  
eMedications.03/dConfiguration.04/dConfigurati
on.09 – Medication Administered 
Date	
Current Revision: February 22, 2023  
Previous Iterations: September 08, 2011 through August 22, 2016 
Authors	
N. Clay Mann – NEMSIS TAC P.I. 
Julianne Ehlers – NEMSIS TAC Director  
Cassie Longhart – NEMSIS TAC Data Analyst  
Introduction	
The Medication Administered Defined List was developed and is maintained to assist in the documentation of 
medications administered during an EMS patient encounter. The code list associated with eMedications.03 – 
Medication Administered is represented by a selected group of values found in the RxNorm coding system used 
primarily in the pre
‐hospital EMS environment. RxNorm provides standardized nomenclature for clinical drugs and 
drug delivery devices. The process for gaining access to the RxNorm code values is provided at the end of this 
document. 
Some products (i.e., blood related products) are described through SNOMED codes that are specific to EMS use. 
SNOMED 
is another system of standardized nomenclature for healthcare terminology.  
The defined list is organized by EMS description, common brand name or familiar name, code (RxNorm or 
SNOMED), and the clinical/generic description.  
EMS DESCRIPTION (Brand Name) RxNORM RxNORM Description 
Albuterol/Ipratropium (Combivent, Duoneb) 214199 Albuterol/Ipratropium 
Dextrose 50% (D50) 237653 Glucose 500 MG/ML Injectable Solution 
Historical	Context	
The NEMSIS Version 2 Data Standard established a suggested list of Medications Given. Feedback from 
stakeholders indicated that the list was not sufficient to clearly describe the patient encounter. NEMSIS Version 3 
Data Standard allowed for a much broader range of medications. Feedback from stakeholders then indicated that 
the Data Standard
 now allowed for too broad of a range and the data collected were too detailed for efficient 
application by EMS clinicians.    

 
	
Page 2 
	
			
	
Methodology	
The eMedications.03 – Medication Administered defined list associated with the rollout of NEMSIS v3.5.0 was 
specifically populated to include the most commonly used medication codes.   
Utilizing data from the NEMSIS National Database, Medications Administered that were documented on patient 
care reports were evaluated for recurrence and repetition. The assessment included 20,831,328 medications 
administered within the time frame of 01/01/2017 through07/09/2019.  
The 2019 eMedications.03 – Medication Administered Suggested Lis includes 62 commonly used medications and 
7 other blood products specific to an EMS patient encounter.   
RxNorm	Code	Usage	Recommendations	
RxNorm provides various codes for medications based on the Term Type (TTY). These include but are not limited 
to: Ingredient (IN), Precise Ingredient (PIN), Brand Name (BN), Sematic Clinical Drug (SCD), Semantic Clinical Drug 
Form (SCDF), Multiple Ingredient (MIN), and Semantic Clinical Drug Component (SCDC) codes indicating the 
medication strength or
 concentration or mixtures (Synonym of Another TTY = SY), and many term type dosing 
options. 
The NEMSIS TAC recommends that medications administered by EMS professionals in the pre‐hospital setting be 
recorded and submitted using the Ingredient (IN) code for the large majority of medication names. This is 
frequently the 
generic name of the medication. The NEMSIS Version 3.5.0 dataset has elements that allow for the 
separate documentation of the medication route, dosage, and dosage unit using the following three elements: 
1. eMedications.04 ‐ Medication Administered Route 
2. eMedications.05 ‐ Medication Dosage 
3. eMedications.06 ‐ Medication Dosage Units 
 
The Medication Administered defined list 
is based primarily on the Term Type (TTY) and its corresponding RxNorm 
description.  
Routes of administration and various formulations are not generally reflected in the Defined List but agencies that 
wish to track specific formulations are encouraged to “roll‐up” that medication into its base formulary in the 
Defined List.  
For example: Sodium Chloride (normal saline) is administered via a prefilled syringe (saline flush). This should be 
documented as Sodium Chloride (RxNorm 1807639) in eMedications.03 and not as Sodium  Chloride  9  MG/ML  
Injectable Solution
 (RxNorm 313002).  
The exceptions to this recommendation are Epinephrine and Dextrose due to common usage in the field.  
To access an RxNorm Overview, including introduction, purpose and examples of RxNorm, and its usage please 
visit http://www.nlm.nih.gov/research/umls/rxnorm/overview.html. To see the explanation of the term types, 
see “What does the RxNorm model look like?” tab.  

 
	
Page 3 
	
			
	
Licensed	Code	Lists	
The U.S. National Library of Medicine provides access to the RxNorm and SNOMED code values through the 
Unified Medical Language System (UMLS). An applicant must accept the terms of the UMLS Metathesaurus 
License and create a UMLS Terminology Services (UTS) account for access to UMLS datasets and terminology 
browsers. 
Additional information
 for RxNorm can be found at: 
https://www.nlm.nih.gov/research/umls/rxnorm/index.html.  
Additional information for SNOMED can be found at: https://www.nlm.nih.gov/healthit/snomedct/index.html.  
The NEMSIS TAC may only distribute defined lists with specific value codes from the UMLS system to entities 
licensed through the UMLS system. Thus, each software developer must seek licensing and provide proof of 
licensing before gaining access to all of the pre‐defined suggested lists available through the NEMSIS TAC.
 
Conclusion	
By maintaining and promoting a standard single source of these data, we improve data quality and consistency. 
This will reduce reporting errors in data submissions provided it is used as a data management best practice. 
 
 
 
 
 