

 
Page 1 
NEMS IS V3  Case Def i nition 
Seizure 
Date 
June 27, 2023 
Definition 
The patient experienced a seizure. 
Criteria Description 
Patient care reports where: 
• any symptom or impression is seizure 
or 
• seizure protocol is used. 
Pseudocode 
Patient care reports where: 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
• F44.5 Conversion disorder with seizures or convulsions 
• G40* Epilepsy and recurrent seizures 
• P90 Convulsions of newborn 
• R56* Convulsions, not elsewhere classified 
OR 
eProtocols.01 Protocols Used 
• Medical-Seizure 

 
Page 2 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) 
      [matches(., '^(F44.5)|(G40)|(P90)|(R56)')] 
    or 
    eProtocols/eProtocols.ProtocolGroup/eProtocols.01 = '9914141' 
  ] 
SAS Code 
proc sql; 
  create table SeizureKey as 
  select distinct pcrKey from  
    ( 
      select pcrKey from nemsis.factPcrPrimarySymptom where  
        substr(eSituation_09,1,3) in ('G40', 'P90', 'R56') or  
        eSituation_09 = 'F44.5' 
      union 
      select pcrKey from nemsis.factPcrAdditionalSymptom where  
        substr(eSituation_10,1,3) in ('G40', 'P90', 'R56') or  
        eSituation_10 = 'F44.5' 
      union 
      select pcrKey from nemsis.factPcrPrimaryImpression where  
        substr(eSituation_11,1,3) in ('G40', 'P90', 'R56') or  
        eSituation_11 = 'F44.5' 
      union 
      select pcrKey from nemsis.factPcrSecondaryImpression where  
        substr(eSituation_12,1,3) in ('G40', 'P90', 'R56') or  
        eSituation_12 = 'F44.5' 
      union 
      select pcrKey from nemsis.factPcrProtocol where eProtocol_01 = '9914141' 
    ) 
  ; 
quit; 
Discussion 
The ICD-10 section R56 includes R56.1 Post traumatic seizures. Depending on the purpose of a particular 
project, it may be appropriate to exclude R56.1. 

 
Page 3 
The NEMSQA definition for Seizure-02 Patient with Status Epilepticus Receiving Intervention only selects 
seizures with status epilepticus, but this case definition selects all seizures. The NEMSQA definition can 
be implemented by searching for impressions with the more restrictive regular expression 
/^G40...[1,3]/. The NEMSQA definition is also limited to impressions, whereas this case definition 
includes symptoms as well as impressions. The NEMSQA definition does not include the seizure protocol 
criterion. 
The following potential criteria are not used in this case definition: 
• eDispatch.01 - Dispatch Reason: Convulsions/Seizure. The reason for dispatch may not match 
what EMS providers actually found once on scene. 
• eExam.20 - Neurological Assessment: Status Seizure, Other Seizures. eExam.20 is not a national 
element. Its use in the criteria would cause a different set of records to be selected depending 
on whether or not it was collected and available in the data set, which would lead to local 
inconsistencies in the case selection. 
• eMedications.03 - Medication Administered: benzodiazepines. Benzodiazepines may be 
administered for conditions other than seizure. 
The NEMSIS Defined List for Impressions includes three codes related to seizures: G40.89 Other seizures 
(which has been given the suggested label “Seizure, NOS”); G40.901 Epilepsy, unspecified, not 
intractable, with status epilepticus (which has been given the suggested label “Seizure, status 
epilepticus”); and G40.909 Epilepsy, unspecified, not intractable, without status epilepticus (which has 
been given the suggested label “Seizure, epileptic,” which is inconsistent with the ICD-10 term). 
References 
Gaddam S. (2021). Racial disparities in emergency care for seizures in the United States. International 
Paramedic Practice. internationaljpp.com/features/article/racial-disparities-in-emergency-care-for-
seizures-in-the-united-states. 
Hart L, Sanford J, Sporer S, Kohn M, Guterman E. (2021). Identification of Generalized Convulsive Status 
Epilepticus from Emergency Medical Service Records: A Validation Study of Diagnostic Coding. 
Prehospital Emergency Care. 25:5,607-614. doi.org/10.1080/10903127.2020.1817214. 
Ramgopal S, Martin-Gill C. (2023). Prehospital Seizure Management in Children: An Evaluation of a 
Nationally Representative Sample. The Journal of Pediatrics. doi.org/10.1016/j.jpeds.2023.02.023. 
Seizure-02: Patient with Status Epilepticus Receiving Intervention. National EMS Quality Alliance 
(NEMSQA). nemsqa.org/assets/docs/NEMSQA-Seizure-02_2021.pdf 
Shtull-Leber E, Silbergleit R, Meurer WJ. (2017). Pre-hospital midazolam for benzodiazepine-treated 
seizures before and after the Rapid Anticonvulsant Medication Prior to Arrival Trial: A national 
observational cohort study. PLoS ONE. 12(3):e0173539. doi.org/10.1371/journal.pone.0173539. 