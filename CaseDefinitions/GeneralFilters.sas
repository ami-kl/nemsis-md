/* NEMSIS Case Definition */
/* General Filters - v3.4.0 and v3.5.0  */
/* June 27, 2023 */
proc sql;

/* eResponse.05 - Type of Service Requested */
  /* Emergency Response (Primary Response Area) */
  create table TypeOfService_911 as select * from nemsis.pub_pcrEvents where eResponse_05 = '2205001';
  /* Interfacility Transfer, Medical Transport */
  create table TypeOfService_Interfacility as select * from nemsis.pub_pcrEvents where eResponse_05 in ('2205005', '2205007', '2205015', '2205017', '2205019');

/* eResponse.07 - Unit Transport and Equipment Capability (v3.5.0) */
/* eResponse.07 - Primary Role of the Unit (v3.4.0) */
/* eResponse.15 - Level of Care of This Unit (v3.4.0) */
  /* Transport */
  create table UnitCapability_Transport as select * from nemsis.pub_pcrEvents where eResponse_07 in ('2207003', '2207011', '2207013', '2207015', '2207017', '2207019', '2207025');
  /* Non-Transport */
  create table UnitCapability_NonTransport as select * from nemsis.pub_pcrEvents where eResponse_07 in ('2207005', '2207007', '2207009', '2207021', '2207023', '2207027');
  /* Ground */
  create table UnitCapability_Ground as select * from nemsis.pub_pcrEvents where eResponse_07 in ('2207003', '2207005', '2207007', '2207009', '2207015', '2207017', '2207019', '2207021', '2207023', '2207025', '2207027');
  /* Air */
  create table UnitCapability_Air as select * from nemsis.pub_pcrEvents where eResponse_07 in ('2207011', '2207013');
  /* BLS */
  create table UnitCapability_Bls as select * from nemsis.pub_pcrEvents
    where eResponse_07 in ('2207017', '2207023')
    or eResponse_15 in ('2215001', '2215003', '2215005', '2215007', '22150023');
  /* ALS */
  create table UnitCapability_Als as select * from nemsis.pub_pcrEvents
    where eResponse_07 in ('2207011', '2207013', '2207015', '2207019', '2207021')
    or eResponse_15 in ('2215009', '2215011', '2215013', '2215015', '2215017', '22150019', '22150021');
  /* Other (v3.5.0 only) */
  create table UnitCapability_Other as select * from nemsis.pub_pcrEvents where eResponse_07 in ('2207025', '2207027');

/* eResponse.23 - Response Mode to Scene */
  /* Emergent */
  create table ResponseMode_Emergent as select * from nemsis.pub_pcrEvents where eResponse_23 in ('2223001', '2223007');
  /* Non-emergent */
  create table ResponseMode_NonEmergent as select * from nemsis.pub_pcrEvents where eResponse_23 in ('2223003', '2223005');

/* eSituation.13 Initial Patient Acuity */
  /* Critical (Red) */
  create table InitialAcuity_Critical as select * from nemsis.pub_pcrEvents where eSituation_13 = '2813001';
  /* Emergent (Yellow) */
  create table InitialAcuity_Emergent as select * from nemsis.pub_pcrEvents where eSituation_13 = '2813003';
  /* Emergent (Yellow) or Critical (Red) */
  create table InitialAcuity_EmergentOrCritical as select * from nemsis.pub_pcrEvents where eSituation_13 in ('2813003', '2813001');
  /* Lower Acuity (Green) */
  create table InitialAcuity_LowerAcuity as select * from nemsis.pub_pcrEvents where eSituation_13 = '2813005';
  /* Dead without Resuscitation Efforts (Black) */
  create table InitialAcuity_Dead as select * from nemsis.pub_pcrEvents where eSituation_13 = '2813007';
  /* Non-Acute/Routine (v3.5.0 only) */
  create table InitialAcuity_NonAcute as select * from nemsis.pub_pcrEvents where eSituation_13 = '2813009';
  /* Alive */
  create table InitialAcuity_Alive as select * from nemsis.pub_pcrEvents where eSituation_13 in ('2813001', '2813003', '2813005', '2813009');

/* ePatient.15 - Age and ePatient.16 - Age Units */
  /* Pediatric (younger than 18 years) */
  create table Age_Pediatric as select * from nemsis.computedElements where ageInYear lt 18;
  /* Adult (18 years or older) */
  create table Age_Adult as select * from nemsis.computedElements where ageInYear ge 18;
  /* Geriatric (65 years or older) */
  create table Age_Geriatric as select * from nemsis.computedElements where ageInYear ge 65;

/* eDisposition.IncidentDispositionGroup - Disposition (v3.5.0) */
/* eDisposition.12 - Incident/Patient Disposition */
  /* Patient */
  create table Disposition_Patient as select * from nemsis.pub_pcrEvents where
    eDisposition_27 = '4227001'
    or
    eDisposition_12 in ('4212013', '4212015', '4212017', '4212019', '4212021', '4212023', '4212025', '4212027', '4212029', '4212031', '4212033', '4212035', '4212037');
  /* Patient Treated */
  create table Disposition_PatientTreated as select * from nemsis.pub_pcrEvents where
    eDisposition_28 = '4228001'
    or
    eDisposition_12 in ('4212017', '4212019', '4212027', '4212029', '4212031', '4212033', '4212035', '4212037');
  /* EMS Transport */
  create table Disposition_EmsTransport as select * from nemsis.pub_pcrEvents where
    eDisposition_30 in ('4230001', '4230003', '4230005', '4230007')
    or
    eDisposition_12 in ('4212013', '4212017', '4212023', '4212033');
  /* EMS Transport by This Unit*/
  create table Disposition_EmsTransportThisUnit as select * from nemsis.pub_pcrEvents where
    (eDisposition_28 = '4228001' and eDisposition_30 in ('4230001', '4230003'))
    or
    eDisposition_12 = '4212033';
  /* Patient Transferred to Another EMS Unit */
  create table Disposition_EmsTransfer as select * from nemsis.pub_pcrEvents where
    eDisposition_29 = '4229003'
    or
    eDisposition_12 = '4212031';

/* eDisposition.17 - Transport Mode from Scene */
  /* Emergent */
  create table TransportMode_Emergent as select * from nemsis.pub_pcrEvents where eDisposition_17 in ('4217001', '4217007');
  /* Non-emergent */
  create table transportMode_NonEmergent as select * from nemsis.pub_pcrEvents where eDisposition_17 in ('4217003', '4217005');

quit;
