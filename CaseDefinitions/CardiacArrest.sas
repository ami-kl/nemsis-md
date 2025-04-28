/* NEMSIS Case Definition */
/* Cardiac Arrest */
/* April 28, 2022 */
proc sql;
  create table CardiacArrestKey as
  select distinct pcrKey from
    (
      (
        select pcrKey from nemsis.factPcrPrimaryImpression where substr(eSituation_11,1,3) = 'I46'
        union
        select pcrKey from nemsis.factPcrSecondaryImpression where substr(eSituation_12,1,3) = 'I46'
        union
        select pcrKey from nemsis.factPcrPrimarySymptom where substr(eSituation_09,1,3) = 'I46'
        union
        select pcrKey from nemsis.factPcrAdditionalSymptom where substr(eSituation_10,1,3) = 'I46'
      )
      intersect
      (
        select pcrKey from nemsis.pub_pcrEvents where eArrest_01 = '3001003' and eArrest_02 in ('3002001', '')
        union
        select pcrKey from nemsis.pub_pcrEvents where eArrest_01 = '3001005' and eArrest_02 = '3002001'
      )
    )
  ;
quit;
