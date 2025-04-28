/* NEMSIS Case Definition */
/* Stroke */
/* August 26, 2021 */
proc sql;
  create table StrokeKey as
  select distinct pcrKey from
    (
      select pcrKey from nemsis.factPcrPrimaryImpression where substr(eSituation_11,1,3) in ('G45', 'G46', 'I60', 'I61', 'I63')
      union
      select pcrKey from nemsis.factPcrSecondaryImpression where substr(eSituation_12,1,3) in ('G45', 'G46', 'I60', 'I61', 'I63')
      union
      select pcrKey from nemsis.factPcrPrimarySymptom where substr(eSituation_09,1,3) in ('G45', 'G46', 'I60', 'I61', 'I63')
      union
      select pcrKey from nemsis.factPcrAdditionalSymptom where substr(eSituation_10,1,3) in ('G45', 'G46', 'I60', 'I61', 'I63')
      union
      select pcrKey from nemsis.factPcrVital where eVitals_29 ='3329005'
      union
      select pcrKey from nemsis.factPcrProtocol where eProtocol_01 = '9914145'
      union
      select pcrKey from nemsis.factPcrDestinationTeam where eDisposition_24 = '4224015'
    )
  ;
quit;
