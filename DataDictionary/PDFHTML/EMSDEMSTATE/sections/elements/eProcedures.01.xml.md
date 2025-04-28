

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eProcedures.01
eProcedures.01 - Date/Time Procedure Performed
Definition
The date/time the procedure was performed on the patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE19_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
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
nemSch_e001ErrorWhen Date/Time Procedure Performed is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).

nemSch_e002ErrorWhen Date/Time Procedure Performed has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e151WarningDate/Time Procedure Performed should be recorded, unless Procedure Performed Prior to this
Unit's EMS Care is "Yes".
nemSch_e152WarningDate/Time Procedure Performed should not be earlier than Unit Notified by Dispatch Date/Time,
unless Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e153WarningDate/Time Procedure Performed should not be earlier than Arrived at Patient Date/Time, unless
Procedure Performed Prior to this Unit's EMS Care is "Yes".
nemSch_e154WarningDate/Time Procedure Performed should not be later than Destination Patient Transfer of Care
Date/Time.
nemSch_e155WarningDate/Time Procedure Performed should not be later than Unit Back in Service Date/Time.
nemSch_e156WarningDate/Time Procedure Performed should not be later than Arrived at Patient Date/Time when
Procedure Performed Prior to this Unit's EMS Care is "Yes".