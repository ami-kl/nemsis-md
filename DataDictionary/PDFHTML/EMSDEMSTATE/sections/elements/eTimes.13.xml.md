

StateNational
eTimes.13
eTimes.13 - Unit Back in Service Date/Time
Definition
The date/time the unit was back in service and available for response (finished with call, but not necessarily
back in home location).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesNo
Version 2 ElementE05_11
Is NillableNo
UsageMandatory
Recurrence1 : 1
Associated Performance Measure Initiatives
Response
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
nemSch_e046WarningUnit Back in Service Date/Time should not be earlier than Unit Notified by Dispatch Date/Time.
nemSch_e047WarningUnit Back in Service Date/Time should not be earlier than Unit En Route Date/Time.
nemSch_e048WarningUnit Back in Service Date/Time should not be earlier than Unit Arrived on Scene Date/Time.
nemSch_e049WarningUnit Back in Service Date/Time should not be earlier than Arrived at Patient Date/Time.

nemSch_e050WarningUnit Back in Service Date/Time should not be earlier than Unit Left Scene Date/Time.
nemSch_e051WarningUnit Back in Service Date/Time should not be earlier than Patient Arrived at Destination
Date/Time.
nemSch_e052WarningUnit Back in Service Date/Time should not be earlier than Destination Patient Transfer of Care
Date/Time.
nemSch_e053WarningUnit Back in Service Date/Time should not be earlier than Date/Time of Symptom Onset.
nemSch_e054WarningUnit Back in Service Date/Time should not be earlier than Date/Time Last Known Well.
nemSch_e055WarningUnit Back in Service Date/Time should not be earlier than Date/Time of Cardiac Arrest.
nemSch_e056WarningUnit Back in Service Date/Time should not be in the future (the current time according to this
system is (value)).
nemSch_e129WarningDate/Time Vital Signs Taken should not be later than Unit Back in Service Date/Time.
nemSch_e140WarningDate/Time Medication Administered should not be later than Unit Back in Service Date/Time.
nemSch_e155WarningDate/Time Procedure Performed should not be later than Unit Back in Service Date/Time.
nemSch_e179WarningDate/Time of Destination Prearrival Alert or Activation should not be later than Unit Back in
Service Date/Time.