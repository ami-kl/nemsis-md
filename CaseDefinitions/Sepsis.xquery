xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Sepsis :)
(: June 27, 2023 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12)[matches(., '^(A40)|(A41)|(P36)|(R65\.2)')]
    or
    eDisposition/eDisposition.HospitalTeamActivationGroup/eDisposition.24 = '4224019'
  ]
return
  count($records)
