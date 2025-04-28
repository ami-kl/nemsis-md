

 
Page 1 
NEMS IS V3  Case Def i nition 
Opioid Overdose 
Date 
April 28, 2022 (Corrected link to General Filters in Discussion) 
August 26, 2021 
Definition 
The patient is experiencing a potential opioid overdose. 
Criteria Description 
Patient care reports where: 
• any symptom or impression is opioid related disorders or poisoning by opioids (except 
subsequent encounter and sequela) 
or 
o naloxone is administered 
and  
o patient condition improves in response to naloxone 
Pseudocode 
Patient care reports where: 
eSituation.09 - Primary Symptom 
eSituation.10 - Other Associated Symptoms 
eSituation.11 - Provider's Primary Impression 
eSituation.12 - Provider's Secondary Impressions 
• F11* Opioid related disorders 
• T40.0X?[1-4]?A?$ Poisoning by opium 
• T40.1X?[1-4]?A?$ Poisoning by heroin 
• T40.2X?[1-4]?A?$ Poisoning by other opioids 
• T40.3X?[1-4]?A?$ Poisoning by methadone 
• T40.4.?[1-4]?A?$ Poisoning by synthetic narcotics 
• T40.4X?[1-4]?A?$ Poisoning by synthetic narcotics 
• T40.60?[1-4]?A?$ Poisoning by unspecified narcotics 
• T40.69?[1-4]?A?$ Poisoning by other narcotics 

 
Page 2 
OR 
eMedications.Medication Group where: 
• eMedications.03 - Medication Given is a code for naloxone (Narcan, etc.) 
AND 
• eMedications.07 - Response to Medication is Improved 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) 
      [matches(., '^(F11.*)|(T40\.[0-3]X?[1-4]?A?)|(T40\.4.?[1-4]?A?)| 
      (T40\.6[09]?[1-4]?A?)$')] 
    or 
    eMedications/eMedications.MedicationGroup 
    [ 
      eMedications.03 = ('7242', '203192', '197117') 
      and 
      eMedications.07 = '9916001' 
    ] 
  ] 
SAS Code 
proc sql; 
  create table OpioidOverdoseKey as   
  select distinct pcrKey from   
    ( 
      select pcrKey from nemsis.factPcrPrimaryImpression where prxmatch( 
        '/^(F11.*)|(T40\.[0-3]X?[1-4]?A?)|(T40\.4.?[1-4]?A?)| 
        (T40\.6[09]?[1-4]?A?)$/', eSituation_11) 
      union 
      select pcrKey from nemsis.factPcrSecondaryImpression where prxmatch( 
        '/^(F11.*)|(T40\.[0-3]X?[1-4]?A?)|(T40\.4.?[1-4]?A?)| 
        (T40\.6[09]?[1-4]?A?)$/', eSituation_12) 
      union 
      select pcrKey from nemsis.factPcrPrimarySymptom where prxmatch( 
        '/^(F11.*)|(T40\.[0-3]X?[1-4]?A?)|(T40\.4.?[1-4]?A?)| 
        (T40\.6[09]?[1-4]?A?)$/', eSituation_09) 
      union 
      select pcrKey from nemsis.factPcrAdditionalSymptom where prxmatch( 
        '/^(F11.*)|(T40\.[0-3]X?[1-4]?A?)|(T40\.4.?[1-4]?A?)| 
        (T40\.6[09]?[1-4]?A?)$/', eSituation_10) 

 
Page 3 
      union   
      select pcrKey from nemsis.factPcrMedication where eMedications_03 in  
        ('7242', '203192', '197117') and eMedications_07 = '9916001' 
    ) 
  ; 
quit; 
Discussion 
The use of eInjury.01 - Cause of Injury for the ICD-10-CM codes starting with “T40” (see list above) was 
considered, but it selects very few additional records (less than 0.1%). 
In the October 2020 release of ICD-10-CM, the T40.4X series of codes was replaced by T40.4[129]. The 
case definition covers the retired and new codes. 
This definition differs from the CSTE Emergency Medical Services Nonfatal Opioid Overdose Case 
Definition in these ways: 
• The CSTE definition excludes records where eResponse.05 - Type of Service Requested indicates 
a non-emergent response or eResponse.13 – Initial Patient Acuity is “Dead Without 
Resuscitation Efforts (Black)”. See General Filters for information about how to apply these 
additional criteria. 
• The CSTE definition optionally includes eNarrative.01 - Patient Care Report Narrative. This 
definition does not, since the element is not a national element. 
• The CSTE definition only includes billable ICD-10-CM codes. EMS often uses non-billable codes as 
well, so this definition includes more ICD-10-CM codes than the CSTE definition. 
References 
Emergency Medical Services Nonfatal Opioid Overdose Case Definition. Council of State and Territorial 
Epidemiologists (CSTE). nasemso.org/wp-content/uploads/EMS-Nonfatal-Opioid-Overdose-Case-
Definition_V5.pdf. 
Nonfatal Opioid Overdose Standardized Surveillance Case Definition. Council of State and Territorial 
Epidemiologists. cste.org/resource/resmgr/ps/2019ps/Nonfatal_Opioid_Overdose_011.pdf. 
Guidance for Documenting Drug Overdose-related EMS Trips. Georgia Department of Public Health. 
dph.georgia.gov/document/document/attached-0/download. 
Enhanced State Opioid Overdose Surveillance (ESOOS) Case Definition for Emergency Medical Services 
(EMS). Rhode Island Department of Health. health.ri.gov/publications/guidelines/
ESOOSCaseDefinitionForEMS.pdf. 
Virginia Office of Emergency Medical Services Opioid Overdose Definition. Virginia Department of Health. 
vdh.virginia.gov/content/uploads/sites/23/2019/08/Virginia-Office-of-EMS-Opioid-Overdose-
Definition.pdf. 