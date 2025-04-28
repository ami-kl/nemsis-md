

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eOutcome.01
eOutcome.01 - Emergency Department Disposition
Definition
The known disposition of the patient from the Emergency Department (ED).
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE22_01
Is NillableYes
UsageRequired
Recurrence1 : 1
Associated Performance Measure Initiatives
AirwayCardiac ArrestPediatricSTEMIStrokeTrauma
Attributes
NOT Values (NV)
Code List
CodeDescription
01Discharged to home or self care (routine discharge)
02Discharged/transferred to another short term general hospital for inpatient care
03Discharged/transferred to a skilled nursing facility (SNF)
04Discharged/transferred to an intermediate care facility (ICF)
05Discharged/transferred to another type of institution not defined elsewhere in this code list
06Discharged/transferred to home under care of organized home health service organization in anticipation of
covered skills care
07Left against medical advice or discontinued care
09Admitted as an inpatient to this hospital.
20Deceased/Expired (or did not recover - Religious Non Medical Health Care Patient)
21Discharged/transferred to court/law enforcement
30Still a patient or expected to return for outpatient services.
43Discharged/transferred to a Federal Health Care Facility (e.g., VA or federal health care facility)
50Discharged/transferred to Hospice - home.
51Discharged/transferred to Hospice - medical facility
61Discharged/transferred within this institution to a hospital based Medicare approved swing bed.
62Discharged/transferred to a inpatient rehabilitation facility including distinct part units of a hospital.
63Discharged/transferred to long term care hospitals
64Discharged/transferred to a nursing facility certified under Medicaid but not certified under Medicare
65Discharged/transferred to a psychiatric hospital or psychiatric distinct part unit of a hospital.
66Discharged/transferred to a Critical Access Hospital (CAH).
70Discharged/transferred to another type of health care institution not defined elsewhere in the code list.
Data Element Comment
The list of values and codes is based on and in compliance with the Medicare Claims Processing Manual Chapter 25
Completing and Processing the Form CMS-1450 Data Set, referencing the Uniform Bill - Form CMS-1450 (UB-04) and FL 17 -
Patient Discharge Status. 
 (see "FL 17 – Patient Dischargehttps://www.cms.gov/regulations-and-guidance/guidance/manuals/downloads/clm104c25.pdf
Status") 
Codes are available from Medicare contractors and the National Uniform Billing Committee (NUBC, ) viahttp://www.nubc.org/
the NUBC's Official UB-04 Data Specifications Manual.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Emergency Department Disposition is empty, it should have a Not Value (Not Applicable,
Not Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for
the element), or it should be omitted (if the element is optional).

nemSch_e002ErrorWhen Emergency Department Disposition has a Not Value (Not Applicable, Not Recorded, or
Not Reporting), it should be empty.