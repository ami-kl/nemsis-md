

 
Page 1 
NEMS IS V3  Case Def i nition 
Sepsis 
Date 
June 27, 2023 
Definition 
The patient has suspected sepsis. 
Criteria Description 
Patient care reports where: 
• any symptom or impression is sepsis 
or 
• a sepsis destination team pre-arrival alert or activation is performed. 
Pseudocode 
Patient care reports where: 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
• A40* Streptococcal sepsis 
• A41* Other sepsis 
• P36* Bacterial sepsis of newborn 
• R65.2* Severe sepsis 
OR 
eDisposition.24 - Destination Team Pre-Arrival Alert or Activation 
• Yes-Sepsis 

 
Page 2 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) 
      [matches(., '^(A40)|(A41)|(P36)|(R65\.2)')] 
    or 
    eDisposition/eDisposition.HospitalTeamActivationGroup/eDisposition.24 = '4224019' 
  ] 
SAS Code 
proc sql; 
  create table SepsisKey as 
  select distinct pcrKey from  
    ( 
      select pcrKey from nemsis.factPcrPrimarySymptom where  
        substr(eSituation_09, 1, 3) in ('A40', 'A41', 'P36') or  
        substr(eSituation_09, 1, 5) = 'R65.2' 
      union 
      select pcrKey from nemsis.factPcrAdditionalSymptom where  
        substr(eSituation_10, 1, 3) in ('A40', 'A41', 'P36') or  
        substr(eSituation_10, 1, 5) = 'R65.2' 
      union 
      select pcrKey from nemsis.factPcrPrimaryImpression where  
        substr(eSituation_11, 1, 3) in ('A40', 'A41', 'P36') or  
        substr(eSituation_11, 1, 5) = 'R65.2' 
      union 
      select pcrKey from nemsis.factPcrSecondaryImpression where  
        substr(eSituation_12, 1, 3) in ('A40', 'A41', 'P36') or  
        substr(eSituation_12, 1, 5) = 'R65.2' 
      union 
      select pcrKey from nemsis.factPcrDestinationTeam where  
        eDisposition_24 = '4224019' 
    ) 
  ; 
quit; 
Discussion 
Sepsis is a “life-threatening organ dysfunction due to a dysregulated host response to infection” 
(Seymour CW et al) or a “life threatening condition that arises when the body's response to an infection 
injures its own tissues and organs” (qSOFA). 

 
Page 3 
There are two commonly used sepsis evaluations: Systemic Inflammatory Response Syndrome (SIRS) 
uses temperature, heart rate, respiratory rate, and white blood cell count. SIRS is unlikely to be used in 
EMS due to the inclusion of white blood cell count. Quick Sepsis Related Organ Failure Assessment 
(qSOFA) uses Glasgow Coma Scale, respiratory rate, and systolic blood pressure. The qSOFA criteria 
could potentially be used to identify sepsis patients in NEMSIS data. However, patients could meet the 
physiological criteria of qSOFA for causes other than sepsis, such as traumatic injury and non-septic 
shock. Thus, this case definition does not include those criteria. Instead, it relies on symptoms, 
impressions, or hospital activations recorded by the EMS providers, which indicate that the providers 
had reason to suspect sepsis. 
“National variation in United States sepsis mortality: a descriptive study” included all infection-related 
ICD-10 diagnosis codes, because it used death records as its data source. Since this case definition 
applies to EMS records, in which most patients do not die as a result of their condition, the presence of 
an infection-related symptom or impression does not necessarily mean the patient has sepsis. 
Therefore, this case definition is limited to symptoms and impressions that specifically indicate sepsis. 
NEMSQA draft measures for sepsis (which have not yet been published) include R56.2 Severe sepsis and 
R65.21 Severe sepsis with septic shock but not R65.20 Severe sepsis without septic shock. This case 
definition includes all three values. 
This case definition may select a greater percentage of PCRs in NEMSIS 3.5 than in previous versions due 
to the use of the Destination Team Pre-Arrival Alert or Activation value of  “Yes-Sepsis,” which was 
added in version 3.5.0. 
References 
qSOFA: Quick Sepsis Related Organ Failure Assessment. UPMC and University of Pittsburgh Schools of 
the Health Sciences. qsofa.org. 
Seymour CW, Liu VX, Iwashyna TJ, et al. Assessment of Clinical Criteria for Sepsis: For the Third 
International Consensus Definitions for Sepsis and Septic Shock (Sepsis-3). JAMA. 2016;315(8):762–774. 
doi.org/10.1001/jama.2016.0288. 
SIRS Criteria (Systemic Inflammatory Response Syndrome). Medscape. reference.medscape.com/
calculator/522/sirs-criteria-systemic-inflammatory-response-syndrome. 
Wang, H. E., Devereaux, R. S., Yealy, D. M., Safford, M. M., & Howard, G. (2010). National variation in 
United States sepsis mortality: a descriptive study. International journal of health geographics, 9, 9. 
doi.org/10.1186/1476-072X-9-9. 