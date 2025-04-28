/* NEMSIS Case Definition */
/* STEMI */
/* August 26, 2021 */
proc sql;
  create table StemiKey as
  select distinct pcrKey from
    (
      select pcrKey from nemsis.factPcrPrimaryImpression where substr(eSituation_11,1,5) in ('I21.0', 'I21.1', 'I21.2', 'I21.3')
      union
      select pcrKey from nemsis.factPcrSecondaryImpression where substr(eSituation_12,1,5) in ('I21.0', 'I21.1', 'I21.2', 'I21.3')
      union
      select pcrKey from nemsis.factPcrPrimarySymptom where substr(eSituation_09,1,5) in ('I21.0', 'I21.1', 'I21.2', 'I21.3')
      union
      select pcrKey from nemsis.factPcrAdditionalSymptom where substr(eSituation_10,1,5) in ('I21.0', 'I21.1', 'I21.2', 'I21.3')
      union
      select pcrKey from nemsis.factPcrVital where pcrVitalKey in
        (
          select vitalKey from nemsis.pcrVitalEcgGroup where eVitals_03 in ('9901051', '9901053', '9901055', '9901057')
        )
      union
      select pcrKey from nemsis.factPcrVital where pcrVitalKey in
        (
          select vitalKey from nemsis.pcrVitalEcgGroup where eVitals_03 = '9901021'
        )
        and pcrKey in
        (
          select pcrKey from nemsis.factPcrPrimaryImpression where eSituation_11 in ('I21', 'I20.0', 'I20.9')
          union
          select pcrKey from nemsis.factPcrSecondaryimpression where eSituation_12 in ('I21', 'I20.0', 'I20.9')
          union
          select pcrKey from nemsis.factPcrPrimarySymptom where eSituation_09 in ('I21', 'I20.0', 'I20.9')
          union
          select pcrKey from nemsis.factPcrAdditionalSymptom where eSituation_10 in ('I21', 'I20.0', 'I20.9')
        )
      union
      select pcrKey from nemsis.factPcrProtocol where eProtocol_01 = '9914143'
      union
      select pcrKey from nemsis.factPcrDestinationTeam where eDisposition_24 = '4224013'
    )
  ;
quit;
