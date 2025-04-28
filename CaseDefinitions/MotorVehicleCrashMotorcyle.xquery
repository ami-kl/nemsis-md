xquery version '1.0';
declare default element namespace 'http://www.nemsis.org';
(: NEMSIS Case Definition :)
(: Motor Vehicle Crash - Motorcycle :)
(: August 26, 2021 :)
for
  $dataset in doc('/path/to/EMSDataSetDocument.xml')
let
  $records := $dataset/EMSDataSet/Header/PatientCareReport
  [
    eInjury/eInjury.01[matches(., '^(V20)|(V20\.3.*)|(V20\.4.*)|(V20\.5.*)|(V20\.9.*)|(V21)|(V21\.3.*)|(V21\.4.*)|(V21\.5.*)|(V21\.9.*)|(V22)|(V22\.3.*)|(V22\.4.*)|(V22\.5.*)|(V22\.9.*)|(V23)|(V23\.3.*)|(V23\.4.*)|(V23\.5.*)|(V23\.9.*)|(V24)|(V24\.3.*)|(V24\.4.*)|(V24\.5.*)|(V24\.9.*)|(V25)|(V25\.3.*)|(V25\.4.*)|(V25\.5.*)|(V25\.9.*)|(V26)|(V26\.3.*)|(V26\.4.*)|(V26\.5.*)|(V26\.9.*)|(V27)|(V27\.3.*)|(V27\.4.*)|(V27\.5.*)|(V27\.9.*)|(V28)|(V28\.3.*)|(V28\.4.*)|(V28\.5.*)|(V28\.9.*)|(V29)|(V29\.4)|(V29\.40.*)|(V29\.49.*)|(V29\.5)|(V29\.50.*)|(V29\.59.*)|(V29\.6)|(V29\.60.*)|(V29\.69.*)|(V29\.8)|(V29\.81.*)|(V29\.88.*)|(V29\.9.*)$')]
  ]
return
  count($records)
