

 
Page 1 
NEMS IS V3  Case Def i nition 
STEMI 
Date 
August 26, 2021 
Definition 
The patient experienced a STEMI. 
Criteria Description 
Patient care reports where: 
• any symptom or impression is STEMI 
or 
• cardiac rhythm is STEMI 
or 
o any symptom or impression is angina pectoris or unspecified angina 
and 
o cardiac rhythm is left bundle branch block 
or 
• STEMI protocol is used 
or 
• a STEMI destination team pre-arrival alert or activation is performed. 
Pseudocode 
Patient care reports where: 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
• I21.0* ST elevation (STEMI) myocardial infarction of anterior wall 
• I21.1* ST elevation (STEMI) myocardial infarction of inferior wall 
• I21.2* ST elevation (STEMI) myocardial infarction of other sites 
• I21.3 ST elevation (STEMI) myocardial infarction of unspecified site 
OR 

 
Page 2 
eVitals.03 - Cardiac Rhythm 
• STEMI Anterior Ischemia 
• STEMI Inferior Ischemia 
• STEMI Lateral Ischemia 
• STEMI Posterior Ischemia 
OR 
( 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
• I20 Angina pectoris 
• I20.0 Unstable angina 
• I20.9 Angina pectoris, unspecified 
AND 
eVitals.03 - Cardiac Rhythm 
• Left Bundle Branch Block 
) 
OR 
eProtocols.01 Protocols Used 
• Medical-ST-Elevation Myocardial Infarction (STEMI) 
OR 
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation 
• Yes-STEMI 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) 
      [matches(., '^(I21.0)|(I21.1)|(I21.2)|(I21.3)')] 
    or 
    eVitals/eVitals.VitalGroup/eVitals.03 =  
      ('9901051', '9901053', '9901055', '9901057') 
    or 
    ( 
      eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) =  

 
Page 3 
        ('I20', 'I20.0', 'I20.9') 
      and 
      eVitals/eVitals.VitalGroup/eVitals.03 = '9901021' 
    ) 
    or 
    eProtocols/eProtocols./ProtocolGroup/eProtocols.01 = '9914143' 
    or 
    eDisposition/eDisposition.HospitalTeamActivationGroup/eDisposition.24 = '4224013' 
  ] 
SAS Code 
proc sql; 
  create table StemiKey as 
  select distinct pcrKey from  
    ( 
      select pcrKey from nemsis.factPcrPrimaryImpression where  
        substr(eSituation_11,1,5) in ('I21.0', 'I21.1', 'I21.2', 'I21.3') 
      union 
      select pcrKey from nemsis.factPcrSecondaryImpression where  
        substr(eSituation_12,1,5) in ('I21.0', 'I21.1', 'I21.2', 'I21.3') 
      union 
      select pcrKey from nemsis.factPcrPrimarySymptom where  
        substr(eSituation_09,1,5) in ('I21.0', 'I21.1', 'I21.2', 'I21.3') 
      union 
      select pcrKey from nemsis.factPcrAdditionalSymptom where  
        substr(eSituation_10,1,5) in ('I21.0', 'I21.1', 'I21.2', 'I21.3') 
      union 
      select pcrKey from nemsis.factPcrVital where pcrVitalKey in  
        ( 
          select vitalKey from nemsis.pcrVitalEcgGroup where eVitals_03 in  
            ('9901051', '9901053', '9901055', '9901057') 
        ) 
      union 
      select pcrKey from nemsis.factPcrVital where pcrVitalKey in  
        ( 
          select vitalKey from nemsis.pcrVitalEcgGroup where eVitals_03 =  
            '9901021' 
        ) 
        and pcrKey in  
        ( 
          select pcrKey from nemsis.factPcrPrimaryImpression where  
            eSituation_11 in ('I21', 'I20.0', 'I20.9') 
          union 

 
Page 4 
          select pcrKey from nemsis.factPcrSecondaryimpression where  
            eSituation_12 in ('I21', 'I20.0', 'I20.9') 
          union 
          select pcrKey from nemsis.factPcrPrimarySymptom where  
            eSituation_09 in ('I21', 'I20.0', 'I20.9') 
          union 
          select pcrKey from nemsis.factPcrAdditionalSymptom  
            where eSituation_10 in ('I21', 'I20.0', 'I20.9') 
        ) 
      union 
      select pcrKey from nemsis.factPcrProtocol where eProtocol_01 = '9914143' 
      union  
      select pcrKey from nemsis.factPcrDestinationTeam where eDisposition_24 =  
        '4224013') 
    ) 
  ; 
quit; 
Discussion 
None. 
References 
NEMSIS V3 Public STEMI Dashboard. Global Inclusion Criteria and Filters. 
wiki.utahdcc.org/confluence/display/NTD/V3+Public+STEMI+Dashboard. 