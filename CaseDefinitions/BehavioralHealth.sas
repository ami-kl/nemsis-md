/* NEMSIS Case Definition */
/* Behavioral Health */
/* June 27, 2023 */
proc sql;
  create table BehavioralHealthKey as
  select distinct pcrKey from 
    (
      select pcrkey from nemsis.factPcrCauseOfInjury where prxmatch('/^(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)|(T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)|(T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$/', eInjury_01)
      union
     	select pcrKey from nemsis.factPcrPrimarySymptom where prxmatch('/^(F.*)|(R45.*)|(R46.*)|(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)|(T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)|(T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$/', eSituation_09)
      union
     	select pcrKey from nemsis.factPcrAdditionalSymptom where prxmatch('/^(F.*)|(R45.*)|(R46.*)|(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)|(T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)|(T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$/', eSituation_10)
      union
     	select pcrKey from nemsis.factPcrPrimaryImpression where prxmatch('/^(F.*)|(R45.*)|(R46.*)|(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)|(T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)|(T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$/', eSituation_11)
      union
     	select pcrKey from nemsis.factPcrSecondaryImpression where prxmatch('/^(F.*)|(R45.*)|(R46.*)|(T14\.91)|(T(3[6-9]|[4-6][0-9]|7[0-1])\.(..|9)2.*)|(T41\.42.*)|(T42\.72.*)|(T58\.02.*)|(T58\.12.*)|(T61\.02.*)|(T61\.12.*)|(T64\.02.*)|(T64\.82.*)|(T36\.92.*)|(X(7[1-9]|8[0-3]).*)$/', eSituation_12)
    )
  ;
quit;

