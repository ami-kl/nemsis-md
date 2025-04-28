

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eTimes.09
eTimes.09 - Unit Left Scene Date/Time
Definition
The date/time the responding unit left the scene (started moving).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE05_09
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
nemSch_e001ErrorWhen Unit Left Scene Date/Time is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).

nemSch_e002ErrorWhen Unit Left Scene Date/Time has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e025WarningUnit Left Scene Date/Time should be recorded unless Unit Disposition is "Cancelled Prior to
Arrival at Scene".
nemSch_e026WarningUnit Left Scene Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e027WarningUnit Left Scene Date/Time should not be earlier than Unit En Route Date/Time.
nemSch_e028WarningUnit Left Scene Date/Time should not be earlier than Unit Arrived on Scene Date/Time.
nemSch_e029WarningUnit Left Scene Date/Time should not be earlier than Arrived at Patient Date/Time.
nemSch_e035WarningPatient Arrived at Destination Date/Time should not be earlier than Unit Left Scene Date/Time.
nemSch_e041WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Left Scene
Date/Time.
nemSch_e050WarningUnit Back in Service Date/Time should not be earlier than Unit Left Scene Date/Time.