xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Cardiac Arrest :)
(: August 26, 2021 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12)[starts-with(., 'I46')]
    and
    (
      (
        eArrest/eArrest.01 = '3001003'
        and
        eArrest/eArrest.02 = ('3002001', '')
      )
      or
      (
        eArrest/eArrest.01 = '3001005'
        and
        eArrest/eArrest.02 = '3002001'
      )
    )
  ]
return
  count($records)
