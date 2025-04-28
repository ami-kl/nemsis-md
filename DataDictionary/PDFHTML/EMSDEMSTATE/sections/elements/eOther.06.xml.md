

stringData Type: 2minLength: 255maxLength: 
7701005 - Not Reporting7701003 - Not Recorded7701001 - Not Applicable
State
eOther.06
eOther.06 - The Type of Work-Related Injury, Death or Suspected Exposure
Definition
The type of EMS crew member work-related injury, death, or suspected exposure related to the EMS
response.
National ElementNoPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE23_06
Is NillableYes
UsageRecommended
Recurrence0 : M
Attributes
NOT Values (NV)
CorrelationID
Code List
CodeDescription
4506001Death-Cardiac Arrest
4506003Death-Injury Related
4506005Death-Other
4506007Exposure-Airborne Respiratory/Biological/Aerosolized Secretions
4506009Exposure-Body Fluid Contact to Broken Skin
4506011Exposure-Body Fluid Contact with Eye
4506013Exposure-Body Fluid Contact with Intact Skin
4506015Exposure-Body Fluid Contact with Mucosal Surface
4506017Exposure-Needle Stick with Body Fluid Injection
4506019Exposure-Needle Stick without Body Fluid Injection
4506021Exposure-Toxin/Chemical/Hazmat
4506023Injury-Lifting/Back/Musculoskeletal
4506025Injury-Other
4506027None
4506029Other
4506031Violence-Offensive, Intimidating, or Hateful Language
4506033Violence-Physical Threat, or Threatening Behavior
4506035Violence-Physical Attack or Attempt to Attack
4506037Violence-Unwelcome Sexual Attention, Remarks, Jokes or Gestures
4506039Violence-Unwanted Touching of a Sexual Nature
4506041Struck by Vehicle Along Roadway
Data Element Comment
Associated witheOther.04 (EMS Professional (Crew Member) ID).
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen The Type of Work-Related Injury, Death or Suspected Exposure is empty, it should have
a Not Value (Not Applicable, Not Recorded, or Not Reporting, if allowed for the element) or a
Pertinent Negative (if allowed for the element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen The Type of Work-Related Injury, Death or Suspected Exposure has a Not Value (Not
Applicable, Not Recorded, or Not Reporting), it should be empty.
nemSch_e009WarningWhen The Type of Work-Related Injury, Death or Suspected Exposure has a Not Value, no
other value should be recorded.