

 
Page 1 
NEMS IS V3  Case Def i nition 
Influenza-like Illness 
Date 
August 30, 2021 
Definition 
The patient may have an influenza-like illness. 
Criteria Description 
Patient care reports where: 
• any symptom or impression is influenza-like illness 
or 
• any two distinct symptoms or impressions are influenza-like 
Pseudocode 
Patient care reports where: 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
• B97.2* Coronavirus as the cause of diseases classified elsewhere 
• J00 Acute nasopharyngitis [common cold] 
• J09*–J18* Influenza and pneumonia 
• J20*–J22* Other acute lower respiratory infections 
• Z20.8* Contact with and (suspected) exposure to other communicable diseases 
• Z20.9 Contact with and (suspected) exposure to unspecified communicable disease 
OR 

 
Page 2 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
Two or more distinct values of the following: 
• J02* Acute pharyngitis 
• J03* Acute tonsillitis 
• J06 Acute upper respiratory infections of multiple and unspecified sites 
• J80 Acute respiratory distress syndrome 
• J98.9 Respiratory disorder, unspecified 
• M79.1* Myalgia 
• R05 Cough 
• R06 Abnormalities of breathing 
• R06.0* Dyspnea 
• R06.8 Other abnormalities of breathing 
• R06.89 Other abnormalities of breathing 
• R06.9 Unspecified abnormalities of breathing 
• R07.0 Pain in throat 
• R09.81 Nasal congestion 
• R50 Fever of other and unknown origin 
• R50.8 Other specified fever 
• R50.81 Fever presenting with conditions classified elsewhere 
• R50.9 Fever, unspecified 
• R51* Headache 
• R53 Malaise and fatigue 
• R53.1 Weakness 
• R53.8 Other malaise and fatigue 
• R53.81 Other malaise 
• R53.83 Other fatigue 
• R68.83 Chills (without fever) 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) 
      [matches(., '^(B97\.2.*)|(J00.*)|(J09.*)|(J1[0-8].*)|(J2[0-2].*)|(Z20\.8.*)| 
      (Z20\.9)$')] 
    or 
    count(distinct-values 
      (eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) 
        [matches(., '(J02.*)|(J03.*)|(J06)|(J80)|(J98\.9)|(M79\.1.*)|(R05)|(R06)| 
        (R06\.0.*)|(R06\.8)|(R06\.89)|(R06\.9)|(R07\.0)|(R09\.81)|(R50)|(R50\.8)| 
        (R50\.81)|(R50\.9)|(R51.*)|(R53)|(R53\.1)|(R53\.8)|(R53\.81)|(R53\.83)| 
        (R68\.83)')] 

 
Page 3 
    )) > 1 
  ] 
SAS Code 
proc sql; 
  create table InfluenzaLikeIllnessKey as 
  select distinct pcrKey from  
    ( 
      union 
      select pcrKey from nemsis.factPcrPrimarySymptom where prxmatch( 
        '/^(B97\.2.*)|(J00.*)|(J09.*)|(J1[0-8].*)|(J2[0-2].*)|(Z20\.8.*)| 
        (Z20\.9)$/', eSituation_09) 
      union 
      select pcrKey from nemsis.factPcrAdditionalSymptom where prxmatch( 
        '/^(B97\.2.*)|(J00.*)|(J09.*)|(J1[0-8].*)|(J2[0-2].*)|(Z20\.8.*)| 
        (Z20\.9)$/', eSituation_10)) 
      select pcrKey from nemsis.factPcrPrimaryImpression where prxmatch( 
        '/^(B97\.2.*)|(J00.*)|(J09.*)|(J1[0-8].*)|(J2[0-2].*)|(Z20\.8.*)| 
        (Z20\.9)$/', eSituation_11) 
      union 
      select pcrKey from nemsis.factPcrSecondaryImpression where prxmatch( 
        '/^(B97\.2.*)|(J00.*)|(J09.*)|(J1[0-8].*)|(J2[0-2].*)|(Z20\.8.*)| 
        (Z20\.9)$/', eSituation_12) 
      union  
      select pcrKey from 
        ( 
          select pcrKey, count(distinct diagnosis) as c from  
            ( 
              select pcrKey, eSituation_09 as diagnosis  
                from Nemsis.factPcrPrimarySymptom where prxmatch('/^(J02.*)| 
                (J03.*)|(J06)|(J80)|(J98\.9)|(M79\.1.*)|(R05)|(R06)|(R06\.0.*)| 
                (R06\.8)|(R06\.89)|(R06\.9)|(R07\.0)|(R09\.81)|(R50)|(R50\.8)| 
                (R50\.81)|(R50\.9)|(R51.*)|(R53)|(R53\.1)|(R53\.8)|(R53\.81)| 
                (R53\.83)|(R68\.83)$/', eSituation_09) 
              union 
              select pcrKey, eSituation_10 as diagnosis  
                from Nemsis.factPcrAdditionalSymptom where prxmatch('/^(J02.*)| 
                (J03.*)|(J06)|(J80)|(J98\.9)|(M79\.1.*)|(R05)|(R06)|(R06\.0.*)| 
                (R06\.8)|(R06\.89)|(R06\.9)|(R07\.0)|(R09\.81)|(R50)|(R50\.8)| 
                (R50\.81)|(R50\.9)|(R51.*)|(R53)|(R53\.1)|(R53\.8)|(R53\.81)| 
                (R53\.83)|(R68\.83)$/', eSituation_10) 
              union 
              select pcrKey, eSituation_11 as diagnosis  

 
Page 4 
                from Nemsis.factPcrPrimaryImpression where prxmatch('/^(J02.*)| 
                (J03.*)|(J06)|(J80)|(J98\.9)|(M79\.1.*)|(R05)|(R06)|(R06\.0.*)| 
                (R06\.8)|(R06\.89)|(R06\.9)|(R07\.0)|(R09\.81)|(R50)|(R50\.8)| 
                (R50\.81)|(R50\.9)|(R51.*)|(R53)|(R53\.1)|(R53\.8)|(R53\.81)| 
                (R53\.83)|(R68\.83)$/', eSituation_11) 
              union 
              select pcrKey, eSituation_12 as diagnosis  
                from Nemsis.factPcrSecondaryImpression where prxmatch('/^(J02.*)| 
                (J03.*)|(J06)|(J80)|(J98\.9)|(M79\.1.*)|(R05)|(R06)|(R06\.0.*)| 
                (R06\.8)|(R06\.89)|(R06\.9)|(R07\.0)|(R09\.81)|(R50)|(R50\.8)| 
                (R50\.81)|(R50\.9)|(R51.*)|(R53)|(R53\.1)|(R53\.8)|(R53\.81)| 
                (R53\.83)|(R68\.83)$/', eSituation_12) 
            ) 
            group by pcrKey 
        ) 
        where c > 1 
    ) 
  ; 
quit; 
Discussion 
The criteria for this case definition are not specifically tailored to select potential COVID-19 cases; 
instead, they select multiple influenza-like illnesses, including but not limited to potential COVID-19 
cases. 
The CDC COVID-19 ICD-10-CM Official Coding and Reporting Guidelines state, 
“If the COVID-19 is documented as being associated with a respiratory infection, NOS, codes 
U07.1 and J98.8, Other specified respiratory disorders, should be assigned.” 
“For acute respiratory distress syndrome (ARDS) due to COVID-19, assign codes U07.1, and J80, 
Acute respiratory distress syndrome.” 
“During pregnancy, childbirth or the puerperium, a patient admitted (or presenting for a health 
care encounter) because of COVID-19 should receive a principal diagnosis code of O98.5-, Other 
viral diseases complicating pregnancy, childbirth and the puerperium, followed by code U07.1, 
COVID-19, and the appropriate codes for associated manifestation(s).” 
ICD-10-CM code U07.1 COVID-19 was not included because it is not valid in the NEMSIS XML Schema 
(XSD) and thus will not be present in NEMSIS-compliant data. 

 
Page 5 
References 
National Influenza-Like Illness (ILI) Surveillance Dashboard. Global Inclusion Criteria and Filters. 
wiki.utahdcc.org/confluence/display/NTD/National+Influenza-Like+Illness+%28ILI%29+Surveillance+
Dashboard. 
CDC COVID-19 ICD-10-CM Official Coding and Reporting Guidelines, April 1, 2020 through September 30, 
2020. cdc.gov/nchs/data/icd/COVID-19-guidelines-final.pdf. 