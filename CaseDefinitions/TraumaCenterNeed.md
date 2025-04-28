

 
Page 1 
NEMS IS V3  Case Def i nition 
Trauma Center Need 
Date 
August 26, 2021 
Definition 
The patient is injured and meets the criteria for transport to a trauma center in the CDC guidelines for 
field triage of injured patients. 
Criteria Description 
Patient care reports where: 
• CDC field triage criteria are met 
Pseudocode 
Patient care reports where: 
eInjury.03 - Trauma Center Criteria 
• Step One: Physiologic Criteria 
o Glasgow Coma Score ≤13 
o Systolic Blood Pressure <90 mmHg 
o Respiratory Rate <10 or >29 breaths per minute (<20 in infants aged <1 year) or need for 
ventilatory support 
• Step Two: Anatomic Criteria 
o All penetrating injuries to head, neck, torso, and extremities proximal to elbow or knee 
o Chest wall instability or deformity (e.g., flail chest) 
o Amputation proximal to wrist or ankle 
o Two or more proximal long-bone fractures (i.e., femur and humerus) 
o Crushed, degloved, mangled, or pulseless extremity 
o Pelvic fractures 
o Open or depressed skull fracture 
o Paralysis 
OR 
eInjury.04 - Vehicular, Pedestrian, or Other Injury Risk Factor 

 
Page 2 
• Step Three: Mechanism of Injury Criteria 
o Auto vs. pedestrian/bicyclist thrown, run over, or with significant (>20mph) impact 
o Adult: falls >20 feet 
o Children: falls >10 feet 
o Death in same passenger compartment 
o Ejection (partial or complete) from automobile 
o Intrusion, including roof: >12 inches occupant site; >18 inches any site 
o Vehicle telemetry data consistent with a high risk of injury 
o Motorcycle crash >20 mph 
• Step Four: Special Considerations 
o Systolic blood pressure <110 in persons aged >65 years 
o Anticoagulant use and bleeding disorders 
o Pregnancy >20 weeks 
o Emergency medical services provider judgment 
o Burns, with trauma mechanism 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eInjury/eInjury.03[. != ''] 
    or 
    eInjury/eInjury.04[. != ''] 
  ] 
SAS Code 
proc sql; 
  create table TraumaCenterNeedKey as 
  select distinct pcrKey from   
    ( 
      select pcrKey from nemsis.factPcrTraumaCriteria where eInjury_03 not in  
        ('', '7701001', '7701003') 
      union 
      select pcrKey from nemsis.factPcrInjuryRiskFactor where eInjury_04  not in  
        ('', '7701001', '7701003') 
    ) 
  ; 
quit; 

 
Page 3 
Discussion 
The following items in Step 4 of the CDC trauma triage criteria are not available as choices in eInjury.04. 
They could be obtained from other NEMSIS data elements (for example, ePatient.15 and 16 for Age and 
Age Units), but it would not be possible to infer whether the attribute was in fact relevant to the 
decision to triage the patient to a trauma center. For example, if the patient had a minor injury but was 
over age 55, EMS may have considered the patient’s age to be irrelevant to the triage decision because 
the injury was so minor. 
• Age >55 years 
• Falls in older adults (e.g., ground-level falls) 
• Pediatric trauma transport 
This same logic applies to other elements that could have been used in place of values that are available 
in eInjury.03 and 04 but may not have been recorded on a PCR. For example, eVitals.06 SBP (Systolic 
Blood Pressure) could be used to determine if the patient had an SBP less than 90, even if EMS did not 
document “Systolic Blood Pressure <90 mmHg” in eVitals.03; however, a low SBP may have been for 
other medical reasons and not relevant to the trauma triage decision. If EMS documents the low SBP in 
eInjury.03, we can assume it was relevant to the trauma triage decision. 
References 
Guidelines for field triage of injured patients — United States, 2011. U.S. Department of Health and 
Human Services, Centers for Disease Control and Prevention (CDC). 
cdc.gov/mmwr/preview/mmwrhtml/rr6101a1.htm. 