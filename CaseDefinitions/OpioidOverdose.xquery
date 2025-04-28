xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Opioid Overdose :)
(: August 26, 2021 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eSituation/(eSituation.09, eSituation.10, eSituation.11, eSituation.12)[matches(., '^(F11.*)|(T40\.[0-3]X?[1-4]?A?)|(T40\.4.?[1-4]?A?)|(T40\.6[09]?[1-4]?A?)$')]
    or
    eMedications/eMedications.MedicationGroup
    [
      eMedications.03 = ('7242', '203192', '197117')
      and
      eMedications.07 = '9916001'
    ]
  ]
return
  count($records)
