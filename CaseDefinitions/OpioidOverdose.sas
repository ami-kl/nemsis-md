/* NEMSIS Case Definition */
/* Opioid Overdose */
/* August 26, 2021 */
proc sql;
  create table OpioidOverdoseKey as
  select distinct pcrKey from
    (
      select pcrKey from nemsis.factPcrPrimaryImpression where prxmatch('/^(F11.*)|(T40\.[0-3]X?[1-4]?A?)|(T40\.4.?[1-4]?A?)|(T40\.6[09]?[1-4]?A?)$/', eSituation_11)
      union
      select pcrKey from nemsis.factPcrSecondaryImpression where prxmatch('/^(F11.*)|(T40\.[0-3]X?[1-4]?A?)|(T40\.4.?[1-4]?A?)|(T40\.6[09]?[1-4]?A?)$/', eSituation_12)
      union
      select pcrKey from nemsis.factPcrPrimarySymptom where prxmatch('/^(F11.*)|(T40\.[0-3]X?[1-4]?A?)|(T40\.4.?[1-4]?A?)|(T40\.6[09]?[1-4]?A?)$/', eSituation_09)
      union
      select pcrKey from nemsis.factPcrAdditionalSymptom where prxmatch('/^(F11.*)|(T40\.[0-3]X?[1-4]?A?)|(T40\.4.?[1-4]?A?)|(T40\.6[09]?[1-4]?A?)$/', eSituation_10)
      union
      select pcrKey from nemsis.factPcrMedication where eMedications_03 in ('7242', '203192', '197117') and eMedications_07 = '9916001'
    )
  ;
quit;
