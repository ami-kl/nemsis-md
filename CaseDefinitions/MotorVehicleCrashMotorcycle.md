

 
Page 1 
NEMS IS V3  Case Def i nition 
Motor Vehicle Crash—Motorcycle 
Date 
August 26, 2021 
Definition 
The patient was a motorcycle rider injured in a motor vehicle crash. 
Criteria Description 
Patient care reports where: 
• cause of injury is motorcycle rider injured in collision with a motor vehicle 
Pseudocode 
Patient care reports where: 
eInjury.01 Cause of Injury: 
Added by 
NEMSIS 
(see 
discussion) Code Description 
Y V20 Motorcycle rider injured in collision with pedestrian or animal 
 
V20.3* Person boarding or alighting a motorcycle injured in collision with pedestrian 
or animal 
 
V20.4* Motorcycle driver injured in collision with pedestrian or animal in traffic 
accident 
 
V20.5* Motorcycle passenger injured in collision with pedestrian or animal in traffic 
accident 
 
V20.9* Unspecified motorcycle rider injured in collision with pedestrian or animal in 
traffic accident 
Y V21 Motorcycle rider injured in collision with pedal cycle 
 
V21.3* Person boarding or alighting a motorcycle injured in collision with pedal cycle 
 
V21.4* Motorcycle driver injured in collision with pedal cycle in traffic accident 
 
V21.5* Motorcycle passenger injured in collision with pedal cycle in traffic accident 

 
Page 2 
Added by 
NEMSIS 
(see 
discussion) Code Description 
 
V21.9* Unspecified motorcycle rider injured in collision with pedal cycle in traffic 
accident 
Y V22 Motorcycle rider injured in collision with two- or three-wheeled motor 
vehicle 
 
V22.3* Person boarding or alighting a motorcycle injured in collision with two- or 
three-wheeled motor vehicle 
 
V22.4* Motorcycle driver injured in collision with two- or three-wheeled motor 
vehicle in traffic accident 
 
V22.5* Motorcycle passenger injured in collision with two- or three-wheeled motor 
vehicle in traffic accident 
 
V22.9* Unspecified motorcycle rider injured in collision with two- or three-wheeled 
motor vehicle in traffic accident 
Y V23 Motorcycle rider injured in collision with car, pick-up truck or van 
 
V23.3* Person boarding or alighting a motorcycle injured in collision with car, pick-
up truck or van 
 
V23.4* Motorcycle driver injured in collision with car, pick-up truck or van in traffic 
accident 
 
V23.5* Motorcycle passenger injured in collision with car, pick-up truck or van in 
traffic accident 
 
V23.9* Unspecified motorcycle rider injured in collision with car, pick-up truck or 
van in traffic accident 
Y V24 Motorcycle rider injured in collision with heavy transport vehicle or bus 
 
V24.3* Person boarding or alighting a motorcycle injured in collision with heavy 
transport vehicle or bus 
 
V24.4* Motorcycle driver injured in collision with heavy transport vehicle or bus in 
traffic accident 
 
V24.5* Motorcycle passenger injured in collision with heavy transport vehicle or bus 
in traffic accident 
 
V24.9* Unspecified motorcycle rider injured in collision with heavy transport vehicle 
or bus in traffic accident 
Y V25 Motorcycle rider injured in collision with railway train or railway vehicle 
 
V25.3* Person boarding or alighting a motorcycle injured in collision with railway 
train or railway vehicle 
 
V25.4* Motorcycle driver injured in collision with railway train or railway vehicle in 
traffic accident 
 
V25.5* Motorcycle passenger injured in collision with railway train or railway vehicle 
in traffic accident 
 
V25.9* Unspecified motorcycle rider injured in collision with railway train or railway 
vehicle in traffic accident 
Y V26 Motorcycle rider injured in collision with other nonmotor vehicle 
 
V26.3* Person boarding or alighting a motorcycle injured in collision with other 
nonmotor vehicle 

 
Page 3 
Added by 
NEMSIS 
(see 
discussion) Code Description 
 
V26.4* Motorcycle driver injured in collision with other nonmotor vehicle in traffic 
accident 
 
V26.5* Motorcycle passenger injured in collision with other nonmotor vehicle in 
traffic accident 
 
V26.9* Unspecified motorcycle rider injured in collision with other nonmotor vehicle 
in traffic accident 
Y V27 Motorcycle rider injured in collision with fixed or stationary object 
 
V27.3* Person boarding or alighting a motorcycle injured in collision with fixed or 
stationary object 
 
V27.4* Motorcycle driver injured in collision with fixed or stationary object in traffic 
accident 
 
V27.5* Motorcycle passenger injured in collision with fixed or stationary object in 
traffic accident 
 
V27.9* Unspecified motorcycle rider injured in collision with fixed or stationary 
object in traffic accident 
Y V28 Motorcycle rider injured in noncollision transport accident 
 
V28.3* Person boarding or alighting a motorcycle injured in noncollision transport 
accident 
 
V28.4* Motorcycle driver injured in noncollision transport accident in traffic 
accident 
 
V28.5* Motorcycle passenger injured in noncollision transport accident in traffic 
accident 
 
V28.9* Unspecified motorcycle rider injured in noncollision transport accident in 
traffic accident 
Y V29 Motorcycle rider injured in other and unspecified transport accidents 
Y V29.4 Motorcycle driver injured in collision with other and unspecified motor 
vehicles in traffic accident 
 
V29.40* Motorcycle driver injured in collision with unspecified motor vehicles in 
traffic accident 
 
V29.49* Motorcycle driver injured in collision with other motor vehicles in traffic 
accident 
Y V29.5 Motorcycle passenger injured in collision with other and unspecified motor 
vehicles in traffic accident 
 
V29.50* Motorcycle passenger injured in collision with unspecified motor vehicles in 
traffic accident 
 
V29.59* Motorcycle passenger injured in collision with other motor vehicles in traffic 
accident 
Y V29.6 Unspecified motorcycle rider injured in collision with other and unspecified 
motor vehicles in traffic accident 
 
V29.60* Unspecified motorcycle rider injured in collision with unspecified motor 
vehicles in traffic accident 
 
V29.69* Unspecified motorcycle rider injured in collision with other motor vehicles in 
traffic accident 

 
Page 4 
Added by 
NEMSIS 
(see 
discussion) Code Description 
Y V29.8 Motorcycle rider (driver) (passenger) injured in other specified transport 
accidents 
 
V29.81* Motorcycle rider (driver) (passenger) injured in transport accident with 
military vehicle 
 
V29.88* Motorcycle rider (driver) (passenger) injured in other specified transport 
accidents 
 
V29.9* Motorcycle rider (driver) (passenger) injured in unspecified traffic accident 
XPath Code 
/EMSDataSet/Header/PatientCareReport 
  [ 
    eInjury/eInjury.01[matches(., '^(V20)|(V20\.3.*)|(V20\.4.*)|(V20\.5.*)| 
      (V20\.9.*)|(V21)|(V21\.3.*)|(V21\.4.*)|(V21\.5.*)|(V21\.9.*)|(V22)|(V22\.3.*)| 
      (V22\.4.*)|(V22\.5.*)|(V22\.9.*)|(V23)|(V23\.3.*)|(V23\.4.*)|(V23\.5.*)| 
      (V23\.9.*)|(V24)|(V24\.3.*)|(V24\.4.*)|(V24\.5.*)|(V24\.9.*)|(V25)|(V25\.3.*)| 
      (V25\.4.*)|(V25\.5.*)|(V25\.9.*)|(V26)|(V26\.3.*)|(V26\.4.*)|(V26\.5.*)| 
      (V26\.9.*)|(V27)|(V27\.3.*)|(V27\.4.*)|(V27\.5.*)|(V27\.9.*)|(V28)|(V28\.3.*)| 
      (V28\.4.*)|(V28\.5.*)|(V28\.9.*)|(V29)|(V29\.4)|(V29\.40.*)|(V29\.49.*)| 
      (V29\.5)|(V29\.50.*)|(V29\.59.*)|(V29\.6)|(V29\.60.*)|(V29\.69.*)|(V29\.8)| 
      (V29\.81.*)|(V29\.88.*)|(V29\.9.*)$')] 
  ] 
SAS Code 
proc sql; 
  create table MotorVehicleCrashMotorcycleKey as 
  select distinct pcrKey from 
    ( 
      select pcrKey from memsis.factPcrCauseOfInjury where prxmatch('^(V20)| 
        (V20\.3.*)|(V20\.4.*)|(V20\.5.*)|(V20\.9.*)|(V21)|(V21\.3.*)|(V21\.4.*)| 
        (V21\.5.*)|(V21\.9.*)|(V22)|(V22\.3.*)|(V22\.4.*)|(V22\.5.*)|(V22\.9.*)| 
        (V23)|(V23\.3.*)|(V23\.4.*)|(V23\.5.*)|(V23\.9.*)|(V24)|(V24\.3.*)| 
        (V24\.4.*)|(V24\.5.*)|(V24\.9.*)|(V25)|(V25\.3.*)|(V25\.4.*)|(V25\.5.*)| 
        (V25\.9.*)|(V26)|(V26\.3.*)|(V26\.4.*)|(V26\.5.*)|(V26\.9.*)|(V27)| 
        (V27\.3.*)|(V27\.4.*)|(V27\.5.*)|(V27\.9.*)|(V28)|(V28\.3.*)|(V28\.4.*)| 
        (V28\.5.*)|(V28\.9.*)|(V29)|(V29\.4)|(V29\.40.*)|(V29\.49.*)|(V29\.5)| 
        (V29\.50.*)|(V29\.59.*)|(V29\.6)|(V29\.60.*)|(V29\.69.*)|(V29\.8)| 
        (V29\.81.*)|(V29\.88.*)|(V29\.9.*)$/', eInjury_01) 
    ) 

 
Page 5 
  ; 
quit; 
Discussion 
For all “crash” case definitions, the following apply: 
The ANSI D.16-2017 Manual on Classification of Motor Vehicle Traffic Crashes glossary, “Characteristics 
of Motor Vehicle Traffic Crashes,” was consulted in the development of the motor vehicle crash case 
definitions, with differences noted below. (Text in italics is quoted from ANSI D.16-2017.) 
Motor vehicle traffic crashes have a number of characteristics that are used to distinguish between 
motor vehicle traffic crashes and other events such as noncrashes, aircraft or railway accidents and other 
motor vehicles, cataclysms, and nontraffic crashes. The questions below address all the distinguishing 
characteristics of motor vehicle traffic crashes. If the answer to each of the questions below is “yes," then 
the incident is a motor vehicle traffic crash. 
1. Did the incident include one or more occurrences of injury (2.3.1) or damage (2.3.7)? 
• It is assumed that injury occurred, since we are looking at eInjury.01 Cause of Injury. 
Damage-only crashes are out of scope from a NEMSIS perspective. 
2. Was there at least one occurrence of injury or damage which was not a direct result of a 
cataclysm (2.4.5 Cataclysm and 2.4.9 Transport crash)? 
• This information is unlikely to be reliably available in NEMSIS data. 
3. Did the incident involve one or more motor vehicles (2.2.7)? 
• Cases that are specifically reported as not including a motor vehicle are excluded. 
However, sometimes EMS uses more generic ICD-10-CM codes that do not indicate 
whether a motor vehicle was involved. The case definitions for pedestrian crash and 
bicycle crash may include cases that did not specify whether a motor vehicle was 
involved. 
4. Of the motor vehicles involved, was at least one in-transport (2.2.34)? 
• This information is unavailable in the NEMSIS data. 
5. Was the incident an unstabilized situation (2.4.4)? 
• This information is unavailable in the NEMSIS data. 
6. Did the unstabilized situation originate on a trafficway (2.2.1) or did injury or damage occur on a 
trafficway? 
• Cases that are specifically reported as “non-traffic” are excluded. However, sometimes 
EMS uses more generic ICD-10-CM codes that do not indicate whether a crash was 
“traffic” or “non-traffic.” The case definitions may include cases that did not specify 
whether a crash was “traffic” or “non-traffic.” 
• The terms “traffic” and “non-traffic” are not further defined in ICD-10-CM. EMS may not 
interpret the terms in the same way as ANSI D.16-2017. 
7. If the incident involved a railway train (2.2.5) in-transport, did a motor vehicle in-transport 
become involved prior to any injury or damage involving the train? 
• The case definitions may include cases where a train was involved in the primary crash 
event. 

 
Page 6 
8. Is it true that neither an aircraft (2.1.5) in-transport nor a watercraft (2.1.6) in-transport was 
involved in the incident? 
• The case definitions may include cases where an aircraft or watercraft was involved, but 
not cases where the patient was an aircraft or watercraft occupant. 
The intent of the “crash” case definitions is to cast a wide net. Users of the case definitions may choose 
to narrow the criteria for their specific purposes. For example, 
• To identify fatal crashes in a manner similar to the Fatality Analysis Reporting System, the case 
definition could be narrowed to only include patients who died during the EMS call. However, 
this would exclude patients who survived to the hospital and died later because of the crash. 
• To identify traffic crashes more strictly, the case definition could be narrowed to only include 
ICD-10 codes labeled as “traffic”. However, this would exclude records where the report did not 
specify whether the crash was traffic or non-traffic. Also, it is unlikely that EMS providers are 
highly trained on the differences between “traffic” and “non-traffic”. 
• To identify only those crashes involving motor vehicles more strictly, the case definitions for 
pedestrian and bicycle crashes could be narrowed to only include records where the ICD-10 
code indicates that a motor vehicle was involved. However, this would exclude records where 
the report did not specify whether a motor vehicle was involved. 
The ICD-10-CM codes selected for the case definitions for crashes are based on the lists provided in the 
CDC NCHS 2020 ICD-10-CM External Cause of Injury Matrix for Causes other than Poisoning. The NEMSIS 
case definitions for crashes implement the criteria in the CDC ICD-10 matrix, with the following 
exceptions and refinements: 
• The NEMSIS case definitions do not distinguish between accidental, self-harm, assault, 
undetermined intent, and legal intervention/war operations. Applicable codes from all intent 
categories are included in the NEMSIS case definitions. 
• NEMSIS data sometimes includes non-billable ICD-10-CM codes. The NEMSIS case definitions 
account for the non-billable codes and include the ones that would be consistent with the intent 
of the CDC criteria. 
The CDC Injury Matrix label for this case definition is “MVT-Motorcyclist”. 
References 
ANSI D.16-2017 Manual on Classification of Motor Vehicle Traffic Crashes. 
transportation.gov/sites/dot.gov/files/docs/resources/government/traffic-records/304331/ansid16-
2017.pdf. 
ICD Injury Matrices. U.S. Department of Health and Human Services, Centers for Disease Control and 
Prevention (CDC). cdc.gov/nchs/injury/injury_matrices.htm. 