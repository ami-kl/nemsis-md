

eScene.05
eScene.05 - Date/Time Initial Responder Arrived on Scene
Definition
The time that the initial responder arrived on the scene, if applicable.
National ElementNoPertinent Negatives (PN)No
State ElementNo
NOT ValuesNo
Version 2 ElementE08_04
Is NillableNo
UsageOptional
Recurrence0 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestSTEMITrauma
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