xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: General Filters - v3.4.0 :)
(: June 27, 2023 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport

(: eResponse.05 - Type of Service Requested :)
  (: 911 Response (Scene) :)
  let $TypeOfService_911 := $records[eResponse/eResponse.ServiceGroup/eResponse.05 = '2205001']
  (: Interfacility Transport, Medical Transport :)
  let $TypeOfService_Interfacility := $records[eResponse/eResponse.ServiceGroup/eResponse.05 = ('2205005', '2205007')]

(: eResponse.07 - Primary Role of the Unit :)
  (: Transport :)
  let $UnitCapability_Transport := $records[eResponse/eResponse.07 = ('2207003', '2207011', '2207013')]
  (: Non-Transport :)
  let $UnitCapability_NonTransport := $records[eResponse/eResponse.07 = ('2207005', '2207007', '2207009')]
  (: Ground :)
  let $UnitCapability_Ground := $records[eResponse/eResponse.07 = ('2207003', '2207005', '2207007', '2207009')]
  (: Air :)
  let $UnitCapability_Air := $records[eResponse/eResponse.07 = ('2207011', '2207013')]

(: eResponse.15 - Level of Care of This Unit :)
  (: BLS :)
  let $UnitCapability_Bls := $records[eResponse/eResponse.15 = ('2215001', '2215003', '2215005', '2215007', '22150023')]
  (: ALS :)
  let $UnitCapability_Als := $records[eResponse/eResponse.15 = ('2215009', '2215011', '2215013', '2215015', '2215017', '22150019', '22150021')]

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
  (: Alive :)
  let $InitialAcuity_Alive := $records[eSituation/eSituation.13 = ('2813001', '2813003', '2813005')]

(: ePatient.15 - Age and ePatient.16 - Age Units :)
  (: Pediatric (younger than 18 years) :)
  let $Age_Pediatric := $records[ePatient/ePatient.AgeGroup[ePatient.15 != '' and ((ePatient.15 < 18 and ePatient.16 = '2516009') or ePatient.16 = ('2516001', '2516003', '2516005', '2516007'))]]
  (: Adult (18 years or older) :)
  let $Age_Adult := $records[ePatient/ePatient.AgeGroup[ePatient.15 != '' and ePatient.15 >= 18 and ePatient.16 = '2516009']]
  (: Geriatric (65 years or older) :)
  let $Age_Geriatric := $records[ePatient/ePatient.AgeGroup[ePatient.15 != '' and ePatient.15 >= 65 and ePatient.16 = '2516009']]

(: eDisposition.12 - Incident/Patient Disposition :)
  (: Patient :)
  let $Disposition_Patient := $records[eDisposition/eDisposition.12 = ('4212013', '4212015', '4212017', '4212019', '4212021', '4212023', '4212025', '4212027', '4212029', '4212031', '4212033', '4212035', '4212037')]
  (: Patient Treated :)
  let $Disposition_PatientTreated := $records[eDisposition/eDisposition.12 = ('4212017', '4212019', '4212027', '4212029', '4212031', '4212033', '4212035', '4212037')]
  (: EMS Transport :)
  let $Disposition_EmsTransport := $records[eDisposition/eDisposition.12 = ('4212013', '4212017', '4212023', '4212033')]
  (: EMS Transport by This Unit:)
  let $Disposition_EmsTransportThisUnit := $records[eDisposition/eDisposition.12 = '4212033']
  (: Patient Transferred to Another EMS Unit :)
  let $Disposition_EmsTransfer := $records[eDisposition/eDisposition.12 = '4212031']

(: eDisposition.17 - Transport Mode from Scene :)
  (: Emergent :)
  let $TransportMode_Emergent := $records[eDisposition/eDisposition.17 = ('4217001', '4217007')]
  (: Non-emergent :)
  let $TransportMode_NonEmergent := $records[eDisposition/eDisposition.17 = ('4217003', '4217005')]

return
  count($records)
