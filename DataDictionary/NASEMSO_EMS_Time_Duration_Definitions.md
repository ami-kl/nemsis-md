

 
 
Data  
Managers  
Council 
EMS  
 TIME INTERVAL DEFINITIONS 
NEMSIS Data Dictionary NHTSA V3.5 EMS Data Standard 
 eTimes.01 - PSAP Call Date/Time 
 eTimes.02 - Dispatch Notified Date/Time 
 eTimes.03 - Unit Notified by Dispatch Date/Time 
 eTimes.04 - Dispatch Acknowledged Date/Time 
 eTimes.05 – Unit En Route Date/Time 
 eTimes.06 – Unit Arrived on Scene Date/Time 
 eTimes.07 – Arrived at Patient Date/Time 
 eTimes.08 - Transfer of EMS Patient Date/Time 
 eTimes.09 – Unit Left Scene Date/Time 
 eTimes.10 – Arrival at Destination Landing Area Date/Time 
 eTimes.11 - Patient Arrived at Destination Date/Time 
 eTimes.12 – Destination Patient Transfer of Care Date/Time 
 eTimes.13 – Unit Back in Service Date/Time 
 eTimes.14 – Unit Cancelled Date/Time 
 eTimes.15 – Unit Back at Home Location Date/Time 
 eTimes.16 – EMS Call Completed Date/Time 
 eTimes.17 – Unit Arrived at Staging Area Date/Time 
Naming  
 Descriptive (EMS common terminology) 
 Descriptive is text defining the time duration followed by parenthesis 
containing EMS common terminology  
Time Duration Computation 
 Later Time - Earlier Time = Minutes (and/or) Seconds Duration 
 ↑eTimes.XX    ↑eTimes.XX 
 

 
 
 
 
 
Minutes/Seconds 
 
 Agencies may use either Minutes/Seconds at their discretion (if seconds 
are not utilized then default to :00) 
PSAP to Unit Notified Time 
 Unit Notified by Dispatch (eTimes.03) – PSAP Call (eTimes.01) = 
Minutes/Seconds 
Dispatch Notified to Unit Notified Time 
 Unit Notified by Dispatch (eTimes.03) – Dispatch Notified (eTimes.02) = 
Minutes/Seconds  
Call Received to Unit En Route Time 
 Unit En Route (eTimes.05) – PSAP Call (eTimes.01)* = Minutes/Seconds 
 * If PSAP Call (eTimes.01) is null, use Dispatch Notified (eTimes.02) 
Unit Notified to En Route Time (Chute Time) 
 Unit En Route (eTimes.05) – Unit Notified by Dispatch (eTimes.03) = 
Minutes/Seconds 
Total Unit Response Time 
 Unit Arrived on Scene (eTimes.06) – Unit Notified (eTimes.03) = 
Minutes/Seconds 
Unit En Route to Arrived on Scene Time 
 Unit Arrived on Scene (eTimes.06) – Unit En Route (eTimes.05) = 
Minutes/Seconds 
Scene Time  
 Unit Left Scene (eTimes.09)* – Unit Arrived on Scene (eTimes.06) = 
Minutes/Seconds 
 *If Unit Left Scene is null, use Unit Back in Service (eTimes.13) 

 
 
Patient Scene Time  
 Unit Left Scene (eTimes.09)* – Arrived at Patient (eTimes.07) = 
Minutes/Seconds 
 *If Unit Left Scene is null, use Unit Back in Service (eTimes.13) 
Transport Time 
 Patient Arrived at Destination (eTimes.11) – Unit Left Scene (eTimes.09) = 
Minutes/Seconds 
Destination Transfer of Care (Wall Time) 
 Destination Patient Transfer of Care (eTimes.12) – Patient Arrived at 
Destination (eTimes.11) = Minutes/Seconds 
Arrival at Destination to Back in Service Time 
 Unit Back in Service (eTimes.13) – Patient Arrived at Destination (eTimes.11) 
= Minutes/Seconds 
Destination Patient Transfer of Care to Back in Service  
 Unit Back in Service (eTimes.13) – Destination Patient Transfer of Care 
(eTimes.12) = Minutes/Seconds 
 
Total Unit Call Time (Time on Task) 
 Unit Back in Service (eTimes.13) – Unit Notified by Dispatch (eTimes.03) = 
Minutes/Seconds 
 
Total Overall Call Duration 
 Unit Back in Service (eTimes.13) – PSAP Call (eTimes.01)* = Minutes/Seconds 
 *If PSAP Call (eTimes.01)is null, use Dispatch Notified (eTimes.02), if null, use 
Unit Notified by Dispatch (eTimes.03) 
Canceled Response Time 
 Unit Canceled (eTimes.14) – Unit Notified by Dispatch (eTimes.03) = 
Minutes/Seconds 
 
 

eTimes.07
Arrived at Patient
eTimes.01
PSAP Call
eTimes.13
Unit Back
in Service
eTimes.03
Unit Notified
eTimes.11
Patient Arrived
at Destination
eTimes.05
Unit En Route
eTimes.09
Unit Left Scene
eTimes.02
Dispatch Notified
eTimes.06
Unit Arrived
on Scene
eTimes.12
Destination Patient
Transfer of Care
eTimes.04
Dispatch
Acknowledged
DataManagersCouncil
EMS TIME INTERVAL DEFINITIONS
PSAP to Unit
Notied Time
Dispatch Notied to
Unit Notied
Call Received to Unit En Route Time
Unit Notied to En Route
Time (Chute Time)
Total Unit Response Time
Unit En Route to
Arrived on Scene Time
Scene Time
Patient
Scene Time
Transport
Time
Destination Transfer
of Care (Wall Time)
Arrival at Destination
to Back in Service Time
Total Unit Call Time (Time on Task)
Destination Patient Transfer
of Care to Back in Service
Total Overall Call Duration
Cancelled Response Time
(eTimes.14)