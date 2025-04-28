

 
Page 1 
NEMS IS V3  Case Def i nition 
Cardiac Arrest 
Date 
April 28, 2022 (corrected SAS code) 
August 26, 2021 
Definition 
The patient experienced a cardiac arrest with presumed cardiac etiology. 
Criteria Description 
Patient care reports where: 
• any symptom or impression is cardiac arrest 
and 
o cardiac arrest occurred prior to EMS arrival and the etiology is presumed cardiac or 
blank 
or 
o cardiac arrest occurred after EMS arrival and the etiology is presumed cardiac 
Pseudocode 
Patient care reports where: 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
• I46* Cardiac Arrest 
AND 
( 
( 
eArrest.01 Cardiac Arrest 
• Yes, Prior to EMS Arrival 
AND 
eArrest.02 - Cardiac Arrest Etiology 
• Cardiac (Presumed) 
• [Blank] 

 
Page 2 
) 
OR 
( 
eArrest.01 - Cardiac Arrest: 
• Yes, After EMS Arrival 
AND 
eArrest.02 - Cardiac Arrest Etiology 
• Cardiac (Presumed) 
) 
) 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) 
      [starts-with(., 'I46')] 
    and 
    ( 
      ( 
        eArrest/eArrest.01 = '3001003' 
        and 
        eArrest/eArrest.02 = ('3002001', '') 
      ) 
      or 
      ( 
        eArrest/eArrest.01 = '3001005' 
        and 
        eArrest/eArrest.02 = '3002001' 
      ) 
    ) 
  ] 
SAS Code 
proc sql; 
 create table CardiacArrestKey as 
 select distinct pcrKey from 
  ( 
   ( 
    select pcrKey from nemsis.factPcrPrimaryImpression  
      where substr(eSituation_11,1,3) = 'I46' 
    union 
    select pcrKey from nemsis.factPcrSecondaryImpression  

 
Page 3 
      where substr(eSituation_12,1,3) = 'I46' 
    union 
    select pcrKey from nemsis.factPcrPrimarySymptom  
      where substr(eSituation_09,1,3) = 'I46' 
    union 
    select pcrKey from nemsis.factPcrAdditionalSymptom  
      where substr(eSituation_10,1,3) = 'I46' 
   ) 
   intersect 
   ( 
    select pcrKey from nemsis.pub_pcrEvents  
      where eArrest_01 = '3001003' and eArrest_02 in ('3002001', '') 
    union 
    select pcrKey from nemsis.pub_pcrEvents  
      where eArrest_01 = '3001005' and eArrest_02 = '3002001' 
   ) 
  ) 
 ; 
quit; 
Discussion 
The following ICD-10-CM impression and symptom codes were considered for use but not chosen 
because they select very few additional records: 
• I97.12* Postprocedural cardiac arrest 
• I97.71* Intraoperative cardiac arrest 
• P29.81 Cardiac arrest of newborn 
• O03.36 Cardiac arrest following incomplete spontaneous abortion 
• O03.86 Cardiac arrest following complete or unspecified spontaneous abortion 
• O07.36 Cardiac arrest following failed attempted termination of pregnancy 
• O08.81 Cardiac arrest following an ectopic and molar pregnancy 
• O29.11* Cardiac arrest due to anesthesia during pregnancy 
The following elements were considered for use but not chosen because, for this case definition, it is 
important to determine whether the cardiac arrest was due to a cardiac etiology: 
• eArrest.04 - Arrest Witnessed By 
• eArrest.11 - First Monitored Arrest Rhythm of the Patient 
• eArrest.14 - Date/Time of Cardiac Arrest 
• eVitals.03 - Cardiac Rhythm / Electrocardiography (ECG) 
• eProcedures.03 – Procedure: Cardiac resuscitation procedures 
• eDisposition.24 - Destination Team Pre-Arrival Alert or Activation: Yes-Cardiac Arrest 

 
Page 4 
This case definition differs from the Cardiac Arrest Registry to Enhance Survival (CARES). The purpose of 
this case definition is to identify all cardiac arrests with cardiac etiology. The purpose of CARES is to 
evaluate the effectiveness of EMS response to cardiac arrests with cardiac etiology where resuscitation 
was attempted. CARES includes the following additional criteria to further limit the record selection: 
• Resuscitation is attempted by a 911 responder (CPR and/or defibrillation) 
or 
• The patient received an AED shock by a bystander prior to the arrival of 911 responders 
References 
Chan HK, Okubo M, Callaway CW, Mann NC, Wang HE. Characteristics of adult out-of-hospital cardiac 
arrest in the National Emergency Medical Services Information System. JACEP Open. 2020. p 1–8. 
doi.org/10.1002/emp2.12106. 
EMS User Guide: Cardiac Arrest Registry to Enhance Survival (CARES). 2019. p 4. 
mycares.net/sitepages/uploads/2019/EMS%20User%20Guide.pdf. 