

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eTimes.12
eTimes.12 - Destination Patient Transfer of Care Date/Time
Definition
The date/time that patient care was transferred to the destination healthcare staff.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 Element
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Constraints
Data Type
dateTime
minInclusive
1950-01-01T00:00:00-00:00
maxInclusive
2050-01-01T00:00:00-00:00
Pattern
[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.\d+)?(\+|-)[0-9]{2}:[0-9]{2}
Data Element Comment
This was added to better document delays in ED transfer of care due to ED crowding or other issues beyond EMS control. 
DateTime consists of finite-length characters of the form: yyyy '-' mm '-' dd 'T' hh ':' mm ':' ss ('.' s+)? (zzzzzz)
yyyya four-digit numeral that represents the year
'-'separators between parts of the date portion
mma two-digit numeral that represents the month
dda two-digit numeral that represents the day
Tseparator that indicates time-of-day follows
hha two-digit numeral that represents the hour
':'a separator between parts of the time-of-day portion
mma two-digit numeral that represents the minute
ssa two-integer-digit numeral that represents the whole seconds
'.' s+(not required) represents the fractional seconds
zzzzzz(required) represents the timezone (as described below)
Timezones, required, are durations with (integer-valued) hour and minute properties in the form: ('+' | '-') hh ':' mm
hha two-digit numeral (with leading zeros as required) that represents the hours
mma two-digit numeral that represents the minutes
'+'a nonnegative duration
'-'a nonpositive duration
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Destination Patient Transfer of Care Date/Time is empty, it should have a Not Value (Not
Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if

allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Destination Patient Transfer of Care Date/Time has a Not Value (Not Applicable, Not
Recorded, or Not Reporting), it should be empty.
nemSch_e036WarningDestination Patient Transfer of Care Date/Time should be recorded when Transport Disposition is
"Transport by This EMS Unit...".
nemSch_e037WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Notified by
Dispatch Date/Time.
nemSch_e038WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit En Route
Date/Time.
nemSch_e039WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Arrived on Scene
Date/Time.
nemSch_e040WarningDestination Patient Transfer of Care Date/Time should not be earlier than Arrived at Patient
Date/Time.
nemSch_e041WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Left Scene
Date/Time.
nemSch_e042WarningDestination Patient Transfer of Care Date/Time should not be earlier than Patient Arrived at
Destination Date/Time.
nemSch_e043WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time of Symptom
Onset.
nemSch_e044WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time Last Known
Well.
nemSch_e045WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time of Cardiac
Arrest.
nemSch_e052WarningUnit Back in Service Date/Time should not be earlier than Destination Patient Transfer of Care
Date/Time.
nemSch_e128WarningDate/Time Vital Signs Taken should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e139WarningDate/Time Medication Administered should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e154WarningDate/Time Procedure Performed should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e178WarningDate/Time of Destination Prearrival Alert or Activation should not be later than Destination Patient
Transfer of Care Date/Time.