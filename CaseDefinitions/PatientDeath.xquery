xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Patient Death :)
(: June 27, 2023 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eScene/eScene.08 = '2708009'
    or
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12) = 'R99'
    or
    eSituation/eSituation.13 = '2813007'
    or
    eArrest/eArrest.03 = ('3003007', '3003009')
    or
    eArrest/eArrest.12 = '3012001'
    or
    eArrest/eArrest.16 = ('3016001', '3016005')
    or
    eArrest/eArrest.17 = ('9901001', '9901003', '9901035', '9901067', '9901071')
    or
    eArrest/eArrest.18 = '3018003'
    or
    eDisposition/eDisposition.12 = ('4212013', '4212015', '4212017', '4212019')
    or
    eDisposition/eDisposition.19 = ('4219007', '4219009')
    or
    eDisposition/eDisposition.21 = '4221009'
  ]
return
  count($records)
