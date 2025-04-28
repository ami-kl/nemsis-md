

 
Page 1 
NEMS IS V3  Case Def i nition 
Micromobility  
Date 
June 27, 2023 
Definition 
The patient was injured in an incident involving a micromobility device. 
Criteria Description 
Patient care reports where: 
• cause of injury is a pedestrian conveyance, pedal cycle, or electric (assisted) bicycle. 
Pseudocode 
Patient care reports where: 
eInjury.01 Cause of Injury: 
• V00 Pedestrian conveyance accident 
• V01 Pedestrian injured in collision with pedal cycle 
• V0[2-6].[0-9][1-9]* Pedestrian injured in transport accident (excluding “Pedestrian on foot” and 
“Pedestrian” without specifying the use of a conveyance) 
• V10-V19 Pedal cycle rider injured in transport accident 
• V2?.?1* Electric (assisted) bicycle rider (driver) (passenger) injured in collision... 
• V29.??1* Electric (assisted) bicycle rider (driver) (passenger) injured... 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eInjury/eInjury.01[matches(., ' ^(V00)|(V01)|(V0[2-6]\.[0-9][1-9])|(V1.)| 
      (V2.\..1)|(V29\...1)') 
      ] 
  ] 

 
Page 2 
SAS Code 
proc sql; 
  create table MicromobilityKey as 
  select distinct pcrKey from 
    ( 
      select pcrKey from memsis.factPcrCauseOfInjury where prxmatch('/' ^(V00)|(V01)| 
        (V0[2-6]\.[0-9][1-9])|(V1.)|(V2.\..1)|(V29\...1)/', eInjury_01) 
    ) 
  ; 
quit; 
Discussion 
The Federal Highway Administration defines micromobility as “any small, low-speed, human or electric-
powered transportation device, including bicycles, scooters, electric-assist bicycles (e-bikes), electric 
scooters (e-scooters), and other small, lightweight, wheeled conveyances” (FHWA). Consistent with the 
FHWA definition, this case definition includes both human-powered and electric-powered devices. This 
case definition includes all small human conveyance devices, including some that are not wheeled (such 
as skis and snowboards). This case definition includes all injuries involving micromobility devices 
regardless of whether they were traffic crashes, whether they were on streets, or the purpose of the 
micromobility device use. 
Codes for “Pedestrian on standing electric scooter” and “Pedestrian on other standing micro-mobility 
pedestrian conveyance” were added to ICD-10-CM in October 2020. Codes for “Electric (assisted) 
bicycle” were added to ICD-10-CM in October 2022. Prior to the availability of those new codes, EMS 
providers usually used the more general “pedestrian conveyance” or “bicycle” codes. Thus, any attempt 
to search for overly specific codes in NEMSIS data will inadvertently exclude many records that should 
be considered. 
Some of the codes included in this case definition are also included in other case definitions: 
• Motor Vehicle Crash—Pedestrian: selected codes in V02–V06, representing a pedestrian on a 
micromobility conveyance. 
• Motor Vehicle Crash—Pedal Cycle: V10–V19 codes, representing a pedal cycle rider. 
• Motor Vehicle Crash—Motorcycle: selected codes in V21–V29, representing an electric 
(assisted) bicycle rider. 
The following table lists the ICD-10-CM codes included in this case definition, along with indicators of 
whether the device is powered and whether it is wheeled. See additional notes below the table. 
Powered Wheeled Code Description 
? ? V00 Pedestrian conveyance accident 
? Y V00.0 Pedestrian on foot injured in collision with pedestrian conveyance 

 
Page 3 
Powered Wheeled Code Description 
N Y V00.01 Pedestrian on foot injured in collision with roller-skater 
N Y V00.02 Pedestrian on foot injured in collision with skateboarder 
Y Y V00.03 Pedestrian on foot injured in collision with standing micro-mobility 
pedestrian conveyance 
Y Y V00.09 Pedestrian on foot injured in collision with other pedestrian conveyance 
N Y V00.1 Rolling-type pedestrian conveyance accident 
N Y V00.11 In-line roller-skate accident 
N Y V00.12 Non-in- line roller-skate accident 
N Y V00.13 Skateboard accident 
N Y V00.14 Scooter (nonmotorized) accident 
N Y V00.15 Heelies accident 
N Y V00.18 Accident on other rolling-type pedestrian conveyance 
N N V00.2 Gliding-type pedestrian conveyance accident 
N N V00.21 Ice-skates accident 
N N V00.22 Sled accident 
N N V00.28 Other gliding-type pedestrian conveyance accident 
N N V00.3 Flat-bottomed pedestrian conveyance accident 
N N V00.31 Snowboard accident 
N N V00.32 Snow-ski accident 
N N V00.38 Other flat-bottomed pedestrian conveyance accident 
? Y V00.8 Accident on other pedestrian conveyance 
N Y V00.81 Accident with wheelchair (powered) 
N Y V00.82 Accident with baby stroller 
Y Y V00.83 Accident with motorized mobility scooter 
Y Y V00.84 Accident with standing micro-mobility pedestrian conveyance 
? Y V00.89 Accident on other pedestrian conveyance 
? Y V01 Pedestrian injured in collision with pedal cycle 
? Y V01.0 Pedestrian injured in collision with pedal cycle in nontraffic accident 
N Y V01.00 Pedestrian on foot injured in collision with pedal cycle in nontraffic 
accident 
N Y V01.01 Pedestrian on roller-skates injured in collision with pedal cycle in 
nontraffic accident 
N Y V01.02 Pedestrian on skateboard injured in collision with pedal cycle in 
nontraffic accident 
Y Y V01.03 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with pedal cycle in nontraffic accident 
? Y V01.09 Pedestrian with other conveyance injured in collision with pedal cycle in 
nontraffic accident 
? Y V01.1 Pedestrian injured in collision with pedal cycle in traffic accident 
N Y V01.10 Pedestrian on foot injured in collision with pedal cycle in traffic accident 
N Y V01.11 Pedestrian on roller-skates injured in collision with pedal cycle in traffic 
accident 
N Y V01.12 Pedestrian on skateboard injured in collision with pedal cycle in traffic 
accident 
Y Y V01.13 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with pedal cycle in traffic accident 

 
Page 4 
Powered Wheeled Code Description 
? Y V01.19 Pedestrian with other conveyance injured in collision with pedal cycle in 
traffic accident 
? Y V01.9 Pedestrian injured in collision with pedal cycle, unspecified whether 
traffic or nontraffic accident 
N Y V01.90 Pedestrian on foot injured in collision with pedal cycle, unspecified 
whether traffic or nontraffic accident 
N Y V01.91 Pedestrian on roller-skates injured in collision with pedal cycle, 
unspecified whether traffic or nontraffic accident 
N Y V01.92 Pedestrian on skateboard injured in collision with pedal cycle, 
unspecified whether traffic or nontraffic accident 
Y Y V01.93 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with pedal cycle, unspecified whether traffic or nontraffic 
accident 
? Y V01.99 Pedestrian with other conveyance injured in collision with pedal cycle, 
unspecified whether traffic or nontraffic accident 
N Y V02.01 Pedestrian on roller-skates injured in collision with two- or three-
wheeled motor vehicle in nontraffic accident 
N Y V02.02 Pedestrian on skateboard injured in collision with two- or three-wheeled 
motor vehicle in nontraffic accident 
Y Y V02.03 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with two- or three-wheeled motor vehicle in nontraffic 
accident 
? Y V02.09 Pedestrian with other conveyance injured in collision with two- or three-
wheeled motor vehicle in nontraffic accident 
N Y V02.11 Pedestrian on roller-skates injured in collision with two- or three-
wheeled motor vehicle in traffic accident 
N Y V02.12 Pedestrian on skateboard injured in collision with two- or three-wheeled 
motor vehicle in traffic accident 
Y Y V02.13 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with two- or three-wheeled motor vehicle in traffic accident 
? Y V02.19 Pedestrian with other conveyance injured in collision with two- or three-
wheeled motor vehicle in traffic accident 
N Y V02.91 Pedestrian on roller-skates injured in collision with two- or three-
wheeled motor vehicle, unspecified whether traffic or nontraffic 
accident 
N Y V02.92 Pedestrian on skateboard injured in collision with two- or three-wheeled 
motor vehicle, unspecified whether traffic or nontraffic accident 
Y Y V02.93 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with two- or three-wheeled motor vehicle, unspecified 
whether traffic or nontraffic accident 
? Y V02.99 Pedestrian with other conveyance injured in collision with two- or three-
wheeled motor vehicle, unspecified whether traffic or nontraffic 
accident 
N Y V03.01 Pedestrian on roller-skates injured in collision with car, pick-up truck or 
van in nontraffic accident 
N Y V03.02 Pedestrian on skateboard injured in collision with car, pick-up truck or 
van in nontraffic accident 
Y Y V03.03 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with car, pick-up or van in nontraffic accident 
? Y V03.09 Pedestrian with other conveyance injured in collision with car, pick-up 
truck or van in nontraffic accident 

 
Page 5 
Powered Wheeled Code Description 
N Y V03.11 Pedestrian on roller-skates injured in collision with car, pick-up truck or 
van in traffic accident 
N Y V03.12 Pedestrian on skateboard injured in collision with car, pick-up truck or 
van in traffic accident 
Y Y V03.13 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with car, pick-up or van in traffic accident 
? Y V03.19 Pedestrian with other conveyance injured in collision with car, pick-up 
truck or van in traffic accident 
N Y V03.91 Pedestrian on roller-skates injured in collision with car, pick-up truck or 
van, unspecified whether traffic or nontraffic accident 
N Y V03.92 Pedestrian on skateboard injured in collision with car, pick-up truck or 
van, unspecified whether traffic or nontraffic accident 
Y Y V03.93 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with car, pick-up or van, unspecified whether traffic or 
nontraffic accident 
? Y V03.99 Pedestrian with other conveyance injured in collision with car, pick-up 
truck or van, unspecified whether traffic or nontraffic accident 
N Y V04.01 Pedestrian on roller-skates injured in collision with heavy transport 
vehicle or bus in nontraffic accident 
N Y V04.02 Pedestrian on skateboard injured in collision with heavy transport 
vehicle or bus in nontraffic accident 
Y Y V04.03 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with heavy transport vehicle or bus in nontraffic accident 
? Y V04.09 Pedestrian with other conveyance injured in collision with heavy 
transport vehicle or bus in nontraffic accident 
N Y V04.11 Pedestrian on roller-skates injured in collision with heavy transport 
vehicle or bus in traffic accident 
N Y V04.12 Pedestrian on skateboard injured in collision with heavy transport 
vehicle or bus in traffic accident 
Y Y V04.13 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with heavy transport vehicle or bus in traffic accident 
? Y V04.19 Pedestrian with other conveyance injured in collision with heavy 
transport vehicle or bus in traffic accident 
N Y V04.91 Pedestrian on roller-skates injured in collision with heavy transport 
vehicle or bus, unspecified whether traffic or nontraffic accident 
N Y V04.92 Pedestrian on skateboard injured in collision with heavy transport 
vehicle or bus, unspecified whether traffic or nontraffic accident 
Y Y V04.93 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with heavy transport vehicle or bus, unspecified whether 
traffic or nontraffic accident 
? Y V04.99 Pedestrian with other conveyance injured in collision with heavy 
transport vehicle or bus, unspecified whether traffic or nontraffic 
accident 
N Y V05.01 Pedestrian on roller-skates injured in collision with railway train or 
railway vehicle in nontraffic accident 
N Y V05.02 Pedestrian on skateboard injured in collision with railway train or 
railway vehicle in nontraffic accident 
Y Y V05.03 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with railway train or railway vehicle in nontraffic accident 
? Y V05.09 Pedestrian with other conveyance injured in collision with railway train 
or railway vehicle in nontraffic accident 

 
Page 6 
Powered Wheeled Code Description 
N Y V05.11 Pedestrian on roller-skates injured in collision with railway train or 
railway vehicle in traffic accident 
N Y V05.12 Pedestrian on skateboard injured in collision with railway train or 
railway vehicle in traffic accident 
Y Y V05.13 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with railway train or railway vehicle in traffic accident 
? Y V05.19 Pedestrian with other conveyance injured in collision with railway train 
or railway vehicle in traffic accident 
N Y V05.91 Pedestrian on roller-skates injured in collision with railway train or 
railway vehicle, unspecified whether traffic or nontraffic accident 
N Y V05.92 Pedestrian on skateboard injured in collision with railway train or 
railway vehicle, unspecified whether traffic or nontraffic accident 
Y Y V05.93 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with railway train or railway vehicle, unspecified whether 
traffic or nontraffic accident 
? Y V05.99 Pedestrian with other conveyance injured in collision with railway train 
or railway vehicle, unspecified whether traffic or nontraffic accident 
N Y V06.01 Pedestrian on roller-skates injured in collision with other nonmotor 
vehicle in nontraffic accident 
N Y V06.02 Pedestrian on skateboard injured in collision with other nonmotor 
vehicle in nontraffic accident 
Y Y V06.03 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with other nonmotor vehicle in nontraffic accident 
? Y V06.09 Pedestrian with other conveyance injured in collision with other 
nonmotor vehicle in nontraffic accident 
N Y V06.11 Pedestrian on roller-skates injured in collision with other nonmotor 
vehicle in traffic accident 
N Y V06.12 Pedestrian on skateboard injured in collision with other nonmotor 
vehicle in traffic accident 
Y Y V06.13 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with other nonmotor vehicle in traffic accident 
? Y V06.19 Pedestrian with other conveyance injured in collision with other 
nonmotor vehicle in traffic accident 
N Y V06.91 Pedestrian on roller-skates injured in collision with other nonmotor 
vehicle, unspecified whether traffic or nontraffic accident 
N Y V06.92 Pedestrian on skateboard injured in collision with other nonmotor 
vehicle, unspecified whether traffic or nontraffic accident 
Y Y V06.93 Pedestrian on standing micro-mobility pedestrian conveyance injured in 
collision with other nonmotor vehicle, unspecified whether traffic or 
nontraffic accident 
? Y V06.99 Pedestrian with other conveyance injured in collision with other 
nonmotor vehicle, unspecified whether traffic or nontraffic accident 
N Y V10–V19  Pedal cycle rider injured in transport accident 
Y Y V20.01 Electric (assisted) bicycle driver injured in collision with pedestrian or 
animal in nontraffic accident 
Y Y V20.11 Electric (assisted) bicycle passenger injured in collision with pedestrian 
or animal in nontraffic accident 
Y Y V20.21 Unspecified electric (assisted) bicycle rider injured in collision with 
pedestrian or animal in nontraffic accident 
Y Y V20.31 Person boarding or alighting an electric (assisted) bicycle injured in 
collision with pedestrian or animal 

 
Page 7 
Powered Wheeled Code Description 
Y Y V20.41 Electric (assisted) bicycle driver injured in collision with pedestrian or 
animal in traffic accident 
Y Y V20.51 Electric (assisted) bicycle passenger injured in collision with pedestrian 
or animal in traffic accident 
Y Y V20.91 Unspecified electric (assisted) bicycle rider injured in collision with 
pedestrian or animal in traffic accident 
Y Y V21.01 Electric (assisted) bicycle driver injured in collision with pedal cycle in 
nontraffic accident 
Y Y V21.11 Electric (assisted) bicycle passenger injured in collision with pedal cycle 
in nontraffic accident 
Y Y V21.21 Unspecified electric (assisted) bicycle rider injured in collision with pedal 
cycle in nontraffic accident 
Y Y V21.31 Person boarding or alighting an electric (assisted) bicycle injured in 
collision with pedal cycle 
Y Y V21.41 Electric (assisted) bicycle driver injured in collision with pedal cycle in 
traffic accident 
Y Y V21.51 Electric (assisted) bicycle passenger injured in collision with pedal cycle 
in traffic accident 
Y Y V21.91 Unspecified electric (assisted) bicycle rider injured in collision with pedal 
cycle in traffic accident 
Y Y V22.01 Electric (assisted) bicycle driver injured in collision with two- or three-
wheeled motor vehicle in nontraffic accident 
Y Y V22.11 Electric (assisted) bicycle passenger injured in collision with two- or 
three-wheeled motor vehicle in nontraffic accident 
Y Y V22.21 Unspecified electric (assisted) bicycle rider injured in collision with two- 
or three-wheeled motor vehicle in nontraffic accident 
Y Y V22.31 Person boarding or alighting an electric (assisted) bicycle injured in 
collision with two- or three-wheeled motor vehicle 
Y Y V22.41 Electric (assisted) bicycle driver injured in collision with two- or three-
wheeled motor vehicle in traffic accident 
Y Y V22.51 Electric (assisted) bicycle passenger injured in collision with two- or 
three-wheeled motor vehicle in traffic accident 
Y Y V22.91 Unspecified electric (assisted) bicycle rider injured in collision with two- 
or three-wheeled motor vehicle in traffic accident 
Y Y V23.01 Electric (assisted) bicycle driver injured in collision with car, pick-up 
truck or van in nontraffic accident 
Y Y V23.11 Electric (assisted) bicycle passenger injured in collision with car, pick-up 
truck or van in nontraffic accident 
Y Y V23.21 Unspecified electric (assisted) bicycle rider injured in collision with car, 
pick-up truck or van in nontraffic accident 
Y Y V23.31 Person boarding or alighting an electric (assisted) bicycle injured in 
collision with car, pick-up truck or van 
Y Y V23.41 Electric (assisted) bicycle driver injured in collision with car, pick-up 
truck or van in traffic accident 
Y Y V23.51 Electric (assisted) bicycle passenger injured in collision with car, pick-up 
truck or van in traffic accident 
Y Y V23.91 Unspecified electric (assisted) bicycle rider injured in collision with car, 
pick-up truck or van in traffic accident 
Y Y V24.01 Electric (assisted) bicycle driver injured in collision with heavy transport 
vehicle or bus in nontraffic accident 

 
Page 8 
Powered Wheeled Code Description 
Y Y V24.11 Electric (assisted) bicycle passenger injured in collision with heavy 
transport vehicle or bus in nontraffic accident 
Y Y V24.21 Unspecified electric (assisted) bicycle rider injured in collision with 
heavy transport vehicle or bus in nontraffic accident 
Y Y V24.31 Person boarding or alighting an electric (assisted) bicycle injured in 
collision with heavy transport vehicle or bus 
Y Y V24.41 Electric (assisted) bicycle driver injured in collision with heavy transport 
vehicle or bus in traffic accident 
Y Y V24.51 Electric (assisted) bicycle passenger injured in collision with heavy 
transport vehicle or bus in traffic accident 
Y Y V24.91 Unspecified electric (assisted) bicycle rider injured in collision with 
heavy transport vehicle or bus in traffic accident 
Y Y V25.01 Electric (assisted) bicycle driver injured in collision with railway train or 
railway vehicle in nontraffic accident 
Y Y V25.11 Electric (assisted) bicycle passenger injured in collision with railway train 
or railway vehicle in nontraffic accident 
Y Y V25.21 Unspecified electric (assisted) bicycle rider injured in collision with 
railway train or railway vehicle in nontraffic accident 
Y Y V25.31 Person boarding or alighting an electric (assisted) bicycle injured in 
collision with railway train or railway vehicle 
Y Y V25.41 Electric (assisted) bicycle driver injured in collision with railway train or 
railway vehicle in traffic accident 
Y Y V25.51 Electric (assisted) bicycle passenger injured in collision with railway train 
or railway vehicle in traffic accident 
Y Y V25.91 Unspecified electric (assisted) bicycle rider injured in collision with 
railway train or railway vehicle in traffic accident 
Y Y V26.01 Electric (assisted) bicycle driver injured in collision with other nonmotor 
vehicle in nontraffic accident 
Y Y V26.11 Electric (assisted) bicycle passenger injured in collision with other 
nonmotor vehicle in nontraffic accident 
Y Y V26.21 Unspecified electric (assisted) bicycle rider injured in collision with other 
nonmotor vehicle in nontraffic accident 
Y Y V26.31 Person boarding or alighting an electric (assisted) bicycle injured in 
collision with other nonmotor vehicle 
Y Y V26.41 Electric (assisted) bicycle driver injured in collision with other nonmotor 
vehicle in traffic accident 
Y Y V26.51 Electric (assisted) bicycle passenger injured in collision with other 
nonmotor vehicle in traffic accident 
Y Y V26.91 Unspecified electric (assisted) bicycle rider injured in collision with other 
nonmotor vehicle in traffic accident 
Y Y V27.01 Electric (assisted) bicycle driver injured in collision with fixed or 
stationary object in nontraffic accident 
Y Y V27.11 Electric (assisted) bicycle passenger injured in collision with fixed or 
stationary object in nontraffic accident 
Y Y V27.21 Unspecified electric (assisted) bicycle rider injured in collision with fixed 
or stationary object in nontraffic accident 
Y Y V27.31 Person boarding or alighting an electric (assisted) bicycle injured in 
collision with fixed or stationary object 
Y Y V27.41 Electric (assisted) bicycle driver injured in collision with fixed or 
stationary object in traffic accident 

 
Page 9 
Powered Wheeled Code Description 
Y Y V27.51 Electric (assisted) bicycle passenger injured in collision with fixed or 
stationary object in traffic accident 
Y Y V27.91 Unspecified electric (assisted) bicycle rider injured in collision with fixed 
or stationary object in traffic accident 
Y Y V28.01 Electric (assisted) bicycle driver injured in noncollision transport 
accident in nontraffic accident 
Y Y V28.11 Electric (assisted) bicycle passenger injured in noncollision transport 
accident in nontraffic accident 
Y Y V28.21 Unspecified electric (assisted) bicycle rider injured in noncollision 
transport accident in nontraffic accident 
Y Y V28.31 Person boarding or alighting an electric (assisted) bicycle injured in 
noncollision transport accident 
Y Y V28.41 Electric (assisted) bicycle driver injured in noncollision transport 
accident in traffic accident 
Y Y V28.51 Electric (assisted) bicycle passenger injured in noncollision transport 
accident in traffic accident 
Y Y V28.91 Unspecified electric (assisted) bicycle rider injured in noncollision 
transport accident in traffic accident 
Y Y V29.001 Electric (assisted) bicycle driver injured in collision with unspecified 
motor vehicles in nontraffic accident 
Y Y V29.091 Electric (assisted) bicycle driver injured in collision with other motor 
vehicles in nontraffic accident 
Y Y V29.101 Electric (assisted) bicycle passenger injured in collision with unspecified 
motor vehicles in nontraffic accident 
Y Y V29.191 Electric (assisted) bicycle passenger injured in collision with other motor 
vehicles in nontraffic accident 
Y Y V29.201 Unspecified electric (assisted) bicycle rider injured in collision with 
unspecified motor vehicles in nontraffic accident 
Y Y V29.291 Unspecified electric (assisted) bicycle rider injured in collision with other 
motor vehicles in nontraffic accident 
Y Y V29.31 Electric (assisted) bicycle (driver) (passenger) injured in unspecified 
nontraffic accident 
Y Y V29.401 Electric (assisted) bicycle driver injured in collision with unspecified 
motor vehicles in traffic accident 
Y Y V29.491 Electric (assisted) bicycle driver injured in collision with other motor 
vehicles in traffic accident 
Y Y V29.501 Electric (assisted) bicycle passenger injured in collision with unspecified 
motor vehicles in traffic accident 
Y Y V29.591 Electric (assisted) bicycle passenger injured in collision with other motor 
vehicles in traffic accident 
Y Y V29.601 Unspecified electric (assisted) bicycle rider injured in collision with 
unspecified motor vehicles in traffic accident 
Y Y V29.691 Unspecified electric (assisted) bicycle rider injured in collision with other 
motor vehicles in traffic accident 
Y Y V29.811 Electric (assisted) bicycle rider (driver) (passenger) injured in transport 
accident with military vehicle 
Y Y V29.881 Electric (assisted) bicycle rider (driver) (passenger) injured in other 
specified transport accidents 
Y Y V29.91 Electric (assisted) bicycle rider (driver) (passenger) injured in unspecified 
traffic accident 

 
Page 10 
Child codes of the codes listed in the table are included in the case definition and treated the same way 
as their parent codes. 
In the Powered column, “?” indicates that the code is not specific enough to indicate whether the device 
was powered. 
V00.1 Rolling-type pedestrian conveyance accident indicates a non-powered device (all of its child codes 
represent non-powered devices), but V00.1 was used by some EMS providers to record powered 
micromobility device incidents prior to the addition of specific codes for powered micromobility devices. 
V00.8 Accident on other pedestrian conveyance has child codes that are a mix of powered and non-
powered devices; V00.8 was used by some EMS providers to record powered micromobility device 
incidents prior to the addition of specific codes for powered micromobility devices. 
References 
Dockless Electric Scooter-related Injuries Study. (2018). Austin Public Health. austintexas.gov/sites/
default/files/files/Health/Epidemiology/APH_Dockless_Electric_Scooter_Study_5-2-19.pdf. 
Emergence of New Transportation Modes & Micromobility Topic Areas: Micromobility Fact Sheet. (2020). 
Federal Highway Administration, U.S. Department of Transportation. 
highways.dot.gov/safety/pedestrian-bicyclist/safety-tools/emergence-new-transportation-modes-
micromobility-topic. 
Micromobility Products-Related Deaths, Injuries, and Hazard Patterns: 2017–2021. (2022). U.S. 
Consumer Product Safety Commission. cpsc.gov/s3fs-public/Micromobility-Products-Related-Deaths-
Injuries-and-Hazard-Patterns-2017-2021.pdf. 
Micromobility. SEA International. sae.org/micromobility. 
Micromobility: Data Challenges Associated with Assessing the Prevalence and Risk of Electric Scooter and 
Electric Bicycle Fatalities and Injuries. (2022). National Transportation Safety Board. ntsb.gov/safety/
safety-studies/Pages/DCA20SS001.aspx. 
SAE J3194 Standard: Taxonomy and Classification of Powered Micromobility Vehicles. (2019). SAE 
International. saemobilus.sae.org/content/j3194_201911. 
SAE J3194 Taxonomy & Classification of Powered Micromobility Vehicles (Summary). (2019). SAE 
International. sae.org/binaries/content/assets/cm/content/topics/micromobility/sae-j3194-summary---
2019-11.pdf. 
Safety Concerns Associated with Micromobility Products. (2020). U.S. Consumer Product Safety 
Commission. cpsc.gov/s3fs-public/Report-on-Micromobility-Products_FINAL-to-Commission.pdf. 