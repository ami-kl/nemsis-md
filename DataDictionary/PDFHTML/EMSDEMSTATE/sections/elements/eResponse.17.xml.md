

eResponse.17
eResponse.17 - Vehicle Dispatch GPS Location
Definition
The GPS coordinates associated with the EMS unit at the time of dispatch documented in decimal degrees.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE02_15
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
Response
Constraints
Pattern
(\+|-)?(90(\.[0]{1,6})?|([1-8][0-9]|[0-9])(\.[0-9]{1,6})?),(\+|-)?(180(\.[0]{1,6})?|(1[0-7][0-9]|[1-9][0-9]|[0-9])(\.[0-9]{1,6})?)
Data Element Comment
The pattern for GPS location is in the format "," where: latitudelongitude
-  has a minimum of -90 and a maximum of 90 with up to 6 decimal places latitude
-  has a minimum of -180 and a maximum of 180 with up to 6 decimal placeslongitude