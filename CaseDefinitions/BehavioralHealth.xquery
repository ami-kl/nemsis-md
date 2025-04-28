xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Behavioral Health :)
(: June 27, 2023 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12)[matches(., '^(F.*)|(R45.*)|(R46.*)|(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)|(T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)|(T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$')]
    or
    eInjury/eInjury.01[matches(., '^(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)|(T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)|(T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$')]
  ]
return
  count($records)
