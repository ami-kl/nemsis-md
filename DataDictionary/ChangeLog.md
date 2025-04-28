

 
 
 
  
  
  
  
  
NEMSIS v3.5.1 Change Log  
 
NEMSIS Technical Assistance Center (TAC)  
  
January 15, 2024 
 
Updated April 2025 for Critical Patch 1 
 
  

 
NEMSIS v3.5.1 Change Log      2  
Overview  
 
This change log represents the updates made to the NEMSIS data standard released as version 3.5.1. 
Revisions made to the standard were provided by various stakeholders, carefully reviewed, and 
implemented where feasible.  
  
The composition and changes charts are updated to reflect the differences between revisions of the 
NEMSIS V3 standard, rather than changes from version 2.  
  
Descriptions of the sample element page are in the same section as that page. The descriptions were 
updated to clarify phrasing and include links to the referenced white papers.   
  
Naming Convention  
The naming convention for a NEMSIS release is as follows:  
3.Major.Minor.BuildDateCP#  
3 = NEMSIS version 3  
Major: Significant improvements or changes in functionality  
Minor: Minor feature changes or significant fixes  
BuildDate: informational changes to comments/dictionary  
CP# = Critical Patch where # is incremental and references the critical patch version  
  
Format  
This is an example of the format in which changes are described, where changes are part of the critical 
patch it will be indicated in the change description:   
  
Add value, change value, change description (as it applies).  
“Identifier if the code used for patient medication allergies is based on an RxNorm code 
Old:  
or an ICD-10 code.”  
  Value “ICD10” with code 9924001  
“Identifier if the code used is based on an RxNorm code, an ICD-10 code, or a SNOMED-CT 
New: code.”  
  Added value “SNOMED-CT” with code 9924005  
  Value “ICD-10” with code 9924001  
Impacted elements:  eMedications.03  
JIRA ticket:  NEMPUB-180  
  
 
 

 
NEMSIS v3.5.1 Change Log      3  
Contents  
 
Overview ................................................................................................................................................... 2 
Naming Convention................................................................................................................................... 2 
Format ....................................................................................................................................................... 2 
XSD Files Impacted .................................................................................................................................... 7 
commonTypes ........................................................................................................................................... 8 
PersonNameSuffix ..................................................................................................................................... 8 
icd10MedSurge ......................................................................................................................................... 8 
CurrentMedicationAdministrationRoute .................................................................................................. 8 
PhoneNumber ........................................................................................................................................... 9 
USNG ......................................................................................................................................................... 9 
snomed ..................................................................................................................................................... 9 
Gender .................................................................................................................................................... 10 
Sex ........................................................................................................................................................... 10 
dAgency ................................................................................................................................................... 11 
dAgency.04 .............................................................................................................................................. 11 
dAgency.07 .............................................................................................................................................. 11 
dAgency.27 .............................................................................................................................................. 12 
dContact .................................................................................................................................................. 13 
dContact.09 ............................................................................................................................................. 13 
dContact.16 ............................................................................................................................................. 13 
DEMDataSet ............................................................................................................................................ 14 
Schema .................................................................................................................................................... 14 
dPersonnel .............................................................................................................................................. 15 
dPersonnel.08 ......................................................................................................................................... 15 
dPersonnel.12 ......................................................................................................................................... 15 
dPersonnel.13 ......................................................................................................................................... 15 
dPersonnel.14 ......................................................................................................................................... 17 
dPersonnel.20 ......................................................................................................................................... 17 
dPersonnel.40 ......................................................................................................................................... 17 
dRecord ................................................................................................................................................... 18 
dRecord.01 .............................................................................................................................................. 18 
dRecord.02 .............................................................................................................................................. 18 

 
NEMSIS v3.5.1 Change Log      4  
dRecord.03 .............................................................................................................................................. 19 
eAirway ................................................................................................................................................... 20 
eAirway.08 ............................................................................................................................................... 20 
eArrest ..................................................................................................................................................... 21 
eArrest.01................................................................................................................................................ 21 
eArrest.03................................................................................................................................................ 21 
eArrest.09................................................................................................................................................ 21 
eArrest.10................................................................................................................................................ 22 
eArrest.14................................................................................................................................................ 22 
eArrest.20................................................................................................................................................ 22 
eArrest.21................................................................................................................................................ 23 
eArrest.22................................................................................................................................................ 23 
eDispatch ................................................................................................................................................ 24 
eDispatch.01 ........................................................................................................................................... 24 
eDispatch.03 ........................................................................................................................................... 24 
eDispatch.05 ........................................................................................................................................... 25 
eDisposition ............................................................................................................................................ 26 
eDisposition.08 ....................................................................................................................................... 26 
eDisposition.14 ....................................................................................................................................... 26 
eDisposition.19 ....................................................................................................................................... 26 
eDisposition.20 ....................................................................................................................................... 27 
eDisposition.27 ....................................................................................................................................... 29 
eDisposition.30 ....................................................................................................................................... 29 
eDisposition.31 ....................................................................................................................................... 29 
eExam ...................................................................................................................................................... 30 
eExam.13 ................................................................................................................................................. 30 
eExam.16 ................................................................................................................................................. 30 
eExam.23 ................................................................................................................................................. 30 
eExam.24 ................................................................................................................................................. 31 
eExam.25 ................................................................................................................................................. 31 
eHistory ................................................................................................................................................... 32 
eHistory.01 .............................................................................................................................................. 32 
eHistory.17 .............................................................................................................................................. 32 
eHistory.20 .............................................................................................................................................. 32 
eLabs ....................................................................................................................................................... 34 

 
NEMSIS v3.5.1 Change Log      5  
eLabs.01 .................................................................................................................................................. 34 
eLabs.03 .................................................................................................................................................. 34 
eLabs.05 .................................................................................................................................................. 34 
eMedications ........................................................................................................................................... 36 
eMedications.13...................................................................................................................................... 36 
eOther ..................................................................................................................................................... 37 
eOther.06 ................................................................................................................................................ 37 
eOther.19 ................................................................................................................................................ 37 
eOther.20 ................................................................................................................................................ 37 
eOther.21 ................................................................................................................................................ 38 
eOutcome................................................................................................................................................ 39 
eOutcome.01 .......................................................................................................................................... 39 
eOutcome.02 .......................................................................................................................................... 39 
eOutcome.21 .......................................................................................................................................... 40 
ePatient ................................................................................................................................................... 41 
ePatient.11 .............................................................................................................................................. 41 
ePatient.13 .............................................................................................................................................. 41 
ePatient.14 .............................................................................................................................................. 41 
ePatient.15 .............................................................................................................................................. 42 
ePatient.23 .............................................................................................................................................. 42 
ePatient.24 .............................................................................................................................................. 42 
ePatient.25 .............................................................................................................................................. 44 
ePayment ................................................................................................................................................ 45 
ePayment.09 ........................................................................................................................................... 45 
ePayment.16 ........................................................................................................................................... 45 
ePayment.30 ........................................................................................................................................... 46 
ePayment.38 ........................................................................................................................................... 46 
eProcedures ............................................................................................................................................ 47 
eProcedures.14 ....................................................................................................................................... 47 
eProcedures.15 ....................................................................................................................................... 48 
eResponse ............................................................................................................................................... 49 
eResponse.05 .......................................................................................................................................... 49 
eResponse.09 .......................................................................................................................................... 49 
eScene ..................................................................................................................................................... 50 
eScene.02 ................................................................................................................................................ 50 

 
NEMSIS v3.5.1 Change Log      6  
eScene.03 ................................................................................................................................................ 50 
eScene.04 ................................................................................................................................................ 51 
eScene.22 ................................................................................................................................................ 51 
eScene.23 ................................................................................................................................................ 51 
eScene.24 ................................................................................................................................................ 51 
eScene.25 ................................................................................................................................................ 52 
eSituation ................................................................................................................................................ 53 
eSituation.09, eSituation.10 (AssociatedSymptoms ) ............................................................................. 53 
eSituation.11, eSituation.12 (ProvidersImpression) ............................................................................... 53 
eSituation.13 ........................................................................................................................................... 53 
eSituation.15 ........................................................................................................................................... 54 
eSituation.18 ........................................................................................................................................... 54 
eSituation.19 ........................................................................................................................................... 54 
eTimes ..................................................................................................................................................... 57 
eTimes.13 ................................................................................................................................................ 57 
eVitals ...................................................................................................................................................... 58 
eVitals.29 ................................................................................................................................................. 58 
eVitals.30 ................................................................................................................................................. 58 
eVitals.34 ................................................................................................................................................. 59 
 
  
     

 
NEMSIS v3.5.1 Change Log      7  
XSD Files Impacted  
 
File  Change  File  Change  
commonTypes Modified eOther Modified  
dAgency Modified eOutcome Modified  
dConfiguration NO changes ePatient Modified 
dContact Modified  ePayment Modified 
dCustom No changes eProcedures Modified 
dDevice No changes eProtocols No changes 
DEMDataSet Modified eRecord No changes 
dFacility No changes eResponse Modified 
dLocation No changes eScene Modified  
dPersonnel Modified  eSituation Modified  
dRecord New eTimes Modified  
dVehicle No changes eVitals Modified  
 eAirway Modified  sAgency No changes 
eArrest Modified sConfiguration No Changes  
eCrew No changes sdCustom No Changes 
eCustom No changes seCustom No Changes 
eDevice No changes sElement No Changes 
eDispatch Modified sFacility No Changes 
eDisposition Modified sSoftware No Changes 
eExam Modified sState No Changes 
eHistory Modified StateDataSet No Changes 
eInjury No changes    
eLabs Modified   
eMedications Modified   
EMSDataSet No changes    
eNarrative No changes   
  
 
COLOR KEY    
  
 
 
 
 
BLACK Unchanged 
GREEN  New  
BLUE  Modified  

 
NEMSIS v3.5.1 Change Log      8  
commonTypes  
 
PersonNameSuffix  
Add values 
Description: new simpleType based on built-in string type with minimum length of 1 and maximum 
length of 50. 
Impacted elements: ePatient.23 
JIRA ticket: NEMPUB-643 
 
 
icd10MedSurge   
Update regex pattern 
 
Description: add U codes to ICD-10 pattern 
 
Old: “pattern value= “([A-QRSTZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,3})?)” 
New:   “pattern value= “([A-QRSTUZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,3})?)” 
  
Impacted elements: eHistory.08 
JIRA ticket: NEMPUB-610 
  
  
CurrentMedicationAdministrationRoute  
Change description (documentation tag) 
  
Old:  The functioning level of the crew member during this EMS patient encounter 
New:  The administration route of the medication 
  
Impacted elements: eHistory.15, eMedication.04 
JIRA ticket: NEMPUB-581 
 
  
  

 
NEMSIS v3.5.1 Change Log      9  
PhoneNumber 
Update Regex Pattern 
 
Old: "([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])" 
New: "([2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9][0-9][0-9][0-9])|(\+([0-9] ?){6,14}[0-9])" 
  
Description: the new pattern value allows for international phone numbers in addition to domestic 
phone numbers. 
 
  
Impacted elements: dContact.10, dFacility.15, dLocation.12, dPersonnel.09, eInjury.13, ePatient.18, 
ePayment.59, ePayment.31, ePayment.39 (ePayment.EmployerGroup), sFacility.15. 
JIRA ticket:  NEMPUB-696 
 
  
USNG  
Update regex pattern 
  
Description: new snippet expects 10 digits instead of 8 digits, which allows for a higher pinpoint 
accuracy within 1 meter.  
 
Old: "([1-9]|[1-5][0-9]|60)[C-HJ-NP-X][A-HJ-NP-Z][A-HJ-NP-V][0-9]{8}" 
New: "([1-9]|[1-5][0-9]|60)[C-HJ-NP-X][A-HJ-NP-Z][A-HJ-NP-V]([0-9][0-9]){4,5}"  
 
Impacted elements: dFacility.14, dLocation.05, eDisposition.10, eResponse.18, eScene.12, sFacility.14 
JIRA ticket: NEMPUB-726 
 
  
snomed 
Value Restriction Change 
  
Old:  maxInclusive value= “999999999999999"  
New:  maxInclusive value= "999999999999999999" 
  
Impacted elements: dConfiguration.07, eHistory.07, eProcedures.03, sConfiguration.03 
JIRA ticket: NEMPUB-708 
  

 
NEMSIS v3.5.1 Change Log      10  
Gender 
Deprecate Enumeration 
 
Description:  Deprecate Gender enumeration. 
 
Impacted Elements: ePatient.13, dPersonnel.12 
 
Note: The NEMSIS Program is funded by the National Highway Traffic Safety Administration and this type was 
deprecated in 3.5.1 Critical Patch 1 to comply with President Trump’s Executive Orders. 
 
 
Sex 
New enumeration 
 
Description:  New enumeration added for sex. 
  Definition: “Sex” 
  Added value “Female” with code 9919001 
  Added value “Male” with code 9919003 
  Added value “Unknown” with code 9919005 
 
Impacted Elements: ePatient.25, dPersonnel.40 
   

 
NEMSIS v3.5.1 Change Log      11  
dAgency  
 
 
dAgency.04  
Change comment 
 
Old: This has been clarified to reflect that it is the state in which the EMS Agency resides and the state 
associated with the EMS Agency number. 
 
New: This has been clarified to reflect that it is the state associated with the EMS Agency number listed 
in dAgency.02 – EMS Agency Number. 
  
Impacted elements: dAgency.04 
JIRA ticket: NEMPUB-664  
 
 
dAgency.07  
Update Link in Comment 
 
Old: http://www.census.gov/geo/maps-data/data/tract_rel_download.html 
 
New: https://www.census.gov/geographies/reference-files/2010/geo/relationship-files.html 
  
Impacted element: ePatient.11, eScene.23, dAgency.07  
JIRA ticket:  NEMPUB-684 
 
  
  

 
NEMSIS v3.5.1 Change Log      12  
dAgency.27  
Add New Element 
 
Description:  
Element number: dAgency.27 
Element name: Licensed Agency 
National: No State: No 
Definition: Indication if the agency is licensed by the state that issued the EMS Agency Number 
(dAgency.02). 
Usage: optional  Nillable: No  Recurrence: 0:1 
NV: No 
Comment: Associated with each of the EMS Agency Number (dAgency.02). 
Corresponding Enumeration: YesNoValues 
Code description: 9923001 No; 9923003 Yes 
 
JIRA ticket: NEMPUB-719

 
NEMSIS v3.5.1 Change Log      13  
dContact  
 
 
dContact.09 
URL correction 
 
Old: http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm 
 
New: https://www.iso.org/iso-3166-country-codes.html 
 
JIRA ticket: NEMPUB-684 
 
 
dContact.16  
Definition and Name Change 
  
Old: “id= “dContact.EMSMedicalDirectorFellowshipTrainedStatus” 
name = EMS Medical Director Fellowship Trained Status 
definition = Indication if the EMS Medical Director is Fellowship trained” 
 
New: “id= “dContact.EMSMedicalDirectorBoardCertifiedEligible” 
Name = EMS Medical Director Board Certified/Eligible 
Definition = Indication if the EMS Medical Director has advanced training through a form” 
 
  
JIRA ticket: NEMPUB-699  

 
NEMSIS v3.5.1 Change Log      14  
DEMDataSet  
 
 
Schema 
add new element(dRecord) in DEMDataSet’s schema 
 
New:  “dRecord_v3.xsd” 
dRecord: id: dRecordSection 
minOccurs = 0 
documentation: Software Information 
 
Impacted element: dRecord.SoftwareApplicationGroup 
JIRA ticket: NEMPUB-729 
  
         

 
NEMSIS v3.5.1 Change Log      15  
dPersonnel  
 
 
dPersonnel.08  
update URL for ISO 3166 website 
 
Old:  "http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm" 
target="_blank">http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm&lt” 
New: "https://www.iso.org/iso-3166-country-codes.html" target="_blank">https://www.iso.org/iso-
3166-country-codes.html&lt” 
  
JIRA ticket:  NEMPUB-684 
 
 
dPersonnel.12 
Deprecate element 
 
Description: Deprecate element dPersonnel.12 
 
Corresponding Enumeration: Gender 
 
Note: The NEMSIS Program is funded by the National Highway Traffic Safety Administration and this element was 
deprecated in 3.5.1 Critical Patch 1 to comply with President Trump’s Executive Orders. 
 
 
dPersonnel.13 
Add Enumeration Value  
 
Description:  
Enumeration value = 1513013 
documentation: Middle East or North African  
  
Corresponding Enumeration: DemographicRace 
JIRA ticket: NEMPUB-741 
 
updated link for dPersonnel.13 
 
Old: https://grants.nih.gov/grants/guide/notice-files/NOT-OD-15-089.html   

 
NEMSIS v3.5.1 Change Log      16  
 
New: https://www.federalregister/gov/d/2024-06469 
 
JIRA ticket: NEMPUB-684 
 
  

 
NEMSIS v3.5.1 Change Log      17  
dPersonnel.14 
updated link for dPersonnel.14 
 
Old: Website: http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm 
New: Website: https://www.iso.org/iso-3166-country-codes.html  
 
JIRA ticket: NEMPUB-684 
 
 
 
dPersonnel.20  
Add Enumeration Value 
 
added: enumeration value = “sgn” 
Documentation: Sign Language 
  
Corresponding Enumeration: PersonnelForeignLanguageAbility 
JIRA ticket:  NEMPUB-659 
 
 
dPersonnel.40 
New element 
 
Description: New element added for EMS Personnel's Sex. Please see the NEMSIS v3.5.1 Data 
Dictionary for complete element details. 
 
Corresponding enumeration: Sex 
 
 
 
 
 
 
 
 
 

 
NEMSIS v3.5.1 Change Log      18  
 
 
 
 
 
dRecord  
 
 
dRecord.01 
Add New Element 
 
Description:  
Element number: dRecord.01 
Element name: Software Creator 
National: No State: No 
Definition: The name of the vendor who designed the application that created the record for the agency 
listed in dAgency02. 
Usage: recommended  Nillable: yes  Recurrence: 0 : 1 
NV: Not applicable, Not recorded 
DataType: String 
minLength: 1; maxLength: 50 
 
JIRA ticket: NEMPUB-729 
 
 
dRecord.02 
Add New Element 
 
Description:   
Element number: dRecord.02 
Element name: Software name 
National: No State: No 
Definition: The name of the application used to create the record for the agency listed in dAgency.02. 
Usage: recommended  Nillable: yes  Recurrence: 0 : 1 
NV: Not applicable, Not recorded 
DataType: String 
minLength: 1; maxLength: 50 

 
NEMSIS v3.5.1 Change Log      19  
 
JIRA ticket: NEMPUB-729 
 
 
 
dRecord.03 
Add New Element 
 
Description:  
Element number: dRecord.03 
Element name: Software Version 
National: No State: No  
Definition: The version of the application used to create the record for the agency listed in dAgency.02.             
Usage: recommended  Nillable: yes  Recurrence: 0 : 1 
NV: Not applicable, Not recorded 
DataType: String 
minLength: 1; maxLength: 50 
 
JIRA ticket: NEMPUB-729 
 

 
NEMSIS v3.5.1 Change Log      20  
 
eAirway  
 
 
eAirway.08 
Add value  
 
Description: added PN attribute to eAirway.08 
New: PNNil : Yes 
Attribute name: PN 
Usage: Optional 
memberType: PN.NoneReported 
  
Impacted Elements: eAirway.08 
JIRA ticket: NEMPUB-669 
 
    

 
NEMSIS v3.5.1 Change Log      21  
eArrest  
 
 
eArrest.01  
Changed CARES link  
  
Old:  For States and Local agencies that participate in the Cardiac Arrest Registry for Enhanced 
Survival (CARES), “Any EMS Arrival” includes 911 Responders (First Responder or EMS) as 
defined by CARES in  the CARES 2019 Data Dictionary: 
https://mycares.net/sitepages/uploads/2019/Data%20Dictionary%20(2019).pdf 
 
New:  For States and Local agencies that participate in the Cardiac Arrest Registry for Enhanced 
Survival (CARES), “Any EMS Arrival” includes 911 Responders (First Responder or EMS) as 
defined by CARES in the CARES Data Dictionary: https://vendors.mycares.net/ 
 
  
JIRA ticket:  NEMPUB-608 
 
eArrest.03  
Change definition and comment 
 
Old definition & comment: “indication of an attempt to resuscitate the patient who is in cardiac arrest 
(attempted, not attempted due to DNR, etc).” 
New definition & comment: “indication of an attempt to resuscitate the patient who is in cardiac arrest 
(attempted, not attempted due to DNR, etc) by any EMS.” 
 
JIRA ticket:  NEMPUB-663 
 
 
eArrest.09  
Deprecated Enumeration Value 
 
Old: “Compressions-Hands Only CPR” 
New: “Compressions-Hands Only CPR (DEPRECATED)”  
  
Corresponding Enumeration: CPRType  
JIRA ticket:  NEMPUB-615

 
NEMSIS v3.5.1 Change Log      22  
 
eArrest.10  
Changed CARES link  
  
Old:  For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced 
Survival (CARES), eArrest.10 is the equivalent of CARES data element #32: Was Hypothermia 
Care Provided in the Field as defined by CARES in the CARES 2019 Data Dictionary: 
https://mycares.net/sitepages/uploads/2019/Data%20Dictionary%20(2019).pdf 
 
New:    For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced 
Survival (CARES), eArrest.10 is the equivalent of CARES data element #32: Was Hypothermia 
Care Provided in the Field as defined by CARES in the CARES Data Dictionary: 
https://vendors.mycares.net/ 
 
  
JIRA ticket: NEMPUB-608 
 
 
eArrest.14  
Add Attributes 
 
Description: Data dictionary specifies that if not known, clinician should estimate the date/time of 
cardiac arrest 
New: memberType: PN.UnableToComplete PN.Approximate 
 
JIRA ticket: NEMPUB-661  
eArrest.20 
Changed CARES Link 
 
Old: Who Initiated CPR as defined by CARES in the CARES 2019 Data Dictionary: 
https://mycares.net/sitepages/uploads/2019/Data%20Dictionary%20(2019).pdf 
 
New: Who Initiated CPR as defined by CARES in the CARES Data Dictionary: 
https://vendors.mycares.net/ 
  
JIRA ticket:  NEMPUB-608 
  
 
  

 
NEMSIS v3.5.1 Change Log      23  
eArrest.21  
Changed CARES Link 
 
Old: For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced 
Survival (CARES), eArrest.21 is the equivalent of CARES data element #27 Who First Applied the AED 
as defined by CARES in the CARES 2019 Data Dictionary: 
https://mycares.net/sitepages/uploads/2019/Data%20Dictionary%20(2019).pdf 
 
New: For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced 
Survival (CARES), eArrest.21 is the equivalent of CARES data element #27 Who First Applied the AED 
as defined by CARES in the CARES Data Dictionary: https://vendors.mycares.net/ 
 
JIRA ticket:  NEMPUB-608 
  
 
eArrest.22  
Changed CARES Link 
  
Old: For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced 
Survival (CARES), eArrest.22 is the equivalent of CARES data element #28 Who First Defibrillated the 
Patient as defined by CARES in the CARES 2019 Data Dictionary: 
https://mycares.net/sitepages/uploads/2019/Data%20Dictionary%20(2019).pdf 
  
New: For states and local agencies that participate in the Cardiac Arrest Registry for Enhanced 
Survival (CARES), eArrest.22 is the equivalent of CARES data element #28 Who First Defibrillated the 
Patient as defined by CARES in the CARES Data Dictionary: https://vendors.mycares.net/ 
  
JIRA ticket: NEMPUB-608 
 
 
 
 
 
 
  

 
NEMSIS v3.5.1 Change Log      24  
eDispatch  
 
 
 
eDispatch.01  
Add Values 
 
Description:  
added documentation “Hanging/Strangulation/Asphyxiation” with enumeration value 2301093 
added documentation “Intoxicated Subject” with enumeration value 2301095 
added documentation “EMS Requested by Law Enforcement” with enumeration value 2301097 
added documentation “Active Shooter” with enumeration value 2301099 
 
Corresponding enumeration: DispatchReason 
JIRA ticket: NEMPUB-735 
  
  
eDispatch.03  
Rename element, change its definition and ID 
 
Old:  
Element name: “eDispatch.03” type= “EMDCardNumber” id= “eDispatch.EMDCardNumber” 
Name: EMD Card Number 
Definition: “The EMD card number reported by dispatch, consisting of the card number, dispatch 
level, and dispatch mode.” 
 
New: 
Element name: “eDispatch.03” type= “EMDDeterminantCode” id= 
“eDispatch.EMDDeterminantCode” 
Name: Determinant Code 
Definition: The EMD determinant code reported by dispatch, consisting of the card number, 
dispatch level, and dispatch mode.” 
 
Impacted Elements: eDispatch.03 
JIRA ticket: NEMPUB-651 
 
 
  

 
NEMSIS v3.5.1 Change Log      25  
eDispatch.05 
Correct element’s link 
 
Old: Patient Acuity definitions related to "Critical, Emergent, and Lower Acuity" can be found in the 
National EMS Core Content document from NHTSA EMS (DOT HS 809-898 July 2005) at  
http://www.nhtsa.gov/people/injury/ems/emscorecontent/images/EMSCoreContent.pdf” 
 
New: Patient Acuity definitions related to "Critical, Emergent, and Lower Acuity" can be found in 
the National EMS Core Content document from NHTSA EMS at  
https://www.ems.gov/assets/National_EMS_Core_Content.pdf 
Impacted elements: eSituation.13, eDisposition.19 
JIRA ticket: NEMPUB-740 

 
NEMSIS v3.5.1 Change Log      26  
eDisposition  
 
 
eDisposition.08 
Change ISO Website Link  
  
Old: "http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm"  
 
New: “https://www.iso.org/iso-3166-country-codes.html"  
 
JIRA ticket:  NEMPUB-684 
 
 
eDisposition.14  
Add Value 
  
Description:  Enumeration value: 4214021; Documentation: Pediatric ambulance Restraint Device 
Enumeration value: 4214023; Documentation: Neonatal Ambulance Restraint Device 
Enumeration value: 4214025; Documentation: Patient’s Car Seat 
Enumeration value: 4214027; Documentation: Ambulance Integrated Car Seat 
  
Corresponding Enumeration: PositionOfPatientDuringTransport  
JIRA ticket:  NEMPUB-657 
 
 
eDisposition.19 
Update Definition 
  
Old: “The acuity of the patient's condition after EMS release of the patient.” 
 
New: “The acuity of the patient's condition after this EMS unit's release of the patient.” 
  
JIRA ticket: NEMPUB-704 
 
Update Comment 
  
Old: “Non-Acute/Routine added for use with patients with no clinical issues-such as a refusal for a life 
assist-or for routine transfer.” 
 
New: “Non-Acute/Routine added for use with patients with no clinical issues-such as a refusal for a lift 
assist-or for routine transfer.” 

 
NEMSIS v3.5.1 Change Log      27  
  
JIRA ticket: NEMPUB-704 
 
Definition and Name Change 
  
Old: Element name: “eDisposition.19” id= “eDisposition.FinalPatientAcuity” 
Name: Final Patient Acuity 
Definition: The acuity of the patient’s condition after EMS care. 
Extension base: “FinalPatientAcuity” 
 
New: Element name: “eDisposition.19” id= “eDisposition.AcuityUponEMSReleaseOfPatient” 
Name: Acuity Upon EMS Release of Patient 
Definition: The acuity of the patient’s condition after EMS release of the patient. 
Extension base: “AcuityUponEMSReleaseOfPatient” 
  
Corresponding Enumeration: AcuityUponEMSReleaseOfPatient 
JIRA ticket:  NEMPUB-722 
 
 
Update link in comment  
  
Old: “"http://www.nhtsa.gov/people/injury/ems/emscorecontent/images/EMSCoreContent.pdf" 
target="_blank">http://www.nhtsa.gov/people/injury/ems/emscorecontent/images/EM
SCoreContent.pdf&lt;” 
New: “https://www.ems.gov/assets/National_EMS_Core_Content.pdf" target="_blank"> 
https://www.ems.gov/assets/National_EMS_Core_Content.pdf&lt” 
 
JIRA ticket:  NEMPUB-740 
 
 
eDisposition.20 
Change Element’s Definition and Comment 
  
Old:  
Definition: The reason the unit chose to deliver or transfer the patient to the destination. 
Comment: Required if the patient was transported. 
 
New:  
Definition: The reason(s) this EMS unit delivered or transferred the patient to the destination. 
Comment: Required if the patient was transported. This NEMSIS data element has no relationship to the 
5010 CMS claim file data element. Please refer to ePayment.44 Ambulance Transport Reason Code for 
billing purposes. 
  
JIRA ticket: NEMPUB-524 
 

 
NEMSIS v3.5.1 Change Log      28  
  
  

 
NEMSIS v3.5.1 Change Log      29  
eDisposition.27 
Change Definition  
  
Old: “The patient disposition for an EMS event identifying whether patient contact was made.” 
 
New: “The unit disposition for an EMS event identifying whether patient contact was made by this EMS 
unit/crew.” 
  
JIRA ticket: NEMPUB-713 
   
eDisposition.30  
Update Enumeration Value Documentation 
  
Old: Enumeration value: 4230005; Documentation: Transport by Another EMS Unit  
Enumeration value: 4230007; Documentation: Transport by Another EMS Unit, with a Member of This 
Crew 
 
New: Enumeration value: 4230005; Documentation: Transport by Another EMS Unit/Agency  
Enumeration value: 4230007; Documentation: Transport by Another EMS Unit/Agency, with a Member 
of This Crew 
Corresponding Enumeration: TransportDisposition 
JIRA ticket: NEMPUB-605 
 
 
eDisposition.31 
New Enumeration Value 
  
Description:  
Enumeration value: 4231017; Documentation: Patient Elopement  
  
Corresponding Enumeration: ReasonForRefusalRelease 
JIRA ticket:  NEMPUB-721 
 
 
 
 
 
 
 
 

 
NEMSIS v3.5.1 Change Log      30  
 
 
 
 
eExam  
 
 
 
eExam.13  
Add Enumeration Values 
  
Description: Add new values for “Flank-Left” and “Flank-Right” to eExam.13 
Enumeration value: 3513029; Documentation: Flank-Left 
Enumeration value: 3513031; Documentation: Flank-Right  
  
Corresponding Enumeration:  BackAndSpineAssessmentLocation 
JIRA ticket:  NEMPUB-621 
  
 
eExam.16 
Add Enumeration Values 
  
Description:  New Enumerations: 
Enumeration value: 3516085; Documentation: Cool/Cold to Touch 
Enumeration value: 3516087; Documentation: Cyanosis 
Enumeration value: 3516089; Documentation: Erythema/Flushing 
Enumeration value: 3516091; Documentation: Hot/Warm to Touch 
Enumeration value: 3516093; Documentation: Lividity 
Enumeration value: 3516095; Documentation: Mottled 
Enumeration value: 3516097; Documentation: Pale 
  
Corresponding Enumeration: ExtremitiesAssessment  
JIRA ticket:  NEMPUB-649 
 
eExam.23 
Update Description 
  
Old: “Pain with Inspiraton/Expiration” 
New: “Pain with Inspiration/Expiration” 
  

 
NEMSIS v3.5.1 Change Log      31  
JIRA ticket:  NEMPUB-683 
 
 
 
 
eExam.24 
Deprecate values 
  
Description: update the left and right location of the chest exam finding 
 
Old: Enumeration value: 3524003; Documentation: Left – Posterior 
Enumeration value: 3524005; Documentation: Right – Posterior 
 
New: Enumeration value: 3524003; Documentation: Left – Posterior (DEPRECATED) 
Enumeration value: 3524005; Documentation: Right – Posterior (DEPRECATED) 
 
Corresponding Enumeration: ChestAssessmentLocation 
JIRA ticket:  NEMPUB-638 
  
 
eExam.25  
Deprecated Value 
  
Description: update the Tenderness-General location of chest examination 
Old: Enumeration value: 3525049; Documentation: Tenderness-General  
 
New: Enumeration value: 3525049; Documentation: Tenderness-General (DEPRECATED) 
 
Corresponding Enumeration: ChestAssessment 
JIRA ticket:  NEMPUB-598 
 
Update Enumeration Documentation 
 
Description: Enumeration value: 3525013;  
 
Old: Documentation: “Burn-Charing” 
New: Documentation: “Burn-Charring”  
  
Corresponding Enumeration: ChestAssessment 
JIRA ticket:  NEMPUB-700 
 
 
 

 
NEMSIS v3.5.1 Change Log      32  
 
 
 
 
 
   
eHistory  
 
eHistory.01  
Change Definition 
  
Old: “Indication of whether or not there were any patient specific barriers to serving the patient at the 
scene.” 
New: “Indication of whether or not there were any patient specific barriers to serving the patient.” 
  
JIRA ticket:  NEMPUB-628 
 
eHistory.17  
Add Drug Use Indicators 
 
Description: New Enumerations:   
Enumeration value: 3117015; Documentation: Bystander/Family Reports Drug Use 
Enumeration value: 3117017; Documentation: Bystander/Family Reports Alcohol Use 
  
Corresponding Enumeration: AlcoholDrugUseIndicators 
JIRA ticket: NEMPUB-623 
 
 
eHistory.20  
Update Descriptions 
  
Description:  
 
Enumeration value = 3120001 
Old: “qi (every hour)” 
New: “q1h (every hour)”  
 
Enumeration value = 3120011 
Old: “tad (three times a day)” 

 
NEMSIS v3.5.1 Change Log      33  
New: “tid (three times a day)” 
 
Enumeration value = 3120025 
Old: “has (at bedtime)” 
New: “hs (at bedtime)” 
 
Enumeration value = 3120027 
Old: “sod (every other day)” 
New: “qod (every other day)” 
  
Corresponding Enumeration: CurrentMedicationFrequency 
JIRA ticket:  NEMPUB-703 
 
 
 
  
    

 
NEMSIS v3.5.1 Change Log      34  
eLabs  
 
eLabs.01 
Update Description 
  
Old: “The data and time for the specific laboratory result.” 
New: “The date and time for the specific laboratory result.” 
  
JIRA ticket:  NEMPUB-685 
 
 
eLabs.03 
Deprecate Enumeration Value 
 
Description: Enumeration value: 3403123;  
Old: Documentation: Creatine Phosphokinase (CK) 
New: Documentation: Creatine Phosphokinase (CK) (DEPRECATED) 
 
Corresponding Enumeration: LaboratoryResultType 
JIRA ticket: NEMPUB-727 
 
Update Description 
  
Description: Enumeration value: 3403161 
Old: “Troporin T (cTnT)”  
New: “Troponin T (cTnT)” 
  
Corresponding Enumeration: LaboratoryResultType 
JIRA ticket:  NEMPUB-647 
 
 
eLabs.05 
 
Change Enumeration Description 
 
Description: Enumeration value: 3405001;  
Old: Documentation: CAT Scan 
New: Documentation: Computed Tomography (CT) Scan 
 
Description: Enumeration value: 3405007;  
Old: Documentation: PET Scan 

 
NEMSIS v3.5.1 Change Log      35  
New: Documentation: Position Emission Tomography (PET) Scan 
 
Corresponding Enumeration: ImagingStudyType 
JIRA ticket: NEMPUB-693 
 
 
 
 
 
 
 
 
  

 
NEMSIS v3.5.1 Change Log      36  
eMedications  
  
eMedications.13  
Add new element 
  
Description:    
Element Number: eMedication.13 
Element Name: Medication Administered by Another Unit 
National: No State: Yes  
Definition: “Indicates the medication was administered by someone other than the EMS clinicians in this 
EMS unit. This is not for prior to arrival medications, but for medications administered when multiple 
units/caregivers are on scene simultaneously providing patient care.” 
Usage: Recommended  Nillable: Yes  Recurrence: 0 : 1 
NV: Not applicable, Not recorded 
Corresponding Enumeration: YesNoValues 
Code description: 9923001 No, 9923003 Yes 
 
JIRA ticket:  NEMPUB-723 
  
  
    

 
NEMSIS v3.5.1 Change Log      37  
   
eOther  
 
 
eOther.06   
Add Enumeration Values 
  
Description:   
Enumeration value: 4506031; Documentation: Violence-Offensive, Intimidating, or Hateful Language 
Enumeration value: 4506033; Documentation: Violence-Physical Threat, or Threatening Behavior 
Enumeration value: 4506035; Documentation: Violence-Physical Attack or Attempt to Attack 
Enumeration value: 4506037; Documentation: Violence-Unwelcome Sexual Attention, Remarks, Jokes or 
Gestures 
Enumeration value: 4506039; Documentation: Violence-Unwanted Touching of a Sexual Nature 
Enumeration value: 4506041; Documentation: Struck by Vehicle Along Roadway 
 
Corresponding Enumeration: TypeOfInjuryDeathOrSuspectedExposure 
JIRA ticket:  NEMPUB-728 
  
  
eOther.19  
Change Definition 
  
Old: “The date and time the signature was captured.”  
New:  “The date and time the crew member, patient, patient representative, or facility representative 
signature was captured.”  
    
JIRA ticket:  NEMPUB-670 
 
  
eOther.20  
Change Definition 
  
Old: “The last name of the individual who signed the associated signature.” 
New: “The last name of the crew member, patient, patient representative, or facility representative 
associated with the signature group.” 
  
JIRA ticket:  NEMPUB-620 
 
  
  

 
NEMSIS v3.5.1 Change Log      38  
eOther.21  
Change definition  
  
Old: “The first name of the individual associated with the signature.”  
New: “The first name of the crew member, patient, patient representative, or facility representative 
associated with the signature group.”  
  
JIRA ticket:  NEMPUB-692 
 
  
   
  

 
NEMSIS v3.5.1 Change Log      39  
eOutcome  
 
 
eOutcome.01  
Update Comment 
 
Old: The list of values and codes is based on and in compliance with the Medicare Claims Processing 
Manual Chapter 25 Completing and Processing the Form CMS-1450 Data Set, referencing the Uniform 
Bill - Form CMS-1450 (UB-04) and the FL 17 - Patient Discharge Status Required.   
(For all Part A inpatient, SNF, hospice, home health agency (HHA) and outpatient hospital services.) This 
code indicates the patient's status as of the "Through" date of the billing period (FL 
6). https://www.cms.gov/Regulations-and-Guidance/Guidance/Transmittals/downloads/R1104CP.pdf 
Search for: "FL 17 – Patient Status" 
 
New: The list of values and codes is based on and in compliance with the Medicare Claims Processing 
Manual Chapter 25 Completing and Processing the Form CMS-1450 Data Set, referencing the Uniform 
Bill - Form CMS-1450 (UB-04) and FL 17 - Patient Discharge Status. https://www.cms.gov/regulations-
and-guidance/guidance/manuals/downloads/clm104c25.pdf. (see "FL 17 – Patient Discharge 
Status") Codes are available from Medicare contractors and the National Uniform Billing Committee 
(NUBC, http://www.nubc.org/") via the NUBC's Official UB-04 Data Specifications Manual.  
 
JIRA ticket: NEMPUB-684 
 
  
eOutcome.02  
Update Comment 
 
Old: The list of values and codes is based on and in compliance with the Medicare Claims Processing 
Manual Chapter 25 Completing and Processing the Form CMS-1450 Data Set, referencing the Uniform 
Bill - Form CMS-1450 (UB-04) and the FL 17 - Patient Discharge Status Required.(For all Part A inpatient, 
SNF, hospice, home health agency (HHA) and outpatient hospital services.) This code indicates the 
patient's status as of the "Through" date of the billing period (FL 6) 
https://www.cms.gov/transmittals/downloads/R1104CP.pdf Page 35-36  
Codes are available from Medicare contractors and the National Uniform Billing company (NUBC 
http://www.nubc.org) via the NUBC's Official UB-04 Data Specifications Manual. Contractor site, 
Knowledge Trek: http://www.ub04.net/downloads/Medicare_Pub_Ch_25.pdf. Please reference the 
section "FL 17 - Patient Status" found on page 23-25 of 126. 
 
New: The list of values and codes is based on and in compliance with the Medicare Claims Processing 
Manual Chapter 25 Completing and Processing the Form CMS-1450 Data Set, referencing the Uniform 
Bill - Form CMS-1450 (UB-04) and FL 17 - Patient Discharge Status. https://www.cms.gov/regulations-
and-guidance/guidance/manuals/downloads/clm104c25.pdf 

 
NEMSIS v3.5.1 Change Log      40  
(see "FL 17 – Patient Discharge Status") Codes are available from Medicare contractors and the National 
Uniform Billing Committee (NUBC, http://www.nubc.org/") via the NUBC's Official UB-04 Data 
Specifications Manual. 
 
JIRA ticket: NEMPUB-684 
 
eOutcome.21  
Add New Element 
 
Description:  
Element number: eOutcome.21 
Element name: Injury Severity Score 
National: No  State: No  
Definition: The patient’s total Injury Severity Score. 
Usage: optional  Nillable: No Recurrence: 0 : 1 
NV: No 
DataType: Integer 
minInclusive value = 0;  maxInclusive value = 75 
 
 
JIRA ticket:  NEMPUB-519 
 
 
   

 
NEMSIS v3.5.1 Change Log      41  
ePatient  
 
ePatient.11  
Update Link 
  
Old:  Census Tract Data Website (files and descriptions): http://www.census.gov/geo/maps-
data/data/tract_rel_download.html 
 
New: Census Tract Data Website (files and descriptions): 
https://www.census.gov/geographies/reference-files/2010/geo/relationship-files.html 
 
JIRA ticket: NEMPUB-684 
 
ePatient.13 
Deprecate element 
 
Description: Deprecate ePatient.13 
 
Corresponding Enumeration: Gender 
 
Note: The NEMSIS Program is funded by the National Highway Traffic Safety Administration and this element was 
deprecated in 3.5.1 Critical Patch 1 to comply with President Trump’s Executive Orders 
 
ePatient.14  
Add Pertinent Negatives, Add Enumeration Value, Update Link in Comment 
  
Description:   
Attribute name= “PN”, use= “optional” 
memberType= “PN.Refused PN.Unresponsive PN.UnableToComplete” 
 
Enumeration value: 2514013; Documentation: Middle Eastern or North African 
 
Old comment: OMB requirements are provided at: https://grants.nih.gov/grants/guide/notice-
files/NOT-OD-15-089.html. Using single multiple choice question methodology to 
improve the completion of ethnicity information. Ethnicity (Version 2.2.1: E06_13) has 
been merged with this data element and retired.  
 
New comment: OMB requirements are provided at: https://www.federalregister.gov/d/2024-06469. 
Using single multiple choice question methodology to improve the completion of 
ethnicity information. Ethnicity (Version 2.2.1: E06_13) has been merged with this data 
element and retired. 

 
NEMSIS v3.5.1 Change Log      42  
 
Corresponding Enumeration: Race 
JIRA ticket:  NEMPUB-595  NEMPUB-741  NEMPUB-684 
 
 
ePatient.15 
Add Attribute, Change Definition 
  
Description:  attribute name= “PN” use= “optional” 
memberType= “PN.Approximate”  
 
Old definition: “The patient’s age (either calculated from date of birth or best approximation)” 
New definition: “The patient’s age (either calculated from date of birth or best approximation) at the 
time of the incident” 
  
JIRA ticket: NEMPUB-652   NEMPUB-715 
  
  
ePatient.23  
Add New Element 
  
Description:   
Element number: ePatient.23 
Element name:  Name Suffix 
National: No State: No 
Definition: The patient’s name component following family name that may be used to describe a 
person’s position in a family 
Usage: Optional   Nillable: No Recurrence: 0 : 1 
NV: No 
DataType: String 
minLength: 1; maxLength: 50 
      
JIRA ticket:  NEMPUB-643 
 
  
ePatient.24  
Add New Element 
  
Description:    
Element number: ePatient.24 
Element name: Patient’s Preferred Language(s) 
National: No State: No  
Definition: The patient’s preferred language(s). 

 
NEMSIS v3.5.1 Change Log      43  
Usage: Optional   Nillable: No Recurrence: 0 : M 
NV: No 
DataType: string 
 
Code description:  
amh Amharic 
ara Arabic 
arm Armenian 
ben Bengali 
crp Cajun (Creole and Pidgins) 
chi Chinese 
hrv Croatian 
cze Czech 
dan Danish 
dut Dutch 
eng English 
fin Finnish 
tai Formosan 
fre French 
cpf French Creole 
ger German 
gre Greek 
guj Gujarati 
heb Hebrew 
hin Hindi (Urdu) 
hun Hungarian 
ilo Ilocano 
itl Italian 
jpn Japanese 
kor Korean 
kro Kru 
lit Lithuanian 
mal Malayalam 
hmn Miao (Hmong) 
mkh Mon-Khmer (Cambodian) 
nav Navaho 
nno Norwegian 
pan Panjabi 
gem Pennsylvania Dutch (Germanic Other) 
per Persian 
pol Polish 
por Portuguese 
rum Romanian 
rus Russian 
sgn Sign Languages 
smo Samoan 

 
NEMSIS v3.5.1 Change Log      44  
srp Serbo-Croatian 
slo Slovak 
spa Spanish 
swe Swedish 
syr Syriac 
tgl Tagalog 
tha Thai (Laotian) 
tur Turkish   
ukr Ukrainian 
vie Vietnamese 
yid Yiddish 
 
Corresponding Enumeration: PatientPreferredLanguage 
JIRA ticket: NEMPUB-718 
 
  
ePatient.25 
New element 
 
Description: New element added for patient’s sex. Please see the NEMSIS v3.5.0 Data Dictionary for 
complete element details. 
 
Corresponding enumeration: Sex 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
NEMSIS v3.5.1 Change Log      45  
 
 
 
 
 
 
 
 
ePayment 
 
  
ePayment.09  
Change Comment 
  
Old: “This element should be used as the Health Plan ID (HPID) field in X12. It is currently under 
development for X12 and will be a future release.” 
New: “This element should be used as the Health Plan ID (HPID) field in X12. It is currently under 
development for X12 and will be a future release. To align with USCDI, consider using 
the Issuer Identification Number (IIN) or Processor Control Number (PCN).”  
 
JIRA ticket:  NEMPUB-597 
  
  
ePayment.16 
Update ISO Link 
  
Old: Based on the ISO Country Code. ANSI Country Codes (ISO 3166) Website: 
http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm 
New: Based on the ISO Country Code. ANSI Country Codes (ISO 3166) Website: 
https://www.iso.org/iso-3166-country-codes.html 
 
JIRA ticket:  NEMPUB-684 
  
 

 
NEMSIS v3.5.1 Change Log      46  
ePayment.30 
Update ISO Link 
  
Old: Based on the ISO Country Code. ANSI Country Codes (ISO 3166) Website: 
http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm  
 
New: Based on the ISO Country Code. ANSI Country Codes (ISO 3166) Website: 
https://www.iso.org/iso-3166-country-codes.html 
 
JIRA ticket:  NEMPUB-684 
  
 
ePayment.38 
Update ISO Link 
  
Old: Based on the ISO Country Code. ANSI Country Codes (ISO 3166) Website: 
http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm 
 
New: Based on the ISO Country Code. ANSI Country Codes (ISO 3166) Website: 
https://www.iso.org/iso-3166-country-codes.html  
 
JIRA ticket:  NEMPUB-684 
 
 
 
   
 
 
 
 
 
 
 
 
 
  

 
NEMSIS v3.5.1 Change Log      47  
eProcedures  
 
 
eProcedures.14  
Add New Element  
  
Description:   
Element number: eProcedures.14 
Element name: Airway Placement Technique 
National: No State: Yes   
Definition: The manner/equipment used during the placement of the advanced airway 
Usage: recommended Nillable: Yes  Recurrence: 0 : M 
NV: Not applicable, not recorded 
Comment: Version 3 Changes Implemented; Added to better document airway management 
DataType: string 
 
Code description: 
3914001 Blind Digital Technique 
3914003 Cross Finger Technique 
3914005 Direct Laryngoscopy 
3914007 Fiberoptic Laryngoscopy 
3914009 Indirect Laryngoscopy 
3914011 Video Laryngoscopy 
 
Corresponding Enumeration: AirwayPlacementTechnique 
JIRA ticket:  NEMPUB-701 
 
  
  

 
NEMSIS v3.5.1 Change Log      48  
eProcedures.15  
Add New Element 
  
Description:  
Element number: eProcedures.15 
Element name: Procedure Performed by Another Unit 
National: No State: Yes   
Definition: Indicates the procedure was performed by someone other than the EMS clinicians in this 
EMS unit. This is not for prior to arrival procedures, but for procedures performed when multiple 
units/caregivers are on scene simultaneously providing patient care. 
Usage: Recommended Nillable: Yes  Recurrence: 0 : 1 
NV: Not applicable, not recorded 
Corresponding Enumeration: YesNoValues 
Code description: 9923001 No, 9923003 Yes 
  
JIRA ticket:  NEMPUB-723 
 

 
NEMSIS v3.5.1 Change Log      49  
eResponse 
 
 
eResponse.05  
Correct Comment 
 
Old: Values for "911 Response (Scene)", "Intercept", and "Mutual Aid" have been relabeled to start with 
"Emergency Response" to more easily identify these options. "Interfacility Transport" was relabeled to 
"Hospital-to-Hospital Transfer" to be more accurate; options for "Sending Hospital Staff" and "Critical or 
Specialty Care" were added to better track resource utilization at local and state levels and support 
reimbursement levels. "Medical Transport" was relabeled to "Other Medical Needs Transport" to cover 
any other medical transports such as transports to and from dialysis, doctor appointments, return home, 
or nursing homes. Values added to consolidate types of service previously captured in "Primary Role of 
Unit" and eDisposition.12 as found in V3.4.0. Additional values added to reflect emerging service types.  
 
New: Values for "911 Response (Scene)", "Intercept", and "Mutual Aid" have been relabeled to start with 
"Emergency Response" to more easily identify these options. "Interfacility Transport" was relabeled to 
"Hospital-to-Hospital Transfer" to be more accurate; "Medical Transport" was relabeled to "Other 
Routine Medical Transport" to cover any other medical transports such as transports to and from 
dialysis, doctor appointments, return home, or nursing homes. Values added to consolidate types of 
service previously captured in "Primary Role of Unit" and eDisposition.12 as found in V3.4.0. Additional 
values added to reflect emerging service types. 
 
JIRA ticket: NEMPUB-673 
 
  
eResponse.09  
Add Enumeration Value 
  
Description:  
Enumeration value: 2209035 
Documentation: Out of Service Area Response 
  
Corresponding Enumeration: EMSUnitDelayReason 
 
JIRA ticket:  NEMPUB-637 
  
  
 
   

 
NEMSIS v3.5.1 Change Log      50  
eScene  
 
eScene.02  
Change Definition, Update Link, Update Comment 
  
Old definition: “Other EMS agency names that were at the scene, if any.” 
New definition: “The name(s) of other EMS or public safety agencies at the scene.” 
 
Old link: #16 Fire/First Responder as defined by CARES in the CARES Data Dictionary: 
https://mycares.net/sitepages/uploads/2020/Data%20Dictionary%20(2021).pdf 
 
New link: #16 Fire/First Responder as defined by CARES in the CARES Data Dictionary: 
https://vendors.mycares.net/ 
 
Old comment: Other EMS agencies that were at the scene, if any. 
New comment: The name(s) of other EMS or Public Safety Agencies at the scene. 
 
JIRA ticket:  NEMPUB-654   NEMPUB-608 
  
 
eScene.03  
Update Comment and Link  
  
Old link: #16 Fire/First Responder as defined by CARES in the CARES Data Dictionary: 
https://mycares.net/sitepages/uploads/2020/Data%20Dictionary%20(2021).pdf 
 
New link: #16 Fire/First Responder as defined by CARES in the CARES Data Dictionary: 
https://vendors.mycares.net/ 
  
JIRA ticket:  NEMPUB-608 
 
 
  

 
NEMSIS v3.5.1 Change Log      51  
eScene.04  
Change Enumeration Value Description 
  
Enumeration Value: 2704009 
Old:  “Law” 
New:  “Law Enforcement”  
  
Corresponding Enumeration: OtherServicesAtScene 
JIRA ticket:  NEMPUB-705 
  
 
 
eScene.22  
Update Link in Comment 
 
Old: Based on the ISO Country Code. ANSI Country Codes (ISO 3166) Website: 
http://www.iso.org/iso/country_codes/iso_3166_code_lists.htm 
  
New: Based on the ISO Country Code. ANSI Country Codes (ISO 3166) Website: https://www.iso.org/iso-
3166-country-codes.html 
 
JIRA ticket: NEMPUB-684 
 
 
eScene.23  
Update Link in Comment 
 
Old: Census Tract Data Website (files and descriptions): http://www.census.gov/geo/maps-
data/data/tract_rel_download.html 
  
New: Census Tract Data Website (files and descriptions): 
https://www.census.gov/geographies/reference-files/2010/geo/relationship-files.html 
 
JIRA ticket: NEMPUB-684 
 
 
eScene.24  
Update Comment and Link  
  
Old link: #16 Fire/First Responder as defined by CARES in the CARES Data Dictionary: 
https://mycares.net/sitepages/uploads/2020/Data%20Dictionary%20(2021).pdf 

 
NEMSIS v3.5.1 Change Log      52  
 
New link: #16 Fire/First Responder as defined by CARES in the CARES Data Dictionary: 
https://vendors.mycares.net/ 
 
JIRA ticket:  NEMPUB-608 
  
  
eScene.25  
Add New Element 
  
Description: 
Element number: eScene.25 
Element name: Transferred Patient/Care To/From Agency 
National: No      State: Yes       
Definition: Whether primary responsibility for the care of the patient was transferred in the field to or 
from the EMS agency listed in eScene.02. 
Usage: Recommended Nillable: Yes  Recurrence: 0 : 1 
NV: Not applicable, Not recorded 
 
Code Description: 
Enumeration value: 2725001; Documentation: Transferred Patient to Agency 
Enumeration value: 2725003; Documentation: Received Patient from Agency 
Enumeration value: 2725005; Documentation: No Transfer of Patient/Care To/From Agency 
 
Corresponding Enumeration: TransferOfPatientCare 
JIRA ticket:  NEMPUB-596 
  
 
 
 
 

 
NEMSIS v3.5.1 Change Log      53  
eSituation  
 
eSituation.09, eSituation.10 (AssociatedSymptoms ) 
Update regex pattern  
  
Old: "(R[0-6][0-9](\.[0-9]{1,4})?|(R73\.9)|(R99))|([A-QSTZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,4})?)" 
 
New: "(R[0-6][0-9](\.[0-9]{1,4})?|(R73\.9)|(R99))|([A-QSTUZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,4})?)" 
  
JIRA ticket: NEMPUB-610 
  
  
eSituation.11, eSituation.12 (ProvidersImpression) 
Update regex pattern  
  
Old:  "(R[0-6][0-9](\.[0-9]{1,4})?|(R73\.9)|(R99))|([A-QSTZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,4})?)" 
New:  "(R[0-6][0-9](\.[0-9]{1,4})?|(R73\.9)|(R99))|([A-QSTUZ][0-9][0-9A-Z])((\.[0-9A-Z]{1,4})?)" 
  
JIRA ticket:  NEMPUB-610 
 
 
eSituation.13  
Update Definition 
  
Old: The acuity of the patient's condition upon EMS arrival at the scene. 
 
New: The acuity of the patient's condition upon this EMS unit's arrival at scene. 
 
JIRA ticket: NEMPUB-740 
 
 
Update Link in Comment 
  
Old:  http://www.nhtsa.gov/people/injury/ems/emscorecontent/images/EMSCoreContent.pdf 
 
New: https://www.ems.gov/assets/National_EMS_Core_Content.pdf 
 
JIRA ticket: NEMPUB-740 
 
 

 
NEMSIS v3.5.1 Change Log      54  
 
 
Update Comment 
 
Old: "Non-Acute/Routine" added for use with patients with no clinical issues-such as refusal for a life 
assist-or for routine transfers. 
 
New: "Non-Acute/Routine" added for use with patients with no clinical issues-such as refusal for a lift 
assist-or for routine transfers. 
 
JIRA ticket: NEMPUB-704   
 
 
eSituation.15  
Update Link in Comment 
  
Old: From the North American Industry Classification System (NAICS) from US Bureau of Labor Statistics 
(http://www.census.gov/cgi-bin/sssd/naics/naicsrch?chart=2007). 
 
New: From the North American Industry Classification System (NAICS) from US Bureau of Labor Statistics 
(https://www.census.gov/naics/?58967?yearbck=2022). 
 
JIRA ticket: NEMPUB-702 
  
  
eSituation.18  
Add Attribute  
  
Old: "PN.UnableToComplete" 
New:  "PN.UnableToComplete PN.Approximate" 
 
JIRA ticket:  NEMPUB-606 
  
  
eSituation.19  
Update Comment 
 
Old: This is the diagnosis or reason for transfer, or medical transport or Integrated Healthcare Encounter 
provided by the ordering physician or medical provider. Hospital-to-hospital transfers and medical 
transports are based on the ordering medical provider, and not the EMS provider's impression. The text 
of the reason or diagnosis would be entered here rather than using the patient complaint field (as the 
patient may still have complaints to document), eSituation.11 Provider's Primary Impression or 
eSituation.12 Provider's Secondary Impressions. This element should only be documented when 

 
NEMSIS v3.5.1 Change Log      55  
eResponse.05 Type of Service Requested is Hospital-to-Hospital Transfer, Hospital-to-Hospital Transfer 
(with Sending Hospital Staff), Hospital-to-Hospital Transfer (Critical or Specialty Care), Other Medical 
Needs Transport, Mobile Integrated Health Care Evaluation or Visit. A new national Schematron rule 
exists for this with v3.5.0. 
 
New: This is the diagnosis or reason for transfer, or medical transport or Integrated Healthcare 
Encounter provided by the ordering physician or medical provider. Hospital-to-hospital transfers and 
medical transports are based on the ordering medical provider, and not the EMS provider's impression. 
The text of the reason or diagnosis would be entered here rather than using the patient complaint field 
(as the patient may still have complaints to document), eSituation.11 Provider's Primary Impression or 
eSituation.12 Provider's Secondary Impressions. This element should only be documented when 
eResponse.05 Type of Service Requested is a transfer, Other Routine Medical Transport, or Mobile 
Integrated Health Care Encounter. 
 
JIRA ticket: NEMPUB-631 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
NEMSIS v3.5.1 Change Log      56  
 
 
 
   
  

 
NEMSIS v3.5.1 Change Log      57  
eTimes  
 
eTimes.13  
Update Definition 
  
Old: “The date/time the unit back was back in service and available for response (finished with 
call, but not necessarily back in home location).” 
 
New: “The date/time the unit was back in service and available for response (finished with call, 
but not necessarily back in home location).” 
 
JIRA ticket:  NEMPUB-660 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  

 
NEMSIS v3.5.1 Change Log      58  
eVitals  
 
eVitals.29 
Update Name 
 
Old Name: Stroke Scale Score 
New Name: Stroke Scale Result 
 
JIRA ticket: NEMPUB-668 
 
 
eVitals.30 
Update Enumeration Value Documentation, Add Enumeration Values 
 
Enumeration value: 3330013 
Old Documentation: FAST-ED 
New Documentation: FAST 
 
New Enumeration Values:  
Enumeration value: 33330025 
Documentation: Vision, Aphasia, Neglect (VAN) 
Enumeration value: 3330027 
Documentation: FAST-ED 
Enumeration value: 3330029 
Documentation: BEFAST 
 
Corresponding Enumeration: TypeOfStrokeScale 
JIRA ticket:  NEMPUB-691   NEMPUB-634   NEMPUB-712 
  
  

 
NEMSIS v3.5.1 Change Log      59  
eVitals.34 
Add New Element 
  
Description: added new element (Stroke Scale Score) 
Element number: eVitals.34 
Element name: Stroke Scale Score 
National: No State: Yes 
Definition: The stroke score value associated with the stroke scale type listed in eVitals.30 
Usage: recommended  Nillable: Yes  Recurrence: 0 : 1 
PN: Unable To Complete, Refused 
NV: Not applicable, Not recorded 
Comment: Score associated with the stroke scale listed in eVitals.30 
DataType: Integer 
minInclusive: 0 
maxInclusive: 42 
 
JIRA ticket:  NEMPUB-668 
  