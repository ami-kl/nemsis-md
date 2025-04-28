xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Trauma Center Need :)
(: August 26, 2021 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eInjury/eInjury.03[. != '']
    or
    eInjury/eInjury.04[. != '']
  ]
return
  count($records)
