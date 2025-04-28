

8801029 - Approximate8801023 - Unable to Complete
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eSituation.01
eSituation.01 - Date/Time of Symptom Onset
Definition
The date and time the symptom began (or was discovered) as it relates to this EMS event. This is described
or estimated by the patient, family, and/or healthcare professionals.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE05_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricResponseSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
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
Version 3 Changes Implemented
Added to better define the EMS patient event.
Associated Validation Rules

Rule IDLevelMessage
nemSch_e001ErrorWhen Date/Time of Symptom Onset is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Date/Time of Symptom Onset has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e003ErrorWhen Date/Time of Symptom Onset has a Pertinent Negative of "Unable to Complete", it should
be empty and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e004ErrorWhen Date/Time of Symptom Onset has a Pertinent Negative of "Approximate", it should have a
value and it should not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e043WarningDestination Patient Transfer of Care Date/Time should not be earlier than Date/Time of Symptom
Onset.
nemSch_e053WarningUnit Back in Service Date/Time should not be earlier than Date/Time of Symptom Onset.
nemSch_e075WarningDate/Time of Symptom Onset should be recorded when Type of Service Requested is
"Emergency Response (Primary Response Area)" and Patient Evaluation/Care is "Patient
Evaluated and Care Provided".