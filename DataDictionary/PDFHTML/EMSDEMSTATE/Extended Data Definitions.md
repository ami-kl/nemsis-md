

Data 
Managers 
Council
 
 
 
 
 
 
  EXTENDED 
  DATA 
  DEFINITIONS 
     NEMSIS Version 3.5.0 
       This document represents the continued effort of defining field values which 
started with NEMSIS v2.2.1. 
 
       The  NASEMSO  Data  Managers  Council  (DMC)  and  the  NEMSIS  Technical  
Assistance  Center  (TAC)  are  confident  that  this  document  will  support the 
development,  standardization,  and  improvement  of  state,  territory  and  
national EMS data systems. 
 
     May 2024 Version 2 
 

Revision May 2024, Version 2 
1 
 
TABLE OF CONTENTS 
GLOSSARY OF TERMS .................................................................................................................................. 2 
ELEMENTS AND VALUE DEFINITIONS .....................................................................................................3 
eArrest.01 – Cardiac Arrest .................................................................................................................................. 3 
eDisposition.12 –    Incident/Patient Disposition: NO LONGER IN USE ................................................................... 4 
eDisposition.18 –    Additional Transport Mode Descriptors .................................................................................. 4 
eDisposition.27 –    Unit Disposition ....................................................................................................................... 6 
eDisposition.28 –    Patient Evaluation/Care ........................................................................................................... 7 
eDisposition.29 –    Crew Disposition ...................................................................................................................... 9 
eDisposition.30 –    Transport Disposition ............................................................................................................. 10 
eHistory.17 –    Alcohol/Drug Use Indicators ........................................................................................................ 12 
eMedication.07 – Response to Medication ........................................................................................................ 14 
ePatient.14 – Race .............................................................................................................................................. 15 
ePayment.50 –    CMS Service Level ...................................................................................................................... 16 
eProcedure.08 – Response to Procedure ........................................................................................................... 19 
eResponse.05 – Type of   Service Requested ....................................................................................................... 21 
eResponse.07 –    Unit Transport and   Equipment Capability ................................................................................ 24 
eResponse.08 –    Type of   Dispatch Delay ............................................................................................................. 26 
eResponse.09 –    Type of   Response Delay ...........................................................................................................
 2 8 
eR
esponse.10 – Type of   Scene Delay ................................................................................................................. 30 
eResponse.24 – Additional Response Mode Descriptors ................................................................................... 33 
eScene.01 – First EMS Unit on Scene ................................................................................................................. 35 
eScene.06 – Number of   Patients at Scene ......................................................................................................... 36 
eScene.07 –    Mass Casualty Incident ................................................................................................................... 37 
eSitutation.11 –    Provider’s Primary Impression ................................................................................................. 37 
eSitutation.12 –    Provider’s Secondary Impression ............................................................................................. 38 
eVitals.29 – Stroke Scale Score ........................................................................................................................... 39 
eSituation.02 –    Possible Injury ............................................................................................................................ 40 
ACRONYMS .................................................................................................................................................... 42 

Revision May 2024, Version 2 
2 
 
GLOSSARY OF TERMS 
 
ACTIVATION, EVENT: An occurrence which initiates an EMS response with the potential 
of patient medical care. This is also referred to as an EMS “call” or 
“run.” 
 
EMS PROVIDER For  the  purposes  of  this  document,  the  term  EMS  Provider  is  
considered too broad and does not accurately describe the distinct 
discipline  and  profession  that  has  emerged  within  the  out-of-
hospital  healthcare  field.  The  term  “EMS  Clinician”  because  it  is  
more specified and accurately describes the distinct discipline and 
profession    that    has    emergency    within    the    out-of-hospital 
healthcare field. 
 
PATIENT: For the purposes of this document, the word patient is a generalized 
term indicating  an  individual  who  was  encountered  as  part  of  a  
response.  Evaluation  of  the  scene  and  the  individual(s) clinical 
condition will  determine  whether  the  individual  may  or  may  not  
meet state, local, or protocol definition of a patient. For example, 
an individual evaluated and determined not to require care may be 
associated   with   a   Non-Patient   Incident   (not   otherwise   listed) 
eDisposition.27 or No transport eDisposition.30.  
 
SERVICE: The EMS unit or agency. 
 
SCENE: The location to which EMS responded. 
 
TREATMENT: Encompasses both evaluation and/or care. 
 
UNIT: Depending
 on context of the Value, could be Vehicle or 
Service/Agency. 
 
  

Revision May 2024, Version 2 
3 
 
ELEMENTS AND VALUE DEFINITIONS 
 
 
eArrest.01 –    Cardiac Arrest  
Definition: Indication of the   presence of a    cardiac arrest at any time during this EMS event. 
 
Usage: Must complete 
Select only one 
Allows for NOT values 
 
Pertinent  Negatives  (PN): 
None 
 
Code List (Values) 
Code Description 
3001001 No 
3001003 Yes, Prior to Any EMS Arrival (includes Transport EMS & Medical First 
Responders) 
3001005 Yes, After Any EMS Arrival (includes Transport EMS & Medical First Responders) 
 
Extended Definitions 
YES,  PRIOR TO  ANY  EMS  ARRIVAL: 
If this EMS event is for an interfacility transfer of a patient with a recent history of a cardiac 
arrest with ROSC, and who does not experience another cardiac arrest during transport, then 
do NOT document  Cardiac  Arrest  (eArrest.01)  with  "Yes,  Prior  to  Any  EMS  Arrival  (includes  
Transport EMS & Medical First Responders)". 
 
YES,  AFTER  ANY  EMS  ARRIVAL: 
EMS  is  defined  as  Emergency  Medical  Services  personnel  and  Medical  First  Responder  
personnel who respond to a medical emergency in an official capacity as part of an organized 
medical  response  team.  By  this  definition,  physicians,  nurses,  or  paramedics who witness 
a cardiac arrest and initiate CPR but are not part of the organized medical response  team  are 
characterized  as  bystanders  and  are  not  part  of  the  EMS  system. 
 
Medical  First  Responders  are  defined as  personnel  who  are  dispatched  through the  9 -  1-
1 system,  respond  in  an  official  capacity,  have  the  capability  and/or  training  to   provide 
emergency   medical care,   but   are   not   the   designated transporter of   the patient. Thus, 
law  enforcement  officers  who  respond  in  an  official  capacity  to  a  cardiac  arrest,   have   the 
capability  and/or training  to  provide   emergency  medical  care   (e.g., carry  AEDs  in  their 
patrol  vehicles,  hold  EMR  licensure,  are  CPR  certified,  etc.)  are considered   Medical First 
Responders  for  the  purposes  of  this  data  element. 

Revision May 2024, Version 2 
4 
 
 
Responders  dispatched  through the 9-1-1 system  with  no  capability  of  providing emergency 
medical care   are   not considered   Medical First   Responders.   For   example,  towing    and 
wrecking  responding  to  a vehicle  crash,  or  law  enforcement  officers  who do not provide 
any emergency medical care would not be considered Medical First Responders. 
 
 
eDisposition.12 –   Incident/Patient Disposition: NO LONGER IN USE  
NEMSIS  Comment:  This  element  was  deprecated.  The  following  elements  were  added  to  
improve  accuracy  and  provide  clarity  in  describing  the  EMS  activation:  eDisposition.27:  Unit  
Disposition,   eDisposition.28:   Patient   Evaluation/Care,   eDisposition.29:   Crew   Disposition,   
eDisposition.30: Transport Disposition, and eDisposition.31: Reason for Refusal/Release. 
 
 
 
eDisposition.18 –    Additional Transport Mode Descriptors  
Definition: The documentation of transport mode techniques for this EMS response. 
 
Usage:  Must complete 
Select all applicable 
Allows for NOT values 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
4218001 Intersection Navigation-Against Normal Light Patterns 
4218003 Intersection Navigation-With Automated Light Changing Technology 
4218005 Intersection Navigation-With Normal Light Patterns 
4218007 Speed-Enhanced per Local Policy 
4218009 Speed-Normal Traffic 
4218011 Lights and Sirens 
4218013 Lights and No Sirens 
4218015 No Lights or Sirens 
4218017 Initial No Lights or Sirens, Upgraded to Lights and Sirens 
4218019 Initial Lights and Sirens, Downgraded to No Lights or Sirens 
 
NEMSIS Comment: Information is split between eDisposition.17 (Transport Mode from Scene) 
and   eDisposition.18   (Additional   Transport   Mode   Descriptors).   Element   eDisposition.18   
(Additional  Transport  Mode  Descriptors)  has  been  added  to  document  the  use  of  lights  and  
sirens or other descriptive information. 

Revision May 2024, Version 2 
5 
 
 
Extended Definitions 
INTERSECTION NAVIGATION-AGAINST NORMAL LIGHT PATTERNS: 
Traveled through intersections controlled by traffic lights or stop signs against the right-of-way 
according  to  standard,  non-emergency  traffic  laws  with,  or  without,  the  use  of  emergency  
lights and sirens (e.g., approached a red traffic light and proceeded through the intersection 
while the light was still red with cross-road traffic traveling through the intersection on their 
own green light). 
 
INTERSECTION NAVIGATION-WITH AUTOMATED LIGHT CHANGING TECHNOLOGY: 
Intersection  navigation  with  the  use  of  technology  for  traffic  signal  preemption  (also  called  
traffic signal prioritization) to manipulate traffic signals in the path of an emergency vehicle, 
halting  conflicting  traffic  and  allowing  the  emergency  vehicle  right-of-way,  to  help  reduce  
response times and enhance traffic safety. These types of systems allow the normal operation 
of  traffic  lights  to  be  preempted  or  controlled  using  radio  or  strobe  light  based  signaling  
systems and may be used on conjunction with emergency lights and sirens. 
 
INTERSECTION NAVIGATION-WITH NORMAL LIGHT PATTERNS: 
Traveled through intersection-controlled traffic lights or stop signs according to standard, non- 
emergency state and federal traffic laws (e.g., approached a    red traffic light and waited for the 
light to change to green before proceeding through the intersection). 
 
SPEED-ENHANCED PER LOCAL POLICY: 
When an emergency service vehicle exceeded posted speed limits, within the limits of state or 
local laws or agency policy during a    patient transport (e.g., some laws allow emergency services 
vehicles  to  exceed  posted  speed  limits  by  10  mph  when  transporting  an  emergent  patient  
provided the vehicle driver exercises due caution/regard). 
 
SPEED-NORMAL TRAFFIC: 
Adhered to posted speed limits while transporting a patient, regardless of patient priority or 
use of lights and sirens, to insure a safe and stable transport environment. 
 
LIGHTS AND SIRENS: 
Used flashing, blinking, or rotating lights (may be a    combination of red, blue, white, and amber 
colors), and audible sirens mounted on an emergency services vehicle in order to manage and 
alert traffic that they need to yield the right-of-way to the emergency vehicle during patient 
transport. 
 
 
 
 
 

Revision May 2024, Version 2 
6 
 
LIGHTS AND NO SIRENS: 
Use of only flashing, blinking, or rotating lights (may be a combination of red, blue, white, and 
amber colors), mounted on a responding emergency services vehicle in order to manage and 
alert traffic that they need to yield the right-of-way to the emergency vehicle. This traffic alert 
mode uses lights only without any use of audible sirens. 
 
NO LIGHTS OR SIRENS: 
Transported  a  patient  by  an  emergency  services  vehicle  without  the  use  of  any  emergency  
traffic alert lights or sirens. 
 
INITIAL NO LIGHTS OR SIRENS, UPGRADED TO LIGHTS AND SIRENS: 
A   transport where the crew initiated the transport without the use of lights or sirens, but either 
patient  condition  changed,  increasing  the  transport  priority,  or  traffic  conditions  changed  
requiring the use of lights and sirens for a safe and timely transport. 
 
INITIAL LIGHTS AND SIRENS, DOWNGRADED TO NO LIGHTS OR SIRENS: 
A   transport where the responding vehicle initiated the response with the use of lights or sirens, 
but  either  patient  condition  changed,  decreasing  the  response  priority,  or  traffic  conditions  
improved and the use of lights and sirens was no longer required for a safe and timely response. 
This value is often used with a paramedic intercept, where a BLS crew used lights and sirens to 
make contact with a paramedic, who then stabilized the patient such that the transport priority 
was decreased. 
 
eDisposition.27 – Unit Disposition                   
Definition: The  patient disposition  for  an  EMS  event  identifying  whether patient contact 
was made. 
 
Usage: Must complete 
Select only one 
Does not allow NOT values 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
4227001 Patient Contact Made 
4227003 Cancelled on Scene 
4227005 Cancelled Prior to Arrival at Scene 
4227007 No Patient Contact 
4227009 No Patient Found 

Revision May 2024, Version 2 
7 
 
4227011 Non-Patient Incident (Not Otherwise Listed) 
 
Extended Definitions 
PATIENT CONTACT MADE: 
This crew/unit arrived on-scene and made contact with a    patient. The definition of a "Patient” 
is based   on state regulations, protocols or local agency policies. There is too much variation in 
this definition by region and therefore no global definition should be set in the NEMSIS dataset. 
 
CANCELLED ON SCENE: 
This crew/unit arrived on-scene but was cancelled by another unit prior to having any potential 
patient contact or providing any services. An example scenario would be a    first responder unit 
arrives, realizes they have a patient refusal as the transport unit arrives on scene and the first 
responder unit cancels the transport unit before they can do anything. 
 
CANCELLED PRIOR TO ARRIVAL AT SCENE: 
This crew/unit was cancelled before arriving on-scene; therefore, it is unknown whether there 
could have been a patient or not. Unit may be cancelled prior to, or during response. 
 
NO PATIENT CONTACT: 
This crew/unit arrived on-scene but this crew/unit made no contact with a patient. Generally, 
this will mean a patient was present with another unit having patient contact, with this unit 
not having patient contact. This unit can still be providing rescue and support services to the 
incident in this case. 
 
NO PATIENT FOUND: 
This crew/unit arrived on-scene and looked for a    patient, but none was found. The patient may 
have left the scene, or caller was mistaken and there never was a patient. For example, this 
unit may have been dispatched to an unconscious person, but arrived to find a college student 
just taking a nap on the lawn. 
 
NON-PATIENT INCIDENT (NOT OTHERWISE LISTED): 
This crew/unit provided some sort of service that did not involve a patient. The definition of a 
"Patient" is based on state regulations, protocols or local agency policies. This type of incident 
could  be  a  standby  with  no  patient  generated,  organ  transport,  lift  or  public  assist  that  was  
truly not a patient, or unit may have provided event command services. 
 
 
eDisposition.28 –    Patient Evaluation/Care  
Definition: The  patient  disposition  for  an  EMS  event  identifying  whether  a patient  was 
evaluated and care or services were provided. 
 
Usage:  Must complete 
Select only one 

Revision May 2024, Version 2 
8 
 
Allows for NOT values 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
4228001 Patient Evaluated and Care Provided 
4228003 Patient Evaluated and Refused Care 
4228005 Patient Evaluated, No Care Required 
4228007 Patient Refused Evaluation/Care 
4228009 Patient Support Services Provided 
 
Extended Definitions 
PATIENT EVALUATED AND CARE PROVIDED: 
A patient was  present,  evaluated,  and  care  was  provided  by  this  crew.  This  is  the standard 
situation  where  a patient  was  present and cared  for  or  “treated”,   without refusal, by EMS. 
This is also the appropriate selection for when a non-transporting crew (agency) assisted with 
the care of the patient (i.e. administered medication, procedures, vitals). 
 
EMS PATIENT EVALUATED AND R EFUSED CARE: 
A patient was  present  and  was  evaluated  by  this  crew,  but the  patient refused all care. 
The   patient may   or   may   not   be   transported   in   combination  with  this  value.  Refusal  of  
individual  interventions  should  be  documented  in  the  appropriate  medication  or  procedure  
and the patient disposition should be patient evaluated and care provided. 
 
PATIENT REFUSED EVALUATION/CARE: 
A patient was present and refused any evaluation or care by this   crew. This value 
should only  be  combined  with  “Patient Refused Transport”  or  “No  Transport.” 
 
PATIENT EVALUATED AND NO CARE REQUIRED: 
A patient was present and was evaluated by this crew, but no care appeared to be required. 
Crews would need to evaluate someone in order to determine that no care was required. An 
example  would  be  a  DOA  with  no  resuscitation  attempted;  obvious  death;  community  
paramedicine.  
 
PATIENT SUPPORT SERVICES PROVIDED: 
This  unit provided  support services  to  another  crew/unit  providing  care.  Support  services 
could   include   extrication,   carrying   bags or   helping   to   move   a patient.  This reporting 
crew/unit did not have patient contact but another crew/unit did. 
 
NOT  VALUE 
NOT APPLICABLE: There was no patient per the unit disposition, therefore patient evaluation 

Revision May 2024, Version 2 
9 
 
and  care  is  not  applicable. 
 
 
eDisposition.29 –    Crew Disposition  
Definition: The  crew  disposition  for  this  EMS  event  identifying  which  crew  provided 
primary patient care or whether support services were required provided by this 
reporting crew/unit. 
 
Usage:  Must complete 
Select only one 
Allows   for NOT values 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
4229001 Initiated and Continued Primary Care 
4229003 Initiated Primary Care and Transferred to Another EMS Crew 
4229005 Provided Care Supporting Primary EMS Crew 
4229007 Assumed Primary Care from Another EMS Crew 
4229009 Incident Support Services Provided (Including Standby) 
4229011 Back in Service, No Care/Support Services Required 
4229013 Back in Service, Care/Support Services Refused 
 
NEMSIS Comment:  This element is    grouped with Patient and Transport Dispositions. 
 
 
Extended Definitions 
INITIATED AND CONTINUED PRIMARY CARE: 
This crew began primary care for this patient with no previous care provided on-scene and did 
not transfer the care to another unit. Generally, this will be a one-unit response where there 
is only one crew on the responding unit and no other crew or unit was present. If multiple units 
from the same agency respond to an incident as an organized response and local rules do not 
require each unit to do a separate report, then this value would apply to the "agency" response 
of multiple units under one report. For transfers, "Primary Care" is considered to begin once 
crew receives responsibility for the patient and any care provided by the sending facility does 
not qualify as previous care for this value. 
 
INITIATED PRIMARY CARE AND TRANSFERRED TO ANOTHER EMS CREW: 
This crew began primary care for this patient with no previous care provided on scene and then 
transferred the care to another unit. 

Revision May 2024, Version 2 
10 
 
 
 
PROVIDED CARE   SUPPORTING PRIMARY EMS CREW: 
Another  crew  started  and  continued  primary  care  and  this  unit  provided  patient  care  
supporting the primary crew’s care. For example, first responders arrived at the same time or 
later than the transport crew and helped provide   care, but were not the primary crew in charge 
of patient care. 
 
ASSUMED PRIMARY CARE FROM ANOTHER EMS CREW: 
This  crew  assumed  primary  care  of  a  patient  that  was  initiated  by  another  EMS  Crew.  This  
would commonly be used by an ALS intercept unit arriving and taking over primary care from 
a BLS unit. 
 
INCIDENT SUPPORT SERVICES PROVIDED (INCLUDING STANDBY): 
This  crew/unit  provided  non-patient  care  support  services  to  an  incident  in  general  or  to  
another  unit/crew  that  is  providing  patient  care.  Support  services  could  include  extrication,  
carrying bags or equipment, helping move a patient, standby for police or a fire or fire rehab 
services where no one rose to the level of a patient. 
 
BACK IN SERVICE, NO CARE OR SUPPORT SERVICES REQUIRED: 
This crew/unit is immediately back in service as there was no patient care or support services 
required of the crew/unit at the incident. This would primarily apply if no patient was found or 
if unit was cancelled on scene. 
 
BACK IN SERVICE, CARE OR SUPPORT SERVICES REFUSED: 
This  crew/unit  is  back  in  service  after  patient  care  or  support  services  were  refused  despite 
being  offered.  No  care  or  support  services  should  be  provided;  however,  an  evaluation  may  
have occurred prior to refusal of any care. 
 
NOT VALUE 
NOT  APPLICABLE:  The  unit  was  cancelled  prior  to  arrival  on  scene  per  the  Unit  Disposition, 
therefore this Crew Incident Disposition is Not Applicable. 
 
 
eDisposition.30 –    Transport Disposition  
Definition: The  transport  disposition  for  an  EMS  event  identifying  whether  a transport 
occurred and by which unit. 
 
Usage:  Must complete 
Select only one 
Allows for NOT values 
 

Revision May 2024, Version 2 
11 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
4230001 Transport by This EMS Unit (This Crew Only) 
4230003 Transport by This EMS Unit, with a Member of Another Crew 
4230005 Transport by Another EMS Unit 
4230007 Transport by Another EMS Unit, with a Member of This Crew 
4230009 Patient Refused Transport 
4230011 Non-Patient Transport (Not Otherwise Listed) 
4230013 No Transport 
 
NEMSIS Comment: This element is grouped with Patient and Incident Dispositions. Provides a 
rapid  filter  for  transport  or  no  transport  for  incident  evaluation,  business  entry  rules  and  
Schematron rules. 
 
Extended Definitions 
TRANSPORTED BY THIS EMS UNIT (THIS CREW ONLY): A   patient was transported in this crew’s 
unit by only this crew. This would be a    standard ambulance transport. This should also be used 
if the crew transports the patient any distance to a helicopter or other EMS ground transport 
unit that subsequently transports to the final destination. In this case, the type of destination 
for this crew should be "Other EMS Air or Ground." 
 
TRANSPORTED BY THIS EMS UNIT, WITH A MEMBER OF ANOTHER CREW: 
A patient was transported in this crew’s unit with this crew and member(s) of another crew. 
Common  uses  would  be  when  the  primary  transport  crew  needs  additional  assistance  from  
another crew during transport or when an intercepting ALS provider is on board. 
 
TRANSPORTED BY ANOTHER EMS UNIT: 
The  patient  was  transported,  but  by  another  crew/unit.  For  example,  a  non-transport  unit  
providing  and  transferring  care  to  another  crew/unit  who  then  transports  the  patient.  A  
destination for the transport should be the listed so the receiving facility can access the non- 
transport EMS record. 
 
TRANSPORTED BY ANOTHER EMS UNIT, WITH A MEMBER OF THIS CREW: 
The patient is transported in another crew's unit with a member of this crew. This would be 
used when an ALS intercept provider transports in another crew’s unit or this crew provides 
additional assistance to the other unit during transport. 
 
PATIENT REFUSED TRANSPORT: 
Patient refused EMS transport. This would apply to a standard patient refusal of transport or 
when a    patient was treated and chose to be transported by law enforcement or private vehicle. 

Revision May 2024, Version 2 
12 
 
 
 
NON-PATIENT TRANSPORT (NOT OTHERWISE LISTED): 
A  transport  occurred  but  did  not  include  a  patient.  This  could  include  transport  of  organs,  
special equipment-such as bariatric equipment or an air crew to or from their aircraft without 
a patient. 
 
NO TRANSPORT: 
No transport of a patient occurred. For example, following a lift assist that did not require a 
refusal. 
 
NOT VALUE 
NOT APPLICABLE: There was no patient per the Unit Disposition, and a non-patient transport 
did not occur, therefore this value would be Not Applicable. 
 
 
eHistory.17 – Alcohol/Drug Use Indicators         
Definition: Indicators for the potential use of alcohol or drugs by the patient related to the 
patient's current illness or injury. 
 
Usage:  Must complete 
Select all applicable 
Allows for NOT values 
 
 
Pertinent Negatives (PN): 
Code Description 
8801015 None Reported 
8801023 Unable to Complete 
 
Code  List  (Values) 
Code Description 
3117001 Alcohol Containers/Paraphernalia at Scene 
3117003 Drug Paraphernalia at Scene 
3117005 Patient Admits to Alcohol Use 
3117007 Patient Admits to Drug Use 
3117009  Positive Level known from Law Enforcement or Hospital Record 
DMC  Comment:  Additional  values  need  to  be  added  and  some  tweaked  to  cover  more  
scenarios  (e.g.,  patient  presents  with an  altered  mental status  with  an  unknown  etiology, 
patient reported to have ingested an unknown substance). 

Revision May 2024, Version 2 
13 
 
3117013 Physical Exam Indicates Suspected Alcohol or Drug Use 
 
Extended Definitions 
NONE REPORTED (PN): 
Situations where this option is applicable: 
• The patient (or the EMS crew) identified that the use of alcohol or drugs were unrelated 
to the patient's condition; 
• There was no apparent alcohol or drug use; or 
• Patient denied the use/misuse of drugs or alcohol. 
 
UNABLE TO COMPLETE (PN): 
Patient was unable to confirm or deny drug or alcohol use  for any reason (e.g., 
unconsciousness,  language  barrier,  or  other  physical  impairment/barrier).  This  value  would  
also be appropriate if there was not enough patient contact or no other indicators are present 
to determine. 
ALCOHOL CONTAINERS/PARAPHERNALIA AT SCENE: 
Refers to any material/object used in the intake of alcohol into the human body. 
 
DRUG PARAPHERNALIA AT SCENE: 
Any  material/object  used  in  manufacturing,  producing,  processing,  preparing,   injecting,   
ingesting, inhaling, or otherwise introducing into the human body or misuse of a substance. 
 
PATIENT ADMITS TO ALCOHOL USE: 
By written, verbal, or motor action (e.g., head nod), patient admitted to consuming alcohol or 
being  under  the  influence  of  alcohol.  Patient  does  not  have  to  meet  any  legal  standard  of  
intoxication for this purpose. 
 
PATIENT ADMITS TO DRUG USE: 
By written, verbal, or motor action (e.g., head nod), patient admitted to injecting, ingesting, 
inhaling,  or  being  under  the  influence  of  drugs.  Patient  does  not  have  to  meet  any  legal  
standard of intoxication for this purpose. 
 
POSITIVE LEVEL KNOWN FROM LAW ENFORCEMENT OR HOSPITAL RECORD: 
Third-party  report  of  drug  or  alcohol  use  based  on  a  diagnostic  source  (e.g.,  breathalyzer,  
blood, urine, field narcotic test, field sobriety test, or other patient record). 
 
PHYSICAL EXAM INDICATES SUSPECTED ALCOHOL OR DRUG USE: 
EMS  clinician  observation  of  an  alcohol-like  odor  coming  from  the  patient  or  signs  and  
symptoms of suspected drug use. 
This value would also be appropriate if patient's condition improved after administration of an 
opioid antagonist. 

Revision May 2024, Version 2 
14 
 
 
eMedication.07 –    Response to   Medication        
Definition: The patient's response to the medication. 
 
Usage:  Must complete 
Select only one 
Allows for NOT values 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
9916001 Improved 
9916003 Unchanged 
9916005 Worse 
 
Extended Definitions 
IMPROVED: 
The medication had its intended therapeutic effect and the patient's symptoms decreased or 
clinical condition improved or resolved. The word "effective" could generally be substituted for 
"improved." 
If  a  patient  had  the  intended  therapeutic  response  to  the  medication,  but  a  side  effect  that  
caused a    clinical deterioration in another body system, then "Improved" should be chosen and 
the  side  effects  documented  as  a  complication  (e.g.,  nitroglycerin  improved  chest  pain  but  
dropped the blood pressure). 
 
UNCHANGED: 
The  medication  was  ineffective  and  had  no  intended  therapeutic  effect  or  had  a  sub- 
therapeutic and unnoticeable effect, AND the patient condition did not deteriorate. 
 
 
PERTINENT NEGATIVES ENTERED WITH EMEDICATION.03 – MEDICATION GIVEN 
When eMedication.03  – Medication Given has  a medication  entered  with  a Pertinent 
Negative (“Contraindication Noted”, “Denied by Order”, “Refused”, “Unable to Complete”, 
“Medication  Already  Taken”,  “Medication  Allergy”,  etc.)  a  value  for  eMedication.07 – 
Response  to  
Medication could  be  "Improved", "Unchanged",  "Worse",  or    "Not  Applicable", 
depending on any clinical changes by the patient or the situation as a response to receiving or not 
receiving the medication. 

Revision May 2024, Version 2 
15 
 
 
WORSE: 
The patient condition deteriorated or continued to deteriorate   because either the medication: 
1. Was ineffective and had no intended therapeutic effect, or 
2. Had a sub-therapeutic effect that was unable to stop or reverse the decline in patient 
condition, or 
3. Administration of the medication preceded the worsening of the patient’s condition. 
 
 
 
 
ePatient.14 –    Race  
Definition: The  patient's  race  as  defined  by  the  OMB  (US  Office  of  Management  and 
Budget). 
 
Usage:  Must complete 
Select all applicable 
Allows for NOT values 
If using a NOT VALUE for this element, do not use any of the Values listed below. 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
2514001 American Indian or Alaska Native 
2514003 Asian 
2514005 Black or African American 
2514007 Hispanic or Latino 
2514009 Native Hawaiian or Other Pacific I slander 
2514011 White 
 
NEMSIS Comment: Definitions for racial and ethnic categories are established by the Office of 
Management  and  Budget  (OMB)  Revisions  to  the  Standards  for  the  Classification  of  Federal  
Data   on   Race   and   Ethnicity.   
https://grants.nih.gov/grants/guide/notice-files/NOT-OD-15-
089.html 
 
Extended Definitions 
AMERICAN INDIAN OR ALASKA NATIVE: 
A person  having  origins  in  any  of  the  original  peoples  of  North,  Central,  and South America 
and who maintains tribal affiliation or community attachment. 
 

Revision May 2024, Version 2 
16 
 
 
ASIAN: 
A  person  having  origins  in  any  of  the  original  peoples  of  the  Far  East,  Southeast  Asia,  or  the  
Indian  subcontinent  including  Cambodia,  China,  India,  Japan,  Korea,  Malaysia,  Pakistan,  the  
Philippine Islands, Thailand, and Vietnam. 
 
BLACK OR AFRICAN AMERICAN: 
A person having origins in any of the black racial groups of Africa. Terms such as "Haitian" or 
"Negro" can be used in addition to "Black or African American." 
 
HISPANIC OR LATINO: 
When selecting this value, you should also select at least one additional value (e.g., “Hispanic” 
and “Black”, or “Hispanic” and “White”). 
A   person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish culture 
or origin, regardless of race. The term "Spanish origin" can be used in addition to "Hispanic or 
Latino." 
 
NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER: 
A    person having origins in any of the original peoples of Hawaii, Guam, Samoa, or other Pacific 
Islands. 
 
WHITE: 
A  person  having  origins  in  any  of  the  original  peoples  of  Europe,  the  Middle  East,  or  North  
Africa. 
 
 
ePayment.50 – CMS Service Level  
Definition: The CMS service level for this EMS encounter. 
 
Usage:  Must complete 
Select only one 
Allows for NOT values 
 
Pertinent  Negatives  (PN): 
None 
Code  List  (Values) 
Code Description 
2650001 ALS, Level 1 
2650003 ALS, Level 1 Emergency 
2650005 ALS, Level 2 
2650007 BLS 

Revision May 2024, Version 2 
17 
 
2650009 BLS, Emergency 
2650011 Fixed Wing (Airplane) 
2650013 Paramedic Intercept 
2650015 Specialty Care Transport 
2650017 Rotary Wing (Helicopter) 
 
Extended Definitions 
ALS, LEVEL 1: 
Transportation by ground ambulance vehicle and the provision of medically necessary supplies 
and services including the provision of at least one ALS intervention by ALS personnel trained 
to the level of the EMT-Intermediate or paramedic. 
ALS  Intervention:  An  ALS  intervention  must  be  medically  necessary  to  qualify  as  an  
intervention for payment for an ALS level of service. An ALS intervention applies only to 
ground transports. 
 
ALS, LEVEL 1 EMERGENCY: 
When medically necessary, the provision of ALS1 services (ALS assessment or ALS intervention 
per  state  guidelines),  are  performed  in  the  context  of  an  emergency  response  and  responds  
immediately. ALS personnel trained to the level of the EMT-  Intermediate or paramedic. 
ALS Assessment: An ALS assessment is    an assessment performed by an ALS crew as part 
of an emergency response that was necessary because the patient's reported condition 
at  the  time  of  dispatch  was  such that  only  an  ALS crew  was  qualified  to perform 
the assessment. 
ALS  Intervention:  An  ALS  intervention  must  be  medically  necessary  to  qualify  as  an  
intervention for payment for an ALS level of service. An ALS intervention applies only to 
ground transports. 
 
ALS, LEVEL 2: 
Transportation by ground ambulance vehicle staffed with ALS personnel and the  provision  of  
medically necessary supplies and services including: 
1. At  least  three  separate  administrations  of  one  or  more  medications  by  intravenous 
push/bolus or by continuous infusion (excluding crystalloid fluids), OR 
2. Ground ambulance  transport,  medically  necessary  supplies  and services, and  the 
provision of at least one of the following ALS2 procedures: 
a. Manual defibrillation/cardioversion; 
b. Endotracheal intubation; 
c. Central venous   line; 
d. Cardiac pacing; 
e. Chest decompression; 
f. Surgical airway; 
g. Intraosseous line. 

Revision May 2024, Version 2 
18 
 
Application: Crystalloid fluids include fluids such as 5 percent Dextrose in water, 
Saline and Lactated Ringer’s. Medications that are administered by other means 
(e.g., intramuscular/subcutaneous injection, oral, sublingually, or nebulized) do 
not qualify to determine whether the ALS2 level rate is payable. The criterion of 
multiple  administrations  of  the  same  drug  requires  a  suitable  quantity  and 
amount  of  time  between  administrations  that  is  in  accordance  with  standard  
medical practice guidelines. 
 
BLS: 
Transportation by ground ambulance vehicle as defined by the state. The ambulance must be 
staffed by an individual who is qualified as an EMT per state guidelines. 
 
BLS, EMERGENCY: 
When the ambulance provider or supplier is called, it responds immediately. The ambulance 
must be staffed by an individual who is qualified as an EMT per state guidelines. 
 
FIXED WING (AIRPLANE): 
Furnished   when   the   beneficiary’s   medical   condition   is   such   that   transport   by   ground   
ambulance,  in  whole  or  in  part,  is  not  appropriate.  Generally,  transport  by  fixed-wing  air 
ambulance may be necessary because the beneficiary’s condition requires rapid transport to a 
treatment facility, and either great distances or other obstacles (e.g., heavy traffic) preclude 
rapid delivery to the nearest appropriate facility. Transport by fixed-wing air ambulance may 
also  be  necessary  because  the  beneficiary  is  inaccessible  by  a  ground  or  water  ambulance  
vehicle. 
 
PARAMEDIC INTERCEPT: 
ALS emergency services, provided by an entity that does not provide the ambulance transport 
to a BLS level of service, is dispatched to transport a patient. 
Paramedic  intercept  services  furnished  on  or  after  March  1,  1999,  may  be  payable  separate 
from the ambulance transport, subject to the requirements specified below. 
The intercept service(s) is:    
• Furnished in a rural area; 
• Furnished  under  a  contract  with  one  or  more  volunteer  ambulance  services;  and,  
medically necessary based on the condition of the beneficiary receiving the ambulance 
service. 
In addition, the volunteer ambulance service involved must: 
• Furnish services only at the BLS level at the time of the intercept; and, 
• Be prohibited by State law from billing anyone for any service. 
Finally, the entity furnishing the ALS paramedic intercept service must: 
• Bill  all  recipients  who  receive  ALS  paramedic  intercept  services  from  the  entity,  
regardless of whether or not those recipients are Medicare beneficiaries. 

Revision May 2024, Version 2 
19 
 
For purposes of the paramedic intercept benefit, a rural area is an area that is designated as 
rural by a state law or regulation or any area outside of a Metropolitan Statistical Area or in 
New  England,  outside  a  New  England  County  Metropolitan  Area  as  defined  by  the  Office  of  
Management  and Budget. The current list of these areas is periodically published in the Federal 
Register. 
See the Medicare Claims Processing Manual, Chapter 15, "Ambulance," §20.1.4 for payment 
of paramedic intercept services. 
Services in a Rural Area: Services that  are furnished: 
1. In an area outside a    Metropolitan Statistical Area (MSA); or, 
2. In New England, outside a    New England County Metropolitan Area (NECMA); or, 
3. An  area  identified  as  rural  using  the  Goldsmith  modification  even  though  the  
area is within an MSA. 
 
SPECIALTY CARE TRANSPORT: 
The interfacility transportation of a critically injured or ill beneficiary by a ground ambulance 
vehicle at a    level of service beyond the scope of the EMT-Paramedic. This transport is necessary 
when a beneficiary’s condition requires ongoing care that must be furnished by one or more 
health professionals in an appropriate specialty area (e.g., emergency or critical care nursing, 
emergency  medicine,  respiratory  care,  cardiovascular care,  or  a paramedic  with  additional 
training). 
 
Additional training: the specific additional training that a state requires a paramedic to 
complete in order to qualify to furnish specialty care to a critically ill or injured patient 
during a specialty care transport. 
 
ROTARY WING (HELICOPTER): 
Furnished when   the   beneficiary’s   medical   condition   is   such   that   transport   by   ground   
ambulance,  in  whole  or  in  part,  is  not  appropriate.  Generally,  transport  by  rotary-wing  air  
ambulance may be necessary because the beneficiary’s condition requires rapid transport to a 
treatment facility, and either great distances or other obstacles (e.g., heavy traffic) precludes 
such rapid delivery to the nearest appropriate facility. Transport by rotary-wing air ambulance 
may also be necessary because the beneficiary is inaccessible by a    ground or water ambulance 
vehicle. 
 
 
eProcedure.08 – Response to   Procedure  
Definition: The patient's response to the procedure. 
 
Usage:  Must complete 
Select only one 
Allows for NOT values 

Revision May 2024, Version 2 
20 
 
 
 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
9916001 Improved 
9916003 Unchanged 
9916005 Worse 
 
Extended Definitions 
NOT APPLICABLE (NOT): 
The nature of the procedure has no direct expected clinical response (e.g., patient assessment, 
12-lead ECG acquisition). 
 
IMPROVED: 
The procedure performed had the intended effective outcome and/or the patient's symptoms 
decreased  or  clinical  condition  improved  or  resolved  (e.g.,  defibrillation  resolved  v-fib  into  a  
perfusing  rhythm,  intubation  controlled  the  airway  and  allowed  effective  management  of 
breathing). 
An  effective  procedure  that  caused  an  improvement  in  the  patient  condition  may  also  have  
resulted  in  a  procedure  complication  and  the  complication  should  be  documented  (e.g., 
intubation caused minor airway trauma, but the intubation successfully secured the airway). 
 
UNCHANGED: 
The procedure performed did not have the clinical effect intended, but did not directly worsen 
the  patient's  symptoms  or  clinical  condition  (e.g.,  attempted  defibrillation  and  the  person  
remained in v-fib); OR 
 
Had  a  sub-therapeutic  effect  and  the  symptoms  continued  (e.g.,  a  bandage  applied  to  a  
bleeding wound failed to stop the bleeding); OR 
 
 
PERTINENT NEGATIVES ENTERED WITH EPROCEDURES.03 – PROCEDURE 
When eProcedures.03 –   Procedure has a Value entered with a Pertinent Negative 
(“Contraindication Noted”, “Denied by Order”, “Refused”, “Unable to Complete”, etc.) a Value 
for eProcedure.08 – Response to Procedure could be "Improved", "Unchanged", "Worse", or 
"Not  Applicable”,  depending  on  any  clinical  changes  by  the  patient  or  the  situation  as  a  
response to receiving or not receiving the procedure. 

Revision May 2024, Version 2 
21 
 
The nature of the procedure has no direct expected clinical response ( e.g., patient assessment). 
"Not Applicable" would also be appropriate to choose for these cases. 
 
WORSE: 
The  results  of  the  procedure  performed  lead  to  a  worsening  of  the  patient's  symptoms  or  
condition  (e.g.,  defibrillation  converted  v-fib  into  asystole,  application  of  a  splint  caused  
significant increase in pain or loss of sensation and pulses). 
In  the  case  of  worsening  condition,  documentation  of  procedure  complications  may  also  be  
appropriate. 
Just  because  a  patient  got  worse,  doesn’t  necessarily  mean  the  clinician  performed  the  
procedure incorrectly. 
 
 
eResponse.05 – Type of   Service Requested        
Definition: The type of service or category of service requested of the EMS 
Agency responding for this specific EMS event. 
 
Usage: Must complete 
Select only one 
Does not allow for NOT values 
 
 
Pertinent  Negatives  (  PN): 
None 
 
Code List (Values) 
Code Description 
2205001 Emergency Response (Primary Response Area) 
2205003 Emergency Response (Intercept) 
2205009 Emergency Response (Mutual Aid) 
2205005 Hospital-to-Hospital Transfer 
2205015 Hospital to Non-Hospital Facility Transfer 
2205017 Non-Hospital Facility to Non-Hospital Facility Transfer 
2205019 Non-Hospital Facility to Hospital Transfer 
2205007 Other Routine Medical Transport 
2205011 Public Assistance 
2205013 Standby 
2205021 Support Services 
DMC Comment: These values represent the service requested, not necessarily the service 
provided. 

Revision May 2024, Version 2 
22 
 
2205023 Non-Patient Care Rescue/Extrication 
2205025 Crew Transport Only 
2205027 Transport of Organs or Body Parts 
2205029 Mortuary Services 
2205031 Mobile Integrated Health Care Encounter 
2205033 Evaluation for Special Referral/Intake Programs 
2205035 Administrative Operations 
 
NEMSIS Comment: Values for "911 Response (Scene)", "Intercept", and "Mutual Aid" have been 
relabeled   to   start   with   "Emergency   Response"   to   more   easily   identify   these   options.   
"Interfacility Transport" was relabeled to "Hospital-to-Hospital Transfer" to be more accurate. 
"Medical  Transport"  was  relabeled  to  "Other  Routine  Medical  Transport"  to  cover  any  other  
medical transports such as transports to and from dialysis, doctor appointments, return home, 
or nursing homes. Values added to consolidate types of service previously captured in "Primary 
Role  of  Unit"  and  eDisposition.12  as  found  in  V3.4.0.  Additional  values  added  to  reflect  
emerging service types. 
 
Extended Definitions 
EMERGENCY  RESPONSE  (PRIMARY  RESPONSE  AREA): 
Emergent  or  immediate  response  to  an  incident  location,  regardless  of  the  method  of  
notification (e.g., 9-1-1, direct dial, walk-in, flagging down, air ambulance scene flight).  
 
If the original request comes through 9-1-1 for a patient at a non-hospital medical facility (e.g., 
urgent care, nursing home) use this option unless: a) The patient needs a transport for a non-
urgent  issue  or  routine  care;  and  b)  The  sending  facility  can  provide  a  signed  Physician  
Certification Statement for Non-Emergency Ambulance Services (PCS Form); Then Using “Non-
Hospital Facility to Hospital Transfer” is appropriate. 
 
EMERGENCY RESPONSE (INTERCEPT): 
When one EMS clinician meets a transporting EMS unit vehicle with the intent of receiving a 
patient or providing a higher level of care. 
 
EMERGENCY RESPONSE (MUTUAL AID):  
Response of emergency medical services, and other emergency personnel and equipment, to 
a  request  for  assistance  in  an  emergency  when  local  resources  have  been  expended.  (e.g., 
includes auto-aid, providing coverage in another agency’s primary coverage area). 
 
HOSPITAL-TO-HOSPITAL TRANSFER: 
Any  transfer,  after  initial  assessment  and  stabilization,  from  and  to  a  healthcare  facility,  to  
include  specialty  hospitals,  for  the  purpose  of  continuation  of  acute  care,  this  would  also  
include emergent transfer requests. 
 
 

Revision May 2024, Version 2 
23 
 
 
HOSPITAL TO NON-HOSPITAL FACILITY TRANSFER: 
Any  transfer  from  a  hospital  to  a  non-hospital  residential,  in-patient  or  free-standing  acute  
care, or surgical medical facility. An example of this is a transfer or discharge from a hospital to 
assisted living, nursing home, hospice, or rehabilitation facility. 
 
NON-HOSPITAL TO NON-HOSPITAL FACILITY TRANSFER: 
Any  transfer  from  one  residential,  in-patient  or  free-standing  acute  care  or  surgical  medical  
facility to another similar type of facility, neither of which qualify as a hospital. (e.g., nursing 
home   to   nursing   home,   nursing   home   to   a   hospice   center,   free-standing   emergency   
department to nursing home). 
NON-HOSPITAL FACILITY TO HOSPITAL TRANSFER:  
Any transfer for a non-urgent issue or routine care from a non-hospital residential, in-patient or free-
standing acute care or surgical medical facility to a hospital.  (e.g., transfer from a nursing home, clinic, 
urgent care, or free-standing emergency department to a hospital). 
 
OTHER ROUTINE MEDICAL TRANSPORT: 
Transports  that  are  not  between  medical  facilities  and are  generally  for  the  purpose  of  
transportation to or from an appointment, performance of a procedure, or long-term care (e.g., 
discharge home, medical appointments, recurring transports, or based on local or state needs 
or guidance). 
 
PUBLIC ASSISTANCE: 
The  unit  responded  to  provide  public  service  assistance  (e.g.,  elderly  or  disabled  individual 
assistance, lift assist without other assessment or care, public education, wheelchair or medical 
device assistance). 
 
STANDBY: 
Initial  request  for  service  was  for  purposes  of  being  available  in  case  of  a  medical/traumatic  
emergency (e.g., sporting/public events, fires, police action). 
 
SUPPORT SERVICES: 
The  unit responded to  provide  support not  otherwise  specified.  (e.g., equipment  delivery, 
educational events) 
 
NON-PATIENT CARE RESCUE/EXTRICATION: 
The  unit  responded  to  provide  rescue  and/or  extrication  service,  additional  personnel  or 
equipment. 
 
CREW TRANSPORT ONLY: 
The  unit responded to  transport  crew  only.   (e.g.,  medical  specialty  team  without  a  patient,  
mechanical issue with vehicle) 
 

Revision May 2024, Version 2 
24 
 
 
TRANSPORT OF ORGANS OR BODY PARTS: 
This includes tissues, biological samples, organs, and body parts. 
 
MORTUARY SERVICES: 
The unit responded to provide service or assistance in the event of a    deceased patient. 
 
MOBILE INTEGRATED HEALTH CARE ENCOUNTER: 
The  responding  unit  provided  mobile  resources  in  the  out-of-hospital  environment.  It  may  
include,  but  is  not  limited  to,  services  such  as  providing  telephone  advice  to  9-1-1  callers 
instead  of  resource  dispatch;  providing  community  paramedicine  care,  chronic  disease  
management, preventive care or post-discharge follow-up visits. 
 
EVALUATION FOR SPECIAL REFERRAL/INTAKE PROGRAMS: 
EMS  provides  an  initial  medical  screening  as  part  of  the  intake  process  for  various  specialty  
referral services or programs (such as "Safe Baby Haven", mental health, addiction, or similar 
programs). 
 
ADMINISTRATIVE OPERATIONS: 
The unit provided EMS coordination, oversight and/or supervision of services. 
 
 
eResponse.07 –    Unit Transport and Equipment Capability  
 
Definition: The transport and equipment capabilities of the EMS Unit which responded to this 
specific EMS event. 
 
Usage: Must complete 
Select only one 
Does not allow for NOT values 
 
Pertinent  Negatives  (PN): 
None 
 
Code List (Values) 
Code Description 
2207011 Air Transport-Helicopter 
2207013 Air Transport-Fixed Wing 
2207015 Ground Transport (ALS Equipped) 
2207017 Ground Transport (BLS Equipped) 
2207019 Ground Transport (Critical Care Equipped) 
2207021 Non-Transport-Medical Treatment (ALS Equipped) 
2207023 Non-Transport-Medical Treatment (BLS Equipped) 

Revision May 2024, Version 2 
25 
 
2207025 Wheel Chair Van/Ambulette 
2207027 Non-Transport-No Medical Equipment 
 
NEMSIS  Comment:  Element  relabeled  from  "Primary  Role  of  Unit"  to  "Unit  Transport  and  
Equipment  Capability"  to  better  reflect  its  new  defined  purpose  and  allow  the  deprecation  of  
eResponse.15 "Level of Care of This Unit". V3.4.0 Non-Transport values deprecated as these are 
types  of  service  and  were  moved  to  eResponse.05  "Type  of  Service  Requested".  Values  have  
been  added  to  better  capture  transport  capability  and  available  equipment.  These  values  
should  be  tied  to  the  capabilities  and  role  of  the  unit  and  not  reflect  the  level  of  providers  
responding to an event. 
 
Supervisor clarified to Administrative Only. If the Supervisor is    responding to assist, that would 
be considered Non-Transport. 
 
Extended Definitions 
AIR TRANSPORT-HELICOPTER: 
This  unit’s  intended  role  in  this  incident  at  the  time  of  response  was  to  provide  rotor-wing 
transportation of a patient, even if no transport resulted. 
 
AIR TRANSPORT-FIXED WING: 
This  unit’s  intended  role  in  this  incident  at  the  time  of  response  was  to  provide  fixed-wing 
transportation of a patient even if no transport resulted. 
 
GROUND  TRANSPORT  (ALS EQUIPPED): 
This  unit’s  intended  role  in  this  incident  at  the  time  of  response  was  to  provide  ground  
transportation  of  the  patient  even  if  no  transport  resulted.  The  unit  is  equipped  as  an  ALS  
service. 
 
GROUND  TRANSPORT  (BLS EQUIPPED): 
This  unit’s  intended  role  in  this  incident  at  the  time  of  response  was  to  provide  ground  
transportation  of  the  patient  even  if  no  transport  resulted.  The  unit  is  equipped  as  a  BLS  
service. Includes utility vehicles (ATV, snowmobiles) and watercraft capable of transport. 
 
GROUND  TRANSPORT  (CRITICAL  CARE  EQUIPPED): 
This  unit’s  intended  role  in  this  incident  at  the  time  of  response  was  to  provide  ground  
transportation of the patient even if no transport resulted. The unit is equipped as a Critical 
Care service. Includes utility vehicles (ATV, snowmobiles) and watercraft capable of transport. 
 
NON-TRANSPORT-MEDICAL TREATMENT (ALS EQUIPPED): 
This unit’s intended role in this incident at the time of response was to provide EMS care and/or 
transportation  support  but  was  not  to  provide  transport  (e.g.,  fire  apparatus,  first  response  
units, quick response vehicles, chase cars, etc.). 
Examples:  Assistance  moving  the  patient  to  the  transporting  unit.  First  Response  unit  

Revision May 2024, Version 2 
26 
 
providing treatment until transport unit arrives (to include non-transporting ALS units). 
 
NON-TRANSPORT-MEDICAL TREATMENT (BLS EQUIPPED): 
This unit’s intended role in this incident at the time of response was to provide EMS care and/or 
transportation  support  but  was  not  to  provide  transport  (e.g.,  fire  apparatus,  first  response 
units, quick response vehicles, chase cars, etc.). 
Examples:  Assistance  moving  the  patient  to  the  transporting  unit.  First  Response  unit  
providing treatment until transport unit arrives. 
 
WHEEL CHAIR VAN/AMBULETTE: 
This  unit’s  intended  role  in  this  incident at  the  time  of  response  was  to  provide  specialty 
transport as a wheel chair accessible van or ambulette. 
 
NON-TRANSPORT-NO MEDICAL EQUIPMENT: 
This  unit's  intended  role  in  this  incident  at  the  time  of  response  was  to  provide  EMS  
coordination, oversight and/or supervision of services. 
 
 
eResponse.08 –    Type of   Dispatch Delay  
Definition: The dispatch delays, if any, associated with the dispatch of the EMS unit to the 
EMS event. 
 
Usage: Must complete 
Select all applicable 
Allows for NOT values 
 
NEMSIS Comment: A dispatch delay is any time delay that occurs from the time of PSAP call 
(eTimes.01) to the time the unit is notified by dispatch (eTimes.03). 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
2208001 Caller (Uncooperative) 
2208003 Diversion/Failure (of previous unit) 
2208005 High Call Volume 
2208007 Language Barrier 
2208009 Incomplete Address Information Provided 
2208011 No EMS Vehicles (Units) Available 
2208013 None/No Delay 
2208015 Other 
2208017 Technical Failure (Computer, Phone etc.) 

Revision May 2024, Version 2 
27 
 
2208019 Communication Specialist-Assignment Error 
2208021 No Receiving MD, Bed, Hospital 
2208023 Specialty Team Delay 
 
Extended Definitions 
CALLER (UNCOOPERATIVE): 
PSAP/Secondary  Dispatch ability  to  gather  information  and/or provide  instructions  was 
impeded by caller behavior (e.g., caller was unhelpful). 
 
DIVERSION/FAILURE (OF PREVIOUS UNIT): 
Unit  initially  dispatched  was  unable  to  complete  the  response  resulting  in  a second  unit 
dispatched; or call was re-directed to another unit after initial dispatch. 
 
HIGH CALL VOLUME: 
Capacity to receive and process calls in a timely manner was exceeded. 
 
LANGUAGE BARRIER: 
Ability of PSAP/Secondary Dispatch and caller to understand one another was limited (e.g., due 
to  lack  of  a  common  language,  regional  dialect  differences,  caller  speech  impediments,  
distraught caller, etc.). 
 
INCOMPLETE ADDRESS INFORMATION PROVIDED: 
PSAP/Secondary    Dispatch    had    difficulty    determining    an    accurate    location    for    the    
event/incident. 
 
NO EMS VEHICLES (UNITS) AVAILABLE: 
At  the  time  requested,  the  PSAP/Secondary  Dispatch  was  unable  to  identify  an  appropriate  
EMS unit to assign. 
 
NONE/NO DELAY: 
At  the  time  requested,  the  PSAP/Secondary  Dispatch  was  able  to  assign  an  EMS  unit  to  the  
EMS event/incident without delay. 
 
OTHER: 
At the time requested, the PSAP/Secondary Dispatch was delayed assigning an EMS unit for a 
reason not otherwise specified here. 
 
TECHNICAL FAILURE (COMPUTER, PHONE ETC.): 
The ability to receive calls and/or dispatch EMS units was impeded by issues with one or more 
physical   communication   channels   (e.g.,   phones,   radios,   a   local   network,   the   internet,   
power/utility outage, etc.). 
 
COMMUNICATION SPECIALIST-ASSIGNMENT ERROR: 

Revision May 2024, Version 2 
28 
 
The  Communication  Specialist  or  Dispatch  Operator  assigned,  classified,  or  reported  the  call  
with an incorrect code or assigned the call to an incorrect unit. 
 
NO RECEIVING MD, BED, HOSPITAL: 
Dispatching a    unit is impeded due to the lack of a    receiving advanced clinician (such as an MD), 
no available hospital/healthcare facility bed, or there is no available hospital currently receiving 
EMS patients. 
 
SPECIALTY TEAM DELAY: 
Dispatch is delayed due to securing a specialty team appropriate for the EMS request. 
 
 
eResponse.09 – Type of   Response Delay  
Definition: The response delays, if any, of the EMS unit associated with the EMS event. 
 
Usage: Must complete 
Select all applicable 
Allows for NOT values 
 
NEMSIS  Comment:  Rendezvous  Transport  Unavailable  added  for  situations  where  there  is  a 
wait for an EMS Transport Unit, a Ferry, Air Medical, etc. to return to service. 
A  response  delay  is  any  time  delay  that  occurs  from  the  time  the  unit  is  notified  by  dispatch 
(eTimes.03) to the time the unit arrived on scene (eTimes.06) 
 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
2209001 Crowd 
2209003 Directions/Unable to Locate 
2209005 Distance 
2209007 Diversion (Different Incident) 
2209009 HazMat 
2209011 None/No Delay 
2209013 Other 
2209015 Rendezvous Transport Unavailable 
2209017 Route Obstruction (e.g., Train) 
2209019 Scene Safety (Not Secure for EMS) 
DMC Comment: Remember to review all and pick all applicable values. 

Revision May 2024, Version 2 
29 
 
2209021 Staff Delay 
2209023 Traffic 
2209025 Vehicle Crash Involving this Unit 
2209027 Vehicle Failure of this Unit 
2209029 Weather 
2209031 Mechanical Issue-Unit, Equipment, etc. 
2209033 Flight Planning 
 
Extended Definitions 
CROWD: 
The combination of number, density, and location of people encountered en route to an EMS 
event/incident was sufficient enough to slow the unit’s progress. 
 
DIRECTIONS/UNABLE TO LOCATE: 
Problems with directions and/or the ability to follow directions slowed or prevented the u nit’s 
progress to an EMS event/incident (e.g., dispatched to the wrong address, GPS issue, unable to 
find address provided). 
 
DISTANCE: 
An atypically long distance to an EMS event/incident resulted in a    longer than normal response 
time for the unit. 
 
DIVERSION (DIFFERENT INCIDENT): 
While  en  route  to  an  EMS  event/incident,  the  unit  was  re-directed  to  a different EMS 
event/incident. 
 
HAZMAT: 
The actual or presumed presence of one or more dangerous substances slowed or prevented 
the unit’s progress to an EMS event/incident. 
 
NONE/NO DELAY: 
The unit's progress to an EMS event/incident was completed without delay. 
 
OTHER: 
The unit's progress to an incident took longer than expected due to one or more factors not 
otherwise specified here. 
 
RENDEZVOUS  TRANSPORT  UNAVAILABLE: 
The unit's progress to an incident was slowed due to the delay or unavailability of an additional 
mode of transportation needed to achieve the shortest overall response time (e.g., ferry, 
UTV). 
 
 
ROUTE OBSTRUCTION (E.G., TRAIN): 

Revision May 2024, Version 2 
30 
 
One  or more obstacles encountered en route  to an  incident slowed  the unit’s progress (e.g., 
train, drawbridge, bridge or road washout, wildfire, mud/rock slide, parade, marathon). 
 
SCENE SAFETY (NOT SECURE FOR EMS): 
Arrival on scene was delayed due to actual or presumed unsafe conditions at the scene (e.g., 
observed  or  suspected  criminal  activity  involving  weapons,  scene  hazard,  and  stage  for  law  
enforcement). 
 
STAFF DELAY: 
The response was slowed due to crewmember availability, distance to station, or other issues 
(e.g., f ull crew not present, illness, injury, family emergency). 
 
TRAFFIC: 
Vehicular congestion encountered en route to an incident slowed the unit’s progress. 
 
VEHICLE CRASH INVOLVING THIS UNIT: 
The unit’s involvement in a crash slowed or prevented its progress to an incident. 
 
VEHICLE FAILURE OF THIS UNIT: 
Progress to an incident was slowed or prevented by vehicle issues (e.g., failure to start, a flat 
tire, a broken axle). 
 
WEATHER: 
Weather  conditions  slowed  or  prevented  the  unit’s  progress to  an  incident (e.g.,  flood, 
blizzard). 
 
MECHANICAL ISSUE-UNIT, EQUIPMENT, ETC.: 
Issues with one or more devices slowed or prevented the unit’s ability to proceed to an EMS 
event/incident within the expected amount of time (e.g., garage door not rising, switching out 
O2). 
 
FLIGHT PLANNING 
The  aircraft’s  response  to  an  incident  was  slowed  by  additional  pre-flight  preparations  (e.g.,  
re-routing due to weather conditions, loading specialized equipment). 
 
 
eResponse.10 – Type of   Scene Delay  
Definition: The scene delays, if any, of the EMS unit associated with the EMS event. 
 
Usage:  Must complete 
Select all applicable 
Allows for NOT values 

Revision May 2024, Version 2 
31 
 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
2210001 Awaiting Air Unit 
2210003 Awaiting Ground Unit 
 
 2210005 Crowd 
2210007 Directions/Unable to Locate 
2210009 Distance 
2210011 Extrication 
2210013 HazMat 
2210015 Language Barrier 
2210017 None/No Delay 
2210019 Other 
2210021 Patient Access 
2210023 Safety-Crew/Staging 
2210025 Safety-Patient 
2210027 Staff Delay 
2210029 Traffic 
2210031 Triage/Multiple Patients 
2210033 Vehicle Crash Involving this Unit 
2210035 Vehicle Failure of this Unit 
2210037 Weather 
2210039 Mechanical Issue-Unit, Equipment, etc. 
 
Extended Definitions 
AWAITING AIR  UNIT: 
Waiting for aeromedical unit arrival at an EMS event/incident extended time on scene. 
 
AWAITING GROUND UNIT: 
Waiting  for  EMS  ground  unit arrival,  transport  or  otherwise,  at  the  EMS  event/incident 
extended time on scene. 
 
CROWD: 
The  combination of  number,  density,  and  location  of  people  encountered  at  the  EMS 
event/incident was sufficient to extend time on scene. 
 
DIRECTIONS/UNABLE TO LOCATE: 
Difficulty finding the patient after arrival at an EMS event/incident extended time on scene. 
 
 

Revision May 2024, Version 2 
32 
 
DISTANCE: 
Separation  between  the  EMS  response  vehicle  and  the  patient at  the  EMS  event/incident 
extended time on scene. 
 
EXTRICATION: 
EMS  activities  to  remove  the  patient  from  the  EMS  event/incident  extended  time  on  scene 
(e.g., stair-chair, technical rescue or auto extrication to gain patient access). 
 
HAZMAT: 
The management  (e.g.,  identification,  decontamination,  removal,  mitigation)  of  actual  or  
presumed presence of one or more dangerous substances at or near the EMS event/incident 
extended time on scene. 
 
LANGUAGE BARRIER: 
Limited  ability  of  EMS  crewmembers  to  communicate  with  the  patient  and/or  bystanders  at  
the EMS event/incident extended time on scene. 
 
NONE/NO DELAY: 
Nothing occurred at the EMS event/incident that extended the EMS unit’s time on scene. 
 
OTHER: 
The EMS unit’s time on scene was extended for one or more reasons not otherwise specified 
(e.g., extended patient care, securing pets/residence, waiting for guardian to arrive). 
 
PATIENT ACCESS: 
Barriers to physical contact with the patient at the EMS event/incident extended time on scene 
(e.g., locked door, entrapment, patient resists access to care, animals). 
Often used in combination with “Extrication” and/or “Safety-Patient.” 
 
SAFETY-CREW/STAGING: 
Actual  or  presumed  dangerous  conditions  at  the  EMS  event/incident,  or  actions  taken  to  
protect EMS crewmembers (e.g.., staging area and scene management) extended the time on 
scene. 
Select “Patient Access”,  “Crowd”,  “Weather”, and/or “HazMat” if the danger is a direct result 
of any of those factors. 
 
SAFETY-PATIENT: 
Actual  or  presumed  dangerous  conditions  at  the  EMS  event/incident,  or  actions  taken  to  
protect the patient from harm, extended time on scene. 
 
 
 

Revision May 2024, Version 2 
33 
 
STAFF DELAY: 
Crewmember issues   (e.g.,   injury,   illness,  and   waiting   for   additional   staff)   at   the   EMS 
event/incident extended time on scene. 
 
TRAFFIC: 
Vehicular   congestion   or   other   roadway   conditions   (e.g.,   navigating   a   parking   area,   
entrance/egress  from  a  parade/concert,  incident  is  on  a  busy  roadway,  other  responding  
resource is obstructed from arrival) encountered at the EMS event/incident extended time on 
scene. 
 
TRIAGE/MULTIPLE PATIENTS: 
Activities  associated  with  managing  an  EMS  event/incident  involving  more  than  one  patient  
(e.g., sorting, prioritizing, processing) extended time on scene. 
 
VEHICLE CRASH INVOLVING THIS UNIT: 
The unit’s involvement in a crash (e.g., unit is struck by another vehicle while on scene, crash 
of  associated  rescue  vehicle  (ATV)  while  accessing  patient,  unit  backs  into  something  while  
navigating scene) extended time on scene. 
 
VEHICLE FAILURE OF THIS UNIT: 
EMS  unit  mechanical  issue  (e.g.,  failure  to  start,  a  flat  tire,  a  broken  axle)  at  the  EMS  
event/incident extended time on scene. 
 
WEATHER: 
Weather  conditions,  current  or  result  of  past  event  (e.g.,  standing  water,  ice,  blizzard),  
extended time on scene. 
 
MECHANICAL ISSUE-UNIT, EQUIPMENT, ETC.: 
Functional issues with one or more devices needed by the EMS crew (e.g., stretcher or monitor 
failure, locked out of ambulance) extended time on scene. 
 
 
eResponse.24 –    Additional Response Mode Descriptors  
Definition: The documentation of r esponse mode techniques used for this EMS response. 
 
Usage:  Must complete 
Select all that apply 
Allows for NOT values 
 
Pertinent  Negatives  (PN): 
None 

Revision May 2024, Version 2 
34 
 
Code  List  (Values) 
Code Description      
2224001 Intersection Navigation-Against Normal Light Patterns 
2224003 Intersection Navigation-With Automated Light Changing Technology 
2224005 Intersection Navigation-With Normal Light Patterns 
2224007 Scheduled 
2224009 Speed-Enhanced per Local Policy 
2224011 Speed-Normal Traffic 
2224013 Unscheduled 
2224015 Lights and Sirens 
2224017 Lights and No Sirens 
2224019 No Lights or Sirens 
 
2224021            Initial No Lights or Sirens, Upgraded to Lights and Sirens 
2224023            Initial Lights and Sirens, Downgraded to No Lights or Sirens
 
Extended Definitions 
INTERSECTION NAVIGATION-AGAINST NORMAL LIGHT PATTERNS: 
Traveled through intersections controlled by traffic lights or stop signs against the right-of-way 
according  to  standard,  non-emergency  traffic  laws  with,  or  without,  the  use  of  emergency  
lights and sirens (e.g., approached a red traffic light and proceeded through the intersection, 
while  the  light  was  still  red,  when  there  was  cross-road  traffic  traveling  through  the  
intersection on their own green light). 
 
INTERSECTION NAVIGATION-WITH AUTOMATED LIGHT CHANGING TECHNOLOGY: 
Intersection  navigated  with  the  use  of  technology  for  traffic  signal  preemption  (also  called  
traffic signal prioritization) to manipulate traffic signals in the path of an emergency vehicle. 
These  types  of  systems  allow  the  normal  operation  of  traffic  lights  to  be  preempted  or  
controlled using radio or strobe light based signaling systems and may be used in conjunction 
with emergency lights and sirens. 
 
INTERSECTION NAVIGATION-WITH NORMAL LIGHT PATTERNS: 
Traveled through intersection-controlled traffic lights or stop signs according to standard, non- 
emergency state and federal traffic laws (e.g., approached a    red traffic light and waited for the 
light to change to green before proceeding through the intersection). 
 
SCHEDULED: 
For use when there is a planned “Unit Arrived on Scene Date/Time.” 
 
SPEED-ENHANCED PER LOCAL POLICY: 
For use when an emergency service vehicle exceeded posted speed limits within the limits of 
state or local laws or agency policy when responding to an emergency (e.g., some laws allow 
emergency services vehicles to exceed posted speed limits by 10 mph when responding to an 
emergency event, provided the vehicle driver exercises due caution/regard). 

Revision May 2024, Version 2 
35 
 
 
SPEED-NORMAL TRAFFIC: 
Adhered to posted speed limits when responding to a request for service, regardless of dispatch 
priority and use of lights and sirens, in order to arrive in a safe and timely manner. 
 
 
 
UNSCHEDULED: 
For  use  when  there  is  not  a  planned  “Unit  Arrived  on  Scene”  and  it  is  not  an  emergency  
response in eResponse.05.  
 
LIGHTS AND SIRENS: 
Used    emergency lights and audible warning devices on a responding vehicle, to manage and 
alert traffic that they need to yield the right-of-  way to the emergency vehicle. 
 
LIGHTS AND NO SIRENS: 
This traffic alert mode uses lights only without any use of audible warning devices. 
 
NO LIGHTS OR SIRENS: 
Responded  in  an  emergency  services  vehicle  without  the  use  of  any  emergency  traffic  alert  
lights or sirens. 
 
INITIAL NO LIGHTS OR SIRENS, UPGRADED TO LIGHTS AND SIRENS: 
A  response  where  the  responding  vehicle  initiated  the  response  without  the  use  of  lights  or  
sirens, but either received new information from the incident increasing the response priority, 
or where traffic conditions changed requiring the use of lights and sirens for a safe and timely 
response. 
 
INITIAL LIGHTS AND SIRENS, DOWNGRADED TO NO LIGHTS OR SIRENS: 
A   response where the responding vehicle initiated the response with the use of lights or sirens, 
but  either  received  new  information  from  the  incident  decreasing  the  response  priority,  or  
where traffic conditions changed and the use of lights and sirens was no longer required for a 
safe and timely response. 
 
 
eScene.01 –    First EMS Unit on Scene  
Definition: Documentation that this EMS Unit was the first EMS Unit among all EMS 
Agencies on the Scene. 
 
Usage:  Must complete 
Select only one 
Allows for NOT values 

Revision May 2024, Version 2 
36 
 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
9923001 No 
9923003 Yes 
 
NEMSIS  Comment:  Added  to  improve  the  evaluation  of  Response  Times  when  multiple  EMS 
units are responding to the same scene. 
 
 
eScene.06 – Number of   Patients at Scene  
Definition: Indicator of how many total patients were at the scene. 
 
Usage:  Must complete 
Select only one 
Allows for NOT values 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
2707001 Multiple 
2707003 None 
2707005 Single 
 
NEMSIS Comment: This element defines how many patients were at the scene –   not how many 
patients this EMS unit evaluated. 
Extended Definitions 
MULTIPLE: 
There  was  more  than  one  patient at  the  scene. 
 
NONE: 
This  ambulance  and  crew  were  unable  to  locate  anyone  at  the  scene  locally  defined  as  a  
patient. 
 

Revision May 2024, Version 2 
37 
 
 
SINGLE: 
There was one   patient at the scene. 
 
DMC  Comment:  This  is  intended  to  apply  to  Emergency  Response  in  eResponse.05.  (NEMSIS  
3.5.2 Schematron update). 
 
 
eScene.07 – Mass Casualty Incident  
Definition: Indicator   if this event would be considered a mass casualty   incident 
(overwhelmed existing EMS resources). 
 
Usage:  Must complete 
Select only one 
Allows for NOT values 
 
Pertinent  Negatives  (PN): 
None 
 
Code  List  (Values) 
Code Description 
9923001 No 
9923003 Yes 
 
Extended Definitions 
YES: 
A local Mass Casualty  Incident (MCI) plan  was  activated  or  where  EMS  resources,  such  as 
personnel  and  equipment,  were  overwhelmed  by  the  number  and  severity  of  victims  at  an  
emergency scene. 
 
 
eSitutation.11 –    Provider’s Primary Impression  
Definition: The  EMS  personnel's  impression  of  the  patient's  primary  problem  or  most  
significant  condition  which  led  to  the  management  given  to  the  patient  
(treatments, medications, or procedures). 
 
Usage:  Must complete 
Select only one 
Allows for NOT values 
 

Revision May 2024, Version 2 
38 
 
 
 
 
 
eSitutation.12 –    Provider’s Secondary Impression                                                                                                                        
Definition: The  EMS  personnel's  impression  of  the  patient's  secondary  problem  or  most  
significant  condition  which  led  to  the  management  given  to  the  patient  
(treatments, medications, or procedures). 
 
Usage:  Must complete 
Select all applicable 
Allows for NOT values 
NASEMSO DMC S tatement: 
The National Association of State EMS Officials Data Managers Council affirms the NEMSIS 
Primary Impression definition. 
 
The  primary  impression  is  based  on  the  clinical  judgment  of  the  provider  and  could  be  
considered  a field impression  or working/differential diagnosis. The  value  chosen should 
reflect the EMS professional’s determination of the patient's primary  condition  needing  
treatment  based  on  assessment.  This  treatment  approach  uses  the  providers  training,  
experience and patient assessment knowledge/skills. 
 
Primary  refers  to  the  highest acuity  condition  of  the  patient,  not  necessarily  the  first 
condition noticed. The majority of the treatment will be focused on addressing this issue. 
This  is  the  field  provider’s  diagnosis  and  may  not  necessarily  reflect  the  hospital  diagnosis  for  
medical  facility  transports  based  on  a  physician  order.  Additionally,  this  record  is  part  of    the 
patient’s medical record, and must not get mistaken for a physician’s diagnosis; these values should 
NOT be linked to the hospital’s diagnosis fields or   their longitudinal diagnosis record. 

Revision May 2024, Version 2 
39 
 
 
 
 
 
eVitals.29 – Stroke Scale Score  
Definition: The findings or results of the Stroke Scale Type (eVitals.30) used to assess the 
patient exhibiting stroke-like symptoms. 
 
Usage:  Must complete 
Select only one 
Allows for NOT values 
 
Pertinent Negatives (PN): 
Code Description 
8801019 Refused 
8801023 Unable to Complete 
 
Code  List  (Values) 
Code Description 
3329001 Negative 
3329003 Non-Conclusive 
3329005 Positive 
 
Extended Definitions 
REFUSED (PN): 
Used when a    patient, who has a normal mental status, refuses to participate in the exam. 
 
UNABLE TO COMPLETE (PN): 
Used  when  conditions  prevent  the  ability  to  perform  or  complete  a  stroke  exam  for  some  
NASEMSO Data Managers Council Statement: 
The National Association of State EMS Officials Data Managers Council affirms the NEMSIS 
Secondary Impression definition. 
 
The  secondary  impression  is  based  on  the  clinical  judgment  of  the  provider  and  could  be  
considered a field impression or working/differential diagnosis. The value(s) chosen should 
reflect  the  EMS  professional’s  determination  of  any  or  all  of  the  patient's  secondary  
condition(s)  needing  treatment  based  on  assessment.  This  treatment  approach  uses  the  
providers training, experience and patient assessment knowledge/skills. 
 
Additionally, this record is part of the patient’s medical record, and must not get mistaken 
for a physician’s diagnosis or medical history. 

Revision May 2024, Version 2 
40 
 
reason  (e.g.,  unconscious  patient,  patient  with  an  altered  mental  status  or  organic  mental  
impairment such as dementia, patient with significant pre-existing stroke symptoms, patient 
with  other  injury  or  illness  that  would  prevent  a  reliable  exam,  other  barrier  to  patient  care  
preventing the ability to perform the exam). 
Any barrier to patient care should also be documented in eHistory.01 –    Barriers to Patient Care. 
 
 
NEGATIVE: 
A negative stroke scale score does not mean a patient does not have a stroke, but simply that 
the stroke exam itself did not return any positive findings to indicate a stroke. 
This is a normal test finding. This score means each of the stroke assessment criteria for the 
stroke scale exam used by the clinician was negative or "normal/baseline" for the patient (e.g., 
using the  Cincinnati  Prehospital  Stroke  Scale,  the  patient  is  “Negative”  if  they had  NO  f acial 
droop, NO arm drift and NO slurred speech). 
 
 
NON-CONCLUSIVE: 
This  score  indicates  there  may  be  very  subtle  finding  in  the  stroke  scale  exam  that  can't  be  
concluded to be positive or negative. This may be due a pre-existing condition that is normal 
for  the  patient,  but  which  makes  it  difficult  to  determine  if  you  are  seeing  new  findings  or  
baseline (e.g., a patient with a history of a previous stroke or arm or shoulder injury; a patient 
with loose facial skin who has one side of the mouth slightly lower than the other whose face 
may just be that way). 
 
POSITIVE: 
This is an abnormal test finding. A positive score means a    positive or "abnormal from baseline" 
finding  in  any  ONE  of  the  stroke  assessment  criteria  for  the  stroke  scale  exam  used  by  the  
clinician and indicates that the patient may be experiencing a    stroke (e.g., using the Cincinnati 
Prehospital Stroke  Scale,  the  patient is  “Positive”  if  they  have  a positive  or  "abnormal  from 
baseline" finding for Facial Droop, and/or Arm Drift and/or Slurred Speech). 
A Positive stroke scale score indicates a n increased probability of the patient having a stroke. 
 
eSituation.02 –   Possible Injury                                                                         
Definition: Indication whether or not there was an injury. 
 
Usage:  Must complete 
Select only one 
Allows for NOT values 
 
Data Element Comment: 

Revision May 2024, Version 2 
41 
 
This data element provided documentation to classify the EMS Reason for Encounter as either 
injury or non-injury related based on mechanism and not actual injury. eSituation.02 (Possible 
Injury), eSituation.09 (Primary Symptom), eSituation.07 (Chief Complaint Anatomic Location, 
and eSituation.08 (Chief Complaint Organ System) are grouped together to form the EMS 
Reason for Encounter. 
  
 
 
Not Values (NV):  Code
 Description 
7701001 Not Applicable 
7701003 Not Recorded 
 
Code  List  (Values) 
Code Description 
9922001 No 
9922003 Unknown 
9922005 Yes 
 
Extended Definitions  
No: 
There is no indication of a mechanism of injury AND no injury identified with the encounter.  
Unknown:  
Unable to determine whether there was a mechanism of injury related to the event, and no 
reported, suspected, or actual injury was identified. Not for use when the encounter is 
medical/disease-related and there was a mechanism of possible injury.  
Yes: 
If there is a reported (patient complaint), suspected, or actual injury, the answer is Yes. If there is 
an observed or reported mechanism of injury and there is no reported, suspected, or actual injury, 
then the answer is Yes. Mechanism of injury E.g., Assault, Blunt, Bruising, Burns, Drowning, Falls, 
Laceration, MVA, Overdose, Penetrating, Self-Harm, Suicide Attempts, etc. 
  
DMC Comment: (DMC comments here) 
 The definition should emphasize the data element answer is based on the mechanism of injury 
and not actual injury.  
 

Revision May 2024, Version 2 
42 
 
ACRONYMS 
 
ALS Advanced Life Support 
AMA Against Medical Advice 
BLS Basic Life Support 
DMC Data Managers Council of NASEMSO 
DNR Do Not Resuscitate 
DOT Department of Transportation 
ePCR Electronic Patient Care Report 
FD Fire Department 
GCS Glasgow Coma Score 
HAZMAT Hazardous Materials 
NASEMSO National Association of EMS Officials 
NEMSIS National EMS Information System 
NHTSA National Highway Traffic Safety Administration 
OEMS Office of Emergency Medical Services 
PCR Patient Care Report 
PSAP Public Safety Answering Point (Also referred to as Dispatch) 
 