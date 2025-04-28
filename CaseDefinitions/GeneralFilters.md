

 
Page 1 
NEMS IS V3  Case Def i nition 
General Filters 
Date 
August 31, 2021 
February 1, 2022 (Added missing values for air transport in v3.5.0 “Transport” filter) 
June 27, 2023 (Added filters for Response Mode and Transport Mode: emergent and non-emergent) 
Introduction 
In addition to the basic criteria for each NEMSIS case definition, it is common to add criteria that further 
filter the record selection for specific performance improvement or research needs. This document 
provides code for commonly used filters. 
In some cases, the general filters are different in NEMSIS versions 3.4.0 and 3.5.0. 
• Filters labeled “v3.4.0” are only compatible with NEMSIS version 3.4.0. 
• Filters labeled “v3.5.0” are only compatible with NEMSIS version 3.5.0. 
• Filters labeled “v3.4.0 and v3.5.0” are compatible with NEMSIS versions 3.4.0 and 3.5.0 and can 
be used to query datasets that contain a mix of both versions. 
In XPath code, the context element is /EMSDataSet/Header/PatientCareReport. 
In SAS code, the statements are within the proc sql procedure. 

 
Page 2 
Contents 
Type of Service Requested ............................................................................................................................ 4 
Emergency Response (Primary Response Area) ....................................................................................... 4 
Interfacility Transfer, Medical Transport .................................................................................................. 4 
Unit Transport and Equipment Capability (v3.5.0) 
Primary Role of the Unit (v3.4.0) 
Level of Care of This Unit (v3.4.0) ................................................................................................................. 5 
Transport ................................................................................................................................................... 5 
Non-transport ........................................................................................................................................... 5 
Ground ...................................................................................................................................................... 6 
Air .............................................................................................................................................................. 6 
BLS ............................................................................................................................................................. 7 
ALS ............................................................................................................................................................. 7 
Other ......................................................................................................................................................... 8 
Response Mode to Scene .............................................................................................................................. 9 
Emergent ................................................................................................................................................... 9 
Non-emergent ........................................................................................................................................... 9 
Initial Patient Acuity .................................................................................................................................... 10 
Critical (Red) ............................................................................................................................................ 10 
Emergent (Yellow) ................................................................................................................................... 10 
Emergent (Yellow) or Critical (Red) ......................................................................................................... 10 
Lower Acuity (Green) .............................................................................................................................. 10 
Dead without Resuscitation Efforts (Black) ............................................................................................ 10 
Non-Acute/Routine ................................................................................................................................. 11 
Alive......................................................................................................................................................... 11 
Patient Age .................................................................................................................................................. 12 
Pediatric (less than 18 years old) ............................................................................................................ 12 
Adult (18 years or older) ......................................................................................................................... 12 
Geriatric (65 years or older) .................................................................................................................... 12 
Incident/Patient Disposition ....................................................................................................................... 13 
Patient ..................................................................................................................................................... 13 
Patient Treated ....................................................................................................................................... 13 
EMS Transport......................................................................................................................................... 14 
EMS Transport by This Unit..................................................................................................................... 15 
Patient Transferred to Another EMS Unit............................................................................................... 16 

 
Page 3 
Transport Mode from Scene ....................................................................................................................... 17 
Emergent ................................................................................................................................................. 17 
Non-emergent ......................................................................................................................................... 17 
 

 
Page 4 
Type of Service Requested 
Emergency Response (Primary Response Area) 
v3.4.0 and v3.5.0: 
XPath 
eResponse/eResponse.ServiceGroup/eResponse.05 = '2205001' 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_05 = '2205001'; 
Interfacility Transfer, Medical Transport 
v3.5.0: 
XPath 
eResponse/eResponse.ServiceGroup/eResponse.05 =  
  ('2205005', '2205007', '2205015', '2205017', '2205019') 
 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_05 in  
  ('2205005', '2205007', '2205015', '2205017', '2205019'); 
v3.4.0: 
XPath 
eResponse/eResponse.ServiceGroup/eResponse.05 = ('2205005', '2205007') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_05 in 
  ('2205005', '2205007'); 
v3.4.0 and v3.5.0: 
XPath 
eResponse/eResponse.ServiceGroup/eResponse.05 =  
  ('2205005', '2205007', '2205015', '2205017', '2205019') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_05 in 
  ('2205005', '2205007', '2205015', '2205017', '2205019'); 

 
Page 5 
Unit Transport and Equipment Capability (v3.5.0) 
Primary Role of the Unit (v3.4.0) 
Level of Care of This Unit (v3.4.0) 
Transport 
v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207011', '2207013', '2207015', '2207017', 
'2207019', '2207025') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in 
  ('2207011', '2207013', '2207015', '2207017', '2207019', '2207025'); 
v3.4.0: 
XPath 
eResponse/eResponse.07 = ('2207003', '2207011', '2207013') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in 
  ('2207003', '2207011', '2207013'); 
v3.4.0 and v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207003', '2207011', '2207013', '2207015', 
  '2207017', '2207019', '2207025') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in ('2207003', 
  '2207011', '2207013', '2207015', '2207017', '2207019', '2207025'); 
Non-transport 
v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207021', '2207023', '2207027') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in 
  ('2207021', '2207023', '2207027'); 
v3.4.0: 
XPath 
eResponse/eResponse.07 = ('2207005', '2207007', '2207009') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in 
  ('2207005', '2207007', '2207009'); 

 
Page 6 
v3.4.0 and v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207005', '2207007', '2207009', '2207021', 
  '2207023', '2207027') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in ('2207005', 
  '2207007', '2207009', '2207021', '2207023', '2207027'); 
Ground 
v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207015', '2207017', '2207019', '2207021', 
  '2207023', '2207025', '2207027') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in ('2207015', 
  '2207017', '2207019', '2207021', '2207023', '2207025', '2207027'); 
v3.4.0: 
XPath 
eResponse/eResponse.07 = ('2207003', '2207005', '2207007', '2207009') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in 
  ('2207003', '2207005', '2207007', '2207009'); 
v3.4.0 and v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207003', '2207005', '2207007', '2207009', 
  '2207015', '2207017', '2207019', '2207021', '2207023', '2207025', 
  '2207027') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in ('2207003', 
  '2207005', '2207007', '2207009', '2207015', '2207017', '2207019', 
  '2207021', '2207023', '2207025', '2207027'); 
Air 
v3.4.0 and v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207011', '2207013') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in 
  ('2207011', '2207013'); 

 
Page 7 
BLS 
v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207017', '2207023') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in 
  ('2207017', '2207023'); 
v3.4.0: 
XPath 
eResponse/eResponse.15 = 
  ('2215001', '2215003', '2215005', '2215007', '22150023') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_15 in 
  ('2215001', '2215003', '2215005', '2215007', '22150023'); 
v3.4.0 and v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207017', '2207023') 
or 
eResponse/eResponse.15 = ('2215001', '2215003', '2215005', '2215007', 
  '22150023') 
SAS 
select * from nemsis.pub_pcrEvents where 
  eResponse_07 in ('2207017', '2207023') 
  or  
  eResponse_15 in ('2215001', '2215003', '2215005', '2215007', 
    '22150023'); 
ALS 
v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207011', '2207013', '2207015' ,'2207019', 
  '2207021') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in 
  ('2207011', '2207013', '2207015', '2207019', '2207021'); 
v3.4.0: 
XPath 
eResponse/eResponse.15 = ('2215009', '2215011', '2215013', '2215015', 
  '2215017', '22150019', '22150021') 
 
 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_15 in ('2215009', 
  '2215011', '2215013', '2215015', '2215017', '22150019', '22150021'); 
 

 
Page 8 
v3.4.0 and v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207011', '2207013', '2207015' ,'2207019', 
  '2207021') 
or 
eResponse/eResponse.15 = ('2215009', '2215011', '2215013', '2215015', 
  '2215017', '22150019', '22150021') 
 
SAS 
select * from nemsis.pub_pcrEvents where 
  eResponse_07 in ('2207011', '2207013', '2207015', '2207019', 
    '2207021') 
  or 
  eResponse_15 in ('2215009', '2215011', '2215013', '2215015', 
    '2215017', '22150019', '22150021'); 
Other 
v3.5.0: 
XPath 
eResponse/eResponse.07 = ('2207025', '2207027') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_07 in 
  ('2207025', '2207027'); 

 
Page 9 
Response Mode to Scene 
Emergent 
v3.4.0 and v3.5.0: 
XPath 
eResponse/eResponse.23 = ('2223001', '2223007') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_23 in ('2223001', 
'2223007'); 
Non-emergent 
v3.4.0 and v3.5.0: 
XPath 
eResponse/eResponse.23 = ('2223003', '2223005') 
SAS 
select * from nemsis.pub_pcrEvents where eResponse_23 in ('2223003', 
'2223005'); 

 
Page 10 
Initial Patient Acuity 
Critical (Red) 
v3.4.0 and v3.5.0: 
XPath 
eSituation/eSituation.13 = '2813001' 
SAS 
select * from nemsis.pub_pcrEvents where eSituation_13 = '2813001'; 
Emergent (Yellow) 
v3.4.0 and v3.5.0: 
XPath 
eSituation/eSituation.13 = '2813003' 
SAS 
select * from nemsis.pub_pcrEvents where eSituation_13 = '2813003'; 
Emergent (Yellow) or Critical (Red) 
v3.4.0 and v3.5.0: 
XPath 
eSituation/eSituation.13 = ('2813001', '2813003') 
SAS 
select * from nemsis.pub_pcrEvents where eSituation_13 in 
  ('2813003', '2813001'); 
Lower Acuity (Green) 
v3.4.0 and v3.5.0: 
XPath 
eSituation/eSituation.13 = '2813005' 
SAS 
select * from nemsis.pub_pcrEvents where eSituation_13 = '2813005'; 
Dead without Resuscitation Efforts (Black) 
v3.4.0 and v3.5.0: 
XPath 
eSituation/eSituation.13 = '2813007' 
SAS 
select * from nemsis.pub_pcrEvents where eSituation_13 = '2813007'; 

 
Page 11 
Non-Acute/Routine 
v3.5.0: 
XPath 
eSituation/eSituation.13 = '2813009' 
SAS 
select * from nemsis.pub_pcrEvents where eSituation_13 = '2813009'; 
Alive 
v3.5.0: 
XPath 
eSituation/eSituation.13 = 
  ('2813001', '2813003', '2813005', '2813009') 
SAS 
select * from nemsis.pub_pcrEvents where eSituation_13 in 
  ('2813001', '2813003', '2813005', '2813009'); 
v3.4.0: 
XPath 
eSituation/eSituation.13 = ('2813001', '2813003', '2813005') 
 
SAS 
select * from nemsis.pub_pcrEvents where eSituation_13 in 
  ('2813001', '2813003', '2813005'); 
 
v3.4.0 and v3.5.0: 
XPath 
eSituation/eSituation.13 = 
  ('2813001', '2813003', '2813005', '2813009') 
SAS 
select * from nemsis.pub_pcrEvents where eSituation_13 in 
  ('2813001', '2813003', '2813005', '2813009'); 

 
Page 12 
Patient Age 
Pediatric (less than 18 years old) 
v3.4.0 and v3.5.0: 
XPath 
ePatient/ePatient.AgeGroup[ePatient.15 != '' and 
  ( 
    (ePatient.15 < 18 and ePatient.16 = '2516009') 
    or 
    ePatient.16 = ('2516001', '2516003', '2516005', '2516007') 
  ) 
] 
SAS 
select * from nemsis.computedElements where ageInYear lt 18; 
Adult (18 years or older) 
v3.4.0 and v3.5.0: 
XPath 
ePatient/ePatient.AgeGroup[ePatient.15 != '' and ePatient.15 >= 18 and 
  ePatient.16 = '2516009'] 
SAS 
select * from nemsis.computedElements where ageInYear ge 18; 
Geriatric (65 years or older) 
v3.4.0 and v3.5.0: 
XPath 
ePatient/ePatient.AgeGroup[ePatient.15 != '' and ePatient.15 >= 65 and 
  ePatient.16 = '2516009'] 
SAS 
select * from nemsis.computedElements where ageInYear ge 65; 

 
Page 13 
Incident/Patient Disposition 
Patient 
v3.5.0: 
XPath 
eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.27 = 
  '4227001' 
 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_27 = '4227001';  
v3.4.0: 
XPath 
eDisposition/eDisposition.12 = ('4212013', '4212015', '4212017', 
  '4212019', '4212021', '4212023', '4212025', '4212027', '4212029', 
  '4212031', '4212033', '4212035', '4212037') 
 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_12 in 
  ('4212013', '4212015', '4212017', '4212019', '4212021', '4212023', 
  '4212025', '4212027', '4212029', '4212031', '4212033', '4212035', 
  '4212037'); 
 
v3.4.0 and v3.5.0: 
XPath 
eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.27 = 
  '4227001' 
or 
eDisposition/eDisposition.12 = ('4212013', '4212015', '4212017', 
  '4212019', '4212021', '4212023', '4212025', '4212027', '4212029', 
  '4212031', '4212033', '4212035', '4212037') 
SAS 
select * from nemsis.pub_pcrEvents where  
  eDisposition_27 = '4227001' 
  or 
  eDisposition_12 in ('4212013', '4212015', '4212017', '4212019', 
    '4212021', '4212023', '4212025', '4212027', '4212029', '4212031', 
    '4212033', '4212035', '4212037'); 
Patient Treated 
v3.5.0: 
XPath 
eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.28 = 
  '4228001' 
 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_28 = '4228001'; 
 
 

 
Page 14 
v3.4.0: 
XPath 
eDisposition/eDisposition.12 = ('4212017', '4212019', '4212027', 
  '4212029', '4212031', '4212033', '4212035', '4212037') 
 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_12 in 
  ('4212017', '4212019', '4212027', '4212029', '4212031', '4212033', 
  '4212035', '4212037'); 
 
v3.4.0 and v3.5.0: 
XPath 
eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.28 = 
  '4228001' 
or 
eDisposition/eDisposition.12 = ('4212017', '4212019', '4212027', 
  '4212029', '4212031', '4212033', '4212035', '4212037'); 
SAS 
select * from nemsis.pub_pcrEvents where 
  eDisposition_28 = '4228001' 
  or 
  eDisposition_12 in ('4212017', '4212019', '4212027', '4212029', 
    '4212031', '4212033', '4212035', '4212037'); 
EMS Transport 
v3.5.0: 
XPath 
eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.30 = 
  ('4230001', '4230003', '4230005', '4230007') 
 
 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_30 in 
  ('4230001', '4230003', '4230005', '4230007'); 
 
 
v3.4.0: 
XPath 
eDisposition/eDisposition.12 = 
  ('4212013', '4212017', '4212023', '4212033') 
 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_12 in 
  ('4212013', '4212017', '4212023', '4212033'); 
 

 
Page 15 
v3.4.0 and v3.5.0: 
XPath 
eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.30 = 
  ('4230001', '4230003', '4230005', '4230007') 
or 
eDisposition/eDisposition.12 = 
  ('4212013', '4212017', '4212023', '4212033') 
SAS 
select * from nemsis.pub_pcrEvents where 
  eDisposition_30 in ('4230001', '4230003', '4230005', '4230007') 
  or 
  eDisposition_12 in ('4212013', '4212017', '4212023', '4212033'); 
EMS Transport by This Unit 
v3.5.0: 
XPath 
eDisposition/eDisposition.IncidentDispositionGroup[ 
  eDisposition.28 = '4228001' 
  and 
  eDisposition.30 = ('4230001', '4230003')] 
 
SAS 
select * from nemsis.pub_pcrEvents where 
  eDisposition_28 = '4228001' 
  and 
  eDisposition_30 in ('4230001', '4230003'); 
 
v3.4.0: 
XPath 
eDisposition/eDisposition.12 = '4212033' 
 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_12 = '4212033';  
v3.4.0 and v3.5.0: 
XPath 
eDisposition/eDisposition.IncidentDispositionGroup[ 
  eDisposition.28 = '4228001' 
  and 
  eDisposition.30 = ('4230001', '4230003')] 
or 
eDisposition/eDisposition.12 = '4212033' 
SAS 
select * from nemsis.pub_pcrEvents where 
  ( 
    eDisposition_28 = '4228001' 
    and 
    eDisposition_30 in ('4230001', '4230003') 
  ) 
  or 
  eDisposition_12 = '4212033'; 

 
Page 16 
Patient Transferred to Another EMS Unit 
v3.5.0: 
XPath 
eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.29 = 
  '4229003' 
 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_29 = '4229003';  
v3.4.0: 
XPath 
eDisposition/eDisposition.12 = '4212031' 
 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_12 = '4212031';  
v3.4.0 and v3.5.0: 
XPath 
eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.29 = 
  '4229003' 
or 
eDisposition/eDisposition.12 = '4212031' 
SAS 
select * from nemsis.pub_pcrEvents where 
  eDisposition_29 = '4229003' 
  or 
  eDisposition_12 = '4212031'; 

 
Page 17 
Transport Mode from Scene 
Emergent 
v3.4.0 and v3.5.0: 
XPath 
eDisposition/eDisposition.17 = ('4217001', '4217007') 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_17 in ('4217001'
, '4217007'); 
Non-emergent 
v3.4.0 and v3.5.0: 
XPath 
eDisposition/eDisposition.17 = ('4217003', '4217005') 
SAS 
select * from nemsis.pub_pcrEvents where eDisposition_17 in ('4217003'
, '4217005'); 
 