

8801023 - Unable to Complete
State
ePatient.06
ePatient.06 - Patient's Home City
Definition
The patient's primary city or township of residence.
National ElementNoPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesNo
Version 2 ElementE06_05
Is NillableYes
UsageOptional
Recurrence0 : 1
Attributes
Pertinent Negatives (PN)
Data Element Comment
City codes are based on GNIS Feature Class. The primary Feature Class to use is "Civil" with "Populated Place" and "Military"
code as additional options. 
Definitions for each GNIS City Feature Class can be found on the GNIS Codes website. 
GNIS Codes Website: http://geonames.usgs.gov/domestic/download_data.htm
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Patient's Home City is empty, it should have a Not Value (Not Applicable, Not Recorded,
or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the element),
or it should be omitted (if the element is optional).
nemSch_e008ErrorWhen Patient's Home City has a Pertinent Negative, it should be empty and it should not have a
Not Value (Not Applicable, Not Recorded, or Not Reporting).