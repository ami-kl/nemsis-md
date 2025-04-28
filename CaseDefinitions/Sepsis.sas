/* NEMSIS Case Definition */
/* Sepsis */
/* June 27, 2023 */
proc sql;
  create table SepsisKey as
  select distinct pcrKey from 
    (
      select pcrKey from nemsis.factPcrPrimarySymptom where substr(eSituation_09, 1, 3) in ('A40', 'A41', 'P36') or substr(eSituation_09, 1, 5) = 'R65.2'
      union
      select pcrKey from nemsis.factPcrAdditionalSymptom where substr(eSituation_10, 1, 3) in ('A40', 'A41', 'P36') or substr(eSituation_10, 1, 5) = 'R65.2'
      union
      select pcrKey from nemsis.factPcrPrimaryImpression where substr(eSituation_11, 1, 3) in ('A40', 'A41', 'P36') or substr(eSituation_11, 1, 5) = 'R65.2'
      union
      select pcrKey from nemsis.factPcrSecondaryImpression where substr(eSituation_12, 1, 3) in ('A40', 'A41', 'P36') or substr(eSituation_12, 1, 5) = 'R65.2'
      union
      select pcrKey from nemsis.factPcrDestinationTeam where eDisposition_24 = '4224019'
    )
  ;
quit;
