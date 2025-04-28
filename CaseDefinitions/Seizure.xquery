xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Seizure :)
(: June 27, 2023 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12)[matches(., '^(F44.5)|(G40)|(P90)|(R56)')]
    or
    eProtocols/eProtocols.ProtocolGroup/eProtocols.01 = '9914141'
  ]
return
  count($records)
