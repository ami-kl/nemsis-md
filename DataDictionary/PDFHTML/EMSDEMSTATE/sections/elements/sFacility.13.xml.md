

StateNational
sFacility.13
sFacility.13 - Facility GPS Location
Definition
The facility GPS Coordinates.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 Element
Is NillableNo
UsageOptional
Recurrence0 : 1
Constraints
Pattern
(\+|-)?(90(\.[0]{1,6})?|([1-8][0-9]|[0-9])(\.[0-9]{1,6})?),(\+|-)?(180(\.[0]{1,6})?|(1[0-7][0-9]|[1-9][0-9]|[0-9])(\.[0-9]{1,6})?)
Data Element Comment
The pattern for GPS location is in the format "," where: latitudelongitude
-  has a minimum of -90 and a maximum of 90 with up to 6 decimal places latitude
-  has a minimum of -180 and a maximum of 180 with up to 6 decimal places longitude
Used to populated dFacility.13 Facility GPS Location.