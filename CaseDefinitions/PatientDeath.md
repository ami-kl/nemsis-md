

 
Page 1 
NEMS IS V3  Case Def i nition 
Patient Death 
Date 
June 27, 2023 
Definition 
The patient died during the EMS call. 
Criteria Description 
Patient care reports where (any of the following): 
• MCI patient triage classification is black - deceased 
• An impression or symptom is Ill-defined and unknown cause of mortality 
• Initial patient acuity is dead without resuscitation efforts (black) 
• Resuscitation was not attempted because it was considered futile or due to do-not-resuscitate 
orders 
• Return of spontaneous circulation did not occur 
• CPR/resuscitation was discontinued because of obvious signs of death or due to do-not-
resuscitate orders 
• Cardiac rhythm on arrival at destination is non-perfusing (agonal/idioventricular, asystole, PEA, 
ventricular fibrillation, or pulseless ventricular tachycardia) 
• The end of the EMS cardiac arrest event is that the patient expired in the field 
• Incident/patient disposition (prior to NEMSIS 3.5) is patient dead at scene... 
• Final patient acuity is dead... 
• Type of destination is morgue/mortuary 
Pseudocode 
Patient care reports where: 
eScene.08 - Triage Classification for MCI Patient 
• Black – Deceased 
OR 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 

 
Page 2 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
• R99 Ill-defined and unknown cause of mortality 
OR 
eSituation.13 - Initial Patient Acuity 
• Dead Without Resuscitation Efforts (Black) 
OR 
eArrest.03 - Resuscitation Attempted by EMS 
• Not Attempted-Considered Futile 
• Not Attempted-DNR Orders 
OR 
eArrest.12 - Any Return of Spontaneous Circulation 
• No 
OR 
eArrest.16 - Reason CPR/Resuscitation Discontinued 
• DNR 
• Obvious Signs of Death 
OR 
eArrest.17 Cardiac Rhythm on Arrival at Destination 
• Agonal/Idioventricular 
• Asystole 
• PEA 
• Ventricular Fibrillation 
• Ventricular Tachycardia (Pulseless) 
OR 
eArrest.18 - End of EMS Cardiac Arrest Event 
• Expired in the Field 
OR 
eDisposition.12 - Incident/Patient Disposition (prior to NEMSIS 3.5) 
• Patient Dead at Scene... 
OR 
eDisposition.19 - Final Patient Acuity 
• Dead... 
OR 
eDisposition.21 Type of Destination 
• Morgue/Mortuary 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eScene/eScene.08 = '2708009' 
    or 
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) = 'R99' 
    or 

 
Page 3 
    eSituation/eSituation.13 =  '2813007' 
    or 
    eArrest/eArrest.03 = ('3003007', '3003009') 
    or 
    eArrest/eArrest.12 = '3012001' 
    or 
    eArrest/eArrest.16 = ('3016001', '3016005') 
    or 
    eArrest/eArrest.17 = ('9901001', '9901003', '9901035', '9901067', '9901071') 
    or 
    eArrest/eArrest.18 = '3018003' 
    or 
    eDisposition/eDisposition.12 =  ('4212013', '4212015', '4212017', '4212019') 
    or 
    eDisposition/eDisposition.19 = ('4219007', '4219009') 
    or 
    eDisposition/eDisposition.21 = '4221009' 
  ] 
SAS Code 
proc sql; 
  create table PatientDeathKey as 
  select distinct pcrKey from  
    ( 
      select pcrKey from nemsis.pub_pcrEvents  
        where eScene_08 = '2708009' 
        or eSituation_13 = '2813007' 
        or eDisposition_12 in ('4212013', '4212015', '4212017', '4212019') 
        or eDisposition_19 in ('4219007', '4219009') 
        or eDisposition_21 = '4221009' 
        or eArrest_18 = '3018003' 
        or eArrest_16 in ('3016001', '3016005') 
      union 
      select pcrKey from nemsis.factPcrArrestResuscitation  
        where eArrest_03 in ('3003007', '3003009') 
      union 
      select pcrKey from nemsis.FactPcrArrestRosc where eArrest_12 = '3012001' 
      union 
      select pcrKey from nemsis.factPcrArrestRhythmDestination  
        where eArrest_17 = ('9901001', '9901003', '9901035', '9901067', '9901071') 
      union 
      select pcrKey from nemsis.factPcrPrimarySymptom where eSituation_09 = 'R99' 
      union 

 
Page 4 
      select pcrKey from nemsis.factPcrAdditionalSymptom where eSituation_10 = 'R99' 
      union 
      select pcrKey from nemsis.factPcrPrimaryImpression where eSituation_11 = 'R99' 
      union 
      select pcrKey from nemsis.factPcrSecondaryImpression where eSituation_12 = 'R99' 
    ) 
  ; 
quit; 
Discussion 
The following differences among NEMSIS versions affect this case definition: 
• eDisposition.12 - Incident/Patient Disposition was retired in version 3.5.0. This case definition 
might tend to select a greater percentage of records in versions prior to 3.5.0 because of the 
eDisposition.12 criterion. 
• eDisposition.19 - Final Patient Acuity 
o “Dead without Resuscitation Efforts (Black)” was added in version 3.4.0. 
o “Dead with Resuscitation Efforts (Black)” was added in version 3.5.0. 
eDisposition.31 - Reason for Refusal/Release was added in version 3.5.0. It contains the values “DNR” 
and “Medical/Physician Orders for Life Sustaining Treatment,” which could be added as criteria for this 
case definition. eExam.19 is not a national element. Its use in the criteria would cause a different set of 
records to be selected depending on whether or not it was collected and available in the data set, which 
would lead to local inconsistencies in the case selection. Also, the presence of DNR or POLST does not 
necessarily mean the patient died. 
“Development of a Binary End-of-Event Outcome Indicator for the NEMSIS Public Release Research 
Dataset” mistakenly omitted the Incident/Patient Disposition criterion of Patient Dead at Scene-
Resuscitation Attempted (With Transport). This case definition also differs from the research article by 
including the symptom or impression criterion of R99 Ill-defined and unknown cause of mortality and the 
Final Patient Acuity criterion of Dead with Resuscitation Efforts (which was added in NEMSIS 3.5.0). 
For some purposes it may be desirable to identify deaths that occurred without any opportunity for EMS 
to impact the outcome (for example, the patient was already dead when EMS arrived on scene). The 
following criteria are recommended for identifying this subset of patients: 
• Initial patient acuity is dead without resuscitation efforts (black) 
• Final patient acuity is dead without resuscitation efforts (black) 
• Incident/patient disposition (prior to NEMSIS 3.5) is patient dead at scene-no resuscitation 
attempted... 
• Resuscitation was not attempted because it was considered futile or due to do-not-resuscitate 
orders 
• CPR/resuscitation was discontinued because of obvious signs of death or due to do-not-
resuscitate orders 

 
Page 5 
References 
Miller M, Lincoln E, Brown L. (2021). Development of a Binary End-of-Event Outcome Indicator for the 
NEMSIS Public Release Research Dataset. Prehospital Emergency Care. 25:4, 504-511. doi.org/10.1080/
10903127.2020.1794435. 