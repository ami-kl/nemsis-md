xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Micromobility :)
(: June 27, 2023 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eInjury/eInjury.01[matches(., '^(V00)|(V01)|(V0[2-6]\.[0-9][1-9])|(V1.)|(V2.\..1)|(V29\...1)')]
  ]
return
  count($records)
