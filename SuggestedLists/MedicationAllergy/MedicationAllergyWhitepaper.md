

 
 
Page 1 
 
   
NEMSIS TAC Whitepaper 
NEMSIS V3 Suggested List –  
eHistory.06 - Medication Allergies 
Date 
November 16, 2011  
December 27, 2011 
January 5, 2012 (FINAL) 
August 18, 2017 (EMS Friendly Terms and ICD-10-CM Codes added on page 5) 
 
 
Authors 
Karen E. Jacobson – NEMSIS TAC Director, 
Keith R. Davis – NEMSIS TAC Data Architect 
N. Clay Mann – NEMSIS TAC P.I. 
eHistory.06 - Medication Allergies 
For eHistory.06 (Medication Allergies) the use of specific RxNorm codes and a limited defined list of ICD-
10-CM codes will be allowed.  The NEMSIS TAC recommends the use of RxNorm Codes for the specific 
medication that a patient may be allergic.  The RxNorm Term Type identifying the medication by 
Ingredient (IN), Primary Ingredient (PIN), or Brand Name (BN) should be utilized.  The NEMSIS TAC 
recommends use of the ICD-10-CM codes for the documentation of allergies into classes of medications 
(e.g. sulfonamides, narcotic agents, etc).     
A combined RxNorm and ICD-10-CM code list created for eHistory.06 (Medication Allergies) is available 
through the NEMSIS SharePoint repository.  The code list includes 22,116 RxNorm codes and 10 ICD-10-
CM codes.  
 
Please note that both RxNorm and ICD-10-CM codes are important to address medication allergies.  
RxNorm codes are available to document allergies when the patient can explicitly state which 
medications he/she is allergic.  ICD-10-CM codes are provided to address instances in which a patient 
may claim an allergy to a class of drugs (e.g., “I am allergic to sulfa drugs”).       
RxNorm Code Usage Recommendations 
RxNorm provides various codes for medications based on the Term Type (TTY).  These include but are 
not limited to: Ingredient (IN),  Precise Ingredient (PIN), Brand Name (BN),  Semantic Clinical Drug Form 
(SCDF), Semantic Clinical Drug Component (SCDC) codes indicating the medication strength or 
concentration or mixtures (Synonym  of Another TTY  = SY),  and many term type dosing options.   

 
 
Page 2 
 
   
To review the RxNorm overview, including an introduction, purpose and examples of RxNorm, and its 
usage please visit http://www.nlm.nih.gov/research/umls/rxnorm/overview.html
.  To see the 
explanation of the term types see page three (3) of this document. 
Licensed “Suggested Lists” 
The U.S. National Library of Medicine provides access to the RxNorm code values through the Unified 
Medical Language System (UMLS).  An applicant must accept the terms of the UMLS Metathesaurus 
License and create a UMLS Terminology Services (UTS) account for access to UMLS datasets and 
terminology browsers.  
More information can be found at: http://www.nlm.nih.gov/databases/umls.html.  RxNorm codes may 
also be accessed through http://rxnav.nlm.nih.gov/ 
The NEMSIS TAC may only distribute suggested lists with specific value codes from the UMLS system to 
entities licensed through the UMLS system.  Thus, each software developer must seek licensing and 
provide proof of licensing before gaining access to all of the pre-defined suggested lists available 
through the NEMSIS TAC. 
Suggested List - ICD-10-CM Defined List 
The defined code list of ten (10) for eHistory.06 (Medication Allergies) is represented in ICD-10-CM:  
Allergy Status to Drugs, Medicaments and Biological Substances (Z88.0 through Z88.9).  The specific ICD-
10-CM codes are listed on page five (5) based on description and TTY.  
Access to “Suggested List” Archive Files 
Access to suggested code lists will be provided on a special section of the NEMSIS TAC’s SharePoint site.  
A licensed user will be able to login to the SharePoint site and download the appropriate archive file 
(RxNorm,  ICD-10, etc).   
The UMLS license verification service helps determine if the remote user has a license to use and/or 
distribute certain code sets.  If the user does not have a current license, access to the “suggested lists” 
archive will be denied. 
The “suggested list” files will be zipped archives that are automatically created each time one of the 
licensed code databases is updated in the NEMSIS master data repository. 
Viewing and Using the “Suggested List” Archive Files 
The downloaded suggested list appears in a pipe-delimited text format. The proper code to utilize is the 
code with the name of the element and closest to the value description.  Please note that the CUI, AUI, 
and TTY fields are included for reference purposes. These codes allow one to locate the exact code and 
description in the UMLS Metathesaurus that was selected for inclusion in the suggested list.  

 
 
Page 3 
 
   
All lists, including non-UMLS, provide additional fields indicating when a record became active in the 
NEMSIS TAC’s master data repository as well as the version of the source used for a particular code and 
description in the suggested list. 
Conclusions 
By maintaining a single source of these data and making it available internally as well as to our 
customers, we improve our data quality and consistency. This will reduce reporting errors in data 
submissions provided it is used as part of our own and our customer’s data management best practices. 
 

 
 
Page 4 
 
   
RxNorm Medication Term Types (TTY) 
From the National Library of Medicine website: http://www.nlm.nih.gov/research/umls/rxnorm/overview.html . 
 

 
 
Page 5 
 
   
 
ICD-10 CM Allergy Description for eHistory.06 Medication Allergies 
ICD-10-CM grouping of 10 generic options 
NEMSIS TAC Update 08-18-2017 
  
Suggested Label 
Underlying 
ICD-10-CM 
Code 
 
ICD-10-CM Description 
Analgesic Z88.6 Allergy status to analgesic agent status 
Anesthetic Z88.4 Allergy status to anesthetic agent status 
Antibiotic Z88.1 Allergy status to other antibiotic agents status 
Anti-Infective Z88.3 Allergy status to other anti-infective agents status 
Medication, unspecified Z88.9 Allergy status to unspecified drugs, medicaments and biological substances status 
Narcotic Z88.5 Allergy status to narcotic agent status 
Other medication or biological substance Z88.8 Allergy status to other drugs, medicaments and biological substances status 
Penicillin Z88.0 Allergy status to penicillin 
Serum or Vaccine Z88.7 Allergy status to serum and vaccine status 
Sulfa Drugs Z88.2 Allergy status to sulfonamides status 
 