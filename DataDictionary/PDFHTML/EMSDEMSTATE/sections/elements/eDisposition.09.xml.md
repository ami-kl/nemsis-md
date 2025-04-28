

eDisposition.09
eDisposition.09 - Destination GPS Location
Definition
The destination GPS Coordinates to which the patient was delivered or transferred to.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE20_08
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
(\+|-)?(90(\.[0]{1,6})?|([1-8][0-9]|[0-9])(\.[0-9]{1,6})?),(\+|-)?(180(\.[0]{1,6})?|(1[0-7][0-9]|[1-9][0-9]|[0-9])(\.[0-9]{1,6})?)
Data Element Comment
May be auto-populated if list created in dFacility.13 (Facility GPS Location). 
The pattern for GPS location is in the format "," where: latitudelongitude
-  has a minimum of -90 and a maximum of 90 with up to 6 decimal places latitude
-  has a minimum of -180 and a maximum of 180 with up to 6 decimal placeslongitude