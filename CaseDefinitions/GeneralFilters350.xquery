xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: General Filters - v3.5.0 :)
(: June 27, 2023 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport

(: eResponse.05 - Type of Service Requested :)
  (: Emergency Response (Primary Response Area) :)
  let $TypeOfService_911 := $records[eResponse/eResponse.ServiceGroup/eResponse.05 = '2205001']
  (: Interfacility Transfer, Medical Transport :)
  let $TypeOfService_Interfacility := $records[eResponse/eResponse.ServiceGroup/eResponse.05 = ('2205005', '2205007', '2205015', '2205017', '2205019')]

(: eResponse.07 - Unit Transport and Equipment Capability :)
  (: Transport :)
  let $UnitCapability_Transport := $records[eResponse/eResponse.07 = ('2207011', '2207013', '2207015', '2207017', '2207019', '2207025')]
  (: Non-Transport :)
  let $UnitCapability_NonTransport := $records[eResponse/eResponse.07 = ('2207021', '2207023', '2207027')]
  (: Ground :)
  let $UnitCapability_Ground := $records[eResponse/eResponse.07 = ('2207015', '2207017', '2207019', '2207021', '2207023', '2207025', '2207027')]
  (: Air :)
  let $UnitCapability_Air := $records[eResponse/eResponse.07 = ('2207011', '2207013')]
  (: BLS :)
  let $UnitCapability_Bls := $records[eResponse/eResponse.07 = ('2207017', '2207023')]
  (: ALS :)
  let $UnitCapability_Als := $records[eResponse/eResponse.07 = ('2207011', '2207013', '2207015' ,'2207019', '2207021')]
  (: Other :)
  let $UnitCapability_Other := $records[eResponse/eResponse.07 = ('2207025', '2207027')]

(: eResponse.23 - Response Mode to Scene :)
  (: Emergent :)
  let $ResponseMode_Emergent := $records[eResponse/eResponse.23 = ('2223001', '2223007')]
  (: Non-emergent :)
  let $ResponseMode_NonEmergent := $records[eResponse/eResponse.23 = ('2223003', '2223005')]

(: eSituation.13 Initial Patient Acuity :)
  (: Critical (Red) :)
  let $InitialAcuity_Critical := $records[eSituation/eSituation.13 = '2813001']
  (: Emergent (Yellow) :)
  let $InitialAcuity_Emergent := $records[eSituation/eSituation.13 = '2813003']
  (: Emergent (Yellow) or Critical (Red) :)
  let $InitialAcuity_EmergentOrCritical := $records[eSituation/eSituation.13 = ('2813001', '2813003')]
  (: Lower Acuity (Green) :)
  let $InitialAcuity_LowerAcuity := $records[eSituation/eSituation.13 = '2813005']
  (: Dead without Resuscitation Efforts (Black) :)
  let $InitialAcuity_Dead := $records[eSituation/eSituation.13 = '2813007']
  (: Non-Acute/Routine :)
  let $InitialAcuity_NonAcute := $records[eSituation/eSituation.13 = '2813009']
  (: Alive :)
  let $InitialAcuity_Alive := $records[eSituation/eSituation.13 = ('2813001', '2813003', '2813005', '2813009')]

(: ePatient.15 - Age and ePatient.16 - Age Units :)
  (: Pediatric (younger than 18 years) :)
  let $Age_Pediatric := $records[ePatient/ePatient.AgeGroup[ePatient.15 != '' and ((ePatient.15 < 18 and ePatient.16 = '2516009') or ePatient.16 = ('2516001', '2516003', '2516005', '2516007'))]]
  (: Adult (18 years or older) :)
  let $Age_Adult := $records[ePatient/ePatient.AgeGroup[ePatient.15 != '' and ePatient.15 >= 18 and ePatient.16 = '2516009']]
  (: Geriatric (65 years or older) :)
  let $Age_Geriatric := $records[ePatient/ePatient.AgeGroup[ePatient.15 != '' and ePatient.15 >= 65 and ePatient.16 = '2516009']]

(: eDisposition.IncidentDispositionGroup - Disposition :)
  (: Patient :)
  let $Disposition_Patient := $records[eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.27 = '4227001']
  (: Patient Treated :)
  let $Disposition_PatientTreated := $records[eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.28 = '4228001']
  (: EMS Transport :)
  let $Disposition_EmsTransport := $records[eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.30 = ('4230001', '4230003', '4230005', '4230007')]
  (: EMS Transport by This Unit:)
  let $Disposition_EmsTransportThisUnit := $records[eDisposition/eDisposition.IncidentDispositionGroup[eDisposition.28 = '4228001' and eDisposition.30 = ('4230001', '4230003')]]
  (: Patient Transferred to Another EMS Unit :)
  let $Disposition_EmsTransfer := $records[eDisposition/eDisposition.IncidentDispositionGroup/eDisposition.29 = '4229003']

(: eDisposition.17 - Transport Mode from Scene :)
  (: Emergent :)
  let $TransportMode_Emergent := $records[eDisposition/eDisposition.17 = ('4217001', '4217007')]
  (: Non-emergent :)
  let $TransportMode_NonEmergent := $records[eDisposition/eDisposition.17 = ('4217003', '4217005')]

return
  count($records)
