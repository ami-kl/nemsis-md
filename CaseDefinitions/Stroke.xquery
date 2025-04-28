xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Stroke :)
(: August 26, 2021 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12)[matches(., '^(G45)|(G46)|(I60)|(I61)|(I63)')]
    or
    eVitals/eVitals.VitalGroup/eVitals.StrokeScaleGroup/eVitals.29 = '3329005'
    or
    eProtocols/eProtocols.ProtocolGroup/eProtocols.01 = '9914145'
    or
    eDisposition/eDisposition.HospitalTeamActivationGroup/eDisposition.24 = '4224015'
  ]
return
  count($records)
