/* NEMSIS Case Definition */
/* Influenza-like Illness */
/* August 30, 2021 */
proc sql;
  create table InfluenzaLikeIllnessKey as
  select distinct pcrKey from
    (
      select pcrKey from nemsis.factPcrPrimarySymptom where prxmatch('/^(B97\.2.*)|(J00.*)|(J09.*)|(J1[0-8].*)|(J2[0-2].*)|(Z20\.8.*)|(Z20\.9)$/', eSituation_09)
      union
      select pcrKey from nemsis.factPcrAdditionalSymptom where prxmatch('/^(B97\.2.*)|(J00.*)|(J09.*)|(J1[0-8].*)|(J2[0-2].*)|(Z20\.8.*)|(Z20\.9)$/', eSituation_10)
      union
      select pcrKey from nemsis.factPcrPrimaryImpression where prxmatch('/^(B97\.2.*)|(J00.*)|(J09.*)|(J1[0-8].*)|(J2[0-2].*)|(Z20\.8.*)|(Z20\.9)$/', eSituation_11)
      union
      select pcrKey from nemsis.factPcrSecondaryImpression where prxmatch('/^(B97\.2.*)|(J00.*)|(J09.*)|(J1[0-8].*)|(J2[0-2].*)|(Z20\.8.*)|(Z20\.9)$/', eSituation_12)
      union
      select pcrKey from
        (
          select pcrKey, count(distinct diagnosis) as c from 
            (
              select pcrKey, eSituation_09 as diagnosis from Nemsis.factPcrPrimarySymptom where prxmatch('/^(J02.*)|(J03.*)|(J06)|(J80)|(J98\.9)|(M79\.1.*)|(R05)|(R06)|(R06\.0.*)|(R06\.8)|(R06\.89)|(R06\.9)|(R07\.0)|(R09\.81)|(R50)|(R50\.8)|(R50\.81)|(R50\.9)|(R51.*)|(R53)|(R53\.1)|(R53\.8)|(R53\.81)|(R53\.83)|(R68\.83)$/', eSituation_09)
              union
              select pcrKey, eSituation_10 as diagnosis from Nemsis.factPcrAdditionalSymptom where prxmatch('/^(J02.*)|(J03.*)|(J06)|(J80)|(J98\.9)|(M79\.1.*)|(R05)|(R06)|(R06\.0.*)|(R06\.8)|(R06\.89)|(R06\.9)|(R07\.0)|(R09\.81)|(R50)|(R50\.8)|(R50\.81)|(R50\.9)|(R51.*)|(R53)|(R53\.1)|(R53\.8)|(R53\.81)|(R53\.83)|(R68\.83)$/', eSituation_10)
              union
              select pcrKey, eSituation_11 as diagnosis from Nemsis.factPcrPrimaryImpression where prxmatch('/^(J02.*)|(J03.*)|(J06)|(J80)|(J98\.9)|(M79\.1.*)|(R05)|(R06)|(R06\.0.*)|(R06\.8)|(R06\.89)|(R06\.9)|(R07\.0)|(R09\.81)|(R50)|(R50\.8)|(R50\.81)|(R50\.9)|(R51.*)|(R53)|(R53\.1)|(R53\.8)|(R53\.81)|(R53\.83)|(R68\.83)$/', eSituation_11)
              union
              select pcrKey, eSituation_12 as diagnosis from Nemsis.factPcrSecondaryImpression where prxmatch('/^(J02.*)|(J03.*)|(J06)|(J80)|(J98\.9)|(M79\.1.*)|(R05)|(R06)|(R06\.0.*)|(R06\.8)|(R06\.89)|(R06\.9)|(R07\.0)|(R09\.81)|(R50)|(R50\.8)|(R50\.81)|(R50\.9)|(R51.*)|(R53)|(R53\.1)|(R53\.8)|(R53\.81)|(R53\.83)|(R68\.83)$/', eSituation_12)
            )
            group by pcrKey
        )
        where c > 1
    )
  ;
quit;
