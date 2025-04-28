xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Influenza-like Illness :)
(: August 26, 2021 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12)[matches(., '^(B97\.2.*)|(J00.*)|(J09.*)|(J1[0-8].*)|(J2[0-2].*)|(Z20\.8.*)|(Z20\.9)$')]
    or
    count(distinct-values(eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12)[matches(., '(J02.*)|(J03.*)|(J06)|(J80)|(J98\.9)|(M79\.1.*)|(R05)|(R06)|(R06\.0.*)|(R06\.8)|(R06\.89)|(R06\.9)|(R07\.0)|(R09\.81)|(R50)|(R50\.8)|(R50\.81)|(R50\.9)|(R51.*)|(R53)|(R53\.1)|(R53\.8)|(R53\.81)|(R53\.83)|(R68\.83)')])) > 1
  ]
return
  count($records)
