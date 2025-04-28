

 
Page 1 
NEMS IS V3  Case Def i nition 
Behavioral Health 
Date 
June 27, 2023 
Definition 
The patient is experiencing a behavioral health issue. 
Criteria Description 
Patient care reports where: 
• any symptom or impression is mental, behavioral, emotional, suicide attempt, or intentional 
self-harm 
or 
• cause of injury is suicide attempt or intentional self-harm. 
Pseudocode 
Patient care reports where: 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
• F01–F99 Mental, behavioral and neurodevelopmental disorders 
• R45 Symptoms and signs involving emotional state 
• R46 Symptoms and signs involving appearance and behavior 
• T14.91 Suicide attempt 
• T36–T71 codes where label includes “...intentional self-harm...” 
• X71–X83 Intentional self-harm 
OR 
eInjury.01 - Cause of Injury: 
• T14.91 Suicide attempt 
• T36–T71 codes where label includes “...intentional self-harm...” 
• X71–X83 Intentional self-harm 

 
Page 2 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) 
      [matches(., '^(F.*)|(R45.*)|(R46.*)|(T14\.91)| 
        (T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)|(T41\.42.*)|(T42\.72.*)| 
        (T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)|(T64\.02.*)|(T64\.82.*)| 
        (T36\.92.*)|(X(7[1-9]|8[0-3]).*)$') 
      ] 
    or 
    eInjury/eInjury.01[matches(., '^(T14\.91)| 
        (T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)|(T41\.42.*)|(T42\.72.*)| 
        (T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)|(T64\.02.*)|(T64\.82.*)| 
        (T36\.92.*)|(X(7[1-9]|8[0-3]).*)$') 
      ] 
  ] 
SAS Code 
proc sql; 
  create table BehavioralHealthKey as 
  select distinct pcrKey from  
    ( 
      select pcrkey from nemsis.Factpcrcauseofinjury where prxmatch('/^(T14\.91)| 
        (T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)|(T41\.42.*)|(T42\.72.*)|(T58\.02.*)| 
        (T58\.12.*)|(T61\.02.*)|(T61\.12.*)|(T64\.02.*)|(T64\.82.*)|(T36\.92.*)| 
        (X(7[1-9]|8[0-3]).*)$/', eInjury_01) 
      union 
      select pcrKey from nemsis.factPcrPrimarySymptom where prxmatch('/^(F.*)| 
        (R45.*)|(R46.*)|(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)| 
        (T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)| 
        (T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$/', eSituation_09) 
      union 
      select pcrKey from nemsis.factPcrAdditionalSymptom where prxmatch('/^(F.*)| 
        (R45.*)|(R46.*)|(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)| 
        (T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)| 
        (T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$/', eSituation_10) 
      union 
      select pcrKey from nemsis.factPcrPrimaryImpression where prxmatch('/^(F.*)| 
        (R45.*)|(R46.*)|(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)| 
        (T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)| 
        (T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$/', eSituation_11) 
      union 

 
Page 3 
      select pcrKey from nemsis.factPcrSecondaryImpression where prxmatch('/^(F.*)| 
        (R45.*)|(R46.*)|(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)| 
        (T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)| 
        (T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$/', eSituation_12) 
    ) 
  ; 
quit; 
Discussion 
This case definition includes all codes from Chapter F of ICD-10-CM. Depending on the purpose of a 
particular project, it may be appropriate to exclude the following code ranges: 
• F70-F79  Intellectual disabilities 
• F80-F89  Pervasive and specific developmental disorders 
The case definition does not include Z91.5* Personal history of self-harm, since it pertains to a patient’s 
medical history rather than a condition present at the time of an EMS encounter. 
The following potential criteria are not used in this case definition: 
• eDispatch.01 - Dispatch Reason: Psychiatric Problem/Abnormal Behavior/Suicide Attempt. The 
reason for dispatch may not match what EMS providers actually found once on scene. 
• eExam.19 – Mental Assessment: several values related to behavioral health. eExam.19 is not a 
national element. Its use in the criteria would cause a different set of records to be selected 
depending on whether or not it was collected and available in the data set, which would lead to 
local inconsistencies in the case selection. 
• eHistory.01 Barriers to Patient Care: several values related to behavioral health. The behavioral 
health-related values in eHistory.01 do not correlate strongly with behavioral health-related 
values in the elements that are included in this case definition. 
EMS By the Numbers: Impact of COVID-19, published by the NEMSIS TAC during the COVID-19 public 
health emergency, includes charts for “suicide” and “mental/behavioral”. The criteria used there are 
more restrictive than the criteria in this case definition. 
References 
Rivard MK, Cash RE, Chrzan K, et al. (2022). Public Health Surveillance of Behavioral Health Emergencies 
through Emergency Medical Services Data. Prehospital Emergency Care. 26(6):792-800. doi.org/
10.1080/10903127.2021.1973626. 
Hepburn S. (2021). The Reporting System 988 Estimates Haven’t Included. CrisisTalk. talk.crisisnow.com/
the-reporting-system-988-estimates-havent-included/. 
NEMSIS Technical Assistance Center. (2023). EMS by the Numbers: Impact of COVID-19. nemsis.org/ems-
by-the-numbers-impact-of-covid-19/. 