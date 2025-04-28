

 
Page 1 
NEMS IS V3  Case Def i nition 
Stroke 
Date 
August 26, 2021 
Definition 
The patient experienced a possible stroke. 
Criteria Description 
Patient care reports where: 
• any symptom or impression is stroke 
or 
• stroke scale score is positive 
or 
• stroke protocol is used 
or 
• a stroke destination team pre-arrival alert or activation is performed. 
Pseudocode 
Patient care reports where: 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
• G45* Transient cerebral ischemic attacks and related syndromes 
• G46* Vascular syndromes of brain in cerebrovascular diseases 
• I60* Nontraumatic subarachnoid hemorrhage 
• I61* Nontraumatic intracerebral hemorrhage 
• I63* Cerebral infarction 
OR 
eVitals.29 - Stroke Scale Score 
• Positive 

 
Page 2 
OR 
eProtocols.01 Protocols Used 
• Medical-Stroke/TIA 
OR 
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation 
• Yes-Stroke 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) 
      [matches(., '^(G45)|(G46)|(I60)|(I61)|(I63)')] 
    or 
    eVitals/eVitals.VitalGroup/eVitals.StrokeScaleGroup/eVitals.29 = '3329005' 
    or 
    eProtocols/eProtocols.ProtocolGroup/eProtocols.01 = '9914145' 
    or 
    eDisposition/eDisposition.HospitalTeamActivationGroup/eDisposition.24 = '4224015' 
  ] 
SAS Code 
proc sql; 
  create table StrokeKey as 
  select distinct pcrKey from  
    ( 
      select pcrKey from nemsis.factPcrPrimaryImpression where  
        substr(eSituation_11,1,3) in ('G45', 'G46', 'I60', 'I61', 'I63') 
      union 
      select pcrKey from nemsis.factPcrSecondaryImpression where  
        substr(eSituation_12,1,3) in ('G45', 'G46', 'I60', 'I61', 'I63') 
      union 
      select pcrKey from nemsis.factPcrPrimarySymptom where  
        substr(eSituation_09,1,3) in ('G45', 'G46', 'I60', 'I61', 'I63') 
      union 
      select pcrKey from nemsis.factPcrAdditionalSymptom where  
        substr(eSituation_10,1,3) in ('G45', 'G46', 'I60', 'I61', 'I63') 
      union 
      select pcrKey from nemsis.factPcrVital where eVitals_29 ='3329005' 
      union 

 
Page 3 
      select pcrKey from nemsis.factPcrProtocol where eProtocol_01 = '9914145' 
      union 
      select pcrKey from nemsis.factPcrDestinationTeam where eDisposition_24 =  
        '4224015' 
    ) 
  ; 
quit; 
Discussion 
eExam.20 - Neurological Assessment has several values that are indicative of a possible stroke. However, 
it was not included in the criteria for two reasons: 
1. It is not possible to infer that the assessment finding was caused by a stroke, unless EMS made 
such a determination as indicated by the data in the elements that are included in the criteria. 
2. eExam.20 is not a national element. Its use in the criteria would cause a different set of records 
to be selected depending on whether or not it was collected and available in the data set, which 
would lead to local inconsistencies in the case selection. 
The NEMSQA definition for Stroke-01 Suspected Stroke Receiving Prehospital Stroke Assessment includes 
Impressions but not the other elements, partly because completion of Stroke Scale Score is the 
performance attribute being measured. The NEMSQA measure also limits to 911 calls and patients who 
are unresponsive or have a GCS of 9 or less, probably because of the intent of measuring the completion 
of Stroke Scale Score. 
References 
Stroke-01: Suspected Stroke Receiving Prehospital Stroke Assessment. National EMS Quality Alliance 
(NEMSQA). nemsqa.org/wp-content/uploads/2020/11/J.-NEMSQA-Stroke-01.pdf. 