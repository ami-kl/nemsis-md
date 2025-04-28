xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: STEMI :)
(: August 26, 2021 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12)[matches(., '^(I21.0)|(I21.1)|(I21.2)|(I21.3)')]
    or
    eVitals/eVitals.VitalGroup/eVitals.03 = ('9901051', '9901053', '9901055', '9901057')
    or
    (
      eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) = ('I20', 'I20.0', 'I20.9')
      and
      eVitals/eVitals.VitalGroup/eVitals.03 = '9901021'
    )
    or
    eProtocols/eProtocols./ProtocolGroup/eProtocols.01 = '9914143'
    or
    eDisposition/eDisposition.HospitalTeamActivationGroup/eDisposition.24 = '4224013'
  ]
return
  count($records)
