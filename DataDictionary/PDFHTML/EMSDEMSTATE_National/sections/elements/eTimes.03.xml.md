

StateNational
eTimes.03
eTimes.03 - Unit Notified by Dispatch Date/Time
Definition
The date/time the responding unit was notified by dispatch.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE05_04
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
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
nemSch_e017WarningUnit Notified by Dispatch Date/Time should not be earlier than PSAP Call Date/Time.
nemSch_e019WarningUnit En Route Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e021WarningUnit Arrived on Scene Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e024WarningArrived at Patient Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e026WarningUnit Left Scene Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.

nemSch_e031WarningPatient Arrived at Destination Date/Time should not be earlier than Unit Notified by Dispatch
Date/Time.
nemSch_e037WarningDestination Patient Transfer of Care Date/Time should not be earlier than Unit Notified by
Dispatch Date/Time.
nemSch_e046WarningUnit Back in Service Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e126WarningDate/Time Vital Signs Taken should not be earlier than Unit Notified by Dispatch Date/Time,
unless Obtained Prior to this Unit's EMS Care is "Yes".
nemSch_e137WarningDate/Time Medication Administered should not be earlier than Unit Notified by Dispatch
Date/Time, unless Medication Administered Prior to this Unit's EMS Care is "Yes".
nemSch_e152WarningDate/Time Procedure Performed should not be earlier than Unit Notified by Dispatch Date/Time,
unless Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e177WarningDate/Time of Destination Prearrival Alert or Activation should not be earlier than Unit Notified by
Dispatch Date/Time.