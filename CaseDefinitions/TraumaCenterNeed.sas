/* NEMSIS Case Definition */
/* Trauma Center Need */
/* August 26, 2021 */
proc sql;
  create table TraumaCenterNeedKey as
  select distinct pcrKey from
    (
      select pcrKey from nemsis.factPcrTraumaCriteria where eInjury_03 not in ('', '7701001', '7701003')
      union
      select pcrKey from nemsis.factPcrInjuryRiskFactor where eInjury_04  not in ('', '7701001', '7701003')
    )
  ;
quit;
