/* NEMSIS Case Definition */
/* Micromobility */
/* June 27, 2023 */
proc sql;
  create table MicromobilityKey as
  select distinct pcrKey from
    (
      select pcrKey from memsis.factPcrCauseOfInjury where prxmatch('/' ^(V00)|(V01)|(V0[2-6]\.[0-9][1-9])|(V1.)|(V2.\..1)|(V29\...1)/', eInjury_01)
    )
  ;
quit;
